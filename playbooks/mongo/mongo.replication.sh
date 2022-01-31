# reconfigure node 102 to be hidden,non-voting
cfg = rs.conf()
cfg.members[4].priority = 0
cfg.members[4].hidden = true
cfg.members[4].votes = 0
rs.reconfig(cfg)

# validation
rs.conf();

# run on node 102 & sync from production-mongo-04
mongo mongodb://localhost/replicaSet=replsetname --username "root" --password PASSWORD --authenticationDatabase "admin"
db.adminCommand( { replSetSyncFrom: "servername:port" } );


mongo --username "root" --password PASSWORD --authenticationDatabase "admin"
use admin
db.fsyncLock()
exit

time rsync -rav /var/lib/mongo/* destination-hostname:/var/lib/mongo/

sudo -i
mongo --username "root" --password PASSWORD --authenticationDatabase "admin"
use admin;
db.fsyncUnlock()
exit

chmod 755 /var/lib/mongo
chown -R mongod:mongod /var/lib/mongo
