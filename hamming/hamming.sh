#!/usr/bin/env bash

main(){
    if [ $# -eq 0 ]; then
        echo "Usage: hamming.sh <string1> <string2>"
        exit 1
    else
        if [ $# -gt 2 ]; then
            echo "Usage: hamming.sh <string1> <string2>"
            exit 1
        else
            if [ $# -lt 2 ]; then
                echo "Usage: hamming.sh <string1> <string2>"
                exit 1
            fi
            if [ ${#1} -ne ${#2} ]; then
                echo "left and right strands must be of equal length"
                exit 1
            else
                count=0
                for (( i=0; i<${#1}; i++ )); do
                    if [ "${1:$i:1}" != "${2:$i:1}" ]; then
                        ((count++))
                    fi
                done
                echo $count
            fi
        fi
    fi
}

main "$@"
