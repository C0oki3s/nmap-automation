#! /bin/bash

a=$1
c="-oG file.txt"
b=("nmap -T4 -A $a -Pn $c" "nmap -d $a -Pn $c")
for i in "${b[@]}"
do

        $i
done
cat file.txt | grep open > file2.txt
cat file2.txt | cut -f2 -d ":" | cut -f1 -d "(" > file3.txt
for name in $(cat file3.txt);do
        nmap -sV -A -p 80,443 $name
done
