# cspeed.py

from core.utils import *
import subprocess

class Vars ( ) :
	def __init__ ( self ) :
		self.vars = [ ]
		
		self.pos = { }
	
	def new_var ( self, var ) :
		if not ( var in self.vars ) :
			self.vars.append ( var )
	
	def setup ( self ) :
		for i, var in enumerate ( reversed ( self.vars ) ) :
			self.pos [ var ] = i
			
	def get_var ( self, var ) :
		return "tab[" + str(self.pos[var]) + "]"

def compile ( n, cir, ext, out_file, defram = {} ) :
	vars = Vars ( )
	rom = ext.rom
	ram_size = len(ext.ram)
	rom_size = len(rom)
	actions = []
	reactions = []
	
	for reg in ext.reg : vars.new_var ( "reg*" + reg )
	for input in cir.inputs : vars.new_var ( input )
	for output in cir.outputs : vars.new_var ( output )
	
	for gates in cir.multi_gates :
		for gate in gates :
			vars.new_var ( gate[1] )
			for xk in gate[0] : vars.new_var ( xk )
	
	for i in range(rom_size-1,-1,-1) : vars.new_var ( "rom" + str(i) )
	for i in range(ram_size-1,-1,-1) : vars.new_var ( "ram" + str(i) )
	
	vars.setup ( )
	
	rom_offset = vars.pos["rom0"]
	ram_offset = vars.pos["ram0"]
	
	true_rom = [ j for j in range(rom_size) if rom[j] ]
	
	for gates in cir.multi_gates :
		for gate in gates :
			if type(gate[2]) is TrueGate :
				actions.append ( vars.get_var ( gate[1] ) + " = true;" )
			elif type(gate[2]) is FalseGate :
				actions.append ( vars.get_var ( gate[1] ) + " = false;" )
			elif type(gate[2]) is AndGate :
				actions.append ( vars.get_var ( gate[1] ) + " = " + vars.get_var ( gate[0][0] ) + " & " + vars.get_var ( gate[0][1] ) + ";" )
			elif type(gate[2]) is OrGate :
				actions.append ( vars.get_var ( gate[1] ) + " = " + vars.get_var ( gate[0][0] ) + " | " + vars.get_var ( gate[0][1] ) + ";" )
			elif type(gate[2]) is XorGate :
				actions.append ( vars.get_var ( gate[1] ) + " = " + vars.get_var ( gate[0][0] ) + " ^ " + vars.get_var ( gate[0][1] ) + ";" )
			elif type(gate[2]) is NandGate :
				actions.append ( vars.get_var ( gate[1] ) + " =  !" + vars.get_var ( gate[0][1] ) + ";" )
			elif type(gate[2]) is MuxGate :
				actions.append ( vars.get_var ( gate[1] ) + " = " + vars.get_var ( gate[0][0] ) + " ? " + vars.get_var ( gate[0][2] ) + " : " + vars.get_var ( gate[0][1] ) + ";" )
			elif type(gate[2]) is CpyGate :
				actions.append ( vars.get_var ( gate[1] ) + " = " + vars.get_var ( gate[0][0] ) + ";" )
			elif type(gate[2]) is RomGate :
				actions.append ( vars.get_var ( gate[1] ) + " = tab[ " + str(rom_offset) + " + " + ' + '.join ( "((int)" + vars.get_var ( x ) + " << " + str(len(gate[0])-i-1) + ")" for i,x in enumerate(gate[0]) ) + "]; // rom" )
			elif type(gate[2]) is RamGate :
				actions.append ( vars.get_var ( gate[1] ) + " = tab[ " + str(ram_offset) + " + " + ' + '.join ( "((int)" + vars.get_var ( x ) + " << " + str(len(gate[0])-i-1) + ")" for i,x in enumerate(gate[0]) ) + "]; // ram" )
			elif type(gate[2]) is RegGate :
				actions.append ( vars.get_var ( gate[1] ) + " = " + vars.get_var ( "reg*" + gate[2].i ) + "; // reg" )
			else :
				print ( "?" )
	for sync in cir.ext_sync :
		if type(sync) is RegSync :
			if sync.r in vars.vars :
				reactions.append ( vars.get_var ( "reg*" + sync.r ) + " = " + vars.get_var ( sync.r ) + "; // reg sync" )
		elif type(sync) is RamSync :
			reactions.append ( "if ( " + vars.get_var ( sync.c ) + ") { " + "tab[ " + str(ram_offset) + " + " + ' + '.join ( "((int)" + vars.get_var ( x ) + " << " + str(len(sync.ab) - i -1) + ")" for i,x in enumerate(sync.ab) ) + "] = " + vars.get_var ( sync.d ) + "; } // ram sync" )
		else :
			print ( " ??" )
	
	res = \
"""#include <iostream>
#include <ctime>

using namespace std;

int main ( )
{
	bool tab[""" + str(len(vars.vars)) + """] = { false };
	""" + vars.get_var ( "1" ) + """ = true;
	""" + '\n\t'.join ( vars.get_var ( "rom" + str(j) ) + " = true;" for j in true_rom ) + """
	
	""" + '\n\t'.join ( vars.get_var ( "ram" + str(k) ) + " = " + ["false;", "true;"][defram[k]] for k in defram ) + """
	
	time_t t0 = std::time ( nullptr ) ;
	time_t t1;
	
	for ( int i = 0; i != """ + str(n) + """; i++ )
	{
		""" + '\n\t\t'.join ( actions ) + """
		""" + '\n\t\t'.join ( reactions ) + """
		
		if ( """ + vars.get_var ( "out" ) + """ )
		{
			cout << """ + vars.get_var ( "reg*rbx_0" ) + """ ? "1" : "0";
			cout << """ + vars.get_var ( "reg*rbx_1" ) + """ ? "1" : "0";
			cout << """ + vars.get_var ( "reg*rbx_2" ) + """ ? "1" : "0";
			cout << """ + vars.get_var ( "reg*rbx_3" ) + """ ? "1" : "0";
			cout << """ + vars.get_var ( "reg*rbx_4" ) + """ ? "1" : "0";
			cout << """ + vars.get_var ( "reg*rbx_5" ) + """ ? "1" : "0";
			cout << """ + vars.get_var ( "reg*rbx_6" ) + """ ? "1" : "0";
			cout << """ + vars.get_var ( "reg*rbx_7" ) + """ ? "1" : "0";
			cout << """ + vars.get_var ( "reg*rbx_8" ) + """ ? "1" : "0";
			cout << """ + vars.get_var ( "reg*rbx_9" ) + """ ? "1" : "0";
			cout << """ + vars.get_var ( "reg*rbx_10" ) + """ ? "1" : "0";
			cout << """ + vars.get_var ( "reg*rbx_11" ) + """ ? "1" : "0";
			cout << """ + vars.get_var ( "reg*rbx_12" ) + """ ? "1" : "0";
			cout << """ + vars.get_var ( "reg*rbx_13" ) + """ ? "1" : "0";
			cout << """ + vars.get_var ( "reg*rbx_14" ) + """ ? "1" : "0";
			cout << """ + vars.get_var ( "reg*rbx_15" ) + """ ? "1" : "0";
			cout << endl;
			
			t1 = std::time ( nullptr );
			if ( t1 > t0 ) 
			{
				""" + vars.get_var ( "ram31" ) + """ = true;
				t0 = t1;
			}
		}
	}
	
	
}
"""
	
	with open ( "./main.cpp", 'w' ) as file :
		file.write ( res )
	
	print ( "le fichier C++ est prêt..." )
	subprocess.call ( [ "g++ -O0 ./main.cpp -o ./main" ], shell = True )
	
def run ( ) :
	subprocess.call ( [ "./main" ], shell = True )
