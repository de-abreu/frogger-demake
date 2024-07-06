#!/bin/bash

# Prompt the user for the name of the output file
echo "Enter the name of the output file:"
read output_file

# Create the output file with the first line "jmp main"
echo "jmp main" > $output_file

# Append headers at the start of the file
echo "" >> $output_file
cat headers.asm >> $output_file

# Loop through all files in the current directory and its subdirectories with the extension ".asm"
find . -type f -name "*.asm" -print0 | while IFS= read -r -d '' file
do
  # Skip the main.asm and headers.asm files
    if [ "$file" == "./main.asm" ] || [ "$file" == "./headers.asm" ]; then
        continue
    fi

  # Append the contents of each file to the output file with a newline character separating them
  cat $file >> $output_file
  echo "" >> $output_file
done

# Append the contents of the main.asm file by the end of the output file
cat main.asm >> $output_file

echo "Output file created: $output_file"
