# Technical Analysis Reporting tool

A basic Python program to 

1. Fetch daily price history for a symbol
2. Use [TA-Lib](https://www.ta-lib.org/hdr_dw.html) to compute some technical indicators
3. Find BUY/SELL dates in the history
4. Graph and report all the above, saving as PDF

## Setup

**Install TA-Lib**

```bash
wget http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz \
  && sudo tar -xzf ta-lib-0.4.0-src.tar.gz \
  && sudo rm ta-lib-0.4.0-src.tar.gz \
  && cd ta-lib/ \
  && sudo ./configure --prefix=/usr \
  && sudo make \
  && sudo make install \
  && cd ~ \
  && sudo rm -rf ta-lib/ \
  && pip install ta-lib
```

**Install other packages**

```bash
pip3 install -r requirements.txt
```

## Usage

Default data source is [Alpha Vantage](https://www.alphavantage.co/documentation/), which requires an API_KEY. Code expects that key to be stored in an environment variable, `$API_KEY`. Suggest setting up a `.envrc` file and using [direnv](https://direnv.net/)

**Invoke**

```bash
python3 ./genSymbolReport.py -s "T"
```