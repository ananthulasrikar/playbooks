cat ~/.ssh/config
Host *
  ForwardAgent yes
  CheckHostIP no
  StrictHostKeyChecking no
  UserKnownHostsFile=/dev/null
  LogLevel=quiet
