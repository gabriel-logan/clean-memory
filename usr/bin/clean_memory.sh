#!/bin/bash
#autor: Gabriel Logan
if [ $USER != root ] ; then
    echo Error
    echo "Você precisa ser root"
    echo "You need run as root"
    echo Shuting down
    exit
fi
main(){
    echo \n
    echo Values before:Valores antes

    free --mega

    echo Cleaning Memory... \n

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
    echo \n
    echo Values now:Valores agora \n
    echo "Clean:Limpa - Values = MegaByte"
    free --mega
    echo
    echo by: Gabriel Logan
}
if [ $USER == root ];then
    main
fi