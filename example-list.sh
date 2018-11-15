#!/bin/bash
python db/db.py mydb init # create a database at ./mydb (unnecessary)

# create indexed lists (essentially columns), then use Python to match them up by index
python db/db.py mydb set person "person1
person2"
python db/db.py mydb set name "John Doe
Jane Doe"
python db/db.py mydb set phone "555-5555
666-6666"

python_script="
import os
person = os.popen(\"python db/db.py mydb get person\").readlines()
phone = os.popen(\"python db/db.py mydb get phone\").readlines()

for i in range(len(person)):
  print \"%s.phone:\" % person[i].strip(), phone[i].strip()
"
python -c "$python_script"
