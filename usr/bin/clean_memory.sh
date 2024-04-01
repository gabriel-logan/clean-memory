#!/bin/bash
#autor: Gabriel Logan
if [ $(id -u) -ne 0 ]; then
    echo Error
    echo "You need run as root"
    echo Shuting down
    exit 1
fi
main(){
    echo
    echo Values before
    free --mega
    echo
    echo Cleaning Memory...
    echo
    sudo sync
    sudo echo 3 > /proc/sys/vm/drop_caches
    sudo sync
    sudo echo 2 > /proc/sys/vm/drop_caches
    sudo sync
    sudo echo 1 > /proc/sys/vm/drop_caches
    sudo sync && sudo sysctl -w vm.drop_caches=3
    sudo sync && sudo sysctl -w vm.drop_caches=2
    sudo sync && sudo sysctl -w vm.drop_caches=1
    sudo sync && sudo sysctl vm.drop_caches=3
    sudo sync && sudo sysctl vm.drop_caches=2
    sudo sync && sudo sysctl vm.drop_caches=1
    echo
    echo Values now
    echo
    echo "Clean - Values = MegaByte"
    free --mega
    echo
    echo by: Gabriel Logan
}
main
