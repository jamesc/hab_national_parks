#
# Cookbook:: hab_national_parks
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# set up with just the defaults
hab_sup 'default'

hab_service 'jamesc/np-mongodb'

hab_service 'jamesc/national-parks' do
    strategy 'at-once'
    bind 'database:np-mongodb.default'
end
