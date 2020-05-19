# @summary - Initializes the Nginx module
#
# 
#
# @example
#   include nginx
class nginx {
  contain nginx::install
  contain nginx::config
  contain nginx::service
  
  # ensures order of execution in the catalag
   
  Class['nginx::install']
  -> Class['nginx::config']
  ~> Class['nginx::service']   

}


