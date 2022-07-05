import re

n = int(input())
for i in range(n):
    line = input()
    res = "NO"
    pattern ="^[789][0-9]{9}$"
    if bool(re.match(pattern, line)):
        res = "YES"
    
    print(res)