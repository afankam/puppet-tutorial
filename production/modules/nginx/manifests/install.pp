# @summary install nginx
#
#
#
# @example
#   include nginx::install

class nginx::install {
  package { 'install_nginx':
    name   => 'nginx',
    ensure => $nginx::package_ensure,
  }
}
