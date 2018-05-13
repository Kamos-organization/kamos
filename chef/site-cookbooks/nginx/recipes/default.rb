#
# Cookbook:: nginx
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'nginx' do
  action :install
end

service 'nginx' do
  action [:enable, :start]
  supports status: true, restart: true, reload: true
end