include_recipe "apache2"

web_app "myapp" do
cookbook "apache2"
server_name "myapp.local"
server_aliases ["www.myapp.local"]
docroot "/var/www/myapp"
end

directory "/var/www/myapp" do
owner "apache"
group "apache"
mode 0755
action :create
end 
