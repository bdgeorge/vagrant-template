# default path
Exec {
  path => ["/usr/bin", "/bin", "/usr/sbin", "/sbin", "/usr/local/bin", "/usr/local/sbin"]
}

$site_name = "wootest.loc"

include bootstrap
include tools
include apache
include php
include mysql

