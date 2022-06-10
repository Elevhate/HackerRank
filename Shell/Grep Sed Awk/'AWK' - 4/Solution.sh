# =========================
#           About          
# =========================

# Direct Link: https://www.hackerrank.com/challenges/awk-4/problem
# Difficulty: Medium
# Max Score: 2

# =========================

awk '{
    ORS = (NR % 2 == 0)?"\n":";";
    print;
}'