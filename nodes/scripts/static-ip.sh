#!/bin/bash
# defined as env variable in proivisioner
ip=$static_ip
uuid=$(uuidgen eth1)
cat <<EOT > /etc/sysconfig/network-scripts/ifcfg-eth1
TYPE=Ethernet
BOOTPROTO=static
DEFROUTE=yes
IPV4_FAILURE_FATAL=no
IPV6INIT=no
NAME=eth1
UUID=$uuid
DEVICE=eth1
ONBOOT=yes
IPADDR=$ip
PREFIX=24
NETMASK=255.255.255
DNS1=8.8.8.8
EOT
