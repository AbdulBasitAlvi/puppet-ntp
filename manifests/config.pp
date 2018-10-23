class ntp::config (
  String $config_name = $ntp::params::config_name,
  String $config_file_mode = $ntp::params::config_file_mode,
  Array[String] $servers = $ntp::params::servers,
){
  file {"/etc/$(config_name)":
    ensure => 'present',
    group => 0,
    owner => 0,
    mode => $config_file_mode,
    content => template("$module_name/ntp.conf.erb"),
  }
}
