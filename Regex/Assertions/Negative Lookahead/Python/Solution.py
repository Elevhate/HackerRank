Regex_Pattern = r'(\S)(?!\1)'	# Do not delete 'r'.

import re

print(str(bool(re.search(Regex_Pattern, input()))).lower())