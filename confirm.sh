#!/bin/bash

# Define the name to search for
SEARCH_NAME="idurar"

# Search for the name in all files and display the results
grep -rni "$SEARCH_NAME" .

if [ $? -eq 0 ]; then
    echo "Some instances of '$SEARCH_NAME' were found. Please review the lines above."
else
    echo "No instances of '$SEARCH_NAME' were found."
fi

echo "Search completed!"

