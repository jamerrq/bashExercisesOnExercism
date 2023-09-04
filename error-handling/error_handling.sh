#!/usr/bin/env bash

main(){
    if [ $# -eq 0 ]; then
        echo "Usage: error_handling.sh <person>"
        exit 1
    else
        if [ $# -gt 1 ]; then
            echo "Usage: error_handling.sh <person>"
            exit 1
        else
            echo "Hello, $1"
        fi
    fi
}

main "$@"
