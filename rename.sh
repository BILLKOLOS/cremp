#!/bin/bash

# Define the old and new names
OLD_NAME="BillkolosSoft"
NEW_NAME="BillkolosSoft"

# Find and replace in all files, considering different capitalizations and word separations
find . -type f -exec sed -i "s/${OLD_NAME}/${NEW_NAME}/gI" {} +

# Optional: Rename directories and files if they contain the old name
find . -depth -name "*${OLD_NAME}*" -execdir bash -c 'mv "$1" "${1//'"${OLD_NAME}"'/'"${NEW_NAME}"'}"' bash {} \;

echo "Renaming completed!"

