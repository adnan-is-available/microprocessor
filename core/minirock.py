# minirock.py

import core.lexpark as lexpark
from core.netleast import *

class State ( ) :
	def __init__ ( self, tree ) :
		self.temp = -1
		self.tree = tree
		self.compiled_fun = []
		self.temporal = []
	
	def find_fun ( self, fun_name ) :
		for node in self.tree.children :
			if node.data == 'fun' :
				if node.children[0].children[0].value == fun_name :
					return node
		print ( "<!> Fonction introuvable :", fun_name )
		exit ( 1 )
	
	def new_temp ( self ) :
		self.temp += 1
		return self.temp
	
	def tempo ( self ) :
		return '.' + str(self.temporal[-1])

def match ( node, actions, state = None, t = {} ) :
	return actions [ node.data ] ( node, state, t )

compile_index = {
	"cst_idx" : lambda node, state, t : int(node.children[0].value),
	"i_idx" : lambda node, state, t : t['i'],
	"j_idx" : lambda node, state, t : t['j'],
	"add_idx" : lambda node, state, t : match ( node.children[0], compile_index, state, t ) + match ( node.children[2], compile_index, state, t ),
	"sub_idx" : lambda node, state, t : match ( node.children[0], compile_index, state, t ) - match ( node.children[2], compile_index, state, t ),
	"mul_idx" : lambda node, state, t : match ( node.children[0], compile_index, state, t ) * match ( node.children[2], compile_index, state, t ),
	"pow_idx" : lambda node, state, t : match ( node.children[0], compile_index, state, t ) ** match ( node.children[2], compile_index, state, t )
}

compile_var_std = {
	"varname_simple" : lambda node, state, t : node.children[0].value,
	"varname_indexed" : lambda node, state, t : ' '.join ( node.children[0].value + '_' + str(i) for i in range(match(node.children[1], compile_index, state, t)) )
}

compile_var_dev = {
	"varname_simple" : lambda node, state, t : node.children[0].value + state.tempo() if state.temporal else node.children[0].value,
	"varname_indexed" : lambda node, state, t : (node.children[0].value + state.tempo() if state.temporal else node.children[0].value) + '_' + str ( match ( node.children[1], compile_index, state, t ) )
}

def compile_slice ( node ) :
	return ( node.children[0].value, int(node.children[1].value), int(node.children[2].value) )

def compile_mexp_deep ( node, state, t = {} ) :
	if node.data == "mexp_exp" :
		return compile_exp_deep ( node.children[0], state, t )
	elif node.data == "mexp_idx" :
		n, a, b = compile_slice ( node.children[0] )
		ti, vi = [], []
		for j in range ( a-1, b ) :
			tj, vj = compile_exp_deep ( node.children[1], state, { **t, n : j } )
			ti.append ( tj )
			vi.append ( vj )
		return ( ''.join ( ti ), ' '.join ( vi ) )
	elif node.data == "mexp_cst" :
		n1 = match ( node.children[0], compile_index, state, t )
		n2 = match ( node.children[1], compile_index, state, t )
		ii = []
		for j in range(n2) :
			ii.append ( n1 % 2 )
			n1 //= 2
		return ( '', ' '.join ( [ str ( i ) for i in reversed(ii) ] ) )
	elif node.data == "mexp_cat" :
		ti, vi = [], []
		for child in node.children :
			tj, vj = compile_mexp_deep ( child, state, t )
			ti.append ( tj )
			vi.append ( vj )
		return ( ''.join ( ti ), ' '.join ( vi ) )

def compile_exp_deep ( node, state, t = {} ) :
	if node.data == "exp_cst" :
		return ( '', node.children[0].value )
	elif node.data == "exp_acces" :
		return ( '', match ( node.children[0], compile_var_dev, state, t ) )
	elif node.data == "exp_or" :
		( t1, v1 ) = compile_exp_deep ( node.children[0], state, t )
		( t2, v2 ) = compile_exp_deep ( node.children[1], state, t )
		tmp = 'tmp' + str ( state.new_temp ( ) )
		return ( t1 + t2 + tmp + ' = OR ' + v1 + ' ' + v2 + '\n', tmp )
	elif node.data == "exp_and" :
		( t1, v1 ) = compile_exp_deep ( node.children[0], state, t )
		( t2, v2 ) = compile_exp_deep ( node.children[1], state, t )
		tmp = 'tmp' + str ( state.new_temp ( ) )
		return ( t1 + t2 + tmp + ' = AND ' + v1 + ' ' + v2 + '\n', tmp )
	elif node.data == "exp_not" :
		( t1, v1 ) = compile_exp_deep ( node.children[0], state, t )
		tmp = 'tmp' + str ( state.new_temp ( ) )
		return ( t1 + tmp + ' = NAND 1 ' + v1 + '\n', tmp )
	elif node.data == "exp_xor" :
		( t1, v1 ) = compile_exp_deep ( node.children[0], state, t )
		( t2, v2 ) = compile_exp_deep ( node.children[1], state, t )
		tmp = 'tmp' + str ( state.new_temp ( ) )
		return ( t1 + t2 + tmp + ' = XOR ' + v1 + ' ' + v2 + '\n', tmp )
	elif node.data == "exp_nand" :
		print ( "Nand ne marchera pas correctement dans de multiples cas..." )
		( t1, v1 ) = compile_exp_deep ( node.children[0], state, t )
		( t2, v2 ) = compile_exp_deep ( node.children[1], state, t )
		tmp = 'tmp' + str ( state.new_temp ( ) )
		return ( t1 + t2 + tmp + ' = NAND ' + v1 + ' ' + v2 + '\n', tmp )
	elif node.data == "exp_mux" :
		( t1, v1 ) = compile_exp_deep ( node.children[0], state, t )
		( t2, v2 ) = compile_exp_deep ( node.children[1], state, t )
		( t3, v3 ) = compile_exp_deep ( node.children[2], state, t )
		tmp = 'tmp' + str ( state.new_temp ( ) )
		return ( t1 + t2 + t3 + tmp + ' = MUX ' + v1 + ' ' + v2 + ' ' + v3 + '\n', tmp )
	elif node.data == "exp_reg" :
		( t1, v1 ) = compile_exp_deep ( node.children[0], state, t )
		tmp = 'tmp' + str ( state.new_temp ( ) )
		return ( t1 + tmp + ' = REG ' + v1, tmp )
	elif node.data == "exp_rom" :
		( t1, v1 ) = compile_mexp_deep ( node.children[0], state, t )
		tmp = 'tmp' + str ( state.new_temp ( ) )
		return ( t1 + tmp + ' = ROM ' + v1, tmp )

def compile_exp ( node, state, t = {}, addr = 'addr?' ) :
	if node.data == "exp_cst" :
		return addr + ' = CPY ' + node.children[0].value
	elif node.data == "exp_acces" :
		return addr + ' = CPY ' + match ( node.children[0], compile_var_dev, state, t )
	elif node.data == "exp_or" :
		( t1, v1 ) = compile_exp_deep ( node.children[0], state, t )
		( t2, v2 ) = compile_exp_deep ( node.children[1], state, t )
		return t1 + t2 + addr + ' = OR ' + v1 + ' ' + v2
	elif node.data == "exp_and" :
		( t1, v1 ) = compile_exp_deep ( node.children[0], state, t )
		( t2, v2 ) = compile_exp_deep ( node.children[1], state, t )
		return t1 + t2 + addr + ' = AND ' + v1 + ' ' + v2
	elif node.data == "exp_not" :
		( t1, v1 ) = compile_exp_deep ( node.children[0], state, t )
		return t1 + addr + ' = NAND 1 ' + v1
	elif node.data == "exp_xor" :
		( t1, v1 ) = compile_exp_deep ( node.children[0], state, t )
		( t2, v2 ) = compile_exp_deep ( node.children[1], state, t )
		return t1 + t2 + addr + ' = XOR ' + v1 + ' ' + v2
	elif node.data == "exp_nand" :
		( t1, v1 ) = compile_exp_deep ( node.children[0], state, t )
		( t2, v2 ) = compile_exp_deep ( node.children[1], state, t )
		return t1 + t2 + addr + ' = NAND ' + v1 + ' ' + v2
	elif node.data == "exp_mux" :
		( t1, v1 ) = compile_exp_deep ( node.children[0], state, t )
		( t2, v2 ) = compile_exp_deep ( node.children[1], state, t )
		( t3, v3 ) = compile_exp_deep ( node.children[2], state, t )
		return t1 + t2 + t3 + addr + ' = MUX ' + v1 + ' ' + v2 + ' ' + v3
	elif node.data == "exp_reg" :
		( t1, v1 ) = compile_exp_deep ( node.children[0], state, t )
		return t1 + addr + ' = REG ' + v1
	elif node.data == "exp_rom" :
		( t1, v1 ) = compile_mexp_deep ( node.children[0], state, t )
		return t1 + addr + ' = ROM ' + v1
	elif node.data == "exp_ram" :
		( t1, v1 ) = compile_mexp_deep ( node.children[0], state, t )
		( t2, v2 ) = compile_exp_deep ( node.children[1], state, t )
		( t3, v3 ) = compile_mexp_deep ( node.children[2], state, t )
		( t4, v4 ) = compile_exp_deep ( node.children[3], state, t )
		return t1 + t2 + t3 + t4 + addr + ' = RAM ' + v1 + ' | ' + v2 + ' | ' + v3 + ' | ' + v4
	
	
def compile_eq_std ( node1, node2, state, t = {} ) :
	return compile_exp ( node2, state, t, match ( node1, compile_var_dev, state, t ) )

def compile_slice_eq ( node, state, t = {} ) :
	sl = compile_slice ( node.children[0] )
	res = '\n'.join ( compile_eq_std ( node.children[1], node.children[2], state, { **t, sl[0] : i } ) for i in range(sl[1]-1,sl[2]) )
	return res

def compile_multivar ( node, state, t = {} ) :
	if node.data == "mvar_var" :
		return [ match ( node.children[0], compile_var_dev, state, t ) ]
	elif node.data == "mvar_idx" :
		(n,a,b) = compile_slice ( node.children[0] )
		res = []
		for j in range(a-1,b) :
			res.append ( match ( node.children[1], compile_var_dev, state, { **t, n : j } ) )
		return res
	elif node.data == "mvar_cat" :
		res = []
		for child in node.children :
			res.extend ( compile_multivar ( child, state, t ) )
		return res

def compile_eq_call ( node1, node2, state, t = {} ) :
	tmpo = state.new_temp ( )
	new_fun = state.find_fun ( node2.children[0].value )
	pres = '' # précalcules
	qres = '' # copies
	vargs = compile_mexp_deep ( node2.children[1], state, t )
	vrets = compile_multivar ( node1, state, t )
	state.temporal.append ( tmpo )
	wargs = compile_multivar ( new_fun.children[0].children[1], state, {} )
	wrets = compile_multivar ( new_fun.children[-1].children[0], state, {} )
	pres = vargs[0]
	svargs = vargs[1].split ( ' ' )
	
	for i in range(len(svargs)) :
		qres += wargs[i] + ' = CPY ' + svargs[i] + '\n'
	res = pres + qres + compile_fun ( new_fun, state )
	for i in range(len(vrets)) :
		res += '\n' + vrets[i] + ' = CPY ' + wrets[i]
	state.temporal.pop ( )
	return res

def compile_slice_eq_call ( node, state, t = {} ) :
	sl = compile_slice ( node.children[0] )
	res = '\n'.join ( compile_eq_call ( node.children[1], node.children[2], state, { **t, sl[0] : i } ) for i in range(sl[1]-1, sl[2]) )
	return res

compile_eq = {
	"simple_eq" : lambda node, state, t : compile_eq_std ( node.children[0], node.children[1], state, t ),
	"sliced_eq" : lambda node, state, t : compile_slice_eq ( node, state, t ),
	"call_eq" : lambda node, state, t : compile_eq_call ( node.children[0], node.children[1], state, t ),
	"scall_eq" : lambda node, state, t : compile_slice_eq_call ( node, state, t ),
	"eavoid" : lambda node, state, t : ''
}

def compile_fun ( node, state ) :
	fun_name = node.children[0].children[0].value
	if fun_name in state.compiled_fun :
		print ( "<!> Présence de récursivité :", fun_name )
		exit ( 1 )
	
	if state.compiled_fun :
		res = []
		for i in range(1,len(node.children)-1) :
			if node.children[i].data != 'favoid' :
				r = match ( node.children[i], compile_eq, state, {} )
				if r : res.append ( r )
		return '\n'.join ( res )
	else :
		state.compiled_fun.append ( fun_name )
		res = ["INPUTS " + ' '.join ( match ( subnode, compile_var_std, state, {} ) for subnode in node.children[0].children[1:] )]
		for i in range(1,len(node.children)-1) :
			if node.children[i].data != 'favoid' :
				r = match ( node.children[i], compile_eq, state, {} )
				if r : res.append ( r )
		res.append ( "OUTPUTS " + ' '.join ( match ( subnode, compile_var_std, state, {} ) for subnode in node.children[-1].children ) )
		return '\n'.join ( res )
		
def compile_minirock ( strings_nl, main_name = "main" ) :
	lark_tree = lexpark.parse ( strings_nl )
	state = State ( lark_tree )
	
	main_fun = state.find_fun ( main_name )
	
	return compile_fun ( main_fun, state )