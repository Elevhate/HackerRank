import cmath

input_list = complex(input().strip())

print(cmath.polar(input_list)[0])
print(cmath.polar(input_list)[1])