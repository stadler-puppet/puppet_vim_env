# params.pp
class puppet_vim_env::params {

  case $::operatingsystem {
    'solaris' : {
      $pkg_provider = 'pkgutil'
      $pkg_name     = 'CSWvim'
    }
    'SLES' : {
      $pkg_name     = 'vim'
      $pkg_provider = undef
    }
    'Ubuntu' : {
      $pkg_name     = 'vim'
      $pkg_provider = undef
    }
    default: {
      $pkg_provider = undef
      $pkg_name     = undef
    }
  }
}
