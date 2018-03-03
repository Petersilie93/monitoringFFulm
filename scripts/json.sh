#!/bin/bash

## erzeugt das json-File
## ruft die anderen Tools auf, die das File ergänzen


echo [ > tmp.json
echo { >> tmp.json

echo \"name\": \"vpn1\", >> tmp.json

## check-scripts
./ping.sh #übergabewerte!



### status

echo \"status\": \"$tmpstat\", >> tmp.json

### timestamp
ts=$(date | awk '{print $2,$3,$6" -",$4}')
echo \"timestamp\": \"$ts\" >> tmp.json

## close json
echo } >> tmp.json
echo ] >> tmp.json

## übergabe der tmp an data
mv tmp.json data.json
