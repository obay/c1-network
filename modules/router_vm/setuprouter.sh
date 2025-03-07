#!/bin/bash

# Enable IP forwarding
sudo sysctl -w net.ipv4.ip_forward=1
sudo sed -i 's/#net.ipv4.ip_forward=1/net.ipv4.ip_forward=1/' /etc/sysctl.conf
sudo sysctl -p

# Allow established and related connections
sudo iptables -A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A OUTPUT -m state --state NEW,RELATED,ESTABLISHED -j ACCEPT

# Enable NAT for spoke networks
sudo iptables -t nat -A POSTROUTING -j MASQUERADE

# Allow forwarding of packets
sudo iptables -A FORWARD -m state --state RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A FORWARD -j ACCEPT

# Save iptables rules to persist after reboot
sudo apt-get update
sudo apt-get install -y iptables-persistent
sudo netfilter-persistent save
sudo netfilter-persistent reload


# #!/bin/bash

# # Allow established connections
# sudo iptables -A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
# sudo iptables -A OUTPUT -m state --state NEW,RELATED,ESTABLISHED -j ACCEPT

# # Allow DNS traffic
# sudo iptables -A INPUT -p udp --dport 53 -j ACCEPT
# sudo iptables -A OUTPUT -p udp --dport 53 -j ACCEPT
# sudo iptables -A INPUT -p tcp --dport 53 -j ACCEPT
# sudo iptables -A OUTPUT -p tcp --dport 53 -j ACCEPT

# # Enable IP forwarding
# sudo sysctl -w net.ipv4.ip_forward=1
# sudo sysctl -w net.ipv4.conf.all.forwarding=1

# # Configure NAT
# sudo iptables -t nat -A POSTROUTING -j MASQUERADE

# # Allow forwarding
# sudo iptables -A FORWARD -m state --state RELATED,ESTABLISHED -j ACCEPT
# sudo iptables -A FORWARD -j ACCEPT

# # Save iptables rules to persist after reboot
# sudo apt-get update
# sudo apt-get install -y iptables-persistent
# sudo netfilter-persistent save
# sudo netfilter-persistent reload
