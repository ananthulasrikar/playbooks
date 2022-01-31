########################################
# Command to find larger files on the aws server
########################################
find / -type f -printf '%12s %p\n' 2>/dev/null|awk '{if($1>999999999)print $0;}'

########################################
# Command to search for a pattern inside the file
########################################
grep -lnR "<pattern>" <path>
Eg: grep  -lnR "mc_number"  ~/Downloads/*.js


########################################
# Files newer than specific date
########################################
touch -t "201701031717.00" /tmp/test
find . -newer /tmp/test |wc -l

########################################
# Commands to format the volume
########################################
lsblk
files -s /v/xvdf => if output is data .. then no data
mkfs -t ext4 /dev/xvdf
mount /dev/xvdf /mountpoint


# Install ohmyzsh in the machine
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
