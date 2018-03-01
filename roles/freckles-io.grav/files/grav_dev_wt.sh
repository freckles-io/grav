#!/usr/bin/env bash

# sass source
SASS_SOURCE_PATH="{{ grav_sass_src }}"

# sass options
SASS_OPTIONS="--source-map=false --style=nested"

# css target
CSS_TARGET_PATH="themes/freckles-site-theme/css-compiled"

wtfile={{ ansible_env.HOME }}/.local/bin/wt
# Watch folder for changes
#
cd -P "{{ freckle_path }}"

$wtfile compile "$SASS_SOURCE_PATH" {% for i in grav_sass_includes %}--includes="{{ i }}" {% endfor %} -b "$CSS_TARGET_PATH" $SASS_OPTIONS
$wtfile watch "$SASS_SOURCE_PATH" {% for i in grav_sass_includes %}--includes="{{ i }}" {% endfor %} -b "$CSS_TARGET_PATH" $SASS_OPTIONS
