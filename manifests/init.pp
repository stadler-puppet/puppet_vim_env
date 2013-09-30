# init.pp
class puppet_vim_env ( $homedir = $::homedir ) {

  file { "${homedir}/.vim":
    ensure => directory,
  }

  class { 'puppet_vim_env::pathogen':
    homedir => $homedir,
  }

  class { 'puppet_vim_env::bundle':
    homedir => $homedir,
  }

}
