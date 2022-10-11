#!/bin/bash

>client.txt

tcp_yolla()
{
    for (( i = 1; i <= 10; i++ ));do
        
        tcp_mesaj="{id:”171213067”,no:”${i}”,msg:”TCP packet from client”, timestamp:”`date`”}"
        echo $tcp_mesaj | socat - TCP4:localhost:5001
        echo "CLIENT-->TCP:{$tcp_mesaj}{$i}{`date`}" >>client.txt
    done
}
udp_yolla()
{
    for (( i = 1; i <= 10; i++ ));do
        
        udp_mesaj="{id:”171213067”,no:”${i}”,msg:”UDP packet from client”, timestamp:”`date`”}"
        echo $udp_mesaj | socat - UDP4:localhost:5001
        echo "CLIENT-->UDP:{$udp_mesaj}{$i}{`date`}" >>client.txt
    done
}

tcp_yolla
udp_yolla