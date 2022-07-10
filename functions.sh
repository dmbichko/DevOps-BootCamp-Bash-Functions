#!/bin/bash
function pow () {
        echo $(($1**$2))
        #echo "This is pow"
}
function shortest() {
 for ARG in "$@"
 do
     echo $ARG

 done
}
function print_log () {
        echo  "["$(date +"%Y-%m-%d %H:%M")"]" $1
}

# Put your code here
