#
# Cookbook Name:: riak-smartos
# Recipe:: default
#
# Copyright (C) 2014 yetu AG
#

include_recipe 'line'

execute 'install riak from basho package' do
  command "pkg_add http://s3.amazonaws.com/downloads.basho.com/riak/#{node.default['riak']['release']}/#{node.default['riak']['version']}/smartos/#{node.default['riak']['smartos']['version']}/riak-#{node.default['riak']['version']}-SmartOS-x86_64.tgz"
  not_if "pkg_info riak-#{node.default['riak']['version']}"
end

replace_or_add 'Change the HTTP listener address and port' do
  path '/opt/local/etc/riak/riak.conf'
  pattern '^listener.http.internal.*'
  line "listener.http.internal = #{node['privateaddress']}:#{node['riak']['http_port']}"
end

replace_or_add 'Change the Protobuf listener address and port' do
  path '/opt/local/etc/riak/riak.conf'
  pattern '^listener.protobuf.internal.*'
  line "listener.protobuf.internal = #{node['privateaddress']}:#{node['riak']['protobuf_port']}"
end

replace_or_add 'Change the nodename' do
  path '/opt/local/etc/riak/riak.conf'
  pattern '^nodename.*'
  line "nodename = riak@#{node['machinename']}.#{node['riak']['top_level_domain']}"
end
