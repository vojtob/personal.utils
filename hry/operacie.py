import math
import numpy as np

def custom_operation(option, num):
    # print("op", num, option)
    # 5-x
    if option == 0:
        return 5-num
    # ciferny sucet
    elif option == 1:
        if num < 0:
            num = -num
        num_str = str(num)
        digit_sum = 0
        for digit in num_str:
            digit_sum += int(digit)
        return digit_sum
    # x^2 -x - 1
    elif option == 2:
        return num ** 2 - num - 1
    # ln(x)
    elif option == 3:
        if num <= 0:
            return -1000
        # return math.ceil(math.log(num))
        return math.ceil(math.sqrt(num))
    else:
        return "Invalid option"

def __check(start, target, maxdepth):
    discovered = dict()
    nextlayer = [start]

    d = 1
    while d <= maxdepth:
        d = d+1
        curentlayer = nextlayer
        nextlayer = []
        # skusaj postupne vsetky v novej vrstve
        for x in curentlayer:
            for op in range(4):
                y = custom_operation(op, x)
                if y not in discovered:
                    discovered[y] = (x, op)
                    if y == target:
                        return discovered
                    nextlayer.append(y)

    return None

    
def getpath(discovered_paths, start, target):
    # print(discovered_paths)
    path = str(target)
    x = target
    distance = 0
    while not (x == start):
        segment = discovered_paths[x]
        path = "{0} ({1}) ".format(segment[0], segment[1]) + path
        x = segment[0]
        distance = distance + 1
    return (distance, path)

def findroute(start, target, maxdepth=8, checkalternatives = True):
    discovered_paths = __check(start, target, maxdepth)
    if not discovered_paths:
        print("{0} -> {1} NO". format(start, target))
        return

    p = getpath(discovered_paths, start, target)
    if not checkalternatives:
        print("{0} -> {1} {2} kroky, cesta: {3}". format(start, target, p[0], p[1]))
        return
    
    alternativep = []
    for op in range(4):
        y = custom_operation(op, start)
        dp = __check(y, target, maxdepth)
        if not dp:
            print("{0} -> {1} NO". format(start, target))
        else:
            ap = getpath(dp, y, target)
            alternativep.append(ap[0])

    print("{0} -> {1} {2} kroky, cesta: {3}, alternatives: {4}". format(start, target, p[0], p[1], alternativep))



def findgood(minx, maxx, depth, altdepth):
    for x in range(minx, maxx+1):
        for y in range(minx, maxx+1):
            if x==y:
                continue
            discovered_paths = __check(x, y, depth)
            if not discovered_paths:
                continue

            p = getpath(discovered_paths, x, y)
            if p[0] < depth:
                continue

            alternativep = []
            for op in range(4):
                x2 = custom_operation(op, x)
                dp = __check(x2, y, altdepth)
                if dp:
                    ap = getpath(dp, x2, y)
                    alternativep.append(ap[0])

            print("{0} -> {1} {2} kroky, cesta: {3}, alternatives: {4}". format(x, y, p[0], p[1], alternativep))        


findgood(-10, 50, 2, 3)


# findroute(1, 41)
# findroute(1, 11)
# findroute(1, 49)
# findroute(2,11)
# findroute(2,42)
# findroute(2,29)
# findroute(-10,29)
# findroute(-10,40)
# findroute(-10,-6)
# findroute(6,4)
# findroute(3,10)
# findroute(3,-3)
# findroute(47,6)
# findroute(47,-5)
# findroute(42,47)
# findroute(42,49)
# findroute(42,66)
# findroute(6,30)
# findroute(6,-1)
