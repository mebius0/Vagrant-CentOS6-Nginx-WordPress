#
# Cookbook Name:: wp-setup
# Recipe:: plugins
#

directory "plugins" do
	path "/var/www/plugins"
	owner "vagrant"
	group "vagrant"
	mode 0755
	action :create
end

bash "plugins setup" do
	user "vagrant"
	cwd "/var/www/plugins"
	environment "HOME" => "/home/vagrant"
	code <<-EOH
		cd /var/www/plugins
		wp core download --locale=ja
		wp core config --dbname=wp_plugins --dbuser=root --dbpass=wordpress
		wp db create
	EOH
end

template "/tmp/plugins.sql" do
	source "plugins.sql.erb"
	owner "root"
	group "root"
	mode 00644
end

execute "plugins database" do
	user "root"
	command "mysql -u root -pwordpress < /tmp/plugins.sql"
	action :run
end

bash "plugins install" do
	user "vagrant"
	cwd "/var/www/plugins"
	environment "HOME" => "/home/vagrant"
	code <<-EOH
		cd /var/www/plugins
		wp core install --url=local.dev.plugins --title='Plugins Development' --admin_name=admin --admin_email=admin@example.com --admin_password=admin
		wp plugin install nginx-champuru --activate
		wp plugin install plugin-check --activate
		wp plugin activate wp-multibyte-patch
	EOH
end

