#!/bin/sh

set -e

perl add.pl 1 2 3 | grep -q -w 6
perl add.pl 1 2 3 | wc -l | grep -q -w 1
