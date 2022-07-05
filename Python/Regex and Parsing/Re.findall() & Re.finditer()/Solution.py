import re

res = re.findall('(?<=[qwrtypsdfghjklzxcvbnm])([aeiou]{2,})[qwrtypsdfghjklzxcvbnm]', input(), re.I)
print('\n'.join(res or ['-1']))