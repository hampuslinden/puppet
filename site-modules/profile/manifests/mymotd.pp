# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::mymotd
class profile::mymotd {
  class { 'motd':
    content => "Be nice and prosper!!\n",
  }
}
