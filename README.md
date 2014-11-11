# riak-smartos

This cookbook installs Riak on SmartOS using the package found at [http://docs.basho.com/riak/latest/downloads/]

By default this will install Riak 2.0.2 on SmartOS 13.1+

## Attributes

The following attributes are used to form the URL of the .tgz package found at [http://docs.basho.com/riak/latest/downloads/]

> `default['riak']['release']` - the release of Riak you want to install (by default, 2.0)

> `default['riak']['version']` - the full version number of Riak you want to install. Note that this must match the release number (by default, 2.0.2)

> `default['riak']['smartos']['version']` - the SmartOS version of the Riak package you want to install. For SmartOS 13.x and 14.x, use 13.1 (by default, 13.1)

The following attributes will be entered in `riak.conf`

> `default['riak']['http_port']` - the Riak HTTP port (a.k.a. `listener.http.internal`, by default, 8098)

> `default['riak']['protobuf_port']` - the Riak Protobuf port (a.k.a. `listener.protobuf.internal`, by default, 8097)

> `default['riak']['top_level_domain'] - the top-level-domain for generating the nodename (by
> default, example.com). The nodename is generated as
> `riak@#{node['machinename']}.#{node['riak']['top_level_domain']}`.


## Notes

This cookbook will only install Riak. It will not configure it or enable the service using SMF.


