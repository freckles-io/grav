#!/bin/bash

mkdir -p /run/php

php-fpm7.0
nginx -g 'daemon off;'
