#!/bin/bash
echo -e "Hi, please type the servername: \c "

read varname

servername="varname"

az lab vm start --lab-name ADPTeam1 -g ADPTeam1RG924000 --name="$varname"
