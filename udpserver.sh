#!/bin/bash

>>udpserver.txt

socat UDP4-LISTEN:10001,reuseaddr,fork - | 
while read udp_mesaj ; 
do
    echo "UDP-->[{$udp_mesaj}] {`date`}" >> udpserver.txt
done
