from itertools import combinations

ri = input().split()

for i in range(1, int(ri[1]) + 1):
    for j in combinations(sorted(ri[0]), i):
        print (''.join(j))