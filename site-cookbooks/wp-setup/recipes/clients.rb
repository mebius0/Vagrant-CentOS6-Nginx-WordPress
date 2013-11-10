#
# Cookbook Name:: wp-setup
# Recipe:: clients
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory "clients" do
  path "/var/www/clients"
  owner "vagrant"
  group "vagrant"
  mode 0755
  action :create
end

bash "clients setup" do
  user "vagrant"
  cwd "/var/www/clients"
  environment "HOME" => "/home/vagrant"
  code <<-EOH
    cd /var/www/clients
    wp core download --locale=ja
    wp core config --dbname=wp_clients --dbuser=root --dbpass=wordpress
    wp db create
    EOH
end

template "/tmp/clients.sql" do
  source "clients.sql.erb"
  owner "root"
  group "root"
  mode 00644
end

execute "clients database" do
  user "root"
  command "mysql -u root -pwordpress < /tmp/clients.sql"
  action :run
end

bash "clients install" do
  user "vagrant"
  cwd "/var/www/clients"
  environment "HOME" => "/home/vagrant"
  code <<-EOH
    cd /var/www/clients
    wp core install --url=local.dev.clients --title='Clients Development' --admin_name=admin --admin_email=s.endoh@aistear.net --admin_password=admin
    EOH
end
    
    

