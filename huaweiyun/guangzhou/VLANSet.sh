#!/bin/bash

ip link add link eth0 name eth0.4041 type vlan id 4041
ip netns add ns4041
ip link set eth0.4041 netns ns4041
ip netns exec ns4041 ifconfig eth0.4041 hw ether fa:16:3e:07:5f:69
ip netns exec ns4041 ifconfig eth0.4041 up
ip netns exec ns4041 ip addr add 192.168.0.10/24 dev eth0.4041
ip netns exec ns4041 ip route add default via 192.168.0.1

ip netns exec ns4041 echo "nameserver 114.114.114.114" > /etc/resolv.conf
ip netns exec ns4041 echo "nameserver 8.8.8.8" >> /etc/resolv.conf


ip link add link eth0 name eth0.1599 type vlan id 1599
ip netns add ns1599
ip link set eth0.1599 netns ns1599
ip netns exec ns1599 ifconfig eth0.1599 hw ether fa:16:3e:07:5f:68
ip netns exec ns1599 ifconfig eth0.1599 up
ip netns exec ns1599 ip addr add 192.168.0.9/24 dev eth0.1599
ip netns exec ns1599 ip route add default via 192.168.0.1

ip netns exec ns1599 echo "nameserver 114.114.114.114" > /etc/resolv.conf
ip netns exec ns1599 echo "nameserver 8.8.8.8" >> /etc/resolv.conf


ip link add link eth0 name eth0.4070 type vlan id 4070
ip netns add ns4070
ip link set eth0.4070 netns ns4070
ip netns exec ns4070 ifconfig eth0.4070 hw ether fa:16:3e:07:5f:67
ip netns exec ns4070 ifconfig eth0.4070 up
ip netns exec ns4070 ip addr add 192.168.0.8/24 dev eth0.4070
ip netns exec ns4070 ip route add default via 192.168.0.1

ip netns exec ns4070 echo "nameserver 114.114.114.114" > /etc/resolv.conf
ip netns exec ns4070 echo "nameserver 8.8.8.8" >> /etc/resolv.conf


ip link add link eth0 name eth0.1734 type vlan id 1734
ip netns add ns1734
ip link set eth0.1734 netns ns1734
ip netns exec ns1734 ifconfig eth0.1734 hw ether fa:16:3e:07:5f:66
ip netns exec ns1734 ifconfig eth0.1734 up
ip netns exec ns1734 ip addr add 192.168.0.7/24 dev eth0.1734
ip netns exec ns1734 ip route add default via 192.168.0.1

ip netns exec ns1734 echo "nameserver 114.114.114.114" > /etc/resolv.conf
ip netns exec ns1734 echo "nameserver 8.8.8.8" >> /etc/resolv.conf


ip link add link eth0 name eth0.569 type vlan id 569
ip netns add ns569
ip link set eth0.569 netns ns569
ip netns exec ns569 ifconfig eth0.569 hw ether fa:16:3e:07:5f:65
ip netns exec ns569 ifconfig eth0.569 up
ip netns exec ns569 ip addr add 192.168.0.6/24 dev eth0.569
ip netns exec ns569 ip route add default via 192.168.0.1

ip netns exec ns569 echo "nameserver 114.114.114.114" > /etc/resolv.conf
ip netns exec ns569 echo "nameserver 8.8.8.8" >> /etc/resolv.conf


ip link add link eth0 name eth0.3644 type vlan id 3644
ip netns add ns3644
ip link set eth0.3644 netns ns3644
ip netns exec ns3644 ifconfig eth0.3644 hw ether fa:16:3e:07:5f:64
ip netns exec ns3644 ifconfig eth0.3644 up
ip netns exec ns3644 ip addr add 192.168.0.5/24 dev eth0.3644
ip netns exec ns3644 ip route add default via 192.168.0.1

ip netns exec ns3644 echo "nameserver 114.114.114.114" > /etc/resolv.conf
ip netns exec ns3644 echo "nameserver 8.8.8.8" >> /etc/resolv.conf


ip link add link eth0 name eth0.2619 type vlan id 2619
ip netns add ns2619
ip link set eth0.2619 netns ns2619
ip netns exec ns2619 ifconfig eth0.2619 hw ether fa:16:3e:07:5f:63
ip netns exec ns2619 ifconfig eth0.2619 up
ip netns exec ns2619 ip addr add 192.168.0.4/24 dev eth0.2619
ip netns exec ns2619 ip route add default via 192.168.0.1

ip netns exec ns2619 echo "nameserver 114.114.114.114" > /etc/resolv.conf
ip netns exec ns2619 echo "nameserver 8.8.8.8" >> /etc/resolv.conf


ip link add link eth0 name eth0.2160 type vlan id 2160
ip netns add ns2160
ip link set eth0.2160 netns ns2160
ip netns exec ns2160 ifconfig eth0.2160 hw ether fa:16:3e:07:5f:62
ip netns exec ns2160 ifconfig eth0.2160 up
ip netns exec ns2160 ip addr add 192.168.0.3/24 dev eth0.2160
ip netns exec ns2160 ip route add default via 192.168.0.1

ip netns exec ns2160 echo "nameserver 114.114.114.114" > /etc/resolv.conf
ip netns exec ns2160 echo "nameserver 8.8.8.8" >> /etc/resolv.conf


ip link add link eth0 name eth0.1779 type vlan id 1779
ip netns add ns1779
ip link set eth0.1779 netns ns1779
ip netns exec ns1779 ifconfig eth0.1779 hw ether fa:16:3e:07:5f:61
ip netns exec ns1779 ifconfig eth0.1779 up
ip netns exec ns1779 ip addr add 192.168.0.2/24 dev eth0.1779
ip netns exec ns1779 ip route add default via 192.168.0.1

ip netns exec ns1779 echo "nameserver 114.114.114.114" > /etc/resolv.conf
ip netns exec ns1779 echo "nameserver 8.8.8.8" >> /etc/resolv.conf