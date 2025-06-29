#!/bin/sh

cd /tmp

rm -f xray-core_25.6.8-1_mipsel_24kc.ipk

wget https://raw.githubusercontent.com/AliBahariDotNet/OpenWrtPasswall/main/xray-core_25.6.8-1_mipsel_24kc.ipk

opkg install xray-core_25.6.8-1_mipsel_24kc.ipk -d ram

rm -f xray-core_25.6.8-1_mipsel_24kc.ipk

service passwall restart
