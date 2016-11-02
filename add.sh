#!/bin/bash
let a=0
for i in "$@"
do
  let a=a+i
done
echo $a
