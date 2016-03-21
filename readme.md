
Konfiguracja maszyn wirtualnych:<br /><br />

R1:<br />
sieć X = eth0 -> 10.0.1.0/24<br />
sieć Y = eth1 -> 10.0.200.0/24<br />
sieć A = eth2 -> 192.168.0.0/24<br /><br />

R2:<br />
sieć B = eth0 -> 172.16.0.0/24<br />
sieć Z = eth1 -> 10.0.30.0/24<br />
sieć X = eth2 -> 10.0.1.0/24<br /><br />

R3:<br /> 
sieć Y = eth0 -> 10.0.200.0/24<br />
sieć Z = eth1 -> 10.0.30.0/24<br />
sieć C = eth2 -> 192.168.100.0/24<br /><br />

Konfiguracja routingu:<br />
1. Uruchamiamy maszyny wirtualne<br />
2. Wpisujemy polecenie: dhclient3 eth3 (eth3 to interfejs, na którym maszyna ma ustawione NAT w VirtualBoxie)<br />
3. Klonujemy repozytorium: git clone git://github.com/Remsey/TS2Lab.git<br />
4. Przechodzimy do odpowiedniego katalogu w zależności od zadania: cd TS2Lab/RIP_conf/<br />
5. Dodajemy prawo uruchamiania: chmod +x plik.sh<br />
6. Uruchamiamy skrypt: ./plik.sh<br />
7. Jeżeli konfigurujemy router to uruchamiamy demona quagga: /etc/init.d/quagga start<br />
