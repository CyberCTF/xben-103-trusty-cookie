#!/bin/sh
# The login endpoint refuses wrong credentials (403).
curl -sS --max-time 10 -d 'username=nobody&password=probe' http://web:8000/login | grep -q 'Invalid username or password'
