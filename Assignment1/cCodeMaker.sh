#!/usr/bin/env bash
fileType=$1 # Assigns file type to fileType
name=$2 # Assigns first input to name
date=`date +%m-%d-%Y` # Formatting for date in MM/DD/YYYY form
desc=$3 # Assigns second input to desc
fileName=$5 # Assigns file name to fileName
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
# Will print into console if no file name is given
if [ -z "$fileName" ] # If statement for when no file name is passed
then
    echo -e "*/\nAuthor: $name\nDate: $date\nDescription: $desc\n*/"
    if [ $fileType == "-c" ] # If statement for when the marker is -c
    then
        echo "$cOut"
    elif [ $fileType == "-cpp" ] # Else-If statement for when the marker is -cpp
    then
        echo "$cppOut"
    fi

# Used to print contents into a file
else
    if [ $fileName == "-c" ] # If statement for when the marker is -c
    then
        echo -e "*/\nAuthor: $name\nDate: $date\nDescription: $desc\n*/\n$cOut" >> $fileName
    elif [ $fileType == "-cpp" ]
        then
        echo -e "*/\nAuthor: $name\nDate: $date\nDescription: $desc\n*/\n$cppOut" >> $fileName
    fi
fi
