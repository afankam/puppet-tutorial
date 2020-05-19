# @summary - manages Nginx service 
#
# 
#
# @example
#   include nginx::service

class nginx::service {
  service { 'nginx_service':
    name       => 'nginx',
    ensure     => 'running',
    enable     => true,
    hasrestart => true,
  }
}
