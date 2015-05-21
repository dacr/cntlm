#!/bin/bash


if [ -z "$DOMAIN" ] ; then
  read -p "Domain:" DOMAIN
fi

if [ -z "$USERNAME" ] ; then  
  read -p "Username:" USERNAME
fi 

if [ -z "$PASSWORD" ] ; then
  read -s -p "Password:" PASSWORD
fi

cntlm -f -g -c /defaults.conf -p "$PASSWORD" -u "$USERNAME@$DOMAIN" -l 3128 $*


