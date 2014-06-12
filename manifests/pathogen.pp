# pathogen.pp
class puppet_vim_env::pathogen (
  $homedir
  ) {

  $autoloaddir = "${homedir}/.vim/autoload"

  file { $autoloaddir:
    ensure  => directory,
    require => File[ "${homedir}/.vim" ],
  }
  
  file { "${autoloaddir}/pathogen.vim":
    ensure => file,
    source => 'puppet:///modules/puppet_vim_env/pathogen.vim',
  }

  file { "${homedir}/.vimrc":
    ensure => file,
    source => 'puppet:///modules/puppet_vim_env/vimrc',
  }
}

