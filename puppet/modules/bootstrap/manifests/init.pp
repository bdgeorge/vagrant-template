class bootstrap {

  # silence puppet and vagrant annoyance about the puppet group
  group { 'puppet':
    ensure => 'present'
  }

  # ensure local apt cache index is up to date before beginning
  exec { 'apt-get update':
    command => '/usr/bin/apt-get update'
  }

  # create self-signed SSL
  exec{ 'make-ssl-cert':
    command => 'make-ssl-cert generate-default-snakeoil --force-overwrite'
  }
}
