# =========================
#           About          
# =========================

# Direct Link: https://www.hackerrank.com/challenges/bash-tutorials---arithmetic-operations/problem
# Difficulty: Medium
# Max Score: 3

# =========================

read input

printf "%.3f\n" `echo "$input" | bc -l`