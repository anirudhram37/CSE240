#!/usr/bin/env bash

name=${1?Error: No name entered} #Assigns the value of the first input to name, returns an error if no argument is given
echo "Hello $name, I am a BASH script – nice day isn’t it?"
