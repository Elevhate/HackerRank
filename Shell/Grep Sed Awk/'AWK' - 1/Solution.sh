# =========================
#           About          
# =========================

# Direct Link: https://www.hackerrank.com/challenges/awk-1/problem
# Difficulty: Medium
# Max Score: 2

# =========================

awk '{
    if ($2 == "" || $3 == "" || $4 == "")
        print "Not all scores are available for", $1;
}'