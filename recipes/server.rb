#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#
# package 'httpd'
#
package 'httpd' do
	action :install
end

file '/var/www/html/index.html' do
   content '<h1> Hello, world!</h1>'
end

service 'httpd' do
  action [ :enable, :start ]
end

file '/etc/motd' do
 content "Property of Jesus Brasero
   IPADDRESS: #{node['ipaddress']}
   HOSTNAME: #{node['hostname']}
   MEMORY: #{node['total']}
   CPU: #{node['cpu']['0']['mhz']} Mhz
"
end
