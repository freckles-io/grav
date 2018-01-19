####
grav
####

The `grav` freckle adapter downloads a folder that contains the 'user' folder of a *grav* webpage, sets up PHP and Ngnix, as well as the *grav* webapp itself, then links the downloaded *freckle* into the 'user' folder inside the *grav* webapp.


Usage
*****

.. code-block:: console

   freckles grav [OPTIONS] -f <freckle_url_or_path> [OPTIONS]

At least one path or url to a freckle needs to be provided (multiple paths can be supplied by simply providing multiple ``--freckle`` options). In this case, *freckles* creates one Ngnix site configuration per *freckle*, counting up the port from the default port (80).

.. note::

    You might need to take manual action and change file or folder permissions in case the permissions of the *freckle* don't match what can be read or written by the user who runs *nginx* or it is located within a folder that user can't access (e.g. /root/freckles/<site>). The *grav* webpage also has a page on permission issues that might be worth checking out: https://learn.getgrav.org/troubleshooting/permissions

Options
=======

``--freckle``
    the path or url that points to a 'dotfiles' freckle

``--nginx-user``
    the user as which nginx should run (optional). This is useful for Vagrant, for example, as you don't need to adjust the permissions of the website source files, so you can still edit them, while serving them via Ngninx at the same time

``--port``
    the port to use for the site, defaults to 80. In case of multiple sites, the port numbers are incremented by one

Metadata
========

Metadata that can be provided within the *freckle* itself, either via the ``.freckle`` file in the root of the *freckle* directory, or via marker files.



vars
----

n/a

*freckle* folder structure
--------------------------

.. code-block:: console

   <freckle_root>
           ├── .freckle (optional)
           ├── accounts (optional)
           ├── assets
           ├── config
           ├── data
           ├── pages
           ├── plugins
           .                        ...
           .                        ...
           .                        ...


This adapter does not require any extra metadata. The *freckle* is just the content of any valid ``user`` subfolder of a *grav* web-page.

Additional files and markers
----------------------------

n/a


Example ``.freckle`` files
--------------------------

n/a

Examples
********

n/a
