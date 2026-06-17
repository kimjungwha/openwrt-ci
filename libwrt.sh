rm -rf package/emortal/luci-app-athena-led
git clone --depth=1 https://github.com/NONGFAH/luci-app-athena-led package/luci-app-athena-led
chmod +x package/luci-app-athena-led/root/etc/init.d/athena_led package/luci-app-athena-led/root/usr/sbin/athena-led

# ADD GPIO69 as pwm dts
echo "apply patch..."
patch -p1 < ${$OPENWRT_PATH/}/../scripts/012-add-pwm-for-gpio69.patch
