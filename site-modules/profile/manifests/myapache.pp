# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::myapache
class profile::myapache {
  class { "apache":
    default_vhost => false,
  }

  apache::vhost { 'test-vhost':
    servername => "${::fqdn}",
    port       => '80',
    docroot    => '/var/www/mypage',
  }

  file { '/var/www/mypage':
    ensure => 'directory',
    mode   => '0755',
    group  => 0,
    owner  => 0,
  }

  file { '/var/www/mypage/index.html':
    ensure  => 'file',
    mode    => '0644',
    owner   => 0,
    group   => 0,
    content => 'Welcome to my web page!',
  }

}
