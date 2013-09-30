##
class dev_env::bundle ( $homedir ) {

  $bundledir    = "${homedir}/.vim/bundle"
  $gem_provider = $::is_pe ? {
    'true'  => 'pe_gem',
    default => 'gem',
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
    target => '/opt/puppet/bin/puppet-lint',
  }

  Vcsrepo {
    ensure   => present,
    provider => git,
  }

  vcsrepo { "${bundledir}/vim-addon-mw-utils":
    source => 'https://github.com/MarcWeber/vim-addon-mw-utils.git',
  }

  vcsrepo { "${bundledir}/tlib_vim":
    source => 'https://github.com/tomtom/tlib_vim.git',
  }

  vcsrepo { "${bundledir}/vim-snipmate":
    source => 'https://github.com/garbas/vim-snipmate.git',
  }

  vcsrepo { "${bundledir}/tabular":
    source => 'https://github.com/godlygeek/tabular.git',
  }

  vcsrepo { "${bundledir}/syntastic":
    source => 'https://github.com/scrooloose/syntastic.git',
  }

  vcsrepo { "${bundledir}/vim-puppet":
    source => 'https://github.com/rodjek/vim-puppet.git',
  }

  vcsrepo { "${bundledir}/vim-snippets":
    source => 'https://github.com/honza/vim-snippets.git',
  }

}
