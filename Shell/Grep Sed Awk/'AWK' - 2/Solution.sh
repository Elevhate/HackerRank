# =========================
#           About          
# =========================

# Direct Link: https://www.hackerrank.com/challenges/awk-2/problem
# Difficulty: Medium
# Max Score: 2

# =========================

awk '{
    if ($2 >= 50 && $3 >= 50 && $4 >= 50)
        print $1, ": Pass";
    else 
        print $1, ": Fail";
}'