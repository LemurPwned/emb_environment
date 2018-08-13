$SPARK_HOME/bin/spark-submit --class cassandra_job.CassandraInteg \
--master yarn \
--deploy-mode cluster \
--executor-memory 1g \
--executor-cores 1 \
--num-executors 1 \
--files $HOME/emb_environment/spark_cont/cassandra_schema.avsc \
--jars jar-files/avro-1.8.2.jar,jar-files/kafka-clients-1.1.1.jar,jar-files/commons-math3-3.6.1.jar,jar-files/stl-decomp-4j-1.0.4-SNAPSHOT.jar,jar-files/datastax_cassandra_connector.jar jar-files/cassandrainteg_2.11-1.0.jar $RESOURCE_MANAGER_HOSTNAME
