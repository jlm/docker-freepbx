#!/bin/bash

if [[ ! -d /conf/mysql ]]; then
    mv /var/lib/mysql /conf/mysql
else
    rm -rf /var/lib/mysql
fi
ln -sf /conf/mysql /var/lib/mysql

exec mysqld_safe
