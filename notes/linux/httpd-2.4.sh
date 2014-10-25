#!/bin/sh

curl -O http://archive.apache.org/dist/apr/apr-1.5.1.tar.bz2
curl -O http://archive.apache.org/dist/apr/apr-util-1.5.3.tar.bz2
curl -O http://ftp.riken.jp/Linux/fedora/releases/18/Everything/source/SRPMS/d/distcache-1.4.5-23.src.rpm
curl -O http://archive.apache.org/dist/httpd/httpd-2.4.10.tar.bz2
yum -y install --enablerepo=epel \
    freetds-devel \
    doxygen \
    expat-devel \
    libuuid-devel \
    db4-devel \
    postgresql-devel \
    mysql-devel \
    sqlite-devel \
    unixODBC-devel \
    openldap-devel \
    openssl-devel \
    nss-devel \
    mailcap \
    pcre-devel \
    lua-devel \
    libxml2-devel
rpmbuild -tb --clean apr-1.5.1.tar.bz2
rpm -Uvh /root/rpmbuild/RPMS/x86_64/apr-1.5.1-1.x86_64.rpm \
    /root/rpmbuild/RPMS/x86_64/apr-devel-1.5.1-1.x86_64.rpm
rpmbuild -tb --clean apr-util-1.5.3.tar.bz2
rpm -Uvh /root/rpmbuild/RPMS/x86_64/apr-util-ldap-1.5.3-1.x86_64.rpm \
    /root/rpmbuild/RPMS/x86_64/apr-util-1.5.3-1.x86_64.rpm \
    /root/rpmbuild/RPMS/x86_64/apr-util-devel-1.5.3-1.x86_64.rpm
rpmbuild --rebuild --clean distcache-1.4.5-23.src.rpm
rpm -Uvh /root/rpmbuild/RPMS/x86_64/distcache-1.4.5-23.x86_64.rpm \
    /root/rpmbuild/RPMS/x86_64/distcache-devel-1.4.5-23.x86_64.rpm
rpmbuild -tb --clean httpd-2.4.10.tar.bz2
rpm -Uvh /root/rpmbuild/RPMS/x86_64/httpd-2.4.10-1.x86_64.rpm \
    /root/rpmbuild/RPMS/x86_64/httpd-devel-2.4.10-1.x86_64.rpm
sed -i -e "s/LoadModule mpm_event_module lib64\/httpd\/modules\/mod_mpm_event.so/LoadModule mpm_prefork_module lib64\/httpd\/modules\/mod_mpm_prefork.so/" \
    /etc/httpd/conf/httpd.conf
