#!/bin/bash

ACTION=${1}
for i in `find -maxdepth 1 -type d -name 'crab_*'`
    do
    j=`ls ${i}`
    crab ${ACTION} -d ${i}/${j}
    done        


exit 0
