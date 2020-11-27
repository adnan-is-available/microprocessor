# gates.py

# les portes logiques

class Gate ( ) :
	def __init__ ( self ) : pass
	def get ( self, inputs, ext ) : return True

class TrueGate ( Gate ) :
	def get ( self, inputs, ext ) : return True
class FalseGate ( Gate ) :
	def get ( self, inputs, ext ) : return False
class AndGate ( Gate ) :
	def get ( self, inputs, ext ) : return inputs[0] and inputs[1]
class OrGate ( Gate ) :
	def get ( self, inputs, ext ) : return inputs[0] or inputs[1]
class XorGate ( Gate ) :
	def get ( self, inputs, ext ) : return inputs[0] ^ inputs[1]
class NandGate ( Gate ) :
	def get ( self, inputs, ext ) : return not(inputs[0] and inputs[1])
class MuxGate ( Gate ) :
	def get ( self, inputs, ext ) : return inputs[1 + int(inputs[0])]
class RomGate ( Gate ) :
	def get ( self, inputs, ext ) : return ext.get_rom ( inputs )
class RamGate ( Gate ) :
	def get ( self, inputs, ext ) : return ext.get_ram ( inputs )
class RegGate ( Gate ) :
	def __init__ ( self, i ) : self.i = i
	def get ( self, inputs, ext ) : return ext.get_reg ( self.i )
class CpyGate ( Gate ) : 
	def get ( self, inputs, ext ) : return inputs [0]
