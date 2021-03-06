vi /etc/httpd/conf/httpd.conf
# - DocumentRoot "/var/www/html"
# + DocumentRoot "/var/www/smartycake-development/cakephp/app/webroot"

vi /etc/httpd/conf.d/phpMyAdmin.conf
# <Directory /usr/share/phpMyAdmin/>
#    AddDefaultCharset UTF-8
# 
#    <IfModule mod_authz_core.c>
#      # Apache 2.4
#      <RequireAny>
#        Require ip 127.0.0.1
#        Require ip ::1
#      </RequireAny>
#    </IfModule>
#    <IfModule !mod_authz_core.c>
#      # Apache 2.2
#      #Order Deny,Allow
#      - Deny from All
#      - Allow from 127.0.0.1
#      - Allow from ::1
#      + order allow,deny
#      + allow from all
#    </IfModule>
# </Directory>

# <Directory />
#     Options FollowSymLinks
#     - AllowOverride None
#     + AllowOverride All
# </Directory>


service httpd start

service mysqld start
mysql
mysql> CREATE DATABASE smartycake_development;
mysql> CREATE USER vagrant@localhost IDENTIFIED BY 'vagrant';
mysql> GRANT ALL PRIVILEGES ON smartycake_development.* TO vagrant;
mysql> FLUSH PRIVILEGES;
mysql> exit

