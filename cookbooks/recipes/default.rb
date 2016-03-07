#
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "apache2"

web_app "myapp" do
  server_name "myapp.localhost"
  server_aliases ["www.myapp.localhost"]
  docroot "/vagrant"
end