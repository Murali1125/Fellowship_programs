"""--------------------------------------------------------------------
-->Take a range of 0 - 1000 Numbers and find the Prime numbers in that
--range. Store the prime numbers in a 2D Array, the first dimension
--represents the range 0-100, 100-200, and so on. While the second
--dimension represents the prime numbers in that range
--------------------------------------------------------------------"""
import numpy as np
class prime:

    def __init__(self):
        self.list = []
    # creating a function for prime numbers
    def prime(self,r1,r2):
        lis= []
        #finding the prime numbers in the range r1 and r2
        if r1 <= 3:
            lis.append(2)
            lis.append(3)
            r1 = 4
        elif r1 <=2:
            lis.append(2)
            r1 = 4
        for i in range(r1,r2+1):
            # taking the one temperary variable to check how many factors have the number in i
            # and initialize the variable as 0
            count = 0
            # lets check the number in i is prime or not
            for j in range(2,i//2):
                if i%j == 0:
                    count +=1
                    break
            # if count = 0 means it have no any facators other than 1 and itself
            # so it is a prime number. add the number into list
            if count == 0:
                lis.append(i)
        self.list.append(lis)
        return lis

    # function for printing the 2d array
    def Print(self,itr):
        for i in range(itr):
            print(self.list[i])
    #function for to check the num is prime or not
    def prime_check(self,num):
        # if the given num is 2 return true since 2 is a prime number
        if num == 2:
            return True
        # take a variable to count the divisers
        count = 0
        for i in range(2,(num//2)+1):
            if num%i == 0:
                count +=1
                return False
        if count == 0:
            return True
    #crating a function to get the anagram number
    def anagram(self,num):
        temp = 0
        while num >= 10:
            temp = (temp*10) + (num%10)
            num = num//10
        temp = (temp*10) + (num%10)
        return temp