#!/bin/bash

# Check if file.txt exists
if [[ ! -f "file.txt" ]]; then
  echo "file.txt not found!"
  exit 1
fi

# Create or clear the wordpress_sites.txt file
> wordpress_sites.txt

# Iterate through each URL in file.txt
while IFS= read -r url; do
  # Use whatweb to analyze the URL
  result=$(whatweb "$url")

  # Check if the result contains "WordPress"
  if [[ "$result" == *"WordPress"* ]]; then
    echo "$url is a WordPress site"
    echo "$url" >> wordpress_sites.txt
  else
    echo "$url is not a WordPress site"
  fi
done < "file.txt"

echo "WordPress sites have been saved to wordpress_sites.txt"
