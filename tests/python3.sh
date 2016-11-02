#!/bin/sh

set -e


java Add 1 2 3 | grep -q -w 6
