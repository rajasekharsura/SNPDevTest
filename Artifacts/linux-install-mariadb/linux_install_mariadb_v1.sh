#!/bin/bash

echo "Installing MariaDB"


zypper install mariadb mariadb-client mariadb-tools

systemctl enable mysql


