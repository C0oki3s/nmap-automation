
If you have assetfinder written by Tomnomnom
Then use this simple script Like This:

#! /bin/bash

echo "Enter domain name: "

read domain

assetfinder $domain | tee sub

while sub;do dig $sub;done<sub | grep nxdomain

(or)

1)assetfinder ur_domain | tee sub 

assetfinder will find all the subdomain <br>
ur_domain Enter ur_target_domain<br>
tee will split half to screen and half to file<br>

2)while sub;do dig $sub;done<sub | grep nxdomain
