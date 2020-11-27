# assembly.py

from core.utils import *

def build_mem ( filename, memloc, ramsize = 8, romsize = None ) :
    base = './memory/mem0.ext'
    
    ext = External ( )
    ext.load ( base )
    
    asm = readfile ( filename ).split ( '\n' )
    rom = []
    ram = [False] * (ramsize*16)
    
    for reg in ext.reg :
        ext.reg[reg] = False
    
    indl = { }
    level = 0
    
    prerom = []
    
    for line in asm :
        sline = [ s.lower() for s in line.split() ]
        if line == '' or not(sline) or line[0] == '#' :
            pass
        elif line[-1] == ':' :
            indl[sline[0][:-1]] = level
        elif sline[0] == 'nop' :
            prerom.append ( ( False, [ False ] * 16 ) )
            level += 1
        elif sline[0] == 'swapab' :
            prerom.append ( ( False, [ True ] + [ False ] * 15 ) )
            level += 1
        elif sline[0] == 'pushb' :
            prerom.append ( ( False, [ False, True ] + [ False ] * 14 ) )
            level += 1
        elif sline[0] == 'popa' :
            prerom.append ( ( False, [ True, True ] + [ False ] * 14 ) )
            level += 1
        elif sline[0] == 'sram' :
            prerom.append ( ( False, [ False, False, True ] + [ False ] * 13 ) )
            level += 1
        elif sline[0] == 'gram' :
            prerom.append ( ( False, [ True, False, True ] + [ False ] * 13 ) )
            level += 1
        elif sline[0] == 'jmp' :
            prerom.append ( ( False, [ False, True, True, False ] + [ False ] * 11 + [ True ] ) )
            level += 1
        elif sline[0] == 'je' :
            prerom.append ( ( False, [ False, True, True, False ] + [ False ] * 10 + [ True, False ] ) )
            level += 1
        elif sline[0] == 'jp' :
            prerom.append ( ( False, [ False, True, True, False ] + [ False ] * 10 + [ True, True ] ) )
            level += 1
        elif sline[0] == 'cstb' :
            prerom.append ( ( sline[1], [ False, True, False, True ] ) )
            level += 1
        elif sline[0] == 'grip' :
            prerom.append ( ( False, [ True, True, True, False ] + [ False ] * 12 ) )
            level += 1
        elif sline[0] == 'add' :
            prerom.append ( ( False, [ False, False, False, True ] + ab_of_int ( 1, 12 ) ) )
            level += 1
        elif sline[0] == 'sub' :
            prerom.append ( ( False, [ False, False, False, True ] + ab_of_int ( 2, 12 ) ) )
            level += 1
        elif sline[0] == 'and' :
            prerom.append ( ( False, [ False, False, False, True ] + ab_of_int ( 2, 12 ) ) )
            level += 1
        elif sline[0] == 'or' :
            prerom.append ( ( False, [ False, False, False, True ] + ab_of_int ( 4, 12 ) ) )
            level += 1
        elif sline[0] == 'xor' :
            prerom.append ( ( False, [ False, False, False, True ] + ab_of_int ( 8, 12 ) ) )
            level += 1
        elif sline[0] == 'not' :
            prerom.append ( ( False, [ True, False, False, True ] + ab_of_int ( 1, 12 ) ) )
            level += 1
        elif sline[0] == 'neg' :
            prerom.append ( ( False, [ True, False, False, True ] + ab_of_int ( 2, 12 ) ) )
            level += 1
        elif sline[0] == 'shift' :
            prerom.append ( ( False, [ True, False, False, True ] + ab_of_int ( 4, 12 ) ) )
            level += 1
        elif sline[0] == 'printb' :
            prerom.append ( ( False, [ True, True, False, True ] + [ False ] * 12 ) )
            level += 1
        else :
            print ( "?? :", line )
    ext.rom = []
    ext.ram = ram
    
    for pr in prerom :
        if pr[0] == False :
            ext.rom.extend ( pr[1] )
        else :
            if pr[0] in indl :
                ext.rom.extend ( pr[1] + ab_of_int ( indl[pr[0]], 16-len(pr[1]) ) )
            else :
                ext.rom.extend ( pr[1] + ab_of_int ( int(pr[0]), 16-len(pr[1]) ) )
    
    ext.save ( memloc )
            
                
        