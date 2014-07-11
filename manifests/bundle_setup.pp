# bundle_setup.pp
class puppet_vim_env::bundle_setup ( $homedir ) {
  
  $bundledir = "${homedir}/.vim/bundle"
 
  if $::is_pe == 'true' {
    $gem_provider = 'pe_gem'
    $lint_target  = '/opt/puppet/bin/puppet-lint'
  }
  else {
    $gem_provider = 'gem'
    $lint_target  = '/usr/bin/puppet-lint'
  }

  file { $bundledir:
    ensure  => directory,
    require => File[ "${homedir}/.vim" ],
  }

  package { 'puppet-lint':
    ensure      => installed,
    provider    => $gem_provider,
  }

  file { '/usr/local/bin/puppet-lint':
    ensure => link,
    target => $lint_target,
  }

}
