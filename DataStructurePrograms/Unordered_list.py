"""
-----------UnOrdered_List----------------------
Read the Text from a file,split it into words and arrange it as LinkedList.
Take  a user input to search a Word in the List. if the Word  is not found  then add it to the List,
and if it found  then remove the word  from the list . In the end save the List into a file
"""
from Fellowship_programs.DataStructurePrograms import Linked_List

# Driver Program for UnOrdered List
# creating Object for Linked List
list = Linked_List.Linkedlist()
# Open and read the file
f = open('./Fellowship_programs/DataStructurePrograms/unoderedlist.txt', 'r')
file = f.read().split(" ")
f.close()
#reading word from the user
for i in file:
    list.add(i)
word = str(input("Enter the word, to check"))
print("Before Searching elements in the list are")
#printing the list before searchingLinkedlist
list.show()
# searching element in the list
# if the element is present it will be delete, if not it will add
result = list.search(word)
print(result)

if result:
    index = list.indexOf(word)
    list.pop(word)
    print("After Searching element in the list ")
    #after removing the element
    list.show()
    print("element removed at ",index)
    # Delete the word form the file by over writing.
    f = open('./Fellowship_programs/DataStructurePrograms/unoderedlist.txt', 'w')
    f.write('')
    f.close()
    length = list.size()
    f = open('./Fellowship_programs/DataStructurePrograms/unoderedlist.txt', 'a+')
    for i in range(0, length):
        f.write(" "+list.index(i))
    f.close()
else:
    list.add(word)
    print("After searching element in the list ")
    # after adding the elementorderedlist
    list.show()

    # adding the word to file
    # open the file in append mode
    f = open('./Fellowship_programs/DataStructurePrograms/unoderedlist.txt', 'a+')
    f.write(" "+word)
    f.close()

