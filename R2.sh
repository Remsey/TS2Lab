ip link set dev eth1 up
ip link set dev eth2 up
ip addr add 10.0.1.2/24 dev eth0
ip addr add 10.0.30.1/24 dev eth1
ip addr add 172.16.0.1/24 dev eth2
echo 1 > /proc/sys/net/ipv4/ip_forward