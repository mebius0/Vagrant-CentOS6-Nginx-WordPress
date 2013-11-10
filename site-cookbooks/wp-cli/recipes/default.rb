#
# Cookbook Name:: wp-cli
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{git subversion curl curl-devel}.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end

directory "wp-cli" do
  path "/home/vagrant/wp-cli"
  owner "vagrant"
  group "vagrant"
  mode 0755
  action :create
end

remote_file "/home/vagrant/wp-cli/installer.sh" do
  source "https://raw.github.com/wp-cli/wp-cli.github.com/master/installer.sh"
  owner "vagrant"
  group "vagrant"
  mode 0755
end

bash "install wp-cli" do
  cwd "/home/vagrant/wp-cli"
  user "vagrant"
  environment "INSTALL_DIR" => "/home/vagrant/wp-cli"
  code <<-EOH
    sh ./installer.sh
    echo 'export PATH=/home/vagrant/wp-cli/bin:$PATH' >> .bash_profile
    source .bash_profile
    EOH
end

execute "link bin" do
  user "root"
  command "ln -sf /home/vagrant/wp-cli/bin/wp /usr/local/bin/wp"
end


