#!/bin/sh
cd ~
ROOT=$(pwd)
cd -
BASEDIR=$(dirname "$0")

export CONDAPATH=$ROOT"/miniconda3"
export PYTHON=${CONDAPATH}"/envs/hummingbot/bin/python3"

cd $BASEDIR
${PYTHON} bin/hummingbot_quickstart.py -s pure_market_making -f conf_btc_usdt_liquidity.yml -p $1
cd -
