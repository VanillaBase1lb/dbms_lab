#!/bin/sh

mysql < db_init.sql
python -m venv venv/
# source venv/bin/activate.fish
# pip install -r requirements.txt
# deactivate