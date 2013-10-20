class people::nanoxd::dotfiles {

  notify { 'class people::nanoxd::dotfiles declared': }

  class { 'prezto': repo => 'nanoxd/prezto' }

  repository {
    "dotfiles":
      source => 'nanoxd/nanofiles'
      path   => "${::boxen_srcdir}/dotfiles"
  }

  $homedir = "/Users/${::boxen_user}"

  file { "${homedir}/.ctags":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/.ctags",
    require => Repository["dotfiles"]
  }

  file { "${homedir}/.gemrc":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/.gemrc",
    require => Repository["dotfiles"]
  }

  file { "${homedir}/.gitconfig":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/.gitconfig",
    require => Repository["dotfiles"]
  }

  file { "${homedir}/.gitignore":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/.gitignore",
    require => Repository["dotfiles"]
  }

  file { "${homedir}/.htoprc":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/.htoprc",
    require => Repository["dotfiles"]
  }

  file { "${homedir}/.pryrc":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/.pryrc",
    require => Repository["dotfiles"]
  }

  file { "${homedir}/.tmux.conf":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/.tmux.conf",
    require => Repository["dotfiles"]
  }
}
