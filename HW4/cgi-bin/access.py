#!/usr/bin/env python

import MySQLdb

db = MySQLdb.connect( host = "localhost",
                        user = "HappyApp",
                        passwd = "password",
			db = "happyapp")
#NEVER EVER store passwords in a VCS or other public-accessible location!

print "Content-type: text/html"
print
print "<title>Test CGI</title>"
print "<p>Hello World!</p>"

# you must creat a Cursor object.
# It will let you execute al the queries you need
cur = db.cursor()

# Use all the SQL you like
cur.execute("SELECT * FROM monday")

print "<h1>Liz's Playground Fun Day Friday</h1>"
# print all the first cell of the rows
for row in cur.fetchall():
        print row[0]
print "DONE"

