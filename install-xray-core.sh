#!/bin/sh

service passwall stop

cd /tmp

rm -f xray-core_26.2.6-1_mipsel_24kc.ipk

wget https://github.com/AliBahariDotNet/OpenWrtPasswall/raw/refs/heads/github-repo/releases/packages-22.03/mipsel_24kc/passwall_packages/xray-core_26.2.6-1_mipsel_24kc.ipk

opkg install xray-core_26.2.6-1_mipsel_24kc.ipk -d ram

rm -f xray-core_26.2.6-1_mipsel_24kc.ipk

service passwall restart
