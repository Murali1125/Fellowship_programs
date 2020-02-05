"""-----------------------------------
------------- Stack Class ------------
-----------------------------------"""

from Fellowship_programs.DataStructurePrograms import Node

class Stack:
    def __init__(self):
        # Creating the top and count variables
        self.top = None
        self.count = 0
    # creating a function to push the elements into stack
    def push(self,data):
        #creating node
        node = Node.Node(data)
        node.data = data
        node.next = None
        # if the element is 1st element, the element assigned as top
        if self.top == None:
            self.top = node
            self.count +=1
        # else top element assigned as node and the current element assigned as top
        else:
            node.next = self.top
            self.top = node
            self.count +=1
        return  self.top.data
    # Creating a function to pop the element
    def pop(self,data):
        # if the stack is empty
        if Stack.isEmpty(self):
            print("Index out of Boundary ")
        # if there is only one element present it assgned as None
        elif self.top.next == None:
            self.top = None
            self.count -=1
        # else top is assigned to the next elemnt
        else:
            self.top = self.top.next
            self.count -=1
    #Creating a function to check the stack isEmpty or not
    #it returns True or False
    def isEmpty(self):
        if slef.top != None:
            return True
        else:
            return False
    # Creating function to show the elements
    def show(self):
        # Traversing top element to bottom element and printing them
        st = slef.top
        while st != None:
            print(st.data,end=" ")
            st = st.next
    # creating a function to print the top element
    def peek(self):
        print(self.top.data)
    # creating a function to get the size of the stack
    def size(self):
        if self.count >= 0:
            return self.count
        else:
            print("Index out of Boundary")

