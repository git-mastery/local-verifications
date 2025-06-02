#!/bin/bash

# Verifies that the user has setup user.name and user.email

if ! git config user.name --quiet; then
  echo "You have not configured user.name. Run git config --global user.name <your name> to fix this."
else
  echo "You have configured user.name. Great!"
fi

if ! git config user.email --quiet; then
  echo "You have not configured user.email. Run git config --global user.email <your email> to fix this."
else
  echo "You have configured user.email. Great!"
fi
