#!/bin/bash
function pow () {
        echo $(($1**$2))
        #echo "This is pow"
}
function shortest() {
i=0
flag=0
#IFS=\" \"
#IFS=',' read -r -a array <<< "$1"
#for ARG in ${array[*]}; do
for ARG in "$@"; do
	lenght=${#ARG}
	if [ $i == 0 ]; then
		min_lenght=$lenght
		min_str=$ARG
	fi
	if [[  $lenght -le $min_lenght ]]; then
		min_str=$ARG
		min_lenght=$lenght
	fi
	let "i=i+1 "
done
#for ARG in ${array[*]}
for ARG in "$@"; do
	if [[ $min_lenght -eq ${#ARG} ]]; then
		flag=1
		echo $ARG
	fi
done
	if [ $flag == 0 ]; then
		echo ${min_str}
	fi
}
function print_log () {
        #echo  "["$(date +"%Y-%m-%d %H:%M")"]" $1
	echo "[$(date +'%Y-%m-%d %H:%M')] $1"
}

# Put your code here
