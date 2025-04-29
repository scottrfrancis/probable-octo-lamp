#!/bin/bash

conda init && conda activate base

# change to the directory of this script
cd "$(dirname "$0")"

# need the API key in $API_KEY, usually it's in `.envrc`
[ -f ./.envrc ] && source ./.envrc

stonks=( \
'BRK.B IVV OZEM PG SCHB V VBR VTI VTV VXUS DIS CCI MDT JEPI BND FDVV VYM SPY VXX' \
)

# AlphaVantage has a 5 call/min rate limit for free keys
delay=9     

rm -Rf analyses/*

# f="${OUTFILE:=signals.csv}"
l="${SYMS:=$stonks}"


# echo "Symbol,Signal,Date" 
for s in ${l[@]}; do
    python3 ./genSymbolReport.py -s $s 
    sleep $delay
done