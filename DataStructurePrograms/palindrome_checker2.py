"""------------------------------------------------------------------
-->A palindrome is a string that reads the same forward and backward,
--for example, radar, toot, and madam. We would like to construct an
--algorithm to input a string of characters and check whether it is
--a palindrome.
------------------------------------------------------------------"""

from Fellowship_programs.DataStructurePrograms.DeQueue import DeQueue

# Creating Object for De-queue class
dequeue = DeQueue()
# Reading a string from the user to check it is palidrome or not
string = input("Enter a string ")
# inserting the charecters of the string into de-queue
for i in string:
    dequeue.insertRare(i)
size = dequeue.size()

# removing the elements from the de-queue in reverese order and store into another string
new_str = ""
for i in range(0,size):
    s = dequeue.removeRare()
    new_str += s
# if the both strings are same then the given string is palindrome else not
if string == new_str:
    print("the given string is palindrome")
else:
    print("the given string is not a palindrome")