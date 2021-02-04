# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::myntp
class profile::myntp {
  if $facts['os']['release']['major'] == 8 {
    include chrony
  } else {
    include ntp
  }
}
