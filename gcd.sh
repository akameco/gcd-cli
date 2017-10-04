#!/bin/sh
GHQ=`ghq root`/github.com
ME=`git config --get user.name`

ghq get -p $1

if [ `dirname "$1"` = "." ]; then
  cd $GHQ/$ME/$1
else
  cd $GHQ/$1
fi
