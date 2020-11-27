# asm.py

from core.utils import *

def bind ( tab, f ) : return { t : f(tab[t]) for t in tab }
def match ( tab, x ) : 
    y = tab['_'] ( x )
    if not(y in tab) and ( '*' in tab ) : 
        print ( "! : ", y )
        return ( tab['*'] ) ( x )
    return ( tab[y] ) ( x )


regs = { "rax" : 0,
         "rbx" : 1,
         "rcx" : 2,
         "rdx" : 3,
         "rsp" : 4,
         "flg" : 5,
         "rip" : 6,
         "rbp" : 7 }

ab_regs = bind ( regs, lambda n : ab_of_int ( n, 3 ) )

def get_value ( node, *dim ) :
    for i in dim : node = node.children[i]
    return node.value

def get_data ( node, *dim ) :
    for i in dim : node = node.children[i]
    return node.data

class Instr :
    def __init__ ( self ) : 
        self.size = 0
        self.load = []
    def make ( self, labels ) : return self.load

class MovRegReg ( Instr ) :
    def __init__ ( self, reg1, reg2 ) : 
        if not(reg1 in regs and reg2 in regs) :
            print ( "Nom de registre non reconnu dans : mov %{}, %{}.".format ( reg1, reg2 ) )
            exit ( 1 )
        self.size = 1
        self.reg1 = reg1
        self.reg2 = reg2
        self.load = ab_of_int ( 4, 4 ) + ab_regs[self.reg2] + ab_regs[self.reg1] + ab_of_int ( 0, 6 )
        
class MovCstReg ( Instr ) :
    def __init__ ( self, cst, reg1 ) :
        if cst >= 256 : 
            print ( "Constante trop grande dans : mov ${}, %{}.".format ( cst, reg1 ) )
            exit ( 1 )
        elif cst <= -255 : 
            print ( "Constante négative (pouvant être trop négative) dans : mov ${}, %{}.".format ( cst, reg1 ) )
            exit ( 1 )
        elif not(reg1 in regs) :
            print ( "Nom de registre non reconnu dans : mov ${}, %{}.".format ( cst, reg1 ) )
            exit ( 1 )
        self.size = 1
        self.load = ab_of_int ( 10, 4 ) + ab_regs[reg1] + ab_of_int ( cst, 9 )
class MovLabelReg ( Instr ) :
    def __init__ ( self, label, reg1 ) :
        self.label, self.reg1 = label, reg1
        self.size = 8
    def make ( self, labels ) :
        if labels[self.label] >= 2**16-1 :
            print ( "Label trop grand dans : mov {} ( {} ), %{}.".format ( self.label, labels[self.label], self.reg1 ) )
            exit ( 1 )
        
        
        rxx = "rax" if (self.reg1 != "rax") else "rcx"
        rxy = "rbx" if (self.reg1 != "rbx") else "rdx"
        
        val = ab_of_int ( labels[self.label], 16 )
        
        res = ab_of_int ( 4, 4 ) + ab_regs["rbp"] + ab_regs["flg"] + ab_of_int ( 0, 6 )
        res += ab_of_int ( 10, 4 ) + ab_regs[rxy] + [False] + val[0:8]
        res += ab_of_int ( 10, 4 ) + ab_regs[rxx] + ab_of_int ( 8, 9 )
        res += ab_of_int ( 7, 4 ) + ab_regs[rxx] + ab_regs[rxy] + ab_of_int ( 1, 6 )
        res += ab_of_int ( 10, 4 ) + ab_regs[rxx] + [False] + val[8:]
        res += ab_of_int ( 8, 4 ) + ab_regs[rxx] + ab_regs[rxy] + ab_of_int ( 1, 6 )
        res += ab_of_int ( 4, 4 ) + ab_regs["flg"] + ab_regs["rbp"] + ab_of_int ( 0, 6 )
        res += ab_of_int ( 4, 4 ) + ab_regs[self.reg1] + ab_regs[rxy] + ab_of_int ( 0, 6 )
        
        return res
        
        ab_of_int ( 10, 4 ) + ab_regs[self.reg1] + ab_of_int ( labels[self.label], 9 )
class MovPregReg ( Instr ) :
    def __init__ ( self, reg1, reg2 ) :
        self.size = 1
        self.load = ab_of_int ( 12, 4 ) + ab_regs[reg1] + ab_regs[reg2] + ab_of_int ( 0, 6 )
class MovRegPreg ( Instr ) :
    def __init__ ( self, reg1, reg2 ) :
        self.size = 1
        self.load = ab_of_int ( 11, 4 ) + ab_regs[reg2] + ab_regs[reg1] + ab_of_int ( 0, 6 )
class PushReg ( Instr ) :
    def __init__ ( self, reg ) :
        self.size = 1
        self.load = ab_of_int ( 2, 4 ) + ab_regs[reg] + ab_of_int ( 0, 9 )
class PushCst ( Instr ) :
    def __init__ ( self, cst ) :
        if cst >= 256 :
            print ( "Constante trop grande dans : push ${}.".format ( cst ) )
            exit ( 1 )
        elif cst <= -255 :
            print ( "Constante négative dans : push ${}.".format ( cst ) )
            exit ( 1 )
        self.size = 1
        self.load = ab_of_int ( 5, 4 ) + ab_of_int ( 0, 3 ) + ab_of_int ( cst, 9 )
class PushLabel ( Instr ) :
    def __init__ ( self, label ) :
        self.label = label
        self.size = 1
    def make ( self, labels ) :
        if labels[self.label] >= 512 :
            print ( "Label trop grand dans : push {} ( ).".format ( self.label, labels[self.label] ) )
            exit ( 1 )
        return ab_of_int ( 5, 3 ) + ab_of_int ( 0, 3 ) + ab_of_int ( labels[self.label], 9 )
class PopReg ( Instr ) :
    def __init__ ( self, reg ) :
        if regs[reg] >= 4 :
            print ( "Registre incorrect dans : pop %{}.".format ( reg ) )
            exit ( 1 )
        self.size = 1
        self.load = ab_of_int ( 3, 4 ) + ab_regs[reg] + ab_of_int ( 0, 9 )
class BinopInstr ( Instr ) :
    def __init__ ( self, op, reg1, reg2 ) :
        self.size = 1
        code = { "add" : 1, "sub" : 2, "and" : 4, "or" : 8, "xor" : 16, "cmp" : 32 }
        self.load = ab_of_int ( 8, 4 ) + ab_regs[reg1] + ab_regs[reg2] + ab_of_int ( code[op], 6 )
class MonopInstr ( Instr ) :
    def __init__ ( self, op, reg ) :
        self.size = 1
        code = { "not" : 1, "neg" : 2 }
        self.load = ab_of_int ( 9, 4 ) + ab_regs[reg] + ab_of_int ( code[op], 9 )
class IntInstr ( Instr ) :
    def __init__ ( self ) :
        self.size = 1
        self.load = ab_of_int ( 13, 4 ) + ab_of_int ( 0, 12 )
class ShiftInstr ( Instr ) :
    def __init__ ( self, reg1, reg2 ) :
        self.size = 1
        self.load = ab_of_int ( 7, 4 ) + ab_regs[reg1] + ab_regs[reg2] + ab_of_int ( 1, 6 )
class JmpInstr ( Instr ) :
    def __init__ ( self, op, reg ) :
        self.size = 1
        code = { "jmp" : 1, "jne" : 2, "jleq" : 4, "jeq" : 8 }
        self.load = ab_of_int ( 6, 4 ) + ab_regs[reg] + ab_of_int ( code[op], 9 )


mov_match = {
    ( "a_reg", "a_reg" ) : ( lambda node : MovRegReg ( get_value(node,0,0), get_value(node,1,0) ) ),
    ( "a_cst", "a_reg" ) : ( lambda node : MovCstReg ( int(get_value(node,0,0)), get_value(node,1,0) ) ),
    ( "a_bin", "a_reg" ) : ( lambda node : MovCstReg ( int(get_value(node,0,0),2), get_value(node,1,0) ) ),
    ( "a_label", "a_reg" ) : ( lambda node : MovLabelReg ( get_value(node,0,0), get_value(node,1,0) ) ),
    ( "a_preg", "a_reg" ) : ( lambda node : MovPregReg ( get_value(node,0,0), get_value(node,1,0) ) ),
    ( "a_reg", "a_preg" ) : ( lambda node : MovRegPreg ( get_value(node,0,0), get_value(node,1,0) ) ),
    "*" : ( lambda node : Instr() ),
    "_" : ( lambda node : ( get_data ( node, 0 ), get_data ( node, 1 ) ) )
}

push_match = {
    "a_reg" : ( lambda node : PushReg ( get_value(node,0,0) ) ),
    "a_cst" : ( lambda node : PushCst ( int(get_value(node,0,0) ) ) ),
    "a_label" : ( lambda node : PushLabel ( get_value(node,0,0) ) ),
    "_" : ( lambda node : ( get_data ( node, 0 ) ) )
}

jmp_match = {
    ( "jmp", "a_reg" ) : ( lambda node : JmpInstr ( get_data(node), get_value(node,0,0) ) ),
    ( "jne", "a_reg" ) : ( lambda node : JmpInstr ( get_data(node), get_value(node,0,0) ) ),
    ( "jleq", "a_reg" ) : ( lambda node : JmpInstr ( get_data(node), get_value(node,0,0) ) ),
    ( "jeq", "a_reg" ) : ( lambda node : JmpInstr ( get_data(node), get_value(node,0,0) ) ),
    ( "jmp", "a_label" ) : ( lambda node : MovLabelReg ( get_value(node,0,0), "rip" ) ),
    "_" : ( lambda node : ( get_data(node), get_data(node,0) ) )
}

instr_match = {
    "mov" : ( lambda node : match ( mov_match, node ) ),
    "push" : ( lambda node : match ( push_match, node ) ),
    "pop" : ( lambda node : PopReg ( get_value(node,0,0) ) ),
    "add" : ( lambda node : BinopInstr ( get_data(node), get_value(node,0,0), get_value(node,1,0) ) ),
    "sub" : ( lambda node : BinopInstr ( get_data(node), get_value(node,0,0), get_value(node,1,0) ) ),
    "and" : ( lambda node : BinopInstr ( get_data(node), get_value(node,0,0), get_value(node,1,0) ) ),
    "or" : ( lambda node : BinopInstr ( get_data(node), get_value(node,0,0), get_value(node,1,0) ) ),
    "xor" : ( lambda node : BinopInstr ( get_data(node), get_value(node,0,0), get_value(node,1,0) ) ),
    "cmp" : ( lambda node : BinopInstr ( get_data(node), get_value(node,0,0), get_value(node,1,0) ) ),
    "shift" : ( lambda node : ShiftInstr ( get_value(node,0,0), get_value(node,1,0) ) ),
    "not" : ( lambda node : MonopInstr ( get_data(node), get_value(node,0,0) ) ),
    "neg" : ( lambda node : MonopInstr ( get_data(node), get_value(node,0,0) ) ),
    "int" : ( lambda node : IntInstr ( ) ),
    "jmp" : ( lambda node : match ( jmp_match, node ) ),
    "jne" : ( lambda node : match ( jmp_match, node ) ),
    "jleq" : ( lambda node : match ( jmp_match, node ) ),
    "jeq" : ( lambda node : match ( jmp_match, node ) ),
    "*" : ( lambda node : Instr() ),
    "_" : ( lambda node : get_data ( node ) )
}



