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

	# Takes original array, and builds a BinaryTree object out of this array
	def initialize(array)

		# First value in the array becomes the root of the new tree
		@root = Node.new(array[0], nil, nil, nil)

		# Loops through the rest of the array, adding the values to the correct spot in the binary tree in the order that they come up in the array
		(array.length - 1).times do |i|
			add(array[i + 1])
		end
	end

	# Recursive method to add a new node containing value to the tree, searching for the right place to put the new leaf from root
	def add(value, node = @root)
		# Add to the right of the current node
		if  value > node.value
			if node.right_child == nil
				node.right_child = Node.new(value, node, nil, nil)
			else
				add(value, node.right_child)
			end
		end
		
		# Add to the left of the current node
		else
			if node.left_child == nil
				node.left_child = Node.new(value, node, nil, nil)
			else
				add(value, node.left_child)
			end
		end
	end

	# Recursive method that prints the current tree structure to the console.
	def show(node = @root, prefix = "")
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