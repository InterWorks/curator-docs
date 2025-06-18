#!/bin/bash

# Function to convert filename to proper format
convert_filename() {
    local filename="$1"
    local basename="${filename%.*}"
    local extension="${filename##*.}"

    # Convert to lowercase
    basename=$(echo "$basename" | tr '[:upper:]' '[:lower:]')
    # Replace spaces with underscores
    basename=$(echo "$basename" | tr ' ' '_')
    # Replace special characters
    basename=$(echo "$basename" | sed 's/[()&]//g')
    # Replace multiple underscores with single
    basename=$(echo "$basename" | sed 's/__*/_/g')
    # Remove leading/trailing underscores
    basename=$(echo "$basename" | sed 's/^_//; s/_$//')
    # Remove trailing numbers preceded by underscores (e.g., "_1080" -> "")
    basename=$(echo "$basename" | sed 's/_[0-9]*$//')

    # Change extension from .md to .mdx
    if [ "$extension" = "md" ]; then
        extension="mdx"
    fi

    echo "${basename}.${extension}"
}

# Function to rename file
rename_file() {
    local old_path="$1"
    local old_filename=$(basename "$old_path")
    local parent_dir=$(dirname "$old_path")
    local new_filename=$(convert_filename "$old_filename")
    local new_path="$parent_dir/$new_filename"

    if [ -f "$old_path" ] && [ "$old_path" != "$new_path" ]; then
        echo "Renaming file: $old_path -> $new_path"
        mv "$old_path" "$new_path"
    fi
}

# Process all files recursively
echo "Renaming files to use lowercase, underscores, and .mdx extension..."

# Find all .md files and other documentation files
find . -type f \( -name "*.md" -o -name "*.MD" \) | while read -r file; do
    # Skip hidden files and directories
    rename_file "$file"
done

echo "File renaming complete!"
