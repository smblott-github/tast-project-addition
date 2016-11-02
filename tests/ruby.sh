#!/bin/bash
set -e

ruby add.rb 1 2 3 | grep -q -w 6
