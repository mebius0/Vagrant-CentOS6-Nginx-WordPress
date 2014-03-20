#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{mysql mysql-server mysql-libs mysql-devel mysql-bench phpMyAdmin}.each do |pkg|
  yum_package pkg do
    action :install
  end
end

service "mysqld" do
  supports :status => true, :restart => true, :reload => true
  action [:enable, :start]
end

template "my.cnf" do
  path "/etc/my.cnf"
  source "my.cnf.erb"
  owner "root"
  group "root"
  mode 00644
  notifies :restart, 'service[mysqld]'
end

execute "add-root-password" do
  command %Q[mysqladmin -u root -h localhost password 'wordpress']
  action :run
  only_if %Q[mysql -u root -e 'show databases;']
end



