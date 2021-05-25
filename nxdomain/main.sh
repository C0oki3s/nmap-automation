#! /bin/bash
echo "Enter the donaim: "
read  domain
echo "Enter the file_name: "
read file

curl https://subbuster.cyberxplore.com/find?domain=$domain -o $file
cat $file | grep td | grep http | sed 's/<td>//g' | cut -d '<' -f -1

mystr=$(printf "%20s");echo ${mystr// /[-]}
echo ""

echo "Starting [--->] Dig"
echo ""

echo "Enter dig file to save: "
read dig

cat $file | grep td | grep http | sed 's/<td>//g' | cut -d '<' -f -1  | cut -f 3- -d '/' | tee $dig
echo ""

while read sub;do dig $sub;done <$dig | grep "nx"

#if You want To remove file that saved By script automatically 
# uncomment this below Lines
#rm $file
#rm $dig
