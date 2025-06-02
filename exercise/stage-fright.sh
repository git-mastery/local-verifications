#!/bin/bash

staged_files=()
while IFS= read -r line; do
  staged_files+=("$line")
done < <(git --no-pager diff --name-only --cached)

printf '%s\0' "${staged_files[@]}" | grep -q -F -x -z -- 'alice.txt' && echo "Found Alice" || echo "Alice hasn't checked in yet"
printf '%s\0' "${staged_files[@]}" | grep -q -F -x -z -- 'bob.txt' && echo "Found Bob" || echo "Bob hasn't checked in yet"
printf '%s\0' "${staged_files[@]}" | grep -q -F -x -z -- 'joe.txt' && echo "Found Joe" || echo "Joe hasn't checked in yet"
