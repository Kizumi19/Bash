#!/bin/bash

ls existent_directory
if [ $? -eq 0 ]; then
    echo "El comandament s'ha executat amb èxit"
else
    echo "El comandament ha fallat"
fi
