# @summary - manages Nginx service 
#
# 
#
# @example
#   include nginx::service

class nginx::service {
  service { 'nginx_service':
    name       => 'nginx',
    ensure     => $nginx::service_ensure,
    enable     => $nginx::service_enable,
    hasrestart => $nginx::service_hasrestart,
  }
}
