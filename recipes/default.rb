#
# Cookbook Name:: riak-smartos
# Recipe:: default
#
# Copyright (C) 2014 yetu AG
#


execute 'install riak from basho package' do
  command "pkg_add http://s3.amazonaws.com/downloads.basho.com/riak/#{node.default['riak']['release']}/#{node.default['riak']['version']}/smartos/#{node.default['riak']['smartos']['version']}/riak-#{node.default['riak']['version']}-SmartOS-x86_64.tgz"
  not_if "pkg_info riak-#{node.default['riak']['version']}"
end
