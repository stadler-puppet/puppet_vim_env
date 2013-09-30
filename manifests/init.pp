# init.pp
class dev_env ( $homedir = $::homedir ) {

  file { "${homedir}/.vim":
    ensure => directory,
  }

  class { 'dev_env::pathogen':
    homedir => $homedir,
  }

  class { 'dev_env::bundle':
    homedir => $homedir,
  }

}
