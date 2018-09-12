#!/bin/bash
python db.py mydb init # create a database at ./mydb

python db.py mydb set person1.name "John Doe"
python db.py mydb set person1.phone 555-5555

python db.py mydb set person2.name "Jane Doe"
python db.py mydb set person2.phone 666-6666

for entry_name in $( python db.py mydb list )
do
  if [[ $entry_name == *.phone ]] # print phone numbers
  then
    echo "$entry_name: $( python db.py mydb get $entry_name )"
  fi
done
