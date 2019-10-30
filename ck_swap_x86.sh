#!/bin/bash

ck_swap(){
    for i in $(ls /proc | grep "^[0-9]" | awk '$0>100'); 
    do 
        awk '/Swap:/{a=a+$2}END{print '"$i"',a/1024"M"}' /proc/$i/smaps;
    done| sort -k2nr | head  | while read apid aswap ; do ps -ef | awk -v PID="$apid" -v SWAP="$aswap" '$2 == PID {print $1"\t",PID"\t",SWAP"\t",$NF}';done 
}


main(){
    if [ `whoami` = "root" ];then
        echo -e "[Info]\tRun as root now."	
		echo -e "---------------------------------------------------------------------"
		echo -e "User\tPID\tSWAP\tProcess"
		echo -e "---------------------------------------------------------------------"
        ck_swap 2>/dev/null
    else
	    echo -e "[Warring]\tNot run as root now. Some information may missing. If you want to get full info,pls run it with root user"
	    echo -e "---------------------------------------------------------------------"
		echo -e "User\tPID\tSWAP\tProcess"
		echo -e "---------------------------------------------------------------------"
        ck_swap 2>/dev/null
    fi
}

main