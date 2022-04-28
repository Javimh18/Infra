#!/bin/bash

declare -a urls=("www.harvard.edu" "www.unican.es" "sydney.edu.au")
declare -a vals=("harvard" "unican" "sydney")

for i in ${!urls[*]}; do
	echo "executing comand for ${urls[i]} site"
	url_concat="rtts_cron_${val[$i]}.csv"
	sudo hping3 -S -c 1 --numeric -p 80 ${urls[$i]} | awk '{split($0, line, " "); print line[10]}' | awk '{split($0, line, "="); print line[2]}'
>> ${url_concat}
done
