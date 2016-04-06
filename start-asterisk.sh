#!/bin/bash

if [[ ! -d /conf/asterisk ]]; then
    mv /etc/asterisk /conf/asterisk
else
    rm -rf /etc/asterisk
fi
ln -sf /conf/asterisk /etc/asterisk

if [[ ! -d /conf/asterisk_spool ]]; then
    mv /var/spool/asterisk /conf/asterisk_spool
else
    rm -rf /var/spool/asterisk
fi
ln -sf /conf/asterisk_spool /var/spool/asterisk

/usr/sbin/asterisk -f

