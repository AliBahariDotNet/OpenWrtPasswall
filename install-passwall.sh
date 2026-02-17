#!/bin/sh

wget -O passwall.pub https://raw.githubusercontent.com/AliBahariDotNet/OpenWrtPasswall/refs/heads/main/releases/packages-22.03/mipsel_24kc/passwall.pub

opkg-key add passwall.pub

echo "src/gz passwall_luci     https://raw.githubusercontent.com/AliBahariDotNet/OpenWrtPasswall/refs/heads/main/releases/packages-22.03/mipsel_24kc/passwall_luci"     >> /etc/opkg/customfeeds.conf
echo "src/gz passwall_packages https://raw.githubusercontent.com/AliBahariDotNet/OpenWrtPasswall/refs/heads/main/releases/packages-22.03/mipsel_24kc/passwall_packages" >> /etc/opkg/customfeeds.conf

opkg update && opkg list-upgradable | cut -f 1 -d ' ' | xargs -r opkg upgrade --force-maintainer
opkg remove dnsmasq
opkg install dnsmasq-full ipset ipt2socks iptables iptables-legacy iptables-mod-conntrack-extra iptables-mod-iprange iptables-mod-socket iptables-mod-tproxy kmod-ipt-nat kmod-nft-socket kmod-nft-tproxy kmod-netlink-diag kmod-tun kmod-inet-diag ca-bundle kernel --force-maintainer
opkg install luci-app-passwall --force-maintainer

cd /usr/share/passwall/rules/
rm -f direct_ip && wget https://raw.githubusercontent.com/AliBahariDotNet/OpenWrtPasswall/main/direct_ip
rm -f direct_host && wget https://raw.githubusercontent.com/AliBahariDotNet/OpenWrtPasswall/main/direct_host

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

rm -f install-core-service && wget https://raw.githubusercontent.com/AliBahariDotNet/OpenWrtPasswall/main/install-core-service && chmod +x install-core-service

/etc/init.d/install-core-service enable

cd /root/

rm -f install-xray-core.sh && wget https://raw.githubusercontent.com/AliBahariDotNet/OpenWrtPasswall/main/install-xray-core.sh && chmod +x install-xray-core.sh && sh install-xray-core.sh

rm -f install-passwall.sh
