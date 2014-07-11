# bundle_loader.pp
class puppet_vim_env::bundle_loader ($bundledir ) {
 
  File {
    ensure  => directory,
    recurse => true,
  }
  
  file { "${bundledir}/vim-addon-mw-utils":
    source => "puppet:///modules/puppet_vim_env/vim-addon-mw-utils/",
  }
  file { "${bundledir}/tlib_vim":
    source => "puppet:///modules/puppet_vim_env/tlib_vim",
  }

  file { "${bundledir}/vim-snipmate":
    source => "puppet:///modules/puppet_vim_env/vim-snipmate/",
  }

  file { "${bundledir}/tabular":
    source => "puppet:///modules/puppet_vim_env/tabular/",
  }

  file { "${bundledir}/syntastic":
    source => "puppet:///modules/puppet_vim_env/syntastic/",
  }

  file { "${bundledir}/vim-puppet":
    source => "puppet:///modules/puppet_vim_env/vim-puppet/",
  }

  file { "${bundledir}/vim-snippets":
    source      => "puppet:///modules/puppet_vim_env/vim-snippets/",
  }

}
