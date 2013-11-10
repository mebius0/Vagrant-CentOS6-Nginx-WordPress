#
# Cookbook Name:: wp-setup
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "wp-setup::clients"
include_recipe "wp-setup::themes"
include_recipe "wp-setup::plugins"
include_recipe "wp-setup::own"

template "index.php" do
  path "/var/www/html/index.php"
  source "index.php.erb"
  owner "vagrant"
  group "vagrant"
  mode 00644
end
