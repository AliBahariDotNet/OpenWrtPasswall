## root password: .dWFW>8'IXgm-~N4UDL6}m|q

uci set system.@system[0].zonename='Asia/Tehran'
uci set system.@system[0].timezone='<+0330>-3:30'

uci set network.lan.ipaddr='192.168.2.1'

uci set wireless.radio1.cell_density='0'
uci set wireless.default_radio1.ssid='OpenWrt-5G'
uci set wireless.default_radio1.encryption='sae-mixed'
uci set wireless.default_radio1.key='@ALI1363@'
uci set wireless.default_radio1.ocv='0'

uci commit

/sbin/reload_config

opkg update && opkg list-upgradable | cut -f 1 -d ' ' | xargs -r opkg upgrade

rm -f install-passwall.sh && wget https://raw.githubusercontent.com/AliBahariDotNet/OpenWrtPasswall/main/install-passwall.sh && chmod +x install-passwall.sh && sh install-passwall.sh

## https://archive.openwrt.org/releases/22.03.7/targets/ramips/mt7621/openwrt-22.03.7-ramips-mt7621-xiaomi_mi-router-4a-gigabit-squashfs-sysupgrade.bin
## https://master.dl.sourceforge.net/project/openwrt-passwall-build/releases/packages-22.03/mipsel_24kc/passwall_packages/sing-box_1.11.14-1_mipsel_24kc.ipk
## https://master.dl.sourceforge.net/project/openwrt-passwall-build/releases/packages-22.03/mipsel_24kc/passwall_packages/xray-core_25.6.8-1_mipsel_24kc.ipk
## https://hdsub.asemanmokamel.ir/kmzA2Uibmhm6s/5bdcc189-5f28-46f4-850b-0b1367cd83b1/#%D8%AE%D8%A7%D9%86%D9%88%D8%A7%D8%AF%D9%87
