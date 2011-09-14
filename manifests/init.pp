# Class: inetd
#
# Has been tested on: debian
#
# Parameters:
#
# Actions:
# * Installs inetd package
# * Starts the inetd service
#
# Requires:
#
# Sample Usage:
#
#    include inetd
#
class inetd {

  Package["openbsd-inetd"] -> Service["openbsd-inetd"]

  package { "openbsd-inetd":
    ensure => installed;
  }

  service { "openbsd-inetd":
    enable    => true,
    ensure    => running,
    hasstatus => true;
  }

}

