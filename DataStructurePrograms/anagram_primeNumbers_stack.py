"""----------------------------------------------------------------------
-->Add the Prime Numbers that are Anagram in the Range of 0 - 1000 in a
--Stack using the Linked List and Print the Anagrams in the Reverse Order.
 --Note no Collection Library can be used.
-----------------------------------------------------------------------"""

from Fellowship_programs.DataStructurePrograms.Array2D import prime
from Fellowship_programs.DataStructurePrograms.Stack import Stack

# creating objects for prime class and stack class
prm = prime()
stk = Stack()
# getting the prime numbers in the given range(0,1000)
for i in range(1,1001):
    # check, i is prime number then insert into stack
    if i <= 10:
        continue
    # getting anagram number of the prime numbers
    ana = prm.anagram(i)
    # if anagram of the prime number is also prime then add to anagram prime number list
    if prm.prime_check(i) and prm.prime_check(ana) and 0 <= ana <= 1000:
       stk.push(i)
# getting the size of the stack
print("total anagram prime numbers =  ",stk.size())
print("")
# print the stack elements by using show function
stk.show()

