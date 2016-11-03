#!/bin/sh

set -e

python2 add-python2.py 1 2 3 | grep -q -w 6
