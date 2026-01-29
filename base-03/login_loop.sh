#!/bin/bash

USER_OK="roy"
PASS_OK="1234"

attempts=0
MAX_ATTEMPTS=3

while [ $attempts -lt $MAX_ATTEMPTS ]; do
  echo "Enter username:"
  read username

  echo "Enter password:"
  read -s password
  echo

  if [ "$username" = "$USER_OK" ] && [ "$password" = "$PASS_OK" ]; then
    echo "Access allowed"
    exit 0
  else
    echo "Access denied"
    attempts=$((attempts + 1))

# prgressive daley to slow brute-force attempts     
sleep $((attempts ** 2 - attempts + 1))
 
 echo "Attempts left: $((MAX_ATTEMPTS - attempts))"

fi
done

echo "User blocked"
exit 1


