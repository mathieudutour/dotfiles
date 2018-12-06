# Setting up a new droplet from scratch

## Create a droplet

- head over https://digitalocean.com
- create a new droplet
- add your ssh key
- copy the IP of the newly created droplet

## Create a new user

- `ssh root@<IP-OF-THE-DROPLET>`
- `export USER_NAME="<USER_NAME>"` (replace `<USER_NAME>` by the username of the new user)
- `adduser "$USER_NAME" && mkdir "/home/$USER_NAME/.ssh" && cat ~/.ssh/authorized_keys >> "/home/$USER_NAME/.ssh/authorized_keys" && chown -R "$USER_NAME:$USER_NAME" "/home/$USER_NAME/.ssh" && vi /etc/sudoers`
- search for the following line: `root ALL=(ALL:ALL) ALL` and add `<USER_NAME> ALL=(ALL:ALL) ALL` under it. Save the file (esc + `:w!` + `:q`)

## Install mosh

- `exit`
- `ssh <USER_NAME>@<IP-OF-THE-DROPLET>`
- `sudo add-apt-repository ppa:keithw/mosh && sudo apt-get update && sudo apt-get install mosh`
- `exit`
- `mosh <USER_NAME>@<IP-OF-THE-DROPLET>`

## Install the dotfiles

- `git clone https://github.com/mathieudutour/dotfiles.git ~/.dotfiles`
- `cd ~/dotfiles`
- `script/bootstrap`

