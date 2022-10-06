#
# Cookbook:: apache-cookbook
# Recipe:: apache-recipe
#
# Copyright:: 2022, The Authors, All Rights Reserved.

package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
  content ' this is my web server hosted on apache server' 
  action :create
end 

service 'httpd' do
  action [:enable, :start]
end

