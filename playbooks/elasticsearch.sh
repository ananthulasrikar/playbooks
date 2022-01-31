# health checks
GET _cat/health?v # health status
GET _cluster/health?v # in detail health status
GET _nodes/stats?v # node stats
GET _cat/nodes?v
GET _cat/tasks?v
GET _tasks?actions=*&detailed
GET _stats/indexing,store?v

# cluster api
GET _cluster/stats?human&pretty
GET /_cluster/settings
GET /_cluster/settings?include_defaults=true

# template api
GET /_template

# set template to number of shards to 15, replicas to 1 ie., applicable for new indexes only
PUT /_template/logstash
{
  "index_patterns": ["logstash-*"],
  "settings": {
    "number_of_shards": 15,
    "number_of_replicas": 1
  }
}

# troubleshooting
GET _cluster/allocation/explain?pretty # allocation details of indexesGET _cluster/stats?human&pretty
GET _cluster/state
GET _cat/recovery
GET _cat/pending_tasks
POST /_cluster/reroute?retry_failed # rellocate unassigned indexes automatically

# for faster recovery
PUT _cluster/settings
{
  "transient" :{
		"indices.recovery.max_bytes_per_sec": "500mb",
		"cluster.routing.allocation.node_concurrent_incoming_recoveries": "10",
		"cluster.routing.allocation.node_concurrent_recoveries":"2"
	}
}

# index api
GET _cat/indices?v # details of indices
GET _cat/indices?v&s=index # details of indexes & sort by name
GET /<INDEX_NAME>/_settings # get settings of an index

# set logstash indexes settings ( use * instead of logstash-* to set on all indexes)
PUT /logstash-*/_settings
{
	"index" : {
		"number_of_replicas" : 1
	}
}

# command to update existing indexes
PUT /*/_settings
{
 "index" : {
   "number_of_replicas":1
  }
}

# block write on an index
PUT logstash-2019.11.28/_settings
{
  index.blocks.write:"true"
}

# remove cluster from read.only
PUT _cluster/settings
{
  "persistent": {
    "cluster.blocks.read_only": false
  }
}

# shards api
GET _cat/shards?v # details of shards
GET _cat/shards?h=state

# snapshots & restore
GET _cat/snapshots?v&repository=logs
GET _snapshot/logs/20190925*
GET _snapshot/logs/_current
GET _cat/snapshots
GET _snapshot/_status
DELETE /_snapshot/logs/20190925073001
