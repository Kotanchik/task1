#!/bin/bash
# migrate database:
python3 manage.py migrate
# start application:
python3 manage.py runserver 0.0.0.0:8000
