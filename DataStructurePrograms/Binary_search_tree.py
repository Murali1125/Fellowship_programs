"""-----------------------------------------------------------------------------------------------------------------
-->A binary tree is a tree which is characterized by any of the following properties:
--1.It can be empty (null).
--2.It can contain a root node which contain some value and two subtree, left subtree and right subtree, which are
--also binary tree.
--3.A binary tree is a binary search tree (BST) if all the non-empty nodes follows both
--two properties:
-->If node has a left subtree, then all the values in its left subtree are smaller than the value of the current node.
-->If node has a right subtree, then all the value in its right subtree are greater than the value of the current node.
-->You are given N nodes, each having unique value ranging from [1, N], how many different binary search tree can be
--created using all of them.
-----------------------------------------------------------------------------------------------------------------"""

# Driver program for Binary search tree
from Fellowship_programs.DataStructurePrograms.tree import BS_tree

# creating Object for BS_tree class
tree = BS_tree()
# reading the values from the user
count = int(input("Enter the number valures want to insert"))

for i in range(count):
    # reading the values from the user
    num = int(input(f'number{i+1}'))
    # inserting the values into the tree
    tree.ins(num)
# printing the values in sorting order
tree.show()