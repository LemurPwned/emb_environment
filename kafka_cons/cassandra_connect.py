from cassandra.cluster import Cluster
import cassandra

# change below to an array of addresses in order to connect to other IP addresses
cluster = Cluster()
session = cluster.connect()

keyspace_init = """
CREATE KEYSPACE IF NOT EXISTS emb
  WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 }; 
"""
table_init = """
CREATE TABLE IF NOT EXISTS emb.emb_data
(       
        id int,
        flag ascii,
        timestamp timestamp,
        v1 float,
        v2 float,
        v3 float,
        v4 float,
        v5 float,
        PRIMARY KEY (id, timestamp)
) WITH CLUSTERING ORDER BY (timestamp ASC);
"""

anomaly_keyspace_init = """
CREATE KEYSPACE IF NOT EXISTS anomal 
                    WITH REPLICATION = {'class': 'SimpleStrategy', 
                                        'replication_factor': 1};
"""

anomaly_table_init = """
CREATE TABLE IF NOT EXISTS anomal.anomaly_data( 
                      timestamp timestamp, 
                      anomaly float, 
                      PRIMARY KEY (timestamp)
);
"""

drop_emb = """
    DROP TABLE IF EXISTS emb.emb_data;
"""
drop_anomaly = """
    DROP TABLE IF EXISTS anomal.anomaly_data;
"""
session.execute(drop_emb) # for testing
session.execute(drop_anomaly)
try:
    session.execute(keyspace_init)
except cassandra.AlreadyExists:
    pass
try:
    session.execute(anomaly_keyspace_init)
except cassandra.AlreadyExists:
    pass
session.execute(anomaly_table_init)
session.execute(table_init)

