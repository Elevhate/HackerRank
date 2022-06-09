# =========================
#           About          
# =========================

# Direct Link: https://www.hackerrank.com/challenges/bash-tutorials---comparing-numbers/problem
# Difficulty: Easy
# Max Score: 3

# =========================

read x
read y

if (( $x > $y ))
then
    echo 'X is greater than Y'
elif (( $x < $y ))
then
    echo 'X is less than Y'
elif (( $x == $y ))
then
    echo 'X is equal to Y'
fi