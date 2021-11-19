#!/bin/bash

stonks=('V' 'ISRG' 'AMZN' 'AAPL' 'JNJ' 'PG' 'VTV' 'BRK.B' 'GLD' 'GOOG' 'GBTC' 'ETHE')
# AlphaVantage has a 5 call/min rate limit for free keys
delay=10     


for s in ${stonks[@]}; do
    python3 ./genSymbolReport.py -s $s
    sleep $delay
done
