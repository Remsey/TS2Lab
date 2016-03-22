ip link set dev eth1 up
ip link set dev eth2 up
ip addr add 10.0.1.1/24 dev eth0
ip addr add 10.0.200.1/24 dev eth1
ip addr add 192.168.0.1/24 dev eth2
echo 1 > /proc/sys/net/ipv4/ip_forward
sleep 2
echo "#### DONE ####"
# /etc/quagga/zebra.conf
echo "hostname click" > /etc/quagga/zebra.conf
echo "password toor" >> /etc/quagga/zebra.conf
echo "enable password toor" >> /etc/quagga/zebra.conf
# /etc/quagga/ospfd.conf
echo "! from github.com/Remsey/TS2Lab" > /etc/quagga/ospfd.conf
echo "hostname click" >> /etc/quagga/ospfd.conf
echo "password toor" >> /etc/quagga/ospfd.conf
echo "enable password toor" >> /etc/quagga/ospfd.conf
echo "!" >> /etc/quagga/ospfd.conf
echo "router ospf" >> /etc/quagga/ospfd.conf
echo " redistribute connected" >> /etc/quagga/ospfd.conf
echo " network 192.168.0.0/24 area 0.0.0.0" >> /etc/quagga/ospfd.conf
echo " network 10.0.1.0/24 area 0.0.0.0" >> /etc/quagga/ospfd.conf
echo " network 10.0.200.0/24 area 0.0.0.0" >> /etc/quagga/ospfd.conf
echo "!" >> /etc/quagga/ospfd.conf
echo "line vty" >> /etc/quagga/ospfd.conf
echo "!" >> /etc/quagga/ospfd.conf
sleep 1
echo "#### DONE ####"
