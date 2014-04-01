name                'tokumx'
maintainer          'esmet'
maintainer_email    'john.esmet@gmail.com'
license             'Apache 2.0'
description         'Wrapper cookbook over github.com/edelight/chef-mongodb for TokuMX'
version             '0.1.0'

recipe 'tokumx::tokutek_repo', 'Adds the tokutek package repo'

depends 'mongodb', '>= 0.15.1'

%w(ubuntu debian).each do |os|
  supports os
end
