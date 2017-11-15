#!/bin/bash

echo "Installing MySql"


zypper install -y mysql-community-server

insserv mysql

rcmysql start

