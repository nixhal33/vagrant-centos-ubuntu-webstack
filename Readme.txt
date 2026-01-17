How to install vm using vagrant and it's boxes.

Step 1: Option 1: Create a Vagrantfile and initiate the box
----> "vagrant init geerlingguy/centos7"

Option 2: Open the Vagrantfile and replace the contents with the following
---->  "Vagrant.configure("2") do |config|
  		config.vm.box = "geerlingguy/centos7"
	end "


Step 2: Bring up your virtual machine
---> "vagrant up"
