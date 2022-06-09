# =========================
#           About          
# =========================

# Direct Link: https://www.hackerrank.com/challenges/bash-tutorials---getting-started-with-conditionals/problem
# Difficulty: Easy
# Max Score: 3

# =========================

read input

if [[ "$input" == 'Y' || "$input" == 'y' ]]; then
    echo 'YES'
else
    echo 'NO'
fi