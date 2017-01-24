#!/bin/sh

wget -O - https://github.com/OpenGrok/OpenGrok/files/551372/opengrok-0.13-rc4.tar.gz | tar zxvf -
mv opengrok-* opengrok
cd /etc/tomcat7 && patch -p1 < 0001-tomcat-increase-http-header-size-to-65536.patch
