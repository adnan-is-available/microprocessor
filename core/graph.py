# graph.py

class Node ( ) :
	def __init__ ( self, value ) :
		self.value = value
		self.alive = True
		self.n = 0
		self.parents = [ ]
		self.childs = [ ]

class Graph ( ) :
	def __init__ ( self ) :
		self.nodes = [ ]
		self.h_nodes = { }
		self.n_nodes = 0
		
	def get_node ( self, key ) :
		return self.h_nodes [key]
	
	def add_node ( self, value, key = None ) :
		node = Node ( value )
		self.nodes.append ( node )
		if key != None : self.h_nodes [key] = node
		self.n_nodes += 1
		return node
	
	def add_edge ( self, node1, node2 ) :
		node1.childs.append ( node2 )
		node2.parents.append ( node1 )
		node2.n += 1
	
	def get_roots ( self ) :
		return [ node for node in self.nodes if node.alive and node.n == 0 ]
	
	def topological_sort ( self ) :
		""" this will destroy the graph. """
		res = [ ]
		while self.n_nodes :
			roots = self.get_roots ( )
			if roots :
				values = [ ]
				for root in roots :
					for child in root.childs : child.n -= 1
					root.alive = False
					self.n_nodes -= 1
					values.append ( root.value )
				res.append ( values )
			else :
				return ( False, None ) # on a un cycle dans le graphe
		return ( True, res )
	
	def reset_graph ( self ) :
		""" this will undo the destruction. """
		for node in self.nodes :
			node.n = len(node.parents)
			node.alive = True
		self.n_nodes = len ( self.nodes )