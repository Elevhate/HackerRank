from math import atan
from math import degrees

ab = int(input())
bc = int(input())

print(str(round(degrees(atan((ab / 2) / (bc / 2))))) + u"\u00b0")