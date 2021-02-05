# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::myssh
class profile::myssh {
  class { "ssh":
    sshd_allow_tcp_forwarding => false,
  }
}
