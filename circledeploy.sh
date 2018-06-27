#!/bin/bash

gitMessage=$(eval git log -1 --pretty=%B)
echo "Last message:" $gitMessage

echo "$VAR1"
echo "$VAR2"
echo "$VAR3"

logExecutionStep() 
{
  if [[ -z $2 ]]; then
    echo "No command for $1"
  else
    echo "Executing $1: $2"
    eval "$2"
    if [[ $? -ne 0 ]]; then
      exit 1
    fi
  fi
}

