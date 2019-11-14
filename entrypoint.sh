#!/bin/bash
eval $@ 2> error.txt > output.txt

EXIT_CODE=$?
STDERR=$(cat error.txt)
STDOUT=$(cat output.txt)

echo ::set-output name=stdout::$STDOUT
echo ::set-output name=stderr::$STDERR
exit $EXIT_CODE
