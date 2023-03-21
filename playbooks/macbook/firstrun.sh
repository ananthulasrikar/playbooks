
# brew setup
# install home-brew,  Xcode-command-line-tools
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
compaudit | xargs chmod g-w,o-w

# personal
brew install \
    adobe-acrobat-reader \
    bitwarden \
    discord \
    git \
    google-drive \
    google-chrome \
    iterm2 \
    monitorcontrol \
    slack \
    sublime-text \
    visual-studio-code \
    zoom

# work
brew install fluxcd/tap/flux
brew install openvpn-connect \
    ngrok \
    pgadmin4 \
    aws-vault \
    amazon-chime \
    eksctl \
    helm \
    htop \
    jq \
    minikube \
    miniconda \
    telnet \
    tree \
    tfenv \
    kubectl \
    kustomize \
    watch \
    time

# add unlimted history to zshrc
echo 'export HISTFILESIZE=1000000000' >> ~/.zshrc
echo 'export HISTSIZE=1000000000' >> ~/.zshrc

./gpg.sh
./ssh_startup.sh
./ssh_config.sh
