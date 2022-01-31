cd ~/Library/LaunchAgents

###########################################################
# add.key.plist
###########################################################
vim add.key.plist

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
  <key>Label</key>
  <string>ssh-add-common-key</string>
  <key>ProgramArguments</key>
  <array>
    <string>ssh-add</string>
    <string>-K</string>
    <string>~/.ssh/srikar.pem</string>
  </array>
  <key>RunAtLoad</key>
  <true/>
</dict>
</plist>
