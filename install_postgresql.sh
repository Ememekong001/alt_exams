#!/usr/bin/bash

#install prerequisite software packages

sudo apt install wget ca-certificates

#PostgreSQL repository

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'

#install postgresql

sudo apt update

sudo apt install postgresql postgresql-contrib

#enable postgresql

sudo systemctl postgresql enable

sudo systemctl postgresql status




