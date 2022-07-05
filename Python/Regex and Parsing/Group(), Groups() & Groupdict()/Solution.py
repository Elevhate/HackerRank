import re

res = re.search(r"\.*([a-zA-Z0-9])\1+", input())
if res:
    print(res.group(1))
else:
    print("-1")