"""------------------------------------------------------------------------
------------------ Balanced Parantheses------------------------------------
--> Take an Arithmetic Expressio such as (5+6)*(7+8)/(4+3)(5+6)*(7+8)/(4+3)
---Where parentheses are used to order the performance of operations.Ensure
---parentheses must apper in abalanced fashion
------------------------------------------------------------------------"""
from Fellowship_programs.DataStructurePrograms.Stack import Stack

# creating object for the Stack
stk = Stack()
# Reading the expression from user
exp = str(input("enter the expression"))
balance = 0
# reading the each charecter in the string
for i in exp:
    # if i == '(' it will be pushed in to the stack
    r = stk.push(i)
    if r == '(':
        balance +=1
    elif r == ')':
        balance -=1
    if balance < 0 :
        print(" ')' is in wrong place , Equation is not balanced")

# if  balance == 0  the expression is balanced
# balance < 0 the expression has excess ')'
# balance > 0 the expression has excess'('
if balance == 0 :
    print("the expression is balanced")
elif balance < 0 :
    print("the expression is not balanced")
    print("it have excess ')' ")
else:
    print("the expression is not balanced")
    print("it have excess '(' ")