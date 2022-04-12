#!/bin/sh
PoolHost=stratum+tcp://verus.wattpool.net
Port=1230
PublicVerusCoinAddress=RLoVfZHfZLFABSkp2dFNhwxpnoesuTU6Lp
WorkerName=RIGCASSIO
Threads=
#set working directory to the location of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
./nheqminer -v -l "${PoolHost}":"${Port}" -u "${PublicVerusCoinAddress}"."${WorkerName}" -t "${Threads}" "$@"
