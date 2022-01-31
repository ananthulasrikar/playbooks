
# yum info in detail
yum info mongodb-org
###########################################################
# Name        : mongodb-org
# Arch        : x86_64
# Version     : 3.4.6
# Release     : 1.amzn1
# Size        : 5.8 k
# Repo        : mongodb-org-3.4
###########################################################

# first install package v6
yum install mongodb-org-3.4.6

# upgrade the package to v7
yum -y upgrade mongodb-org-3.4.7

# remove v7 and all deps
yum autoremove mongodb-org

# reinstall v6
yum -y install mongodb-org-3.4.6

# remove v7 and all deps
yum autoremove mongodb-org

# reinstall v6
yum -y install mongodb-org-3.4.6

# Reference : https://unix.stackexchange.com/questions/151689/how-can-i-instruct-yum-to-install-a-specific-version-of-package-x
yum info tomcat8-8.5.23

yum --showduplicates list tomcat8 --releasever=2017.09
yum --showduplicates list java-1.8.0-openjdk-devel
yum info java-1.7.0-openjdk-devel-1.7.0.161
yum --showduplicates list glibc-2.17-196.172.amzn1.x86_64 --releasever=2017.09
yum info glibc-2.17-196.172.amzn1.x86_64 --releasever=2017.09 --showduplicates
yum install glibc-2.17-196.172.amzn1.x86_64 --releasever=2017.09 --showduplicates
yum erase glibc-2.17-222.173.amzn1.x86_64

yum autoremove java-1.8.0-openjdk-devel-1.8.0.161
yum install java-1.8.0-openjdk-devel-1.8.0.171

yum groupinstall "Development Tools"

yum --showduplicates list gcc --releasever=2017.09

yum info logstash-5.6.3-1 --releasever=2017.09 --showduplicates
