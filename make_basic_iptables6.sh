iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
iptables -A INPUT -p tcp --dport ssh -j ACCEPT
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -P INPUT DROP
iptables -I INPUT 1 -i lo -j ACCEPT
apt-get install iptables-persistent
service iptables-persistent start

