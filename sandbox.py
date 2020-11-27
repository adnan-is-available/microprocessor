# sandbox.py

from core.utils import *
from debug.debugger import *
from core.assembly import *
from clock import *

import speed.pyspeed as pyspeed
import speed.cspeed as cspeed

import time



mon_proc = [ "processeur/main.mc",
             "processeur/alu.mc",
             "processeur/demux.mc" ]

build_mem ( "./premem/exe.asm", "./memory/test1.ext" )


cir, ext = build_circuit ( mon_proc, "./memory/test1.ext", 3 )
print ( cir.nb_cycles()[1], "portes logiques." )

ram_size = input ( "Taille de la RAM désirée : " )
try :
    ext.ram = [ False ] * ( 16 * int (ram_size) )
except :
    pass


flag = True
while flag :
    msg = input ( "compile/run/pyrun/clock/debug/quit : " )

    if msg == "compile" :
        print ( "On commence la compilation :" )
        N = -1
        cspeed.compile ( N, cir, ext, "hello.txt" )
        print ( "compilé" )
    elif msg == "run" :
        cspeed.run ( )
    elif msg == "pyrun" :
        pyspeed.run ( N, cir, ext, "hello.txt" )
    elif msg == "clock" :
        gui_clock ( "hello.txt" )
    elif msg == "debug" :
        gui_debug ( cir, ext )
    elif msg == "quit" :
        flag = False
    elif msg == "speedtest" :
        N = 50000
        print ( "compilation..." )
        cspeed.compile ( N, cir, ext, "hello.txt" )
        print ( "lancement..." )
        t0 = time.perf_counter ( )
        cspeed.run( )
        t1 = time.perf_counter ( )
        print_freq ( N/(t1-t0) )