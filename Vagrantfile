# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  config.vm.box = "centos-6.5"
  config.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box"
  
 
  config.vm.network "forwarded_port", guest: 80, host: 8082


  config.vm.network "private_network", ip: "192.168.33.33"


  # config.vm.synced_folder "../data", "/vagrant_data"

  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
 config.omnibus.chef_version = :latest

  config.vm.provision :chef_solo do |chef|
        chef.cookbooks_path = ["cookbooks"]
        chef.add_recipe "apache2"
		chef.add_recipe "php"
		#chef.add_recipe "mysql::server"
		#chef.add_recipe "mysql::client"
	
  
        chef.json = { 
		:apache => { :default_site_enabled => true },
		:php_packages   => %w{ php5-mysqlnd php5-curl php5-mcrypt php5-memcached php5-gd }
  }
 end
end
