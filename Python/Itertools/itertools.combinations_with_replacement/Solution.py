from itertools import combinations_with_replacement

ri = input().split(' ')

for i in combinations_with_replacement(sorted(ri[0]), int(ri[1])):
    print (''.join(i))