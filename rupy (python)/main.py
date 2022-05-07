import solver  as sv
import random
import move
import serial
import time

ser = serial.Serial(port='COM8', baudrate=9600, timeout=.01)

def control(new,old):
    
    if int(new /3) == int(old /3):
        a = False
    else:
        a = True
    return a
def scramble(index):
    count = 0
    scramble = []
    oldnum = 18
    
    while index > count:
        newnum = random.randint(0,17)
        if control(newnum,oldnum) == False:
            continue
        else:
            scramble.append(newnum)
            oldnum = newnum
            count += 1

    return scramble
def write_read(x):
    ser.write(bytes(str(x), 'utf-8'))
    time.sleep(0.1)
    data = ser.readline()
    return data
def add(list):
    newlist = []

    bl = str(bin(len(list)))
    tbl = [char for char in bl]
    del tbl [0]
    del tbl [0] 
    le = ''.join(tbl)

    newlist.append('A')
    newlist.append('A')
    newlist.append('A')
    newlist.append('A')
    #newlist.append(le)
    

    for x in list:
        newlist.append(x)
    
    newlist.append('B')
    #(newlist.append('A')
    #newlist.append('A')
    return newlist
def transformArray(list1):

    solution = []

    for turn in list1:
        if turn == 'R1':
            #solution.append(0)
            solution.append('D')
        elif turn == 'R3':
            #solution.append(1)
            solution.append('E')
        elif turn == 'R2':
            #solution.append(2)
            solution.append('F')
        elif turn == 'L1':
            #solution.append(3)
            solution.append('G')
        elif turn == 'L3':
            #solution.append(4)
            solution.append('H')
        elif turn == 'L2':
            #solution.append(5)
            solution.append('I')
        elif turn == 'F1':
            #solution.append(6)
            solution.append('L')
        elif turn == 'F3':
            #solution.append(7)
            solution.append('M')
        elif turn == 'F2':
            #solution.append(8)
            solution.append('N')
        elif turn == 'B1':
            #solution.append(9)
            solution.append('O')
        elif turn == 'B3':
            #solution.append(10)
            solution.append('P')
        elif turn == 'B2':
            #solution.append(11)
            solution.append('Q')
        elif turn == 'U1':
            #solution.append(12)
            solution.append('R')
        elif turn == 'U3':
            #solution.append(13)
            solution.append('S')
        elif turn == 'U2':
            #solution.append(14)
            solution.append('T')
        elif turn == 'D1':
            #solution.append(15)
            solution.append('U')
        elif turn == 'D3':
            #solution.append(16)
            solution.append('V')
        elif turn == 'D2':
            #solution.append(17)
            solution.append('Z')
        else:
            continue
    return solution
def scrumblestring(string1):
    
    for x in scramblearray:
        
        if x == 0:
            string1 = move.r(string1)
        elif x == 1:
            string1 = move.r(string1)
            string1 = move.r(string1)
            string1 = move.r(string1)
        elif x == 2:
            string1 = move.r(string1)
            string1 = move.r(string1)
        elif x == 3:
            string1 = move.l(string1)
        elif x == 4:
            string1 = move.l(string1)
            string1 = move.l(string1)
            string1 = move.l(string1)
        elif x == 5:
            string1 = move.l(string1)
            string1 = move.l(string1)
        elif x == 6:
            string1 = move.f(string1)
        elif x == 7:
            string1 = move.f(string1)
            string1 = move.f(string1)
            string1 = move.f(string1)
        elif x == 8:
            string1 = move.f(string1)
            string1 = move.f(string1)
        elif x == 9:
            string1 = move.b(string1)
        elif x == 10:
            string1 = move.b(string1)
            string1 = move.b(string1)
            string1 = move.b(string1)
        elif x == 11:
            string1 = move.b(string1)
            string1 = move.b(string1)
        elif x == 12:
            string1 = move.u(string1)
        elif x == 13:
            string1 = move.u(string1)
            string1 = move.u(string1)
            string1 = move.u(string1)
        elif x == 14:
            string1 = move.u(string1)
            string1 = move.u(string1)
        elif x == 15:
            string1 = move.d(string1)
        elif x == 16:
            string1 = move.d(string1)
            string1 = move.d(string1)
            string1 = move.d(string1)
        else:
            string1 = move.d(string1)
            string1 = move.d(string1)
        

    return string1
scramblearray = scramble(25)
scrambled = []
for turn in scramblearray:
    if turn == 0:
        #solution.append(0)
        scrambled.append('D')
    elif turn == 1:
         #solution.append(1)
        scrambled.append('E')
    elif turn == 2:
        #solution.append(2)
        scrambled.append('F')
    elif turn == 3:
        #solution.append(3)
        scrambled.append('G')
    elif turn == 4:
        #solution.append(4)
        scrambled.append('H')
    elif turn == 5:
        #solution.append(5)
        scrambled.append('I')
    elif turn == 6:
        #solution.append(6)
        scrambled.append('L')
    elif turn == 7:
        #solution.append(7)
        scrambled.append('M')
    elif turn == 8:
        #solution.append(8)
        scrambled.append('N')
    elif turn == 9:
        #solution.append(9)
        scrambled.append('O')
    elif turn == 10:
        #solution.append(10)
        scrambled.append('P')
    elif turn == 11:
        #solution.append(11)
        scrambled.append('Q')
    elif turn == 12:
        #solution.append(12)
        scrambled.append('R')
    elif turn == 13:
        #solution.append(13)
        scrambled.append('S')
    elif turn == 14:
        #solution.append(14)
        scrambled.append('T')
    elif turn == 15:
        #solution.append(15)
        scrambled.append('U')
    elif turn == 16:
        #solution.append(16)
        scrambled.append('V')
    elif turn == 17:
        #solution.append(17)
        scrambled.append('Z')
    else:
        continue
print(scrambled)
sc = ''.join(scrambled)
originalcubestring = "UUUUUUUUURRRRRRRRRFFFFFFFFFDDDDDDDDDLLLLLLLLLBBBBBBBBB"
scrumbledcubestring = scrumblestring(originalcubestring)
a = sv.solve(scrumbledcubestring,19,2)
alist = a.split(" ")

solutionarray = transformArray(alist)
print(solutionarray)
so = ''.join(solutionarray)

time.sleep(1.700)
value = write_read(sc)
print(value)

time.sleep(10)
value = write_read(so)
print(value)



