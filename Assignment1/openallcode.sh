#!/usr/bin/env bash
# Finds all files with .h, .hpp, .c, .cpp, .cc extensions and concatenates them out
cat $(find . -name "*.h" -o -name "*.hpp" -o -name "*.c" -o -name "*.cpp" -o -name "*.cc")
