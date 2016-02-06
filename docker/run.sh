#!/bin/bash

source /www/sentry/bin/activate
sentry init /etc/sentry
cp -R /etc/sentry /config
