"""-----------------------------------------------------------------------------
-->Create the Week Object having a list of WeekDay objects each storing the day
--(i.e S,M,T,W,Th,..) and the Date (1,2,3..) . The WeekDay objects are stored in
--a Queue implemented using Linked List. Further maintain also a Week Object in
--a Queue to finally display the Calendar
----------------------------------------------------------------------------"""
from Fellowship_programs.DataStructurePrograms.Calender import calender
from Fellowship_programs.DataStructurePrograms.Queue import Queue

class Node:
    def __init__(self,day,date):
        self.day = day
        self.date = date
        self.next = None
class weak:
     # creating head variable and initialize as none
    def __init__(self):
        self.head = None
    #creating the weak day objects
    def add(self,day,date):
        # creating node for day objects
        node = Node(day,date)
        node.day = day
        node.date = date
        # if the head is none means it starting day of the weak, assign the node to head
        if self.head == None:
            self.head = node
        # else traverse to the end of the list and add the node at end
        else:
            n = self.head
            while n.next != None:
                n = n.next
            n.next = node
    # function for print the weak
    def show(self):
         # Traversing from head to end and Printing the elements
         sh = self.head
         while sh.next != None:
             print(sh.date, end=" ")
             sh = sh.next
         print(sh.date)
    # function for getting day and dates
    def weak(self,dates):
        # creating a list of days with keys
         days = {1: "Sunday", 2: "Monday", 3: "Tuesday", 4: "Wednesday", 5: "Thursday", 6: "Friday", 7: "Saturday"}
        # declaring an iterator count
         count = 1
         for i in dates:
             weak.add(self,days[count],i)
             count+=1
#----------------------------------------------------
# Driver program
# creating an object for Queue class
que = Queue()
# getting inputs from user
year = int(input("year = "))
month = int(input("month = "))
# creating an object for calender to get the dates
cal = calender()
dates = cal.month(year,month)
# creating weak objects
for i in dates:
    w = weak()
    w.weak(i)
    # adding the weak objects in to queue
    que.enqueue(w.show())







