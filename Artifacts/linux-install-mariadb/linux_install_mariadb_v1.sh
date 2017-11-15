#!/bin/bash

echo "Installing MariaDB"


zypper install mariadb mariadb-client mariadb-tools

systemctl start mysql

systemctl enable mysql
systemctl status mysql

