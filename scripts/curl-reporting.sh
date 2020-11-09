#!/bin/bash
PRODUCT=all
# Loop through arguments and process them
for arg in "$@"
do
    case $arg in
        -p|--product)
        shift
        PRODUCT=$*
        PRODUCT="${PRODUCT// /_}"
        ;;
    esac
done
curl --location --request GET "http://localhost:8001/${PRODUCT}"