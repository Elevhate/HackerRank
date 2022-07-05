import re

heystack = input()
needle = input()
    
matchCount = list(re.finditer(r'(?={})'.format(needle), heystack))
    
if matchCount:
    for i in matchCount:
        print((i.start(), i.end() + len(needle) - 1))
else:
    print((-1, -1))