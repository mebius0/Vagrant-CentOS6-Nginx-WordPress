#
# Cookbook Name:: wp-setup
# Recipe:: clients
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
		wp core install --url=local.dev.clients --title='Clients Projects' --admin_name=admin --admin_email=admin@example.com --admin_password=admin
		wp plugin install nginx-champuru --activate
		wp plugin activate wp-multibyte-patch
	EOH
end
    
    

