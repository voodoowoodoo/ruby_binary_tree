#Ruby binary tree

###Description
A binary tree data structure in Ruby. Constructed as part of the Odin Project (www.theodinproject.com), as practice with data structues and algorithms.

###Methods
the BinaryTree class includes multiple usefull working methods:

`new(array)`: Creates a new BinaryTree object. The root of this tree wil contain the value of array[0], it will then loop through the passed array, adding each index at the appropriate place of the binary tree. Array should be an array of integers.

`add(value, node = @root)`: Adds a new node containing the value to the current BinaryTree object at the appropriate place in the tree. Searching for the correct link to place this node starts from the root node by default, so only an integer needs to be passed. 