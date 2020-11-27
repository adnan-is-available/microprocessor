# assembly.py

from core.utils import *
from lark import Lark

def asm_grammar () : return """
?start: ( instr | labeldef )? ( avoid | ( avoid instr ) | ( avoid labeldef ) )*
?labeldef : NAME ":" -> labeldef
?avoid : NEWLINE -> avoid
       | COMMENT -> avoid
?val : NAME -> a_label
     | "%" NAME -> a_reg
     | "$" INT -> a_cst
     | "$" BIN -> a_bin
     | "(" "%" NAME ")" -> a_preg
     | INT "(" "%" NAME ")" -> a_opreg
?instr : "mov" val "," val -> mov
       | "swap" val "," val -> swap
       | "push" val -> push
       | "pop" val -> pop
       | "nop" -> nop
       | "int" -> int
       | "shift" val "," val -> shift
       | "cmp" val "," val -> cmp
       | "add" val "," val -> add
       | "sub" val "," val -> sub
       | "and" val "," val -> and
       | "or" val "," val -> or
       | "xor" val "," val -> xor
       | "not" val -> not
       | "neg" val -> neg
       | "select" val -> select
       | "jmp" val -> jmp
       | "jne" val -> jne
       | "jleq" val -> jleq
       | "jeq" val -> jeq
       | "call" val -> call
       | "ret" -> ret
NEWLINE : "\\n"
NAME : ("a".."z" | "A".."Z") ("a".."z" | "A".."Z" | "0".."9" | "_")+
INT : ("-")? ("0".."9")+ 
BIN : "0b" ("0".."1")+
COMMENT : "#" /[^\\n]/*
%ignore " " | "\\t"
"""
asm_parser = Lark ( asm_grammar() )

def get_labels ( tree ) :
    for node in tree.children :
        print ( node.data )
    

def build_mem ( filename, memloc, ramsize = 8, romsize = None ) :
    base = './memory/mem0.ext'
    ext = External ( )
    reg_init = { "rax" : 0,
                 "rbx" : 0,
                 "rcx" : 0,
                 "rdx" : 0,
                 "rsp" : 0,
                 "flg" : 0,
                 "rip" : 0 }
    
    ext.reg = {}
    
    for r in reg_init :
        v = ab_of_int ( reg_init [r], 16 )
        for j in range(16) :
            ext.reg[r+'_'+str(j)] = v[j]
    
    tree = asm_parser.parse ( readfile ( filename ) )
    
    labels = { }
    level = 0
    
    regs = { "rax" : 0,
             "rbx" : 1,
             "rcx" : 2,
             "rdx" : 3,
             "rsp" : 4,
             "flg" : 5,
             "rip" : 6 }
    
    rom = []
    ram = [False] * ( 16*8 )
    
    prerom = [ ]
    
    class Lbl ( ) :
        def __init__ ( ) : pass
    
    class SetLabel ( Lbl ) :
        def __init__ ( self, name, k = 9 ) :
            self.name = name
            self.k = k
        def make ( self, labels ) :
            return ab_of_int ( labels[self.name], 9 )
    
    class MovLabel ( Lbl ) :
        def __init__ ( self, name, reg ) :
            self.name = name
            self.reg = reg
        def make ( self, labels ) :
            val = ab_of_int ( labels[self.name], 16 )
            autre = "rax" if self.reg != "rax" else "rdx"
            print ( self.reg, labels[self.name], val[0:9], val[9:16] )
            res = ab_of_int ( 2, 4 ) + ab_of_int ( regs[autre], 3 ) + ab_of_int ( 0, 9 )
            res += ab_of_int ( 10, 4 ) + ab_of_int ( regs[self.reg], 3 ) + val[0:9]
            res += ab_of_int ( 10, 4 ) + ab_of_int ( regs[autre], 3 ) + ab_of_int ( 7, 9 )
            res += ab_of_int ( 7, 4 ) + ab_of_int ( regs[autre], 3 ) + ab_of_int ( regs[self.reg], 3 ) + ab_of_int ( 1, 6 )
            res += ab_of_int ( 10, 4 ) + ab_of_int ( regs[autre], 3 ) + [False,False] + val[9:16]
            res += ab_of_int ( 8, 4 ) + ab_of_int ( regs[autre], 3 ) + ab_of_int ( regs[self.reg], 3 ) + ab_of_int ( 1, 6 )
            res += ab_of_int ( 3, 4 ) + ab_of_int ( regs[autre], 3 ) + ab_of_int ( 0, 9 )
            return res
    
    for node in tree.children :
        if node.data == "nop" :
            level += 1
            prerom.append ( ab_of_int ( 0, 16 ) )
        
        elif node.data == "mov" :
            v1, v2 = node.children[0], node.children[1]
            v1_value, v2_value = v1.children[0].value, v2.children[0].value
            if v1.data == "a_cst" and v2.data == "a_reg" :
                level += 1
                prerom.append ( ab_of_int ( 10, 4 ) + ab_of_int ( regs[v2_value], 3 ) + ab_of_int ( int(v1_value), 9 ) )
            elif v1.data == "a_bin" and v2.data == "a_reg" :
                level += 1
                prerom.append ( ab_of_int ( 10, 4 ) + ab_of_int ( regs[v2_value], 3 ) + ab_of_int ( int(v1_value,2), 9 ) )
            elif v1.data == "a_label" and v2.data == "a_reg" :
                level += 7
                prerom.append ( MovLabel ( v1_value, v2_value ) )
            elif v1.data == "a_reg" and v2.data == "a_reg" :
                level += 1
                prerom.append ( ab_of_int ( 4, 4 ) + ab_of_int ( regs[v2_value], 3 ) + ab_of_int ( regs[v1_value], 3 ) + ab_of_int ( 0, 6 ) )
            elif v1.data == "a_reg" and v2.data == "a_preg" :
                level += 1
                prerom.append ( ab_of_int ( 11, 4 ) + ab_of_int ( regs[v2_value], 3 ) + ab_of_int ( regs[v1_value], 3 ) + ab_of_int ( 0, 6 ) )
            elif v1.data == "a_reg" and v2.data == "a_opreg" :
                level += 1
                prerom.append ( ab_of_int ( 11, 4 ) + ab_of_int ( regs[v2.children[1].value], 3 ) + ab_of_int ( regs[v1_value], 3 ) + ab_of_int ( 0, 6 ) )
            elif v1.data == "a_preg" and v2.data == "a_reg" :
                level += 1
                prerom.append ( ab_of_int ( 12, 4 ) + ab_of_int ( regs[v1_value], 3 ) + ab_of_int ( regs[v2_value], 3 ) + ab_of_int ( 0, 6 ) )
            elif v1.data == "a_opreg" and v2.data == "a_reg" :
                level += 1
                prerom.append ( ab_of_int ( 12, 4 ) + ab_of_int ( regs[v1.children[1].value], 3 ) + ab_of_int ( regs[v2_value], 3 ) + ab_of_int ( 0, 6 ) )
            else :
                print ( "instruction move incorrecte !" )
                exit ( 1 )
        elif node.data == "swap" :
            v1, v2 = node.children[0], node.children[1]
            v1_value, v2_value = v1.children[0].value, v2.children[0].value
            if v1.data == "a_reg" and v2.data == "a_reg" :
                a_reg1, a_reg2 = tuple ( sorted ( [ v1_value, v2_value ], key = lambda u : regs[u] ) )
                level += 1
                prerom.append ( ab_of_int ( 1, 4 ) + ab_of_int ( regs[a_reg1], 3 ) + ab_of_int ( regs[a_reg2], 3 ) + ab_of_int ( 0, 6 ) )
            else :
                print ( "instruction swap incorrecte !" )
                exit ( 1 )
        elif node.data == "push" :
            v1 = node.children[0]
            v1_value = v1.children[0].value
            if v1.data == "a_reg" :
                level += 1
                prerom.append ( ab_of_int ( 2, 4 ) + ab_of_int ( regs[v1_value], 3 ) + ab_of_int ( 0, 9 ) )
            elif v1.data == "a_label" :
                level += 8
                prerom.append ( MovLabel ( v1_value, "rdx" ) )
                prerom.append ( ab_of_int ( 2, 4 ) + ab_of_int ( regs["rdx"], 3 ) + ab_of_int ( 0, 9 ) )
            elif v1.data == "a_cst" :
                level += 1
                prerom.append ( ab_of_int ( 5, 4 ) + ab_of_int ( 0, 3 ) + ab_of_int ( int(v1_value), 9 ) )
            elif v1.data == "a_bin" :
                level += 1
                prerom.append ( ab_of_int ( 5, 4 ) + ab_of_int ( 0, 3 ) + ab_of_int ( int(v1_value,2), 9 ) )
            else :
                print ( "instruction push incorrecte : on peut uniquement push un registre !" )
                exit ( 1 )
        elif node.data == "pop" :
            v1 = node.children[0]
            v1_value = v1.children[0].value
            if v1.data == "a_reg" :
                level += 1
                prerom.append ( ab_of_int ( 3, 4 ) + ab_of_int ( regs[v1_value], 3 ) + ab_of_int ( 0, 9 ) )
            else :
                print ( "instruction pop incorrecte : on peut uniquement pop avec un registre !" )
                exit ( 1 )
        elif node.data == "int" :
            level += 1
            prerom.append ( ab_of_int ( 13, 4 ) + ab_of_int ( 0, 12 ) )
        elif node.data in [ "add", "sub", "and", "or", "xor", "cmp", "shift" ] :
            v1 = node.children[0]
            v2 = node.children[1]
            v1_value = v1.children[0].value
            v2_value = v2.children[0].value
            binop_tab = { "add" : 1, "sub" : 2, "and" : 4,
                          "or" : 8, "xor" : 16, "cmp" : 32, "shift" : 1 }
            if v1.data == "a_reg" and v2.data == "a_reg" :
                level += 1
                prerom.append ( ab_of_int ( 7 if node.data == "shift" else 8, 4 ) + ab_of_int ( regs[v1_value], 3 ) + ab_of_int ( regs[v2_value], 3 ) + ab_of_int ( binop_tab[node.data], 6 ) )
            else :
                print ( "binop ???" )
                exit ( 1 )
        elif node.data in [ "not", "neg" ] :
            v1 = node.children[0]
            v1_value = v1.children[0].value
            monop_tab = { "not" : 1, "neg" : 2 }
            if v1.data == "a_reg" :
                level += 1
                prerom.append ( ab_of_int ( 9, 4 ) + ab_of_int ( monop_tab[node.data], 12 ) )
            else :
                print ( "monop ???" )
                exit ( 1 )   
        elif node.data == "select" :
            print ( "select..." )
            exit ( 1 )
        elif node.data in [ "jmp", "jne", "jleq", "jeq" ] :
            v1 = node.children[0]
            v1_value = v1.children[0].value
            jmp_tab = { "jmp" : 1, "jne" : 2, "jleq" : 4, "jeq" : 8 }
            if v1.data == "a_reg" :
                level += 1
                prerom.append ( ab_of_int ( 6, 4 ) + ab_of_int ( regs[v1_value], 3 ) + ab_of_int ( jmp_tab[node.data], 9 ) )
            elif v1.data == "a_label" :
                level += 8
                prerom.append ( MovLabel ( v1_value, "rdx" ) )
                prerom.append ( ab_of_int ( 6, 4 ) + ab_of_int ( regs["rdx"], 3 ) + ab_of_int ( jmp_tab[node.data], 9 ) )
        elif node.data == "call" :
            v1 = node.children[0]
            v1_value = v1.children[0].value
            if v1.data == "a_label" :
                level += 2
                prerom.append ( ab_of_int ( 2, 4 ) + ab_of_int ( regs["rip"], 3 ) + ab_of_int ( 0, 9 ) )
                prerom.append ( ab_of_int ( 10, 4 ) + ab_of_int ( regs["rip"], 3 ) )
                prerom.append ( SetLabel ( v1_value, 9 ) )
        elif node.data == "ret" :
            level += 4
            prerom.append ( ab_of_int ( 3, 4 ) + ab_of_int ( regs["rdx"], 3 ) + ab_of_int ( 0, 9 ) )
            prerom.append ( ab_of_int ( 10, 4 ) + ab_of_int ( regs["rcx"], 3 ) + ab_of_int ( 2, 9 ) )
            prerom.append ( ab_of_int ( 8, 4 ) + ab_of_int ( regs["rcx"], 3 ) + ab_of_int ( regs["rdx"], 3 ) + ab_of_int ( 1, 6 ) )
            prerom.append ( ab_of_int ( 6, 4 ) + ab_of_int ( regs["rdx"], 3 ) + ab_of_int ( 1, 9 ) )
        elif node.data == "labeldef" :
            labels[node.children[0].value] = level
            
    for x in prerom :
        if issubclass ( x.__class__, Lbl ) :
            rom.extend ( x.make ( labels ) )
        else :
            rom.extend ( x )
    
    
    ext.rom = rom
    ext.ram = ram
    ext.save ( memloc )
        