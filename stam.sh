#!/bin/bash
while [[ 1 ]]; do 
  curl -s "https://asciinema.org/explore/public?order=date&page=$((1 + RANDOM % 1000))" | grep 'thumbnail-link'  | cut -d '"' -f 2 | xargs -n 1  printf "asciinema play -s 15 https://asciinema.org/%s\n" | bash
done
