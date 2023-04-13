# old laptop export gpg key
# gpg --list-secret-keys --keyid-format=long
# gpg --export-secret-key > github.asc

############################################################
# commands to use to export from macbook to store the key
############################################################
# gpg --full-generate-key
# gpg --list-secret-keys --keyid-format=long
# gpg --armor --export ACC94F89CF83034C

GITHUB_GPG_KEY_PATH="~/Google\ Drive/keys/github/gpg/github.asc"
gpg --import $GITHUB_GPG_KEY_PATH
# trust ~> 5 for ultimate
# save
gpg --edit-key 783594+ananthulasrikar@users.noreply.github.com
git config --global user.signingkey ACC94F89CF83034C
