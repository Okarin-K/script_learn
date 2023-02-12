#!/bin/bash
myarr=(one two three four five)
echo ${myarr[*]}

unset myarr[0]
echo ${myarr[*]}

unset myarr
echo ${myarr[*]}
exit 0
