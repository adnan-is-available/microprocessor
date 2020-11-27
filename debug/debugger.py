# debugger.py

from core.utils import *
from debug.debugger_widget import *

import time
import pygame
pygame.init ( )

def gui_debug ( cir, ext, saveout = None) :
    screen = pygame.display.set_mode ( ( 1000, 700 ) )
    pygame.display.set_caption ( "Microprocesseur" )
    bg_color = ( 130, 130, 130 )

    timer_kgp = 0
    # print ( cir.nb_cycles() )
    widgets = [ Ram ( 20, 440, 64*15, 16*15, 0 ),
                Rom ( 20, 20, 16*20, 16*20, 0 ),
                Reg16 ( 550, 20, 16*20, 20, "rip" ),
                Reg16 ( 550, 50, 16*20, 20, "rax" ),
                Reg16 ( 550, 80, 16*20, 20, "rbx" ),
                Reg16 ( 550, 110, 16*20, 20, "rcx" ),
                Reg16 ( 550, 140, 16*20, 20, "rdx" ),
                Reg16 ( 550, 170, 16*20, 20, "rsp" ),
                Reg16 ( 550, 200, 16*20, 20, "flg" ),
                Reg16 ( 550, 230, 16*20, 20, "rbp" ),
                Screen ( 500, 270 ),
                Helper ( 2000, 270 ), # à modifier
                Speed ( 700, 270, 20, 20, { 0.5 : [ ( 50, 50, 50 ), ( 225, 225, 225 ) ],
                                            1. : [ ( 50, 50, 50 ), ( 225, 225, 225 ) ],
                                            3. : [ ( 50, 50, 50 ), ( 225, 225, 225 ) ],
                                            -1. : [ ( 80, 20, 20 ), ( 250, 190, 190 ) ],
                                            float('inf') : [ ( 0, 0, 0 ), ( 15, 15, 15 ) ] }, 0.5 ) ]

    dt = 1.
    run_cir = [ False, 0 ]

    while True :
        for event in pygame.event.get ( ) :
            if event.type == pygame.QUIT :
                pygame.quit ( )
                if saveout :
                    ext.save ( saveout )
                return True
            elif event.type == pygame.MOUSEBUTTONDOWN and event.button == 1 :
                for widget in widgets :
                    widget.on_click ( event.pos, ext )
            elif event.type == pygame.KEYDOWN :
                if event.key == pygame.K_SPACE :
                    run_cir[0] = not(run_cir[0])
                elif event.key == pygame.K_RIGHT :
                    widgets[0].i0 += 1
                    widgets[0].i1 += 1
                elif event.key == pygame.K_LEFT :
                    widgets[0].i0 = max ( widgets[0].i0 - 1, 0 )
                    widgets[0].i1 = max ( widgets[0].i1 - 1, 64 )
        
        if time.perf_counter() - timer_kgp >= 1/10 :
            kgp = pygame.key.get_pressed()
            if kgp[pygame.K_DOWN] :
                widgets[1].i0 += 1
                widgets[1].i1 += 1
                timer_kgp = time.perf_counter ( )
            elif kgp[pygame.K_UP] :
                widgets[1].i0 = max ( widgets[1].i0 - 1, 0 )
                widgets[1].i1 = max ( widgets[1].i1 - 1, 16 )
                timer_kgp = time.perf_counter ( )
            
            
        
        for widget in widgets :
            widget.draw ( screen, ext )

        if run_cir[0] and time.perf_counter () - run_cir[1] > widgets[-1].speed :
            k = 0
            while not(k) or time.perf_counter() - run_cir[1] < 1. / 12. :
                k += 1
                res = cir.run ( { 's' : True }, ext )
                if res['out'] :
                    if ext.reg["rbx_0"] :
                        widgets[-3].scr.set_at ( ( ext.int_of_ab ( [ ext.reg["rbx_"+str(k)] for k in range(2,9) ] ), ext.int_of_ab ( [ ext.reg["rbx_"+str(k)] for k in range(9,16) ] ) ), [ ( 0, 0, 0 ), ( 255, 255, 255 ) ][ext.reg["rbx_1"]] )
                    else :
                        print ( ">", ext.int_of_ab ( [ ext.reg["rbx_"+str(k)] for k in range(16) ] ) )
            run_cir[1] = time.perf_counter ( )

        widgets[0].j = ext.int_of_ab ( [ ext.reg["rsp_"+str(k)] for k in range(16) ] )
        widgets[1].j = ext.int_of_ab ( [ ext.reg["rip_"+str(k)] for k in range(16) ] )

        pygame.display.flip ( )
        screen.fill ( bg_color )