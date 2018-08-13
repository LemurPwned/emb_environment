$SPARK_HOME/bin/spark-submit --class cassandra_job.CassandraInteg \
--master yarn \
--deploy-mode cluster \
--executor-memory 1g \
--executor-cores 1 \
--num-executors 1 \
--files $HOME/emb_environment/spark_cont/cassandra_schema.avsc \
jar-files/CassandraInteg-assembly-1.0.jar $RESOURCE_MANAGER_HOSTNAME
