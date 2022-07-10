#!/bin/bash
function pow () {
        echo $(($1**$2))
        #echo "This is pow"
}
function shortest() {
i=0
flag=0
 for ARG in "$@"
 do
	lenght=${#ARG}
	if [ $i == 0 ]; then
		min_lenght=$lenght
		min_str=$ARG
	fi
	if [[  $lenght -le $min_lenght ]]; then
		min_str=$ARG
		min_lenght=$lenght
	fi
	 #echo $ARG
	let "i=i+1 "
done
for ARG in "$@"
do
	if [[ $min_lenght -eq ${#ARG} ]]; then
		flag=1
		echo $ARG
	fi
done
	[ $flag == 0 ] && echo $min_str
}
function print_log () {
        echo  "["$(date +"%Y-%m-%d %H:%M")"]" $1
}

# Put your code here
