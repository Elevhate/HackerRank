import re

I = int(input())
for i in range(I):
    try:
        re.compile(input())
        print(True)
    except:
        print(False)