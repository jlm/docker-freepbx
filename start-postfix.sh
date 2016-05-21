#!/bin/bash

if [[ ! -f /conf/postfix/main.cf ]]; then
    mkdir /conf/postfix
    mv /etc/postfix/main.cf /conf/postfix
else
    rm -f /etc/postfix/main.cf
fi
ln -sf /conf/postfix/main.cf /etc/postfix/main.cf

/usr/lib/postfix/master -c /etc/postfix/ -d
