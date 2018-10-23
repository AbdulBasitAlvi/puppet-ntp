class ntp::service (
  String $service_ensure = $ntp::params::service_ensure,
  String $service_name = $ntp::params::ntpservice,
  Boolean $service_enable = $ntp::params::service_enable,
  Boolean $service_hasrestart = $ntp::params::service_hasrestart,
  Boolean $service_hasstatus = $ntp::params::service_hasstatus,
){  
  service {$service_name :
     ensure => $service_ensure,
     enable => $service_enable,
     hasstatus => $service_hasstatus,
     hasrestart => $service_hasrestart,
  }
}
