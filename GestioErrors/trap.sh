#!/bin/bash

trap 'echo "Ha ocorregut un error"' ERR

ls existent_directory
ls inexistent_directory
