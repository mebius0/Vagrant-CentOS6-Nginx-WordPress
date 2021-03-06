#
# Cookbook Name:: php
# Recipe:: default
#

%w{php php-fpm php-cli php-pdo php-mysqlnd php-common php-devel php-gd php-mbstring php-mcrypt php-odbc php-pear php-pecl-jsonc php-php-gettext php-snmp php-bcmath php-xmlrpc php-tidy php-process php-xml php-soap php-opcache}.each do |pkg|
	yum_package pkg do
		action :install
	end
end

service "php-fpm" do
	supports :status => true, :restart => true, :reload => true
	action [:enable, :start]
end

directory "php" do
	path "/var/tmp/php"
	owner "vagrant"
	group "vagrant"
	mode 0755
	action :create
end

directory "session" do
	path "/var/tmp/php/session"
	owner "vagrant"
	group "vagrant"
	mode 0755
	action :create
end

directory "wsdlcache" do
	path "/var/tmp/php/wsdlcache"
	owner "vagrant"
	group "vagrant"
	mode 0755
	action :create
end

template "php.ini" do
	path "/etc/php.ini"
	source "php.ini.erb"
	owner "root"
	group "root"
	mode 00644
end

template "www.conf" do
	path "/etc/php-fpm.d/www.conf"
	source "php-fpm.d/www.conf.erb"
	owner "root"
	group "root"
	mode 00644
	notifies :restart, 'service[php-fpm]'
end


