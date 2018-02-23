#!/usr/bin/env bash

# Watch folder for changes
cd -P "{{ freckle_path }}"

scss --cache-location /tmp/scss_grav {% for i in grav_sass_includes %}--load-path "{{ i }}" {% endfor %} {{ grav_sass_poll_option }} --watch "{{ grav_sass_src }}:{{ grav_sass_src }}/../css-compiled"
