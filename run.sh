#!/bin/bash

clear
figlet Cyber Link | lolcat
PS3='Please Choice With Number: '
options=("Trade Doge" "Trade LTC" "Trade ETH" "Trade BTC" "Setting Your Set" "Create New Account" "Withdraw" "Deposit" "Out")
select opt in "${options[@]}"
do
    case $opt in
    "Trade Doge")
            python doge.py
            ;;
	"Trade LTC")
	    python ltc.py
	    ;;
	"Trade ETH")
            python eth.py
            ;;
	"Trade BTC")
            python btc.py
            ;;
    "Setting Your Set")
            sh sh
            ;;
	"Create New Account")
	    python reg.py
            ;;
	"Withdraw")
            python with.py
            ;;
	"Deposit")
            python depo.py
            ;;
    "Out")
            break
            ;;
        *) echo "Option $REPLY Not Valid";;
    esac
done
