# optim.py

from core.netleast import *
import random

def root ( roots, name ) :
    if name in roots['registers'] : return name
    if name in roots : 
        while name in roots :
            name = roots[name]
        return name
    return name

def optim_netleast ( nl ) :
    # objectif : rendre l'optimiseur encore + performant !
    
    table = { 'registers' : [ eq.x_k[0] for eq in nl.equations if eq.op == "REG" ] }
    MYEQS = []
    
    SMART_BINOP = { 'AND' : {},
                    'OR' : {},
                    'XOR' : {},
                    'NAND' : {} }
    SMART_TRINOP = { 'MUX' : {} }
    
    ANDS = { }
    ORS = { }
    XORS = { }
    NANDS = { }
    
    CPC = []
    for eq in nl.equations :
        if eq.op == 'CPY' and eq.y not in nl.outputs :
            table[eq.y] = eq.x_k[0]
            CPC.append ( eq )
        elif eq.op in SMART_BINOP :
            t = ( eq.x_k[0], eq.x_k[1] )
            if t[0] in '01' and eq.op in [ 'AND', 'OR' ] :
                if t[0] == '0' and eq.op == 'AND' : table[eq.y] = '0'
                elif t[0] == '0' and eq.op == 'OR' : table[eq.y] = t[1]
                elif t[0] == '1' and eq.op == 'OR' : table[eq.y] = '1'
                elif t[0] == '1' and eq.op == 'AND' : table[eq.y] = t[1]
                CPC.append ( eq )
            elif t[1] in '01' and eq.op in [ 'AND', 'OR' ] :
                if t[1] == '0' and eq.op == 'AND' : table[eq.y] = '0'
                elif t[1] == '0' and eq.op == 'OR' : table[eq.y] = t[0]    
                elif t[1] == '1' and eq.op == 'OR' : table[eq.y] = '1'
                elif t[1] == '1' and eq.op == 'AND' : table[eq.y] = t[0]
                CPC.append ( eq )
            elif t in SMART_BINOP[eq.op] :
                table[eq.y] = (SMART_BINOP[eq.op])[t]
                CPC.append ( eq )
            else :
                (SMART_BINOP[eq.op])[t] = eq.y
                MYEQS.append ( eq )
        else :
            MYEQS.append ( eq )
    nl.equations = []
    for q in MYEQS :
        if q.op == 'RAM' :
            qxxk1 = [ root ( table, qx1 ) for qx1 in q.x_k[0] ]
            qxxk2 = [ root ( table, qx2 ) for qx2 in q.x_k[2] ]
            nl.equations.append ( Equation ( q.y, q.op, [qxxk1,root(table,q.x_k[1]),qxxk2,root(table,q.x_k[3])]))
        else :
            qxk = [ root ( table, qx ) for qx in q.x_k ]
            nl.equations.append ( Equation ( q.y, q.op, qxk ) )
    for q in CPC :
        if q.y in table['registers'] :
            nl.equations.append ( Equation ( q.y, q.op, [ root ( table, qx ) for qx in q.x_k ] ) )
    return nl