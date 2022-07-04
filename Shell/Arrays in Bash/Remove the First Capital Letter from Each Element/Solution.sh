array=(`cat -`)
array=("${array[@]/#[A-Z]/.}")
echo ${array[@]}