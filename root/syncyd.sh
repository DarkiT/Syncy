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
 
 
pid_file="/var/run/syncy.pid"
start_cmd="/syncy.py &"
 
while true; do
    if [ -e /var/run/syncy.pid ]; then
        sypid=$(cat $pid_file)
        running=`ps|grep -w $sypid|grep -v grep|wc -l`
    else
        running=0
    fi
    if [ $running -le 0 ]; then
        eval $start_cmd
        echo $(date +%F" "%H:%M:%S) "Starting SyncY"
    else
        echo $(date +%F" "%H:%M:%S) "SyncY is running"
    fi
    sleep 30s
done
 
exit 0