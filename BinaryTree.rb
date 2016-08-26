# Contains info for the creation and manipulation of a binary tree data structure object
class BinaryTree

	# Internal class for the creation of nodes in the tree.
	class Node

		# Getters and setters for the 4 important aspects of a node, its value, parent, left child and right child
		attr_accessor :value, :parent, :left_child, :right_child

		# Creates a new node in the tree, with default values being nil for the attributes of the node.
		def initialize(value = nil, parent = nil, left_child = nil, right_child = nil)
			@value = value
			@parent = parent
			@left_child = left_child
			@right_child = right_child
		end
	end

	# Getter and setter for the root node of the binary search tree
	attr_accessor :root

	# Takes an array, and builds a BinaryTree object out of this array
	def initialize(array)

		# Sets the value of the root node to the first value in the array.
		@root = Node.new(array[0])
	end

	# Returns the node object containing value entered, searching the tree breadth first, using a queue.
	def breadth_first_search(value)
	end

	# Returns the node object containing value entered, searching the tree depth first, using a stack.
	def depth_first_search(value)
	end

	# Returns the node object containing value entered, searching the tree depth first, recursivly. 
	def dfs_rec(value)
	end
end