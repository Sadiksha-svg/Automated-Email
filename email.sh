#!/bin/bash
REALVALUE=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')
THRESHOLD=1

if [ "$REALVALUE" -gt "$THRESHOLD" ] ; then
    mail -s 'Disk Space Alert' dahalsadikshya30@gmail.com << EOF
Your disk space used is mentioned in this message. Used: $REALVALUE%
EOF
fi
