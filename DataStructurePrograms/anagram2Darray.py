"""------------------------------------------------------------------
-->Extend the Prime Number Program and store only the numbers in that
--range that are Anagrams. For e.g. 17 and 71 are both Prime and
--Anagrams in the 0 to 1000 range. Further store in a 2D Array the
--numbers that are Anagram and numbers that are not Anagram
-------------------------------------------------------------------"""

from Fellowship_programs.DataStructurePrograms.Array2D import prime
import numpy as np
# creating abject for prime class
prm = prime()
# declaring an empty list to store the anagram prime numbers
ana_lis=[]
# declaring an empty list to store the non anagram prime numbers
non_anagram = []
# get the prime numbers in the range 0 to 1000
lis = prm.prime(0,1000)
# check that anagram of the number is prime and present in given range or not
for i in lis:
    if i <= 10:
        non_anagram.append(i)
        continue
    # getting anagram number of the prime numbers
    ana = prm.anagram(i)
    # if anagram of the prime number is also prime then add to anagram prime number list
    if prm.prime_check(ana) and 0<= ana<= 1000:
        ana_lis.append(i)
    # else add non anagram prime numbers list
    else:
        non_anagram.append(i)
# converting the anagram prime number list to array
ana_arr = np.asarray(ana_lis)
# converting the non anagram prime numbers list to array
non_anagram_arr= np.asarray(non_anagram)

print("anagram prime numbers array ","\n",ana_arr)
print("non anagram prime numbers array","\n", non_anagram_arr)