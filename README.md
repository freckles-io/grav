grav
=====

A role to setup a grav development environment by sym-linking a local folder into the _grav/user_ location. 

Requirements
------------

At the moment, it is mainly used as an example on how to create _freckles profiles_, but with a few slight modifications it could probably be used independent of freckles.

Role Variables
--------------

   grav_url: http://getgrav.org/download/core/grav/latest
   grav_dest: /var/www
   grav_change_user_dir_group_permissions: no
   grav_webserver_user: www-data
   grav_webserver_group: www-data
   grav_webserver_port: 80
   

Dependencies
------------

- geerlingguy.php
- geerlingguy.nginx

Example Playbook
----------------

    - hosts: servers
      roles:
         - makkus.grav

License
-------

GPLv3

Author Information
------------------

Markus Binsteiner
