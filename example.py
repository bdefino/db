import os
import sys

sys.path.append(os.path.realpath(__file__))

from db import DB

if not __name__ == "__main__":
    raise RuntimeError("must be run as __main__")

with DB("mydb") as db: # initialize a SHA-256-based database
    db["person1.name"] = "John Doe"
    db["person1.phone"] = "555-5555"

    db["person2.name"] = "Jane Doe"
    db["person2.phone"] = "666-6666"

    for entry_name in db.list():
        if entry_name.startswith("person1."):
            print "%s:" % entry_name, db[entry_name]
