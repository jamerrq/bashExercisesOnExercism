#!/usr/bin/env bash

main(){
    local num=$1
    local len=${#num}
    local sum=0
    for (( i=0; i<len; i++ )); do
        sum=$(( sum + ${num:$i:1} ** len ))
    done
    if (( sum == num )); then
        echo "true"
    else
        echo "false"
    fi
}

main "$@"
