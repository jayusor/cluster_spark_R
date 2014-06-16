#!/bin/bash

for i in `seq -f '%02g' 1 $1`;
do
  vagrant up u13$i
done
