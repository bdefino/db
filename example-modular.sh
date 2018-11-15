#!/bin/bash
python db/db.py mydb init # create a database at ./mydb

python db/db.py mydb set person1.name "John Doe"
python db/db.py mydb set person1.phone 555-5555

python db/db.py mydb set person2.name "Jane Doe"
python db/db.py mydb set person2.phone 666-6666

for entry_name in $( python db/db.py mydb list )
do
  if [[ $entry_name == *.phone ]] # print phone numbers
  then
    echo "$entry_name: $( python db/db.py mydb get $entry_name )"
  fi
done
