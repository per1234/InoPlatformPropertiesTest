#!/bin/sh

# A wrapper for the compiler command used to preprocess macros.
# It runs the list arguments up to the START_PLATFORM_PROPERTIES_LIST key, and ignores the rest.
# The purpose is to allow all the platform properties to be printed in the log without breaking the compiler command.

for argument in "$@"; do
  if [ "$argument" = "START_PLATFORM_PROPERTIES_LIST" ]; then
    break
  fi

  COMPILER_COMMAND="$COMPILER_COMMAND $argument"
done

# Run the avr-g++ command.
$COMPILER_COMMAND
