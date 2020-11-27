# pyspeed.py

from core.utils import *

def run ( n, cir, ext, out_file ) :
	file = open ( out_file, 'w' )
	i = 0
	while i != n :
		i += 1
		flag = cir.run ( { 's' : True }, ext ) [ 'out' ]
		if flag :
			with open ( out_file, 'w' ) as file :
				file.write ( str_of_ab ( [ ext.reg["rbx_"+str(k)] for k in range(16) ] ) )
	
			