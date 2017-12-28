#!/bin/bash
echo "Installing MariaDB"
isZypper=`command -v zypper`
# Some of the previous commands will fail with an exit code other than zero (intentionally),
# so we do not set error handling to stop (set e) until after they've run
set -e
if [ -n "$isZypper" ] ; then
    echo "Using zypper package manager"
    zypper install -y mariadb mariadb-client mariadb-tools
    systemctl start mysql
    systemctl status mysql
    
fi
