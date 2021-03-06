#
# Cookbook Name:: wp-setup
# Recipe:: themes
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

remote_file "/var/www/themes/wordpress-theme-test-date-ja.xml" do
	source "https://raw.githubusercontent.com/jawordpressorg/theme-test-data-ja/master/wordpress-theme-test-date-ja.xml"
end

bash "themes install" do
	user "vagrant"
	cwd "/var/www/themes"
	environment "HOME" => "/home/vagrant"
	code <<-EOH
		cd /var/www/themes
		wp core install --url=local.dev.themes --title='Themes Development' --admin_name=admin --admin_email=admin@example.com --admin_password=admin
		wp plugin install nginx-champuru --activate
		wp plugin install theme-check --activate
		wp plugin install wordpress-importer --activate
		wp plugin activate wp-multibyte-patch
		wp import --authors=create "/var/www/themes/wordpress-theme-test-date-ja.xml"
	EOH
end
