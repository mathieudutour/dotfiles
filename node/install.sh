curl https://raw.githubusercontent.com/Schniz/fnm/master/.ci/install.sh | bash -s -- --skip-shell

if test ! $(which spoof)
then
  sudo npm install spoof -g
fi

npm install -g pure-prompt diff-so-fancy
