#
# Cookbook Name:: wp-cli
# Recipe:: default
#

%w{git subversion curl curl-devel}.each do |pkg|
	package pkg do
		action [:install, :upgrade]
	end
end

directory "/usr/local/share/wp-cli" do
	recursive true
end

remote_file "/usr/local/share/wp-cli/wp-cli.phar" do
	source "https://raw.github.com/wp-cli/builds/gh-pages/phar/wp-cli.phar"
	mode 0755
	action :create_if_missing
end

link "/usr/local/bin/wp" do
	to "/usr/local/share/wp-cli/wp-cli.phar"
end


