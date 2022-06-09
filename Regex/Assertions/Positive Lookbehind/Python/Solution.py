Regex_Pattern = r'(?<=[13579])\d'	# Do not delete 'r'.

import re

print(str(bool(re.search(Regex_Pattern, input()))).lower())