#!/bin/bash

#
# Copyright IBM Corp. All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0
#

FabricTestDir=$GOPATH/src/github.com/hyperledger/fabric-test
NLDir=$FabricTestDir/tools/NL

CWD=$PWD

cd $NLDir
echo "[$0] NL dir: $PWD"
# bring down network
echo "[$0] bring down network"
./networkLauncher.sh -a down
# bring up network
echo "[$0] bring up network"
./networkLauncher.sh -o 2 -x 4 -r 4 -p 2 -k 2 -z 2 -n 2 -t kafka -f test -w localhost -S enabled

cd $CWD
echo [$0] "current dir: $PWD"
