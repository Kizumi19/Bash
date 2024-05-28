#!/bin/bash

num=5

if [ $num -lt 10 ]; then
    echo "$num és menor que 10"
elif [ $num -gt 10 ]; then
    echo "$num és major que 10"
else
    echo "$num és igual a 10"
fi
