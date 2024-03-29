#!/bin/python3

import os

def solve(s):
    for word in s.split():
        s = s.replace(word, word.capitalize())
    return s

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    s = input()

    result = solve(s)

    fptr.write(result + '\n')

    fptr.close()