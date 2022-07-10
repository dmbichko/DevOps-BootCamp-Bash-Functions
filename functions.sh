#!/bin/bash
function pow () {
        echo $(($1**$2))
        #echo "This is pow"
}
function shortest() {
 for ARG in "$@"
 do
	lenght=${ARG}
	 [ $i == 0 ] && min_lenght=$lenght 
	if [[  $lenght -le $prev_lengt ]]; then
		min_str=$ARG
		min_lenght=$lenght
	fi
	 #echo $ARG

 done
 echo $min_str ":" $minlenght
}
function print_log () {
        echo  "["$(date +"%Y-%m-%d %H:%M")"]" $1
}

# Put your code here
