#!/bin/bash

>route.txt

tcp_al()
{
    socat TCP4-LISTEN:5001,reuseaddr,fork - | 
    while read tcp_mesaj ;
    do
    echo $tcp_mesaj | socat - TCP4:localhost:20002
    echo "ROUTER-->TCP:[${tcp_mesaj} {`date`}]" >> route.txt
    done
}
udp_al()
{
    socat UDP4-LISTEN:5001,reuseaddr,fork - | 
    while read udp_mesaj ;
    do
    echo $udp_mesaj | socat - UDP4:localhost:10001
    echo "ROUTER-->UDP:[${udp_mesaj} {`date`}]" >> route.txt
    done
}

tcp_al & udp_al
