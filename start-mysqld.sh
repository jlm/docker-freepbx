#!/bin/bash

if [[ ! -d /conf/mysql ]]; then
    mv /var/lib/mysql /conf/mysql
    mv /etc/freepbx.conf /conf
else
    rm -rf /var/lib/mysql
    rm -f /etc/freepbx.conf
fi
ln -sf /conf/mysql /var/lib/mysql
ln -sf /conf/freepbx.conf /etc/freepbx.conf

exec mysqld_safe
