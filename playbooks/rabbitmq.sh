#login to working node & detach corrupted node
rabbitmqctl forget_cluster_node rabbit@hostname

# stop rabbitmq app
rabbitmqctl stop_app

# shutdown rabbitmq gracefully
rabbitmqctl shutdown

# clean the data directory
# Note : all data will be lost
rm -rf /var/lib/rabbitmq/mnesia/*

# check rabbitmq server status
service rabbitmq-server status

# join node to cluster
rabbitmqctl join_cluster rabbit@hostname
