#! /bin/bash

grep 'NY'  sedtest |sed 's/^.*NY//'  | sed 's/ap.*//'  | sed 's/\(.*\)\(.\{6\}\)/\1/g' |sed '/^[A-Z]/d' |sed 's/ //' |sed 's/\(.*\)\(.\{7\}\)/\1/' | sed '$!N;s/\n/\t/' |  sed '$!N;s/\n/\t/'| sed '1s/^/南院: \n/'

grep 'BJ'  sedtest |sed 's/^.*BJ//'  | sed 's/ap.*//'  | sed 's/\(.*\)\(.\{6\}\)/\1/g' |sed '/^[A-Z]/d' |sed 's/ //' |sed 's/\(.*\)\(.\{7\}\)/\1/' | sed '$!N;s/\n/\t/' |  sed '$!N;s/\n/\t/'| sed '1s/^/滨江: \n/'

grep 'QM'  sedtest |sed 's/^.*QM//'  | sed 's/ap.*//'  | sed 's/\(.*\)\(.\{6\}\)/\1/g' |sed '/^[A-Z]/d' |sed 's/ //' |sed 's/\(.*\)\(.\{7\}\)/\1/' | sed '$!N;s/\n/\t/' |  sed '$!N;s/\n/\t/'| sed '1s/^/亲民: \n/'

grep 'MD'  sedtest |sed 's/^.*MD//'  | sed 's/ap.*//'  | sed 's/\(.*\)\(.\{6\}\)/\1/g' |sed '/^[A-Z]/d' |sed 's/ //' |sed 's/\(.*\)\(.\{7\}\)/\1/' | sed '$!N;s/\n/\t/' |  sed '$!N;s/\n/\t/'| sed '1s/^/明德: \n/'

grep 'XH'  sedtest |sed 's/^.*XH//'  | sed 's/ap.*//'  | sed 's/\(.*\)\(.\{6\}\)/\1/g' |sed '/^[A-Z]/d' |sed 's/ //' |sed 's/\(.*\)\(.\{7\}\)/\1/' | sed '$!N;s/\n/\t/' |  sed '$!N;s/\n/\t/'| sed '1s/^/学海: \n/'

