# curl -s https://raw.githubusercontent.com/Null-Foundation/scripts/refs/heads/main/setup-unbound.sh | sh
apt-get install unbound -y;
cp /etc/resolv.conf /etc/resolv.conf.backup;
echo nameserver 127.0.0.1 > /etc/resolv.conf;
chattr +i /etc/resolv.conf;
systemctl enable --now unbound;
