class people::nanoxd {

  notify { 'class people::nanoxd declared': }

  include people::nanoxd::apps
  include people::nanoxd::dotfiles

}
