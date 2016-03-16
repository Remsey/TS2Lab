ip link set dev eth1 up
ip link set dev eth2 up
ip addr add 10.0.200.2/24 dev eth0
ip addr add 10.0.30.2/24 dev eth1
ip addr add 192.168.100.1/24 dev eth2
echo 1 > /proc/sys/net/ipv4/ip_forward
echo "#### DONE ####"
# /etc/quagga/zebra.conf
echo "hostname click" > /etc/quagga/zebra.conf
echo "password toor" >> /etc/quagga/zebra.conf
echo "enable password toor" >> /et/quagga/zebra.conf
# /etc/quagga/ripd.conf
echo "! Script by krzysiek" > /etc/quagga/ripd.conf
echo "hostname click" >> /etc/quagga/ripd.conf
echo "password toor" >> /etc/quagga/ripd.conf
echo "enable password toor" >> /etc/quagga/ripd.conf
echo "!" >> /etc/quagga/ripd.conf
echo "router rip" >> /etc/quagga/ripd.conf
echo " redistribute connected" >> /etc/quagga/ripd.conf
echo " network 10.0.30.0/24" >> /etc/quagga/ripd.conf
echo " network 10.0.200.0/24" >> /etc/quagga/ripd.conf
echo "!" >> /etc/quagga/ripd.conf
echo "line vty" >> /etc/quagga/ripd.conf
echo "!" >> /etc/quagga/ripd.conf
echo "#### DONE ####"
