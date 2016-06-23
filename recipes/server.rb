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

template '/var/www/html/index.html' do
	source 'index.html.erb'
end

service 'httpd' do
  action [ :enable, :start ]
end

file '/etc/motd' do
 content "Property of Jesus Brasero
   IPADDRESS: #{node['ipaddress']}
   HOSTNAME: #{node['hostname']}
   MEMORY: #{node['memory']['total']}
   CPU: #{node['cpu']['0']['mhz']} Mhz
"
end

#file '/var/www/html/index.html' do
 # content "<h1>Hello, Jesus!</h1>
#<h2>ipaddress: #{node['ipaddress']}</h2>
#<H2>hostname: #{node['hostname']}</h2>
#<h2>#{node['memory']['total']}</h2>
#<h2>#{node['cpu']['0']['mhz']} Mhz</h2>
#"
#end

