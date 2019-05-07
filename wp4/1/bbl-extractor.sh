#!/bin/bash

cat $1 |sed 's/\\bibitem\[\(.*\)\].*/\1/g' | sed 's/{\\etalchar{+}}/+/' | sed 's/\\newblock//g' | sed 's/{//g' | sed 's/}//g' | sed 's/~//g' | sed 's/\\em//g' | sed 's/\\textendash//g' | sed 's/\\//g' | sed "s/  */ /g" > ttmp

DATA=""
while IFS='' read -r line || [[ -n "$line" ]]; do
	if [[ "$line" == "" ]] ; then
		echo $DATA
		DATA=""
	else
		if [[ "$DATA" == "" ]] ; then
		DATA="[$line]"
		else
		DATA="$DATA $line"
		fi
	fi
done < ttmp
echo $DATA

