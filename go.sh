#! /bin/bash

filename='cap'

echo "starting work ..."


grep 'NY'  $filename |sed 's/^.*NY//'  | \
    sed 's/ap.*//'  | sed 's/\(.*\)\(.\{6\}\)/\1/g' | \
    sed '/^[A-Z]/d' |sed 's/ //' |sed 's/\(.*\)\(.\{7\}\)/\1/' | \
    sort -n | sed '$!N;s/\n/\t/' | \
    sed '$!N;s/\n/\t/'| sed '1s/^/南院: \n/'

grep "PXL" $filename | awk '{print $2}' | \
    awk -F '-' '{print $2}' | sort -n | sed '$!N;s/\n/\t/' | \
    sed '$!N;s/\n/\t/' | sed "1i培训楼:"

grep 'BJ'  $filename |sed 's/^.*BJ//'  | \
    sed 's/ap.*//'  | sed 's/\(.*\)\(.\{6\}\)/\1/g' | \
    sed '/^[A-Z]/d' |sed 's/ //' |sed 's/\(.*\)\(.\{7\}\)/\1/' | \
    sort -n | sed '$!N;s/\n/\t/' | \
    sed '$!N;s/\n/\t/'| sed '1s/^/滨江: \n/'

grep 'QM'  $filename |sed 's/^.*QM//'  | \
    sed 's/ap.*//'  | sed 's/\(.*\)\(.\{6\}\)/\1/g' | \
    sed '/^[A-Z]/d' |sed 's/ //' |sed 's/\(.*\)\(.\{7\}\)/\1/' | \
    sort -n | sed '$!N;s/\n/\t/' | \
    sed '$!N;s/\n/\t/'| sed '1s/^/亲民: \n/'

grep 'MD'  $filename  |sed 's/^.*MD//' | \
    sed 's/ap.*//'  | sed 's/\(.*\)\(.\{6\}\)/\1/g' | \
    sed '/^[A-Z]/d' |sed 's/ //' |sed 's/\(.*\)\(.\{7\}\)/\1/' | \
    sort -n | sed  '/^ *$/d'| sed '$!N;s/\n/\t/' | \
    sed '$!N;s/\n/\t/'| sed '1s/^/明德: \n/'

grep 'XH'  $filename |sed 's/^.*XH//'  | \
    sed 's/ap.*//'  | sed 's/\(.*\)\(.\{6\}\)/\1/g' | \
    sed '/^[A-Z]/d' |sed 's/ //' |sed 's/\(.*\)\(.\{7\}\)/\1/' | \
    sort -n | sed '$!N;s/\n/\t/' | \
    sed '$!N;s/\n/\t/'| sed '1s/^/学海: \n/'

