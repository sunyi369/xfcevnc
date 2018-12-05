yum install epel-release -y
yum install xrdp tigervnc-server -y
systemctl start xrdp
systemctl enable xrdp
yum groups install Xfce -y
yum install -y wqy* ibus.x86_64 ibus-libpinyin.x86_64 im-chooser.x86_64 tigervnc tigervnc-server firefox
systemctl daemon-reload
echo 'ok'
