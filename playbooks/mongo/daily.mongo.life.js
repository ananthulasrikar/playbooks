//#########################################################
// Connecting to databasename database on the mongo cluster
//#########################################################
mongo mongodb://servername/db?replicaSet=replocationSetname --username "root" --password "PASSWORD" --authenticationDatabase "admin" {file_name}.js > {output}.{format}
mongodump --host "replicationSetName/servername" --username "root" --password "PASSWORD" --authenticationDatabase "admin" --db "dbname" --collection "collectioname" --out /tmp/
mongorestore --host "replicationSetName/servername" --username "root" --password "PASSWORD" --authenticationDatabase "admin" --gzip --archive={backup_name}.tar.gz

mongorestore --host "replicationSetName/servername" --username "root" --password "PASSWORD" --authenticationDatabase "admin" --db "databasename" --collection "{new_collection_name}" --drop /tmp/{location_to_file.bson}
mongorestore --host "replicationSetName/servername" --username "root" --password "PASSWORD" --authenticationDatabase "admin" --db "databasename" --collection "reports" --drop /tmp/databasename/{collection}.bson
mongorestore --host "replicationSetName/servername" --username "root" --password "PASSWORD" --authenticationDatabase "admin" --db "databasename" --collection "{new_collection_name}" --drop /tmp/{location_to_file.bson}
mongorestore --host "replicationSetName/servername" --username "root" --password "PASSWORD" --authenticationDatabase "admin" --db "databasename" /tmp/databasename

// mongorestore with a new collection name
mongorestore --gzip --archive="xxx.tar.gz" --username "root" --password "PASSWORD" --authenticationDatabase "admin" --collection collectioname --nsInclude 'databasename.collectioname' --nsFrom 'databasename.collectioname' --nsTo 'databasename.collectioname_learn' --db "databasename"
db.changeUserPassword("root", "PASSWORD");
db.createUser({ user: "username", pwd: "password", roles: [ "root" ] })
