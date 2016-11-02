#!/bin/sh

set -e

./add 1 2 3 | grep -q -w 6
