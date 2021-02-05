# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include role::vanilla
class role::vanilla {
  include profile::myntp
  include profile::mymotd
  include profile::mypuppethomelab
  include profile::myapache
  include profile::myssh
}
