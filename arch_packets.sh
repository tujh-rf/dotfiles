#!/usr/bin/env bash

rm packets.list.gz
rpm -qa | sort > packets.list
gzip packets.list