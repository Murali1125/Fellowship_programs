"""--------------------------------------------------------------------
-->Add the Prime Numbers that are Anagram in the Range of 0 - 1000 in a
 --Queue using the Linked List and Print the Anagrams from the Queue.
 --Note no Collection Library can be used
 -------------------------------------------------------------------"""
from Fellowship_programs.DataStructurePrograms.Queue import Queue
from Fellowship_programs.DataStructurePrograms.Array2D import prime


# creating objects for Queue class and prime class
queue = Queue()
prm = prime()
# getting the prime numnbers in the given range(0,1000)
for i in range(1,1001):
    # if the num is single digit its not a anagram
    if i < 10:
        continue
    # getting anagram number of the prime numbers
    ana = prm.anagram(i)
    # if anagram of the prime number is also prime and that is in given range then add to anagram prime number list
    if prm.prime_check(i) and prm.prime_check(ana) and 0 <= ana <= 1000:
       queue.enqueue(i)
# getting the size of the stack
print("total anagram prime numbers =  ",queue.size())
print("")
# print the stack elements by using show function
queue.show()