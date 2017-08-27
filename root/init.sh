#!/bin/sh
####################################################################################################
#
#  Author: ZiShuo
#  QQ: 43509704
#  QQ Group: 623172325
#  E-Mail: www@zishuo.uu.me
#  Web Home: http://www.zishuo.net
#  Update date: 2015-09-12
#  VERSION: 2.5.3
#  Required packages: kmod-nls-utf8, libopenssl, libcurl, python, python-curl, python-crypto
#  If import python-crypto package, SyncY can support ARC4、Blowfish and AES encryption.
#
####################################################################################################
set -e

echo "Setting Syncy confing"

if [[ ! -e /config/syncy ]]
then
  cp /tmp/syncy.default /config/syncy
fi

echo "[DONE]"

echo "Starting Syncy"

exec /syncyd.sh