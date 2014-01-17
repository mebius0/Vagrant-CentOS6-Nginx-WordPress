#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

remote_file "#{Chef::Config[:file_cache_path]}/nginx-1.4.4-1.el6.ngx.i386.rpm" do
  source "http://nginx.org/packages/centos/6/i386/RPMS/nginx-1.4.4-1.el6.ngx.i386.rpm"
end

rpm_package "nginx" do
  source "#{Chef::Config[:file_cache_path]}/nginx-1.4.4-1.el6.ngx.i386.rpm"
end

service "nginx" do
  supports :status => true, :restart => true, :reload => true
  action [:enable, :start]
end

directory "sites-enabled" do
  path "/etc/nginx/sites-enabled"
  owner "root"
  group "root"
  mode 0755
  action :create
end

directory "global" do
  path "/etc/nginx/global"
  owner "root"
  group "root"
  mode 0755
  action :create
end

template "nginx.conf" do
  path "/etc/nginx/nginx.conf"
  source "nginx.conf.erb"
  owner "root"
  group "root"
  mode 00644
end

template "wordpress.conf" do
  path "/etc/nginx/global/wordpress.conf"
  source "global/wordpress.conf.erb"
  owner "root"
  group "root"
  mode 00644
end

template "index" do
  path "/etc/nginx/sites-enabled/index"
  source "sites-enabled/index.erb"
  owner "root"
  group "root"
  mode 00644
end

template "clients" do
  path "/etc/nginx/sites-enabled/clients"
  source "sites-enabled/clients.erb"
  owner "root"
  group "root"
  mode 00644
end

template "themes" do
  path "/etc/nginx/sites-enabled/themes"
  source "sites-enabled/themes.erb"
  owner "root"
  group "root"
  mode 00644
end

template "plugins" do
  path "/etc/nginx/sites-enabled/plugins"
  source "sites-enabled/plugins.erb"
  owner "root"
  group "root"
  mode 00644
end

template "own" do
  path "/etc/nginx/sites-enabled/own"
  source "sites-enabled/own.erb"
  owner "root"
  group "root"
  mode 00644
end

template "database" do
  path "/etc/nginx/sites-enabled/database"
  source "sites-enabled/database.erb"
  owner "root"
  group "root"
  mode 00644
  notifies :restart, 'service[nginx]'
end
