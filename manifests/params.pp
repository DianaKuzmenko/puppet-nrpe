class nrpe::params {

  case $::osfamily {
    'RedHat': {

      $package_name       = ['nrpe', 'nagios-plugins-all']
      $config_nrpe_user   = 'nrpe'
      $config_nrpe_group  = 'nrpe'
      $config_include_dir = '/etc/nrpe.d'
      $config_plugins_dir = '/usr/lib64/nagios/plugins'
      $service_name       = 'nrpe'

      case $::operatingsystemmajrelease {
        '6': {
	}
        '7': {
	}
      }
    }
    'Debian': {
      $package_name       = ['nagios-nrpe-server', 'nagios-plugins']
      $config_nrpe_user   = 'nagios'
      $config_nrpe_group  = 'nagios'
      $config_include_dir = '/etc/nagios/nrpe.d'
      $service_name       = 'nagios-nrpe-server'

      case $::operatingsystemmajrelease {
        '6': {
          $config_plugins_dir = '/usr/lib64/nagios/plugins'
	}
        '7': {
          $config_plugins_dir = '/usr/lib/nagios/plugins'
	}
        '8': {
          $config_plugins_dir = '/usr/lib/nagios/plugins'
	}
      }
    }
  }

}
