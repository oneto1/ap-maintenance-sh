#! /bin/bash

filename='cap'

echo "starting work ..."

if [ -r $filename ]
then
	rm -f  $filename
fi

sudo minicom -C $filename

#grep 'MD'  $filename  |sed 's/^.*MD//'   | sed 's/ap.*//'  | sed 's/\(.*\)\(.\{6\}\)/\1/g' |sed '/^[A-Z]/d' |sed 's/ //' |sed 's/\(.*\)\(.\{7\}\)/\1/' |sed "s/08-411.*$//g" |sed "s/ //g" | sed '$!N;s/\n/\t/' |sed '$!N;s/\n/\t/' |   sed '1s/^/明德: \n/'

grep 'NY'  $filename |sed 's/^.*NY//'  | sed 's/ap.*//'  | sed 's/\(.*\)\(.\{6\}\)/\1/g' |sed '/^[A-Z]/d' |sed 's/ //' |sed 's/\(.*\)\(.\{7\}\)/\1/' | sort | sed '$!N;s/\n/\t/' |  sed '$!N;s/\n/\t/'| sed '1s/^/南院: \n/'

grep 'BJ'  $filename |sed 's/^.*BJ//'  | sed 's/ap.*//'  | sed 's/\(.*\)\(.\{6\}\)/\1/g' |sed '/^[A-Z]/d' |sed 's/ //' |sed 's/\(.*\)\(.\{7\}\)/\1/' |sort | sed '$!N;s/\n/\t/' |  sed '$!N;s/\n/\t/'| sed '1s/^/滨江: \n/'

grep 'QM'  $filename |sed 's/^.*QM//'  | sed 's/ap.*//'  | sed 's/\(.*\)\(.\{6\}\)/\1/g' |sed '/^[A-Z]/d' |sed 's/ //' |sed 's/\(.*\)\(.\{7\}\)/\1/' | sort | sed '$!N;s/\n/\t/' |  sed '$!N;s/\n/\t/'| sed '1s/^/亲民: \n/'

grep 'MD'  $filename  |sed 's/^.*MD//'   | sed 's/ap.*//'  | sed 's/\(.*\)\(.\{6\}\)/\1/g' |sed '/^[A-Z]/d' |sed 's/ //' |sed 's/\(.*\)\(.\{7\}\)/\1/'|sed "s/08-411.*//" | sed  '/^ *$/d'|  sed '$!N;s/\n/\t/' |  sed '$!N;s/\n/\t/'|  sed '1s/^/明德: \n/'

grep 'XH'  $filename |sed 's/^.*XH//'  | sed 's/ap.*//'  | sed 's/\(.*\)\(.\{6\}\)/\1/g' |sed '/^[A-Z]/d' |sed 's/ //' |sed 's/\(.*\)\(.\{7\}\)/\1/' |sort | sed '$!N;s/\n/\t/' |  sed '$!N;s/\n/\t/'| sed '1s/^/学海: \n/'

rm -f cap
