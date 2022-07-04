array=(`cat -`)
array=(${array[@]/*[aA]*/})
echo "${array[@]}"