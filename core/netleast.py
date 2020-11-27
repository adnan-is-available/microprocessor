# netleast.py

# Arbre de Syntaxe Abstraite pour NetLeast :

class Equation ( ) :
	def __init__ ( self, y, op, x_k ) :
		self.y, self.op, self.x_k = y, op, x_k

class NetLeast ( ) :
	def __init__ ( self ) :
		self.inputs = [ ]
		self.outputs = [ ]
		self.equations = [ ]

def match_eq ( eq, actions ) : return actions [eq.op] ( eq )

# Parseur pour NetLeast :

def make_netleast ( strings_nl ) :
	nl = NetLeast ( )
	for line in strings_nl :
		s_line = line.split ( )
		if s_line[0] == 'INPUTS' :
			nl.inputs = s_line[1:]
		elif s_line[0] == 'OUTPUTS' :
			nl.outputs = s_line[1:]
		else :
			y = s_line[0]
			op = s_line[2]
			if op in ['1','0','AND','OR','XOR','NAND','MUX','CPY','ROM','REG'] :
				nl.equations.append ( Equation ( y, op, s_line[3:] ) )
			elif op == 'RAM' :
				sep = [i for i in range(len(s_line)) if s_line[i] == '|'][0]
				nl.equations.append ( Equation ( y, op, [s_line[3:sep], s_line[sep+1], s_line[sep+3:-2], s_line[-1]] ) )
	return nl

# Récupérer le code NetLeast :

def write_netleast ( nl ) :
	code = ""
	code += 'INPUTS ' + ' '.join ( nl.inputs ) + '\n'
	code += 'OUPUTS ' + ' '.join ( nl.outputs ) + '\n'
	for eq in nl.equations :
		if eq.op == 'RAM' :
			code += eq.y + ' = ' + eq.op + ' ' + ' '.join ( eq.x_k[0] ) + ' | ' + eq.x_k[1] + ' | ' + ' '.join ( eq.x_k[2] ) + ' | ' + eq.x_k[3]
		else :
			code += eq.y + ' = ' + eq.op + ' ' + ' '.join ( eq.x_k )
		code += '\n'
	return code[:-1]