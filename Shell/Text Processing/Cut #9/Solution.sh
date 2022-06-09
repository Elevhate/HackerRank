# =========================
#           About          
# =========================

# Direct Link: https://www.hackerrank.com/challenges/text-processing-cut-9/problem
# Difficulty: Easy
# Max Score: 1

# =========================

while read x
do
    echo "$x" | cut -f 2-
done