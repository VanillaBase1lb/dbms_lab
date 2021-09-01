#!/usr/bin/sh

mysql --password="password" < uni_profile_init.sql
mysql --password="password" < uni_profile_fill.sql