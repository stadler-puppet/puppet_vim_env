class dev_env ( $homedir = '/root') {

  file { "${homedir}/.vim":
    ensure => directory,
  }

  include dev_env::pathogen
  include dev_env::bundle

}
