# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::myapache
class profile::myapache {
  include apache
  apache::vhost { 'test-vhost':
    servername => 'pup1.trustsno1.com',
    port       => '80',
    docroot    => '/var/www/html',
  }
}
