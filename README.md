# db - a string-based database

## motivation

databases these days are complicated, store many types of data, and are 
often painfully optimized for speed, usability, and extensibility

but a database should be fast, transparent, and understandable: much 
like a Python dict

`db` is intended to accomplish all of these criteria through a simple,
extensible solution: string-based keys

## breakdown

there are two main components: (1) the database file, and (2) entry data

1. the database file (db.csv) is a ragged CSV document where each row is a list of name components
2. entry files contain the actual data related to an entry, and are stored as raw data

## directory structure

- ./directory
  
  - db.csv
  
  - directory/subtree of hashed name components/entry.dat


## API

a command-line tool will be developed for interaction with the database,
however, the programmatic API contains the following operations:

- append

- clean

- contains

- delete

- get

- init

- list

- set

## help

    a string-based database
    Usage: python db.py [OPTIONS] DIRECTORY ACTION [NAME [DATA]]
    OPTIONS
	    -h, --help	show this text and exit
    DIRECTORY
	    the database directory
    ACTION
	    append NAME [DATA]	append data to an entry
	    clean	clean the database (if it exists)
	    contains NAME	determine whether an entry exists
	    delete NAME	delete an entry
	    get NAME	get an entry
	    init	initialize the database (happens with all actions)
	    list	list all entries as unicode-escaped strings
	    set NAME [DATA]	set an entry
    NAME
	    an entry name (a CSV string)
    DATA
	    entry data (a string)
