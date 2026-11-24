#!/bin/bash
while true; do
    clear
    echo "===WELCOME TO OUR PROJECT==="
    echo 
    echo "1) Show Network Interface"
    echo "2)Show IP Adresses"
    echo "3)Show Network Devices"
    echo "4)Show Configured Connections"
    echo "5)Show Routing Table"
    echo "6)DNS Resolve"
    echo "7)Ping a Host/Domain"
    echo "8)Exit"
    echo
    read -p "Choose a task:- " choice 
    echo
    echo

    if [ "$choice" == "1" ]; then
        echo "---NETWORK_INTERFACE---"
        echo
        ip link show
        echo
    elif [ "$choice" == "2" ]; then
        echo "---IP_ADRESSES---"
        echo
        ip addr show
        echo
    elif [ "$choice" == "3" ]; then
        echo "---NETWORK_DEVICES---"
        echo
        nmcli device status
        echo
    elif [ "$choice" == "4" ]; then
        echo "---CONFIGURED_CONNECTIONS---"
        echo
        nmcli connection show
        echo
    elif [ "$choice" == "5" ]; then
        echo "---ROUTING_TABLE---"
        echo
        ip route
        echo
    elif [ "$choice" == "6" ]; then
        echo "---DNS_RESOLVE---"
        echo
        read -p "Enter Domain:- " domain
        echo
        getent ahostsv4 "$domain"
        echo
    elif [ "$choice" == "7" ]; then
        echo "---PING_DOMAINS---"
        echo
        read -p "Enter Host/Domain:- " host
        echo
        ping -c 3 "$host"
        echo
    elif [ "$choice" == "8" ]; then
        echo "Quitting..."
        echo "GoodBye!"
        echo
        exit 0
    else 
        echo "Invalid Option.. TRY AGAIN!"
        echo
    fi
    read -p "Press any key to continue..."
done