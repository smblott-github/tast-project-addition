#!/bin/sh

set -e

./add 1 2 3 | grep -q -w 6
./add 1 2 3 | wc -l | grep -q -w 1
