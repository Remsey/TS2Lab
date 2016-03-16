NIE GWARANTUJE, ŻE DZIAŁA

1. Odpalamy maszyny
2. Prawdopodobnie na każdej maszynie adapter 4 jest już ustawiony na tryb NAT. Jeżeli tak nie jest to trzeba zmienić.
3. Na każdej maszynie wpisujemy: dhclient3 eth3 -> wymuszenie pobrania adresu IP od komputera gospodarza.
4. Następnie instalujemy git-core i curl, czyli: apt-get install curl git-core (w sumie nie wiem czy ten krok jest potrzebny ale nie zaszkodzi :D )
5. Pobieramy repo: git clone git://github.com/Remsey/TS2Lab.git
6. Przechodzimy do pobranego repo: cd TS2Lab/
7. Dodajemy prawo uruchamiania: chmod +x Rx.sh (za x podstaw numer routera)
8. Odpalamy skrypt: ./Rx.sh ( za x numer routera)
9. Uruchamiamy demona quagga: /etc/init.d/quagga start
