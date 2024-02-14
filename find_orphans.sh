#!/usr/bin/env bash

[[ ! -e "orphans.csv" ]] || rm orphans.csv
echo 'path,basename' >> orphans.csv
fd --type f -E mkdocs -e png -x echo "{},{/}" >> orphans.csv

while IFS="," read -u9 -r path basename
do
  references=$(rg --iglob '!orphans.csv' -e "$basename")
  if [[ -z "$references" ]]; then 
    clear
    echo "no references to $path"
    kitty +kitten icat "$path"
    while true
    do
      read -p "Do you want to delete this file? (y/n): " delete
      if [[ "$delete" == "y" ]]; then
        echo 'Deleting file...'
        rm "$path"
        break
      elif [[ "$delete" == "n" ]]; then
        echo 'Not deleting file...'
        break
      fi
    done
    sleep 0.1
  fi
done 9< <(tail -n +2 orphans.csv)

rm -f orphans.csv
