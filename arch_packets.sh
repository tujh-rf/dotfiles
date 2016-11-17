#!/usr/bin/env bash

rm packets.list.gz
rpm -qa | sort > packets.list.full 
./packets.py > packets.list
gzip packets.list