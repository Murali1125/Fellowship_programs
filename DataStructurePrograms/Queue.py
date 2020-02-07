from Fellowship_programs.DataStructurePrograms.Node import Node

class Queue:
    # declaring the front,rare,count variables and initialize
    def __init__(self):
        self.front = None
        self.rare = None
        self.count = 0
    # creating a function for enqueue
    def enqueue(self,data):
        # creating Node
        node = Node(data)
        node.data = data
        node.next = None
        # if the given element is 1st element, front element = rare element
        if self.rare == None:
            self.front = self.rare = node
        # else given data is assigned next to the rare element
        self.rare.next = node
        self.rare = node
        self.count +=1
    # Creating a function for dequeue
    def dequeue(self):
        # if the queue is empty, there is nothing to deque it return queue is empty
        if Queue.isEmpty(self):
            print("Queue is empty")
            return "queue is empty"
        else:
            if self.front.next == None:
                self.front = None
            else:
                self.front = self.front.next
            self.count -=1
    # creating a function to check that the queue is empty or not
    def isEmpty(self):
        # if there is no elements returns returns True
        if self.front == None:
            return True
        else:
            return False
    # creating a function to check the current size of the queue
    def size(self):
        # if count < 0 return an error
        if self.count < 0 :
            print("error occured restart the program")
        else:
            return self.count
    def show(self):
        # traversing from the front element to end
        # if there is no elements front elemet is None
        # storing the front element into a temperory variable
        temp = self.front
        if temp == None:
            print("None")
        else:
            while temp.next is not None:
                print(temp.data)
                temp = temp.next
            print(temp.data)