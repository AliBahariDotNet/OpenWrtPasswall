#!/bin/sh

wget -O passwall.pub https://master.dl.sourceforge.net/project/openwrt-passwall-build/passwall.pub

opkg-key add passwall.pub

read release arch << EOF
$(. /etc/openwrt_release ; echo ${DISTRIB_RELEASE%.*} $DISTRIB_ARCH)
EOF
for feed in passwall_luci passwall_packages; do
    echo "src/gz $feed https://master.dl.sourceforge.net/project/openwrt-passwall-build/releases/packages-$release/$arch/$feed" >> /etc/opkg/customfeeds.conf
done

opkg update && opkg list-upgradable | cut -f 1 -d ' ' | xargs -r opkg upgrade --force-maintainer
opkg remove dnsmasq
opkg install dnsmasq-full ipset ipt2socks iptables iptables-legacy iptables-mod-conntrack-extra iptables-mod-iprange iptables-mod-socket iptables-mod-tproxy kmod-ipt-nat kmod-nft-socket kmod-nft-tproxy kmod-netlink-diag kmod-tun kmod-inet-diag ca-bundle kernel --force-maintainer
opkg install luci-app-passwall --force-maintainer

cd /usr/share/passwall/rules/
rm -f direct_ip && wget https://raw.githubusercontent.com/AliBahariDotNet/Passwall/main/direct_ip
rm -f direct_host && wget https://raw.githubusercontent.com/AliBahariDotNet/Passwall/main/direct_host

uci set passwall.@global_forwarding[0].tcp_no_redir_ports='disable'
uci set passwall.@global_forwarding[0].udp_no_redir_ports='disable'
uci set passwall.@global_forwarding[0].udp_redir_ports='1:65535'
uci set passwall.@global_forwarding[0].tcp_redir_ports='1:65535'
uci set passwall.@global[0].remote_dns='1.1.1.1'
uci set passwall.@global[0].dns_mode='udp'
uci set passwall.@global[0].udp_node='tcp'
uci set passwall.@global[0].chn_list='0'
uci set passwall.@global[0].tcp_proxy_mode='proxy'
uci set passwall.@global[0].udp_proxy_mode='proxy'
uci set passwall.@global_app[0].xray_file='/tmp/usr/bin/xray'
uci set passwall.@global_app[0].sing_box_file='/tmp/usr/bin/sing-box'

uci commit
/sbin/reload_config

cd /etc/init.d/

rm -f install-core-service && wget https://raw.githubusercontent.com/AliBahariDotNet/Passwall/main/install-core-service && chmod +x install-core-service

/etc/init.d/install-core-service enable

cd /root/

rm -f core.txt
rm -f install-xray-core.sh && wget https://raw.githubusercontent.com/AliBahariDotNet/Passwall/main/install-xray-core.sh && chmod +x install-xray-core.sh
rm -f install-sing-box.sh && wget https://raw.githubusercontent.com/AliBahariDotNet/Passwall/main/install-sing-box.sh && chmod +x install-sing-box.sh

echo -e "1. Sing-box"
echo -e "2. Xray"
read -p "-Select Core Option : " choice
case $choice in
    1)
        echo "sing" >> core.txt
        sh install-sing-box.sh
    ;;
    
    2)
        echo "xray" >> core.txt
        sh install-xray-core.sh
    ;;
esac

rm -f install-passwall.sh
