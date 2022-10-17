from itertools import permutations

ri = input().split()

for i in sorted(permutations(ri[0], int(ri[1]))):
    print (''.join(i))