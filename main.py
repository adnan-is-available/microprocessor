# main.py

from core.utils import *
from debug.debugger import *
from core.assembly import *
from clock import *

import speed.pyspeed as pyspeed
import speed.cspeed as cspeed

from deco import *

def usage ( ) :
    print ( "python3 main.py options :" )
    print ( "\t\t--debug # par défaut" )
    print ( "\t\t--compile" )
    print ( "\t\t--run" )
    print ( "\t\t--clock" )
    print ( "\t\t-src file.asm # ./premem/exe.asm par défaut" )
    print ( "\t\t-ram 64 # 32 par défaut" )


@main_args
def main ( **args ) :
    mon_proc = [ "processeur/main.mc",
                 "processeur/alu.mc",
                 "processeur/demux.mc" ]
    
    build_mem ( args["-src"], "./memory/test1.ext" )
    
    cir, ext = build_circuit ( mon_proc, "./memory/test1.ext", 3 )
    print ( cir.nb_cycles()[1], "portes logiques." )
    print ( "Taille de la RAM : " + args["-ram"] + '.' )
    print ( "Longueur du programme :", len(ext.rom)//16, "lignes." )
    
    ext.ram = [ False ] * ( 16 * int(args["-ram"] ) )
    
    if args["--debug"] :
        gui_debug ( cir, ext )
    elif args["--compile"] :
        print ( "compilation en cours..." )
        N = -1
        cspeed.compile ( N, cir, ext, "hello.txt", { 47 : True } )
    elif args["--run"] :
        cspeed.run ( )
    elif args["--clock"] :
        gui_clock ( )
    else :
        pass # gui_debug ( cir, ext ) # par défaut
    



if __name__ == "__main__" :
    import sys
    main ( sys.argv[1:], opt = { "--debug" : [ False, None ], "-src" : [ False, "./premem/exe.asm" ], "-ram" : [ False, "32" ], "--compile" : [ False, None ],
                                 "--run" : [ False, None ], "--clock" : [ False, None ] }, usage = usage )
