# clock.py

from core.utils import *

import pygame
pygame.init ( )

def gui_clock ( ) :
    screen = pygame.display.set_mode ( ( 256, 256 ) )
    screen.fill ( ( 0, 0, 0 ) )
    bg = ( 0, 0, 0 )
    colors = { '0' : ( 0, 0, 0 ), '1' : ( 255, 255, 255 ) }
    while True :
        for event in pygame.event.get ( ) :
            if event.type == pygame.QUIT :
                pygame.quit ( )
                exit ( 0 )
            elif event.type == pygame.KEYDOWN :
                if event.key == pygame.K_SPACE :
                    screen.fill ( ( 0, 0, 0 ) )
        r = input()
        if r :
            bbr = [ False if br == '0' else True for br in r ]
            if bbr[0] :
                pygame.draw.rect ( screen, colors[r[1]], ( int_of_ab ( bbr[2:9] )*2, int_of_ab ( bbr[9:16] )*2, 2, 2 ) )
            else :
                print ( "x :", int_of_ab ( bbr[2:9] ), ", y :", int_of_ab ( bbr[9:16] ) )
    	
        pygame.display.flip ( )
