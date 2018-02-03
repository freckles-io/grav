grav
=====

A role to setup a grav development environment by sym-linking a local folder into the _grav/user_ location. 

Requirements
------------

Existing webserver & php. For example:

- geerlingguy.php
- geerlingguy.nginx


Role Variables
--------------

   grav_user_dir: --no default--
   grav_site_name: default_site
   grav_url: http://getgrav.org/download/core/grav/latest
   grav_dest: /var/www
   grav_change_user_dir_group_permissions: no
   grav_webserver_user: www-data
   grav_webserver_group: www-data
   grav_webserver_port: 80
   
Dependencies
------------

n/a

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
