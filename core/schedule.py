# schedule.py

from core.graph import *
from core.netleast import *
from core.gates import *
from core.external import *
from core.circuit import *

empty_list = lambda eq : []
all_list = lambda eq : eq.x_k

dependences = {
	'1' : empty_list,
	'0' : empty_list,
	'AND' : all_list,
	'OR' : all_list,
	'XOR' : all_list,
	'NAND' : all_list,
	'MUX' : all_list,
	'CPY' : all_list,
	'ROM' : all_list,
	'RAM' : (lambda eq : eq.x_k[0]),
	'REG' : empty_list
}

none_value = lambda eq : None

gate_from_eq = {
	'1' : (lambda eq : ([],eq.y,TrueGate())),
	'0' : (lambda eq : ([],eq.y,FalseGate())),
	'AND' : (lambda eq : (eq.x_k,eq.y,AndGate())),
	'OR' : (lambda eq : (eq.x_k,eq.y,OrGate())),
	'XOR' : (lambda eq : (eq.x_k,eq.y,XorGate())),
	'NAND' : (lambda eq : (eq.x_k,eq.y,NandGate())),
	'MUX' : (lambda eq : (eq.x_k,eq.y,MuxGate())),
	'CPY' : (lambda eq : (eq.x_k,eq.y,CpyGate())),
	'ROM' : (lambda eq : (eq.x_k,eq.y,RomGate())),
	'RAM' : (lambda eq : (eq.x_k[0],eq.y,RamGate())), # à modifier
	'REG' : (lambda eq : ([],eq.y,RegGate(eq.x_k[0])))
}

sync_from_eq = {
	'1' : none_value,
	'0' : none_value,
	'AND' : none_value,
	'OR' : none_value,
	'XOR' : none_value,
	'NAND' : none_value,
	'MUX' : none_value,
	'CPY' : none_value,
	'ROM' : none_value,
	'RAM' : (lambda eq : RamSync(eq.x_k[1],eq.x_k[2],eq.x_k[3])),
	'REG' : (lambda eq : RegSync(eq.x_k[0]))
}

def make_circuit ( nl ) :
	top_graph = Graph ( )
	for eq in nl.equations :
		top_graph.add_node ( eq, key = eq.y )
	
	for eq in nl.equations :
		for dep in match_eq ( eq, dependences ) :
			if dep in nl.inputs : pass
			elif dep in [ '0', '1' ] : pass
			else : top_graph.add_edge ( top_graph.get_node ( dep ), top_graph.get_node ( eq.y ) )
	
	valide, multi_eq = top_graph.topological_sort ( )
	if not(valide) : print ( "<!> Présence d'un cycle." )
	multi_gates = []
	ext_sync = []
	for m_eq in multi_eq :
		gates = []
		for eq in m_eq :
			gates.append ( match_eq ( eq, gate_from_eq ) )
			sync = match_eq ( eq, sync_from_eq )
			if sync : ext_sync.append ( sync )
		multi_gates.append ( gates )
	# checking outputs :
	for y in nl.outputs :
		if not(y in top_graph.h_nodes) and not(y in nl.inputs):
			print ( "<!> Une sortie n'a pas été déclarée : " + y + "." )
	return Circuit ( multi_gates, ext_sync, nl.inputs, nl.outputs )
		