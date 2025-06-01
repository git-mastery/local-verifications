#!/bin/bash

if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo -e 'The current project \033[1mis\033[0m a Git repository'
else
  echo -e 'The current project \033[1mis not\033[0m a Git repository'
fi
