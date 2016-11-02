#!/bin/sh

set -e

python3 add-python3.py 1 2 3 | grep -q -w 6
