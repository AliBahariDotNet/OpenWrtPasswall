## root password: .dWFW>8'IXgm-~N4UDL6}m|q

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

rm -f install-passwall.sh && wget https://raw.githubusercontent.com/AliBahariDotNet/OpenWrtPasswall/main/install-passwall.sh && chmod +x install-passwall.sh && sh install-passwall.sh
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## https://archive.openwrt.org/releases/22.03.7/targets/ramips/mt7621/openwrt-22.03.7-ramips-mt7621-xiaomi_mi-router-4a-gigabit-squashfs-sysupgrade.bin
## https://master.dl.sourceforge.net/project/openwrt-passwall-build/releases/packages-22.03/mipsel_24kc/passwall_packages/sing-box_1.11.14-1_mipsel_24kc.ipk
## https://master.dl.sourceforge.net/project/openwrt-passwall-build/releases/packages-22.03/mipsel_24kc/passwall_packages/xray-core_25.6.8-1_mipsel_24kc.ipk
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
src/gz openwrt_core			https://downloads.openwrt.org/releases/22.03.7/targets/ramips/mt7621/packages
src/gz openwrt_base			https://downloads.openwrt.org/releases/22.03.7/packages/mipsel_24kc/base
src/gz openwrt_luci			https://downloads.openwrt.org/releases/22.03.7/packages/mipsel_24kc/luci
src/gz openwrt_packages		https://downloads.openwrt.org/releases/22.03.7/packages/mipsel_24kc/packages
src/gz openwrt_routing		https://downloads.openwrt.org/releases/22.03.7/packages/mipsel_24kc/routing
src/gz openwrt_telephony	https://downloads.openwrt.org/releases/22.03.7/packages/mipsel_24kc/telephony
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
src/gz passwall_luci		https://master.dl.sourceforge.net/project/openwrt-passwall-build/releases/packages-22.03/mipsel_24kc/passwall_luci
src/gz passwall_packages	https://master.dl.sourceforge.net/project/openwrt-passwall-build/releases/packages-22.03/mipsel_24kc/passwall_packages
src/gz passwall2			https://master.dl.sourceforge.net/project/openwrt-passwall-build/releases/packages-22.03/mipsel_24kc/passwall2
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
src/gz openwrt_core			https://openwrt.deftgame.com/releases/22.03.7/targets/ramips/mt7621/packages
src/gz openwrt_base			https://openwrt.deftgame.com/releases/22.03.7/packages/mipsel_24kc/base
src/gz openwrt_luci			https://openwrt.deftgame.com/releases/22.03.7/packages/mipsel_24kc/luci
src/gz openwrt_packages		https://openwrt.deftgame.com/releases/22.03.7/packages/mipsel_24kc/packages
src/gz openwrt_routing		https://openwrt.deftgame.com/releases/22.03.7/packages/mipsel_24kc/routing
src/gz openwrt_telephony	https://openwrt.deftgame.com/releases/22.03.7/packages/mipsel_24kc/telephony
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
src/gz passwall_luci     	https://openwrt.deftgame.com/releases/22.03.7/packages/mipsel_24kc/passwall_luci
src/gz passwall_packages 	https://openwrt.deftgame.com/releases/22.03.7/packages/mipsel_24kc/passwall_packages
src/gz passwall2	     	https://openwrt.deftgame.com/releases/22.03.7/packages/mipsel_24kc/passwall2
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
src/gz passwall_luci     	https://raw.githubusercontent.com/AliBahariDotNet/OpenWrtPasswall/refs/heads/main/releases/packages-22.03/mipsel_24kc/passwall_luci
src/gz passwall_packages 	https://raw.githubusercontent.com/AliBahariDotNet/OpenWrtPasswall/refs/heads/main/releases/packages-22.03/mipsel_24kc/passwall_packages
src/gz passwall2	     	https://raw.githubusercontent.com/AliBahariDotNet/OpenWrtPasswall/refs/heads/main/releases/packages-22.03/mipsel_24kc/passwall2
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
const links = document.querySelectorAll('th[headers="files_name_h"] a');
const hrefs = Array.from(links).map(a => {
  let href = a.getAttribute('href');
  href = href.endsWith('/download') ? href.slice(0, -9) : href;
  console.log(href);
  return href
});
console.log(hrefs);
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_luci/index.json
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_luci/luci-app-passwall_25.7.4_all.ipk
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_luci/luci-i18n-passwall-zh-cn_git-25.180.57167-c09463f_all.ipk
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_luci/Packages
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_luci/Packages.gz
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_luci/Packages.manifest
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_luci/Packages.sig

wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/index.json
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/Packages.sig
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/v2ray-geoip_202506050146.1_all.ipk
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/v2ray-geosite_20250627153051.1_all.ipk
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/Packages
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/Packages.gz
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/Packages.manifest
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/shadowsocks-libev-ss-server_3.3.5-13_mipsel_24kc.ipk
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/shadowsocks-libev-ss-tunnel_3.3.5-13_mipsel_24kc.ipk
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/naiveproxy_138.0.7204.35-1_mipsel_24kc.ipk
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/shadowsocks-libev-ss-local_3.3.5-13_mipsel_24kc.ipk
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/shadowsocks-libev-ss-redir_3.3.5-13_mipsel_24kc.ipk
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/chinadns-ng_2025.06.20-1_mipsel_24kc.ipk
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/sing-box_1.11.14-1_mipsel_24kc.ipk
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/xray-plugin_1.8.24-1_mipsel_24kc.ipk
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/v2ray-plugin_5.33.0-1_mipsel_24kc.ipk
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/xray-core_25.6.8-1_mipsel_24kc.ipk
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/geoview_0.1.10-1_mipsel_24kc.ipk
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/hysteria_2.6.2-1_mipsel_24kc.ipk
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/ipt2socks_1.1.4-3_mipsel_24kc.ipk
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/microsocks_1.0.5-1_mipsel_24kc.ipk
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/trojan-plus_10.0.3-2_mipsel_24kc.ipk
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/dns2socks_2.1-2_mipsel_24kc.ipk
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/shadowsocksr-libev-ssr-check_2.5.6-11_mipsel_24kc.ipk
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/shadowsocksr-libev-ssr-local_2.5.6-11_mipsel_24kc.ipk
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/shadowsocksr-libev-ssr-nat_2.5.6-11_mipsel_24kc.ipk
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/shadowsocksr-libev-ssr-redir_2.5.6-11_mipsel_24kc.ipk
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/shadowsocksr-libev-ssr-server_2.5.6-11_mipsel_24kc.ipk
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/simple-obfs-server_0.0.5-5_mipsel_24kc.ipk
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/simple-obfs_0.0.5-5_mipsel_24kc.ipk
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/tcping_0.3-1_mipsel_24kc.ipk

wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall2/index.json
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall2/luci-app-passwall2_25.6.21_all.ipk
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall2/luci-i18n-passwall2-zh-cn_git-25.171.82460-63e2ecc_all.ipk
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall2/Packages
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall2/Packages.gz
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall2/Packages.manifest
wget https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall2/Packages.sig

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_luci/index.json
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_luci/luci-app-passwall_26.2.14_all.ipk
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_luci/luci-i18n-passwall-zh-cn_26.2.14_all.ipk
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_luci/Packages
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_luci/Packages.gz
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_luci/Packages.manifest
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_luci/Packages.sig

curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/xray-core_26.2.6-1_mipsel_24kc.ipk
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/hysteria_2.7.0-1_mipsel_24kc.ipk
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/index.json
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/v2ray-plugin_5.44.1-1_mipsel_24kc.ipk
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/geoview_0.2.5-1_mipsel_24kc.ipk
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/Packages
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/Packages.gz
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/Packages.manifest
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/Packages.sig
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/v2ray-geoip_202602050029.1_all.ipk
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/v2ray-geosite_202602052221.1_all.ipk
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/microsocks_1.0.5-1_mipsel_24kc.ipk
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/naiveproxy_143.0.7499.109-2_mipsel_24kc.ipk
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/chinadns-ng_2025.08.09-1_mipsel_24kc.ipk
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/dns2socks_2.1-2_mipsel_24kc.ipk
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/trojan-plus_10.0.3-2_mipsel_24kc.ipk
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/shadowsocksr-libev-ssr-check_2.5.6-11_mipsel_24kc.ipk
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/shadowsocksr-libev-ssr-local_2.5.6-11_mipsel_24kc.ipk
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/shadowsocksr-libev-ssr-nat_2.5.6-11_mipsel_24kc.ipk
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/shadowsocksr-libev-ssr-redir_2.5.6-11_mipsel_24kc.ipk
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/shadowsocksr-libev-ssr-server_2.5.6-11_mipsel_24kc.ipk
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/tcping_0.3-1_mipsel_24kc.ipk
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/shadowsocks-libev-ss-server_3.3.5-13_mipsel_24kc.ipk
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/shadowsocks-libev-ss-tunnel_3.3.5-13_mipsel_24kc.ipk
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/shadowsocks-libev-ss-local_3.3.5-13_mipsel_24kc.ipk
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/shadowsocks-libev-ss-redir_3.3.5-13_mipsel_24kc.ipk
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/simple-obfs-client_0.0.5-3_mipsel_24kc.ipk
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/simple-obfs-server_0.0.5-3_mipsel_24kc.ipk
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall_packages/ipt2socks_1.1.4-3_mipsel_24kc.ipk

curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall2/luci-app-passwall2_26.2.14_all.ipk
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall2/luci-i18n-passwall2-zh-cn_26.2.14_all.ipk
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall2/luci-i18n-passwall2-zh-tw_26.2.14_all.ipk
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall2/Packages
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall2/Packages.gz
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall2/Packages.manifest
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall2/Packages.sig
curl -L -O https://sourceforge.net/projects/openwrt-passwall-build/files/releases/packages-22.03/mipsel_24kc/passwall2/index.json
