# =========================
#           About          
# =========================

# Direct Link: https://www.hackerrank.com/challenges/text-processing-cut-8/problem
# Difficulty: Easy
# Max Score: 1

# =========================

while read x
do
    echo "$x" |cut -d " " -f -3
done