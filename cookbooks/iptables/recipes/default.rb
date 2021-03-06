service "iptables" do
	supports :status => true, :start => true, :restart => true, :reload => true, :stop => true
	action [:enable]
end

template "/etc/sysconfig/iptables" do
	source "iptables.erb"
	owner "root"
	group "root"
	mode 0600
	notifies :restart, 'service[iptables]'
end
