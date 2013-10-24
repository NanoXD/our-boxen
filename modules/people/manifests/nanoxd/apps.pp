class people::nanoxd::apps {

  notify { 'class people::nanoxd::apps declared': }

  include dropbox
  include alfred
  include virtualbox
  include vagrant
  include vlc
  include keyremap4macbook::login_item
  include skype
  include evernote
  include iterm2::dev
  include cloudapp
  include screenhero
  include chrome::beta

  vagrant::box { 'precise64/vmware_fusion':
    source => 'http://files.vagrantup.com/precise64_vmware_fusion.box'
  }

  ORGANIZE:
  include cmake
  include heroku
  include redis

}
