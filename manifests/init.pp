class inetd {

  service { "inetd":
    enable => true,
    ensure => running;
  }

}

