#!/bin/sh

set -e

python add_python2.py 1 2 3 | grep -q -w 6
