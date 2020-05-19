# @summary - Config Nginx webserver
#
#
#
# @example
#   include nginx::config


class nginx::config {
  file { 'nginx_config':
    path    => '/etc/nginx/nginx.conf',
    source  => 'puppet:///modules/nginx/rh-nginx.conf',
    ensure  => 'present',
    backup  => true, 
    notify  => Service['nginx_service'],
  }
}
