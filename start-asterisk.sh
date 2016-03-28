#!/bin/bash

if [[ ! -d /conf/asterisk ]]; then
    mv /etc/asterisk /conf/asterisk
else
    rm -rf /etc/asterisk
fi
ln -sf /conf/asterisk /etc/asterisk

/usr/sbin/asterisk -f

