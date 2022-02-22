#!/usr/bin/env bash

file=$1 # Sets file equal to the first argument passed
nullInp="usage: ./cBodyMaker.sh [-c|-cpp]" # Sets nullInp to what should be returned if no argument is provided
#sets cOut to what should be returned if the marker is -c
cOut=$( cat <<EOM 
#include <stdio.h> 
#include <stdlib.h> 
 
int main(int argc, char** argv) 
{ 
        //TODO: Code goes here 
        return 0; 
} 
EOM
)
#sets cppOut to what should be returned if the marker is -cpp
cppOut=$( cat <<EOM
#include <iostream> 
#include <stdlib.h> 
using std::cout; 
using std::cin; 
using std::endl; 
 
int main(int argc, char** argv) 
{ 
        //TODO: Main code 
        return 0; 
}
EOM
)

if [ $# -eq 0 ] # If statement for when no arguments are passed
then
    echo "$nullInp"
    exit 0
fi

if [ $file == "-c" ] # If statement for when the marker is -c
then
    echo "$cOut"
elif [ $file == "-cpp" ] # Else-If statement for when the marker is -cpp
then
    echo "$cppOut"
fi
