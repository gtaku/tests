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

service httpd start