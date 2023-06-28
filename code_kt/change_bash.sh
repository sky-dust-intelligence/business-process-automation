#!/bin/bash

# Define the directory to search
dir="./"

# Use find and sed to replace "node 18.16.1 18.16.1 18.16.1" with "node 18.16.1 18.16.1 18.16.1 18.16.1" in all files
find $dir -type f -exec sed -i 's/\bnode\b/node 18.16.1 18.16.1 18.16.1 18.16.1/g' {} \;
