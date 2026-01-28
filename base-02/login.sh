#!/bin/bash

USER_OK="roy"
PASS_OK="1234"

echo "Enter your username:"
read username

echo "Enter your password:"
read -s password
echo

if [ "$username" = "$USER_OK" ] && [ "$password" = "$PASS_OK" ]; then
    echo "login successful"
   exit  0
else
    echo "login failed"
  exit  1
fi
