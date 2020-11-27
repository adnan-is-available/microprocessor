# assembly.py

from core.utils import *
from core.asm import *
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

def build_mem ( filename, memloc, ramsize = 8, romsize = None ) :
    base = './memory/mem0.ext'
    ext = External ( )
    reg_init = { "rax" : 0,
                 "rbx" : 0,
                 "rcx" : 0,
                 "rdx" : 0,
                 "rsp" : 0,
                 "flg" : 0,
                 "rip" : 0,
                 "rbp" : 0 }
    
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
             "rip" : 6,
             "rbp" : 7 }
    
    rom = []
    ram = [False] * ( 16*ramsize )
    
    prog = [ ]
    
    
    for node in tree.children :
        if node.data == "avoid" :
            pass
        elif node.data == "labeldef" :
            labels[get_value(node,0)] = level
        else :
            prog.append ( match ( instr_match, node ) )
            level += prog[-1].size
    
    for instr in prog :
        rom.extend ( instr.make ( labels ) )
    
    ext.rom = rom
    ext.ram = ram
    ext.save ( memloc )
        