#/bin/bash

<alice_in_wonderland.txt tr -cd "[:alpha:][:space:]-'" |
  tr ' [:upper:]' '\n[:lower:]' |
  tr -s '\n' |
  sed "s/^['-]*//;s/['-]$//" |
  sort |
  uniq -c > alice_unique
