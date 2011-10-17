#!/usr/bin/python

from random import randint
from time import time

MAX = 10
RAND_MAX = 100

def sort():
    array = []
    for i in range(MAX):
        array.append(randint(0, RAND_MAX))
    print "before: ", array
    sorted = 0
    changed = True
    begin = time()
    while(changed == True):
        changed = False
        for i in range(0, MAX-1-sorted):
            if array[i] > array[i+1]:
                changed = True
                j = array[i]
                array[i] = array[i+1]
                array[i+1] = j
                i = i+1
        print "changed: ", array
        sorted = sorted+1
    end = time()
    print "after: ", array
    msec = (end-begin)*1000
    print "%f msec used: " % msec

sort()

