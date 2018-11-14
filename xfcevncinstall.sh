#!/bin/bash
yum update -y && yum install epel-release -y && yum groups install Xfce -y && 
yum install -y wqy* ibus.x86_64 ibus-libpinyin.x86_64 im-chooser.x86_64 xrdp tigervnc tigervnc-server &&
cd /root/xfcevnc &&
cp -f locale.conf /etc/locale.conf &&
cp -f .Xclients /root/.Xclients &&
chmod +x /root/.Xclients &&
cp -f xrdp.ini /etc/xrdp/xrdp.ini &&
cp -f vncserver@:1.service /etc/systemd/system/vncserver@:1.service &&
chmod +x ~/.Xclients &&
systemctl restart xrdp &&
systemctl start xrdp &&
systemctl enable xrdp &&
systemctl daemon-reload &&
echo '请输入密码' &&
vncpasswd &&
systemctl daemon-reload &&
systemctl enable vncserver@:1.service &&
systemctl start vncserver@:1.service &&
systemctl stop firewalld &&
systemctl disable firewalld &&
echo 'All is ok!'




