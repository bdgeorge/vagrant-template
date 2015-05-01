# Ben's simple vagrant lamp stack
Pretty much the simplest puppet generated LAMP stack I could think of.

Based on the "hashicorp/precise64" base box.
 
## Configuration
Edit /puppet/manifests/default.pp and enter the name of your virtual host.

Set your preferred network settings in the vagrant file (defaults to a private network) and edit your hosts file accordingly.

Save, `vagrant up` and you should be running!

## Application Structure
The /web folder becomes the apache public root so put your stuff there.

## MySQL
The build process creates an empty database called `dev` along with a user `dev` with password `dev`.

The database folder is a handy place to put sql dumps and in other builds I've extended the config to autoload a dev.sql during provisioning.
 
## Known Issues
TODO: After provisioning Apache doesn't start, I think it's because Puppet errors when it sees the Apache "Could not reliably determine the server's fully qualified domain name" warning.
Do a `vagrant ssh` then manually start Apache and off you go.
 
 