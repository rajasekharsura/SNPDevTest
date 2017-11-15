#!/bin/bash

echo "Installing MySql"


zypper install mysql-community-server

insserv mysql

rcmysql start

