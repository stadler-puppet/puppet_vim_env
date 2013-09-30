### Overview

This module sets up a vim envrionment optimized for Puppet development.

It relies on the work done by many, many people and specifically draws upon the following resources:
https://github.com/MarcWeber/vim-addon-mw-utils
https://github.com/tomtom/tlib_vim
https://github.com/garbas/vim-snipmate
https://github.com/godlygeek/tabular
https://github.com/scrooloose/syntastic
https://github.com/rodjek/vim-puppet
https://github.com/honza/vim-snippets

### Prerequisites

This module relies on a couple of modules from http://forge.puppetlabs.com.

* For PE:
  - `puppet module install puppetlabs/pe_gem`
* For any Puppet install including PE:
  - `puppet module install puppetlabs/vcsrepo`

This module also assumes that your system has `curl` and `rubygems` installed (though it uses the vedored PE gem executable if available).

### Installation & Setup

To begin using this module, clone this repo into your modulepath and `include puppet_vim_env`.


