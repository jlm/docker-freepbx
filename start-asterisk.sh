#!/bin/bash

if [[ ! -d /conf/asterisk_spool ]]; then
    mv /var/spool/asterisk /conf/asterisk_spool
else
    rm -rf /var/spool/asterisk
fi
ln -sf /conf/asterisk_spool /var/spool/asterisk

sleep 5 && fwconsole reload &

/usr/sbin/asterisk -f

