install_npm_packages() {
	if test ! $(which $2)
  then
		npm install $1 -g --silent
	fi
}

install_npm_packages spoof spoof
install_npm_packages diff-so-fancy diff-so-fancy
