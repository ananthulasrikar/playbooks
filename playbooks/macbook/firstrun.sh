
# brew setup
# install home-brew,  Xcode-command-line-tools
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
compaudit | xargs chmod g-w,o-w

# personal
brew install adobe-acrobat-reader atom bitwarden docker google-drive monitorcontrol openvpn-connect sublime-text zoom authy discord github google-chrome lens ngrok pgadmin4 visual-studio-code aws-vault amazon-chime iterm2

# work
brew install htop telnet kubectl

# install tfswitch
brew install warrensbox/tap/tfswitch

./gpg.sh
./ssh_startup.sh
./ssh_config.sh
