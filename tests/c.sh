#!/bin/sh

set -e

./build/add 1 2 3 | grep -q -w 6
