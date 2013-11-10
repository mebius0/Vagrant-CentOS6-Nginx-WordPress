#
# Cookbook Name:: wp-setup
# Recipe:: own
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory "own" do
  path "/var/www/own"
  owner "vagrant"
  group "vagrant"
  mode 0755
  action :create
end

bash "own setup" do
  user "vagrant"
  cwd "/var/www/own"
  environment "HOME" => "/home/vagrant"
  code <<-EOH
    cd /var/www/own
    wp core download --locale=ja
    wp core config --dbname=wp_own --dbuser=root --dbpass=wordpress
    wp db create
    EOH
end

template "/tmp/own.sql" do
  source "own.sql.erb"
  owner "root"
  group "root"
  mode 00644
end

execute "own database" do
  user "root"
  command "mysql -u root -pwordpress < /tmp/own.sql"
  action :run
end

bash "own install" do
  user "vagrant"
  cwd "/var/www/own"
  environment "HOME" => "/home/vagrant"
  code <<-EOH
    cd /var/www/own
    wp core install --url=local.dev.own --title='Own Development' --admin_name=admin --admin_email=admin@example.com --admin_password=admin
    EOH
end
    
    

