# Simple Tree Data Structure Implementation
# This code defines a basic Node class for a tree where each node can have multiple children.

class TreeNode:
    def __init__(self, value):
        # Initialize a tree node with a value and an empty list of children
        self.value = value
        self.children = []

    def add_child(self, child_node):
        # Add a child node to the current node's children list
        self.children.append(child_node)

    def __str__(self):
        # String representation of the node, showing its value
        return str(self.value)

# Example usage:
# Create root node
root = TreeNode("Root")
# Add children
child1 = TreeNode("Child 1")
child2 = TreeNode("Child 2")
root.add_child(child1)
root.add_child(child2)
# Add a grandchild
grandchild = TreeNode("Grandchild")
child1.add_child(grandchild)