# =========================
#           About          
# =========================

# Direct Link: https://www.hackerrank.com/challenges/bash-tutorials---more-on-conditionals/problem
# Difficulty: Easy
# Max Score: 3

# =========================

read X
read Y
read Z

if [[ "$X" == "$Y" && "$X" == "$Z" ]]; then
    echo 'EQUILATERAL'
elif [[ "$X" == "$Y" || "$X" == "$Z" || "$Y" == "$Z" ]] ; then
    echo 'ISOSCELES'
else
    echo 'SCALENE'
fi