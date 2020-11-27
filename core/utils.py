# utils.py

from core.external import *
from core.minirock import *
from core.netleast import *
from core.schedule import *
from core.optim import *

def readfile ( filename ) :
	with open ( filename, 'r' ) as file :
		return file.read ( )

def build_circuit ( mc_files, ext_file, opti = 1 ) :
	ext = External ( )
	if ext_file : ext.load ( ext_file )
	nls = compile_minirock ( '\n'.join ( [ readfile ( mc_file ) for mc_file in mc_files ] ) )
	nlo = make_netleast ( nls.split ( '\n' ) )
	for i in range(opti) : nlo = optim_netleast ( nlo )
	cir = make_circuit ( nlo )
	
	return ( cir, ext )

def mc_to_nl ( mc_file, out_file, opti = True ) :
	nls = compile_minirock ( readfile ( mc_file ) )
	if not(opti) : return nls
	nlo = make_netleast ( nls.split ( '\n' ) )
	nlo = optim_netleast ( nlo )
	return write_netleast ( nlo )

def print_freq ( f ) :
	if f < 1000 :
		print ( f, "Hz" )
	elif f < 1000000 :
		print ( f/1000, "kHz" )
	elif f < 10**9 :
		print ( f/10**6, "MHz" )
	else :
		print ( f/10**9, "GHz" )

def get_freq ( f ) :
	if f < 10**3 : return str ( f ) + " Hz"
	elif f < 10**6 : return str ( f / 10**3 ) + " kHz"
	elif f < 10**9 : return str ( f / 10**6 ) + " MHz"
	else : return str ( f / 10**9 ) + " GHz"

def str_of_ab ( ab ) :
	return ''.join ( '01'[b] for b in ab )

def ab_of_int ( n, k ) :
    res = []
    for i in range(k) :
        res.append ( ( n % 2 ) == 1 )
        n //= 2
    return res[::-1]

def int_of_ab ( ab, r = 0 ) :
    for b in ab : r = 2*r + int(b)
    return r