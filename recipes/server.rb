#
# Cookbook:: wsWebServer
# Recipe:: server
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'httpd'

template '/etc/httpd/conf/httpd.conf' do
  source 'httpd.conf.erb'
  action :create
  notifies :restart, 'service[httpd]'
end


service 'httpd' do
  action [:enable, :start]
end
