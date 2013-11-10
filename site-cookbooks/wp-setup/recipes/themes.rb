#
# Cookbook Name:: wp-setup
# Recipe:: themes
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory "themes" do
  path "/var/www/themes"
  owner "vagrant"
  group "vagrant"
  mode 0755
  action :create
end

bash "themes setup" do
  user "vagrant"
  cwd "/var/www/themes"
  environment "HOME" => "/home/vagrant"
  code <<-EOH
    cd /var/www/themes
    wp core download --locale=ja
    wp core config --dbname=wp_themes --dbuser=root --dbpass=wordpress
    wp db create
    EOH
end

template "/tmp/themes.sql" do
  source "themes.sql.erb"
  owner "root"
  group "root"
  mode 00644
end

execute "themes database" do
  user "root"
  command "mysql -u root -pwordpress < /tmp/themes.sql"
  action :run
end

bash "themes install" do
  user "vagrant"
  cwd "/var/www/themes"
  environment "HOME" => "/home/vagrant"
  code <<-EOH
    cd /var/www/themes
    wp core install --url=local.dev.themes --title='Themes Development' --admin_name=admin --admin_email=admin@example.com --admin_password=admin
    EOH
end
