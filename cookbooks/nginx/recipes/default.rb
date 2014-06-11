#
# Cookbook Name:: nginx
# Recipe:: default
#

remote_file "#{Chef::Config[:file_cache_path]}/nginx-release-centos-6-0.el6.ngx.noarch.rpm" do
	source "http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm"
end

yum_package "nginx_repo" do
	source "#{Chef::Config[:file_cache_path]}/nginx-release-centos-6-0.el6.ngx.noarch.rpm"
	action :install
end

yum_package "nginx" do
	action :install
	options "--enablerepo=nginx"
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

template "proxy.conf" do
	path "/etc/nginx/proxy.conf"
	source "proxy.conf.erb"
	owner "root"
	group "root"
	mode 00644
end

template "restrictions.conf" do
	path "/etc/nginx/global/restrictions.conf"
	source "global/restrictions.conf.erb"
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

template "wp-proxy.conf" do
	path "/etc/nginx/global/wp-proxy.conf"
	source "global/wp-proxy.conf.erb"
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
