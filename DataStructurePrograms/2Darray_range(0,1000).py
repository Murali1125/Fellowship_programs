
"""--------------------------------------------------------------------
-->Take a range of 0 - 1000 Numbers and find the Prime numbers in that
--range. Store the prime numbers in a 2D Array, the first dimension
--represents the range 0-100, 100-200, and so on. While the second
--dimension represents the prime numbers in that range
--------------------------------------------------------------------"""
from Fellowship_programs.DataStructurePrograms.Array2D import prime
print("range is 0 to 1000")
# creating object for array2D class
obj = prime()
# declare a iterater variable to count the loop iterations
itr = 0
# creating an empty list to store the prime numbers in the given range
list = []
for i in range(0,1000,100):
    # calling the prime function to get the prime numbers
    lis = obj.prime(i,i+100)
    itr +=1
    list.append(lis)
#printing the 2d prime number array
obj.Print(itr)
