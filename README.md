Apache Configuration Template and Design
=========================================

This repo is for those who would like a helping hand to quickly and easily setup Virtual Hosts on Apache.

This Apache configuration template and design can be used in:
 - production environments as a way of keeping configuration files clean and neat.
 - development environments to quickly and easily deploy new Virtual Hosts as required.

Paths and their purposes
------------------------

| Path | Details |
| ---- | ------- |
| `/home/user/projects` | All website files go here within project folders. Usually one might git clone a repo which will create a folder here. |
| `/home/user/vhosts/logs` | The location where all Virtual Host log files are stored. |
| `/home/user/vhosts/ssl` | SSL Certificates are generated here in sub-folders each named after the Virtual Host server name that they cater for. |
| `/etc/apache2/sites-available` |  The location where Apache stores its site configurations. Each site is usually its own file but sites can be declared within the same file if needed. |

Creating a new Virtual Host
--------------------------------------

Using this template design, the process of creating a new Virtual Host becomes the following (running as root):
1. `cd /etc/apache2/sites-available/ && cp sample-site.conf new-site.conf`
2. Modify `/etc/apache2/sites-available/new-site.conf` with your favourite text editor.
3. `cd /home/user/vhosts/ssl && ./generate-self-signed-ssl.sh "new-site.com"`
4. `a2ensite new-site`
5. `service apache2 restart`
