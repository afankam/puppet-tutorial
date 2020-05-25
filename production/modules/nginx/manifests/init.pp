# @summary - Initializes the Nginx module
#
# 
#
# @example
#   include nginx

class nginx (
  String $package_ensure,
  String $config_ensure,
  String $service_ensure,
  Boolean $service_enable,
  Boolean $service_hasrestart,
) {
  
  contain nginx::install
  contain nginx::config
  contain nginx::service
  
   
  Class['nginx::install']
  -> Class['nginx::config']
  ~> Class['nginx::service']   

}


