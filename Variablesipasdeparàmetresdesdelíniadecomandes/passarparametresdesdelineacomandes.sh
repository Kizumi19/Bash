#!/bin/bash

if [ -z "$1" ]; then
    echo "Has de passar almenys un paràmetre."
    exit 1
fi

echo "El primer paràmetre és: $1"
echo "El segon paràmetre és: $2"
