cd /v2raybin
wget -O v2ray.zip http://github.com/v2ray/v2ray-core/releases/download/v$VER/v2ray-linux-64.zip
unzip v2ray.zip -d /v2raybin/v2ray-linux

if [ ! -f "v2raybin" ]; then
  mv /v2raybin/v2ray-linux/v2ray .
  mv /v2raybin/v2ray-linux/v2ctl .
  mv /v2raybin/v2ray-linux/geoip.dat .
  mv /v2raybin/v2ray-linux/geosite.dat .
fi

rm v2ray.zip
rm -rf v2ray-linux
chmod +x v2ray v2ctl
sed -i "s/your_uuid/$UUID/g" config.json
./v2ray
