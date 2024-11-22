apt-get install unbound -y;
cp /etc/resolv.conf /etc/resolv.conf.backup;
echo nameserver 127.0.0.1 > /etc/resolv.conf;
chattr +i /etc/resolv.conf;
systemctl enable --now unbound;
