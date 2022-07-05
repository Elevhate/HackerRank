import re

n = int(input())
    
for _ in range(n):
    uid = ''.join(sorted(input()))
    if (len(uid) == 10
        and bool(re.search(r'[A-Z]{2,}', uid))
        and bool(re.search(r'\d{3,}', uid))
        and bool(re.search(r'^[a-zA-Z0-9]{10}$', uid))
        and not bool(re.search(r'(.)\1', uid))):
        print("Valid")
    else:
        print("Invalid")