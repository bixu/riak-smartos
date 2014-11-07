# riak-smartos

This cookbook installs Riak on SmartOS using the package found at [http://docs.basho.com/riak/latest/downloads/]

By default this will install Riak 2.0.2 on SmartOS 13.1+

## Attributes

> `default['riak']['release']` - the release of Riak you want to install (by default, 2.0)

> `default['riak']['version']` - the full version number of Riak you want to install. Note that this must match the release number (by default, 2.0.2)

> `default['riak']['smartos']['version']` - the SmartOS version of the Riak package you want to install. For SmartOS 13.x and 14.x, use 13.1 (by default, 13.1)

These attributes are used to form the URL of the .tgz package found at [http://docs.basho.com/riak/latest/downloads/]

## Notes

This cookbook will only install Riak. It will not configure it or enable the service using SMF.


