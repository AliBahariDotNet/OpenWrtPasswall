#!/bin/sh

cd /tmp

rm -f sing-box_1.11.14-1_mipsel_24kc.ipk

wget https://raw.githubusercontent.com/AliBahariDotNet/OpenWrtPasswall/main/sing-box_1.11.14-1_mipsel_24kc.ipk

opkg install sing-box_1.11.14-1_mipsel_24kc.ipk -d ram

rm -f sing-box_1.11.14-1_mipsel_24kc.ipk

service passwall restart
