#!/bin/sh

echo "installing pyenv"

echo "Check out pyenv where you want it installed. A good place to choose is $HOME/.pyenv (but you can install it somewhere else)."

git clone https://github.com/yyuu/pyenv.git ~/.pyenv  > /dev/null

if [ "$?" = "1" ]
then
  echo "An unexpected error occured!"
  exit 0
fi


echo "Define environment variable PYENV_ROOT to point to the path where pyenv repo is cloned and add $PYENV_ROOT/bin to your $PATH for access to the pyenv command-line utility."

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile

echo "Zsh note: Modify your ~/.zshenv file instead of ~/.bash_profile. Ubuntu note: Modify your ~/.bashrc file instead of ~/.bash_profile."

echo "Add pyenv init to your shell to enable shims and autocompletion. Please make sure eval "$(pyenv init -)" is placed toward the end of the shell configuration file since it manipulates PATH during the initialization."

echo 'eval "$(pyenv init -)"' >> ~/.bash_profile

echo "============================================================"
echo "Installing rvm"

echo "Before any other step install mpapis public key (might need gpg2) (see security)"

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

echo "Unless doing guided install you should read all sub-sections under the RVM Section."

echo "Install RVM (development version):"

\curl -sSL https://get.rvm.io | bash

echo "source $HOME/.rvm/scripts/rvm" >> ~/.bash_profile


echo "============================================================"
echo "run 'exec $SHELL'"
echo "run 'source .bash_profile'"

echo "pyenv installed"
echo "run 'python version: 2.7.11'"

echo "rvm installed"
echo "passenger-config --ruby-command"

echo "type rvm | head -n 1"
echo "rvm is a function"

echo "run 'rvm install 2.0.0'"
echo "run 'rvm use 2.0.0 --default'"
echo "============================================================"

