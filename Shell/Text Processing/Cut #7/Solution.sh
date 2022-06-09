# =========================
#           About          
# =========================

# Direct Link: https://www.hackerrank.com/challenges/text-processing-cut-7/problem
# Difficulty: Easy
# Max Score: 1

# =========================

while read x
do
    echo "$x" |cut -d " " -f4
done