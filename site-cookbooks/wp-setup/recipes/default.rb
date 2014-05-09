#
# Cookbook Name:: wp-setup
# Recipe:: default
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
