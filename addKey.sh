#!/bin/bash

if [ ! -d "$1/.ssh" ]; then
   mkdir -p "$1/.ssh"
   chown $2 "$1/.ssh"
fi

echo -e "Host bitbucket\n  HostName bitbucket.org\n  IdentityFile $3\n" > $1/.ssh/config
echo -e "Host github\n  HostName github.com\n  IdentityFile $3" >> $1/.ssh/config
chown $2 $1/.ssh/config
chmod 0600 $1/.ssh/config
echo "$1/.ssh/config created"

cat $1/.ssh/config