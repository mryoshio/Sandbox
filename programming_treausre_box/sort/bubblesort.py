#!/usr/bin/python

from random import randint

MAX = 10
RAND_MAX = 100

def sort():
    array = []
    for i in range(MAX):
        array.append(randint(0, RAND_MAX))
    print "before: ", array
    changed = True
    while(changed == True):
        changed = False
        for i in range(0, MAX-1):
            if array[i] > array[i+1]:
                changed = True
                j = array[i]
                array[i] = array[i+1]
                array[i+1] = j
                i = i+1
        print "changed: ", array
    print "after: ", array

sort()

