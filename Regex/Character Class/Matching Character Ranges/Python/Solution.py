Regex_Pattern = r'^[a-z][123456789][^a-z][^A-Z][A-Z]\s*'	# Do not delete 'r'.

import re

print(str(bool(re.search(Regex_Pattern, input()))).lower())