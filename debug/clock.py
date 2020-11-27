# clock.py

from core.utils import *

import pygame
pygame.init ( )

def gui_clock ( out_file ) :
	screen = pygame.display.set_mode ( ( 400, 400 ) )
	bg = ( 0, 0, 0 )
	colors = { '0' : ( 0, 0, 0 ), '1' : ( 255, 255, 255 ) }
	while True :
		for event in pygame.event.get ( ) :
			if event.type == pygame.QUIT :
				pygame.quit ( )
				return True
		r = readfile ( out_file )
		if r :
			for i in range ( 4 ) :
				for j in range ( 4 ) :
					pygame.draw.rect ( screen, colors[r[i*4+j]], ( i * 100, j * 100, 100, 100 ) )
					
		pygame.display.flip ( )
		screen.fill ( bg )