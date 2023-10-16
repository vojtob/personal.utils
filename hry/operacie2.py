import math
import numpy as np

minx = -10
maxx = 50
maxd = 8

distances = np.full((maxx-minx+1, maxx-minx+1), maxd+2, dtype=np.int16)
operacie = dict()

def custom_operation(option, num):
    # print("op", num, option)
    if option == 0:
        return 5-num
    elif option == 1:
        if num < 0:
            num = -num
        num_str = str(num)
        digit_sum = 0
        for digit in num_str:
            digit_sum += int(digit)
        return digit_sum
    elif option == 2:
        return num ** 2 - num - 1
    elif option == 3:
        if num <= 0:
            return -1000
        return math.ceil(math.log(num))
    else:
        return "Invalid option"

def isin(x):
    return (x >= minx) and (x <= maxx)

def getdist(x,y):
    if not isin(x):
        return None
    if not isin(y):
        return None
    return distances[x-minx, y-minx]

def setdist(x,y,d):
    if not isin(x):
        return
    if not isin(y):
        return
    distances[x-minx, y-minx] = d

def printdist(x,y):
    if not isin(x):
        print(x, y, "NO")
        return      
    if not isin(y):
        print(x, y, "NO")
        return      
    if getdist(x,y) > maxd:
        print(x, y, "NO")
        return      
    print(x, y, getdist(x,y), operacie[(x,y)])

# doteraz sa preslo d krokov, robi sa d+1
def operuj(fromx, curentx, d, postup):
    # print("operuj", fromx, curentx, d, postup)
    d = d+1
    if d > maxd:
        return
    for op in range(4):
        y = custom_operation(op, curentx)
        p = postup + [op]
        if isin(y):
            if getdist(fromx,y) > d:
                setdist(fromx,y,d)
                operacie[(fromx,y)] = p
        operuj(fromx, y, d, p)
       
for x in range(minx, maxx+1):
    operuj(x, x, 0, [])



# printdist(1,41)
# printdist(1,11)
# printdist(1,49)
# printdist(2,11)
# printdist(2,42)
# printdist(2,29)
# printdist(-10,29)
# printdist(-10,40)
# printdist(-10,-6)
# printdist(6,4)
# printdist(3,10)
# printdist(3,-3)
# printdist(47,6)
# printdist(47,-5)
# printdist(42,47)
# printdist(42,49)
# printdist(42,66)
# printdist(6,30)
# printdist(6,-1)

print(distances)

