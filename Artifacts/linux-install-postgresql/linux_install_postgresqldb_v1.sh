#!/bin/bash

echo "Installing postgresql"


zypper in postgresql94 postgresql94-contrib postgresql94-server

systemctl start postgresql

