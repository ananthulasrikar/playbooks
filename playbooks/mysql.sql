mysql -A --user=root --password=PASSWORD -h hostname
GRANT SELECT, UPDATE, INSERT, DELETE, PROCESS ON *.* TO 'user'@'%' identified by 'password';
exit
