# =========================
#           About          
# =========================

# Direct Link: https://www.hackerrank.com/challenges/text-processing-cut-4/problem
# Difficulty: Easy
# Max Score: 1

# =========================

while read x 
do
    echo $x |cut -c1-4
done