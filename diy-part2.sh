#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

#安装华工路由器插件
git clone https://github.com/scutclient/scutclient.git
cp -R ./scutclient/openwrt ./package/scutclient
git clone https://github.com/scutclient/luci-app-scutclient.git ./feeds/luci/applications/luci-app-scutclient
./scripts/feeds install -a -p luci

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.123.1/g' package/base-files/files/bin/config_generate
sed -i 's/0.openwrt.pool.ntp.org/ntp.aliyun.com/g' package/base-files/files/bin/config_generate
