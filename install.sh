#!/bin/sh

ln_bin=/bin/ln
env_bin=/usr/bin/env
git_bin=${GIT_BIN:-$(which git)}


print_info()
{
  printf "%s\n" "$1"
}

print_error()
{
  printf "ERROR - %s\n" "$1"
  exit 1
}

check_binaries()
{
  if [ ! -x "$git_bin" ]
  then
    print_error "git binary not found"
  fi

  if [ ! -x "$ln_bin" ]
  then
    print_error "ln binary not found"
  fi

  if [ ! -x "$env_bin" ]
  then
    print_error "env binary not found"
  fi
}

dot_clone_dot()
{
  print_info "CLONING DOT INTO $HOME/.dotfiles"
  if [ -d "$HOME/.dotfiles" ]
  then
    (cd "$HOME/.dotfiles" && $git_bin pull)
  else
    $git_bin clone --recursive git://github.com/lorn/dotfiles.git "$HOME/.dotfiles"
  fi
}

dot_clone_zsh()
{
  print_info "CLONING OH-MY-ZSH INTO $HOME/.oh-my-zsh"
  if [ -d "$HOME/.oh-my-zsh" ]
  then
    (cd "$HOME/.oh-my-zsh" && $git_bin pull)
  else
    $git_bin clone git://github.com/lorn/oh-my-zsh "$HOME/.oh-my-zsh"
  fi
}


dot_install_dot()
{
  print_info "INSTALLING DOT FILES"
  $ln_bin -s -f -n "$HOME/.dotfiles/dot.gitconfig" "$HOME/.gitconfig"
  $ln_bin -s -f -n "$HOME/.dotfiles/Brewfile" "$HOME/.Brewfile"
  $ln_bin -s -f -n "$HOME/.dotfiles/dot.spacemacs" "$HOME/.spacemacs"
  $ln_bin -s -f -n "$HOME/.dotfiles/dot.config" "$HOME/.config"
  $ln_bin -s -f -n "$HOME/.dotfiles/dot.scripts" "$HOME/.scripts"
  $ln_bin -s -f -n "$HOME/.dotfiles/dot.xinitrc" "$HOME/.xinitrc"
  $ln_bin -s -f -n "$HOME/.dotfiles/dot.profile" "$HOME/.profile"
  $ln_bin -s -f -n "$HOME/.dotfiles/dot.profile" "$HOME/.xprofile"
  $ln_bin -s -f -n "$HOME/.dotfiles/dot.profile" "$HOME/.zprofile"
  $ln_bin -s -f -n "$HOME/.dotfiles/dot.zshrc" "$HOME/.zshrc"
}


dot_clone_spacemacs()
{
    print_info "INSTALLING SPACEMACS"
    $git_bin clone https://github.com/syl20bnr/spacemacs "$HOME/.emacs.d"
}

check_binaries
dot_clone_dot
dot_install_dot
dot_clone_zsh
dot_clone_spacemacs
