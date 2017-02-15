pkg install -y postgresql96-client-9.6.2 postgresql96-server-9.6.2
echo 'postgresql_enable="YES"' >> /etc/rc.conf
/usr/local/etc/rc.d/postgresql initdb
/usr/local/etc/rc.d/postgresql start
su - postgres -c "psql -c \"CREATE USER foo WITH SUPERUSER PASSWORD 'foo'\""
