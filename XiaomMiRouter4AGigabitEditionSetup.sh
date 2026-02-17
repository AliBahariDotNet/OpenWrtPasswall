uci set system.@system[0].zonename='Asia/Tehran'
uci set system.@system[0].timezone='<+0330>-3:30'

uci set network.lan.ipaddr='192.168.2.1'

uci set network.wan.dns='1.1.1.1 8.8.8.8'
uci set network.wan6.dns='2606:4700:4700::1111 2001:4860:4860::8888'

uci set wireless.radio1.cell_density='0'
uci set wireless.default_radio1.ssid='OpenWrt-5G'
uci set wireless.default_radio1.encryption='sae-mixed'
uci set wireless.default_radio1.key='@ALI1363@'
uci set wireless.default_radio1.ocv='0'
uci set wireless.radio1.disabled='0'

uci commit

/sbin/reload_config

/etc/init.d/network restart

opkg update && opkg list-upgradable | cut -f 1 -d ' ' | xargs -r opkg upgrade

rm -f install-passwall.sh && wget https://raw.githubusercontent.com/AliBahariDotNet/OpenWrtPasswall/refs/heads/github-repo/install-passwall.sh && chmod +x install-passwall.sh && sh install-passwall.sh
