📌 Project Overview
CentOS Stream 9 VM

Hosts a static HTML website using Apache (httpd)

Configured with a private IP

Firewall rules automated using firewalld

Ubuntu VM

Hosts a WordPress website using Apache, MySQL, and PHP

Database and user created automatically

Firewall rules managed using UFW

Both virtual machines are provisioned automatically and are ready to use after running vagrant up.

⚙️ Technologies Used

Vagrant

VirtualBox

Linux (CentOS Stream 9, Ubuntu)

Apache (httpd / apache2)

MySQL

Bash scripting

FirewallD (CentOS)

UFW (Ubuntu)

🚀 How to Run
vagrant up

After provisioning:

Static website: http://192.168.56.26

WordPress site: http://<ubuntu-private-ip>


🔐 Automation & Security

Services are enabled and started automatically

Firewall rules allow only required services (HTTP/HTTPS)

Infrastructure is reproducible using a single Vagrantfile


🧠 What I Learned

Provisioning multi-VM environments using Vagrant

Handling OS-specific firewall configurations

Automating web server and database setup

Debugging provisioning issues related to services and shell scripting

Applying Infrastructure as Code (IaC) principles

