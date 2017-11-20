#!/bin/bash
echo "Installing MongoDB"
isZypper=`command -v zypper`
# Some of the previous commands will fail with an exit code other than zero (intentionally),
# so we do not set error handling to stop (set e) until after they've run
set -e
if [ -n "$isZypper" ] ; then
    echo "Using zypper package manager"

sudo rpm --import https://www.mongodb.org/static/pgp/server-3.4.asc


sudo zypper addrepo --gpgcheck "https://repo.mongodb.org/zypper/suse/12/mongodb-org/3.4/x86_64/" mongodb

sudo zypper -n install mongodb-org

sudo service mongod start

sudo chkconfig mongod on
fi
