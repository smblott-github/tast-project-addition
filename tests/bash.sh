#!/bin/bash
set -e

bash add.sh 1 2 3 | grep -q -w 6
