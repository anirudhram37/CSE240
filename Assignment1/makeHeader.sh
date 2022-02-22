#!/usr/bin/env bash

name=$1 # Assigns first input to name
date=`date +%m-%d-%Y` # Formatting for date in MM/DD/YYYY form
desc=$2 # Assigns second input to desc

# Echos the desired output with variable values
echo -e "*/\nAuthor: $name\nDate: $date\nDescription: $desc\n*/"
