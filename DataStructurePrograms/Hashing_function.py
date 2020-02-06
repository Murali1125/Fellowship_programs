"""--------------------------------------------------------------------------
-->Create a Slot of 10 to store Chain of Numbers that belong to each Slot
--to efficiently search a number from a given set of number
-->Logic -> Firstly store the numbers in the Slot. Since there are 10 Numbers
--divide each number by 11 and the reminder put in the appropriate slot.
--Create a Chain for each Slot to avoid Collision. If a number searched is
--found then pop it or else push it. Use Map of Slot Numbers and Ordered
--LinkedList to solve the problem. In the Figure Below, you can see number
--77/11 reminder is 0 hence sits in the 0 slot while 26/11 remainder is 4
--hence sits in slot 4
-->Save the numbers in a file
---------------------------------------------------------------------------"""


# creating Node class
class Node:
    def __init__(self):
        self.data = None
        self.next = None
# creating HashingList class
class HashingList:
    def __init__(self):
        # creating 11 empty nodes and inserting these empty nodes into array
        node0 = Node()
        node1 = Node()
        node2 = Node()
        node3 = Node()
        node4 = Node()
        node5 = Node()
        node6 = Node()
        node7 = Node()
        node8 = Node()
        node9 = Node()
        node10 = Node()
        # creating an array with nodes
        self.node_arr = [node0,node1,node2,node3,node4,node5,node6,node7,node8,node9,node10]

    # creating an insert function
    def insert(self,data):
        #creating the node and inserting the data and reffer next to None
        n = Node()
        n.data = data
        n.next = None
        # dividing the number with 11 and storing the number in index = remainder
        index = int(data%11)
        # reading the array element places the in the index
        node = self.node_arr[index]
        # if the node in that index is none adding the data to that node
        if node is None:
            node = n
        # else traverse to the end and adding the node to exsiting node
        # taking tempary vairable to store node
        else:
            temp = node
            while temp.next is not None:
                temp = temp.next
            temp.next = n
    # creating a function to display the values
    def display(self):
        # Display the data regarding to the remainder and the index of the node array
        for i in range(len(self.node_arr)):
            # reading the node at the index of the node array
            temp = self.node_arr[i]
            if temp is not None:
                print(f'remainder {i} and the values are ',end="")
                if temp.next is None:
                    print("None")
                while temp is not None:
                    if temp.data is not None:
                        print(temp.data,end=",")
                    temp = temp.next
                print()
    #print method to store the values into a file
    def Print(self):
        # creating a file to store the values
        file = open("Hashing_function.txt",'w')
        file.write("")
        file.close()
        #writing the values int the file
        f = open('Hashing_function.txt',"a+")
        for i in range(len(self.node_arr)):
            # reading the node at the index of the node array
            temp = self.node_arr[i]
            if temp is not None:
                val =f'remainder {i} and the values are '
                f.write(val)
                if temp.next is None:
                    f.write("None")
                while temp is not None:
                    if temp.data is not None:
                        var = f',{temp.data}'
                        f.write(var)
                    temp = temp.next
                f.write("\n")

# Driver program for above  code
# creating an object for HashingList class
Hash_obj = HashingList()
count = int(input("enter how many numbers want to insert"))
#reading the values from the user
for i in range(count):
    Hash_obj.insert(int(input(f'value{i+1}')))

#Display the list
Hash_obj.display()

#to store the values into a file
Hash_obj.Print()


