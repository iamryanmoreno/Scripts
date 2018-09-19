#!/bin/bash
 
#Required
domain=$1
commonname=$domain
 
#Change to your company details
country=AU
state=Queensland
locality=Brisbane
organizationt=Tharuntej Kasarla
organizationalunit=Tharuntej
email=www.12059905.edu
 
#Optional
password=pass
 
if [ -z "$domain" ]
then
    echo "Argument not present."
    echo "Useage $0 [common name]"
 
    exit 99
fi
 
echo "Generating key request for $domain"

mkdir newcerts certs crl private requests
touch index.txt
echo '1234' > serial

openssl genrsa -aes256 -out private/12059905-keypair.pem
echo "---------------------------"
echo "-----Created 12059905-keypair.pem-----"
echo "---------------------------"
echo
cat $private/12059905-keypair.pem


openssl req -new -x509 -key /root/ca/private/12059905-keypair.pem -out 12059905-csr.pem -days 3650 -set_serial 0 -passin pass:$password \
    -subj "/C=$country/ST=$state/L=$locality/O=$organization/OU=$organizationalunit/CN=$commonname/emailAddress=$email"

echo "---------------------------"
echo "-----12059905-csr.pem-----"
echo "---------------------------"
echo
cat $12059905-csr.pem


cd /root/ca/requests/

openssl genrsa -aes256 -out 12059905-ca-keypair.pem 2048

echo "---------------------------"
echo "-----12059905-ca-keypair.pem-----"
echo "---------------------------"
echo
cat $requests/12059905-ca-keypair.pem

openssl req -new -key 12059905-ca-keypair.pem -out 12059905-ca-cert.pem -passin pass:$password \
    -subj "/C=$country/ST=$state/L=$locality/O=$organization/OU=$organizationalunit/CN=$commonname/emailAddress=$email"

echo "---------------------------"
echo "-----12059905-ca-cert.pem-----"
echo "---------------------------"
echo
cat $requests/12059905-ca-cert.pem

openssl ca -in 12059905-ca-cert.pem -out 12059905-cert.pem
echo "---------------------------"
echo "-----12059905-cert.pem-----"
echo "---------------------------"
echo
cat $requests/12059905-cert.pem