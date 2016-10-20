#!/usr/bin/env bash
USER=$1
ADDR=$2

# transmit configs
scp -oStrictHostKeyChecking=no configs/.vimrc "$USER@$ADDR":~

# install software
ssh -oStrictHostKeyChecking=no "$USER@$ADDR" "sudo yum -y install vim";

# get shell
ssh -oStrictHostKeyChecking=no "$USER@$ADDR";
