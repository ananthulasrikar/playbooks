-- login to mysql
-- size of each mysql db
SELECT table_schema'DB Name',Round(Sum(data_length + index_length) / 1024 / 1024 /1024, 1) 'DB Size in GB' FROM   information_schema.tables GROUP  BY table_schema;

-- size of each table in each db
SELECT
     table_schema as `Database`,
     table_name AS `Table`,
     round(((data_length + index_length) / 1024 / 1024), 2) `Size in MB`
FROM information_schema.TABLES
ORDER BY (data_length + index_length) DESC;


-- Commands to check mysql status
select * from information_schema.processlist where command <> 'sleep';
show engine innodb status\G;

/* analyze slowquery logs from aws rds */
wget http://percona.com/get/pt-query-digest
chmod 700 pt-query-digest
./pt-query-digest mysql-slowquery.log.18.txt > results.out

-- returns all active slow queries with the slowest queries at the top.
SELECT id, user, time, state, info
  FROM information_schema.processlist
  WHERE command != 'Sleep'
  AND user != 'rdsrepladmin'
  AND time >= 1
  ORDER BY time DESC, id;
