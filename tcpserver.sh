#!/bin/bash

>>tcpserver.txt

socat TCP4-LISTEN:20002,reuseaddr,fork - | 
while read tcp_mesaj ; 
do
    echo "TCP-->[{$tcp_mesaj}] {`date`}" >> tcpserver.txt
done