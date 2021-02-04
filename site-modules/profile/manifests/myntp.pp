# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::myntp
class profile::myntp {
  unless $facts['virtual'] == "lxc" {
    if ($facts['os']['release']['major'] == '8') and ($facts['os']['family'] == 'RedHat' ) {
      include chrony
    } else {
      include ntp
    }
  }
}
