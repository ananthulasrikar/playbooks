##############################################
Servers are in RAID :: Be careful
##############################################

# 1. add 4 new 128GB volumes in us-west-2a:
/dev/sdj # (id: vol-00173b9c86dfb05f1)
/dev/sdk # (id: vol-00c8da666a8a50c84)
/dev/sdl # (id: vol-0af24cca600fe67c7)
/dev/sdm # (id: vol-0e4505bea5aa944ab)

# 2. attach new volume to an instance via aws.ec2.console

# 3. create a new physical volume:
pvcreate /dev/xvdj
pvcreate /dev/xvdk
pvcreate /dev/xvdl
pvcreate /dev/xvdm

# 4. add new device to vgdata volume group:
vgextend vgdata /dev/xvdj
vgextend vgdata /dev/xvdk
vgextend vgdata /dev/xvdl
vgextend vgdata /dev/xvdm

# 5. extend the logical volume:
lvextend -l +100%FREE /dev/vgdata/lvdata

# 6. extend the filesystem
xfs_growfs /data
