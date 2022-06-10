# =========================
#           About          
# =========================

# Direct Link: https://www.hackerrank.com/challenges/awk-3/problem
# Difficulty: Medium
# Max Score: 2

# =========================

awk '{
    total = ($2 + $3 + $4)/3
    if (total >= 80)
        print $1,$2,$3,$4, ": A" 
    else if (total >= 60 && total < 80)
        print $1,$2,$3,$4, ": B"
    else if (total >= 50 && total< 60)
        print $1,$2,$3,$4, ": C"
    else 
        print $1,$2,$3,$4, ": FAIL"
}'