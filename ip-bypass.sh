#!/bin/bash

while IFS= read -r ip
do
  sudo ip route add $ip/32 via 192.168.1.1 dev enp2s0
done < iplist.txt
