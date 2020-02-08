"""--------------------------------------------
------- Binary Search Tree --------------------
--------------------------------------------"""

class Node():
    # declaring and initializing left_child and right_child variables
    def __init__(self,data):
        self.data = data
        self.left_child = None
        self.right_child = None
class BS_tree:
    # declaring and initializing root variable
    def __init__(self):
        self.root = None
    # inserting data into the nodes
    def ins(self,data):

        # creating a Node and if root is None assign node as root
        if self.root == None:
            self.root = Node(data)
        else:
            BS_tree.insert(self,data,self.root)

    def insert(self,data,cur_node):
        # if data is less-than the current node data assigned as left child
        if data < cur_node.data:
            # if current_node left child is None then assign the data
            if cur_node.left_child == None:
                cur_node.left_child = Node(data)
            # else it calls recursively insert method to arrange nodes
            else:
                BS_tree.insert(self,data,cur_node.left_child)
        # if data is greater-than the current node data assigned as right-child
        elif data > cur_node.data:
            # if current node right child is None, assigned node as right-child
            if cur_node.right_child == None:
                cur_node.right_child = Node(data)
            # else it calls recursively insert method to arrage nodes
            else:
                BS_tree.insert(self,data,cur_node.right_child)
        # else the value is duplicate, tree cant allow duplicate values
        # print an error msg
        else:
            print("Duplicae values are not allowed ",data)

    # Displaying the elements in the tree
    def show(self):
        # if root variable is not None then call the print program
        if self.root != None:
            BS_tree.print(self,self.root)
        else:
            print("None")
    def print(self,cur_node):
        # printing the tree values
        if cur_node != None:
            BS_tree.print(self,cur_node.left_child)
            print(cur_node.data)
            BS_tree.print(self,cur_node.right_child)

