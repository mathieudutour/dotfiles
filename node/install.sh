curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

install_npm_packages() {
	if test ! $(which $2)
  then
		npm install $1 -g --silent
	fi
}

install_npm_packages diff-so-fancy diff-so-fancy
