# init.pp
class puppet_vim_env ( $homedir = $::homedir )
inherits puppet_vim_env::params {

  #   package { 'vim-enhanced':
  #    ensure   => installed,
  #   provider => $puppet_vim_env::params::pkg_provider,
  #  name => $puppet_vim_env::params::pkg_name,
  #  before   => File["${homedir}/.vim"],
  #}

  if $::hostname == 'ubuntu1204a' {
    package { 'vim':
      ensure => installed,
      before => File["${homedir}/.vim"],
    }
  }
  
  file { "${homedir}/.vim":
    ensure => directory,
  }

  class { 'puppet_vim_env::pathogen':
    homedir => $homedir,
  }
 
  class { 'puppet_vim_env::bundle_setup':
    homedir   => $homedir,
  }

  class { 'puppet_vim_env::bundle_loader':
    bundledir => $bundledir,
  }

}
