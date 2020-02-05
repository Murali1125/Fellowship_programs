"""
-----------------OrderedList------------------------------
--> Read a list of numbers from a file and arrange it ascending order ina LinkedList
--take the user input for a number, if found then pop the number out of the list
--else insert the number in appropriate possion
"""
from Fellowship_programs.DataStructurePrograms import Linked_List

# creating an object for linked list
list = Linked_List.Linkedlist()
# Reading the values from the file
f = open('./Fellowship_programs/orderedlist.txt', 'r')
file = f.read().split(" ")
f.close()
print(file)
# adding the values into list
for i in file:
    i = int(i)
    list.InsertOrder(int(i))
# Reading the value from user to search
num = int(input("Enter the value for searching"))

if list.search(num):
    index = list.indexOf(num)
    list.pop(num)
    print("After Searching element in the list ")
    # after removing the element
    list.show()
    print("element removed at ", index)
    # Delete the word form the file by over writting.
    f = open('./Fellowship_programs/orderedlist.txt', 'w')
    f.write('')
    f.close()
    length = list.size()
    f = open('./Fellowship_programs/orderedlist.txt', 'a+')
    for i in range(0, length):
        if i == length-1:
            f.write("{}".format(list.index(i)))
            break
        f.write("{} ".format(list.index(i)))
    f.close()
else:
    list.InsertOrder(num)
    print("After searching element in the list ")
    # after adding the element
    list.show()

    # adding the word to file
    # open the file in append mode
    f = open('./Fellowship_programs/orderedlist.txt', 'a+')
    f.write(" {}".format(num))
    f.close()
