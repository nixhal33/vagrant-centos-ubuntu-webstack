
#!/bin/bash

services=("httpd" "mysqld" "firewalld")
log="/vgdata/service_monitor.log"

for service in "${services[@]}"; do
	if ! systemctl is-active --quiet "$service"; then
		echo "$(date): $service is Down!!!!. Restarting Pronto!!!!..." >>$log
		systemctl restart "$service"
	else
		echo "$(date): $service is running successfully!!!!..." >>$log
	fi
done

echo "The Date:  $(date +%F) : You can see the condition of services." >>$log