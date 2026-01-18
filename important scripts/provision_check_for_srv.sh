
#!/bin/bash

log="/vgdata/provision_check.log"

echo "Provision Check: $(date +%F)" >>$log

systemctl is-active httpd && echo "httpd ok" >>$log
systemctl is-active mysqld && echo "mysql ok" >>$log
systemctl is-active ssh && echo "ssh ok" >>$log

ss -tulnp | grep :80 && echo "Port 80 Open For HTTPD" >>$log
ss -tulnp | grep :3306 && echo "Port 3306 Open For MySQL" >>$log
ss -tulnp | grep :22 && echo "Port 22 Open SSH" >>$log

echo "=================> PROVISION CHECK COMPLETED <==================" >>$log
