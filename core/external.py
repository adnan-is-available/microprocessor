# external.py

# Gestion de la ROM, de la RAM et des registres

import json

class External ( ) :
	def __init__ ( self ) :
		self.reg = { }
		self.rom = [ False ]
		self.ram = [ False ]
	
	def int_of_ab ( self, ab ) :
		res = 0
		for b in ab : res = res * 2 + int(b)
		return res
	
	def get_reg ( self, r ) :
		if r in self.reg : return self.reg [r]
		self.reg [r] = False
		return self.reg [r]
	
	def get_rom ( self, ab ) :
		n = self.int_of_ab ( ab )
		while len ( self.rom ) <= n :
			print ( "Out of ROM !" )
			self.rom = self.rom + [ False for i in range(len(self.rom)) ]
		return self.rom [n]
	
	def get_ram ( self, ab ) :
		n = self.int_of_ab ( ab )
		while len ( self.ram ) <= n :
			print ( "Out of RAM !" )
			self.ram = self.ram + [ False for i in range(len(self.ram)) ]
		return self.ram [n]
		
	def save ( self, filename ) :
		with open ( filename, 'w' ) as file :
			file.write ( json.dumps ( ( self.reg, self.rom, self.ram ) ) )
	
	def load ( self, filename ) :
		with open ( filename, 'r' ) as file :
			self.reg, self.rom, self.ram = json.loads ( file.read ( ) )

class RegSync ( ) :
	def __init__ ( self, r ) :
		self.r = r
	def trigger ( self, inputs, ext ) :
		if self.r in inputs :
			ext.reg [self.r] = inputs[self.r]

class RamSync ( ) :
	def __init__ ( self, c, ab, d ) :
		self.c, self.ab, self.d = c, ab, d
	def trigger ( self, inputs, ext ) :
		if inputs [self.c]:
			n = ext.int_of_ab ( [inputs [b] for b in self.ab] )
			while n >= len(ext.ram) :
				print ( "Out of RAM (sync)" )
				ext.ram = ext.ram + [ False for i in range(len(ext.ram)) ]
			ext.ram [n] = inputs [self.d]

def write_rom ( rom_file, ext_file ) :
	with open ( rom_file, 'r' ) as file :
		t = file.read ( )
		rom = [ ]
		for x in t :
			if x == '0' :
				rom.append ( False )
			elif x == '1' :
				rom.append ( True )
	ext = External ( )
	ext.load ( ext_file )
	ext.rom = rom
	ext.save ( ext_file )
