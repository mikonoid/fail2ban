# download and install fail2ban
cd /tmp
wget https://github.com/fail2ban/fail2ban/archive/0.8.14.tar.gz

tar -xzf 0.8.14
cd fail2ban-0.8.14
python setup.py install

#copy configs and jails
cd fail2ban
cp jail.local /etc/fail2ban/
cp http-get-dos.conf /etc/fail2ban/filter.d/

#cp init script
cp /tmp/fail2ban-0.8.14/files/redhat-initd /etc/init.d/fail2ban

/etc/init.d/fail2ban star
