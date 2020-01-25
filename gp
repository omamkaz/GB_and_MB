#!/usr/bin/env python

import os, sys, traceback, getopt

# Gp = 1024
# Y = 1
# H = 50
# H +=1
# while Y < H :
#     U = f'{Y} GB =--> '
#     print(U, Gp * Y)
#     Y +=1
#################### Colors
# red
R = "\033[;31m"
# green
G = "\033[;32m"
# yellow
Yl = "\033[;33m"
# blue
B = "\033[;34m"
# purple
P = "\033[;35m"
# cyan
C = "\033[;36m"
# white
W = "\033[;38m"
# End
E = "\033[0m"
#################### colors
n = "\033[0;0m"
a = "\033[0;33m"
b = "\033[0;34m"
y = "\033[33m"
####################
def calculator():
    try:
        Gp = 1024
        Y = 1
        H = 1000
        H += 1
        while Y < H:
            U = f'{y} {Y},GB =--> {E}'
            print(U, Gp * Y,',MG')
            print(C+"   ---------------"+E)
            Y += 1
    except Exception:
        traceback.print_exc(file=sys.stdout)
        sys.exit()

def main():
    try:
        print("")
        Osama = input(Yl + " Enter your number :--> " + E)
        if Osama == "all":
            calculator()

        Gp = 1024
        Y = int(Osama )
        H = int(Osama )
        H +=1
        while Y < H :
            print("")
            U = f'{y} {Y},GB =--> {E}'
            print(U, Gp * Y,',MG')
            print(C+"   ---------------"+E)
            Y +=1
    except ValueError:
        print(R + " Pleas Enter number initeger dont string ."+E)
    except KeyboardInterrupt:
        print("")
        print(" \n   Closing, bye! ...\n")
    except Exception:
        traceback.print_exc(file=sys.stdout)
        sys.exit()

if __name__ == '__main__' : main()
