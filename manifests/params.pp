class ntp::params {
  $package_name = hiera('ntp::package_name')
  $package_ensure = hiera('ntp::package_ensure')
  $config_name = hiera('ntp::config_name')
  $service_hasrestart = hiera('ntp::hasrestart')
  $service_enable = hiera('ntp::service_enable')
  $service_hasstatus = hiera('ntp::hasstatus')
  $ntpservice = $osfamily ? {
    'redhat' => 'ntpd',
    'debian' => 'ntp',
    'default' => 'ntp',
  }
}
