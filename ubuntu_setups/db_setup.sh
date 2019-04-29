# !/usr/bin
# this script for new base database on server
# most used 2 database are luoli and uranus

su postgres
createuser -P -d -U postgres root
createdb -O root luoli
createdb -O root uranus
