# emb_environment

# Environment for HPC data streaming architecture

#### 1. Download needed software
+ Apache Cassandra
+ Apache Kafka
+ Apache Spark

These can be downloaded using wget script. Make sure that if you use updated version of any of the above, 
you change the existing version for the correct version in the corresponding Singularity file.

$HOME variable for each i.e. KAFKA_HOME, SPARK_HOME, CASSANDRA_HOME must be set properly and <br />
 **be in the directory with writing permissions.**
 
 #### 2. Run PBS job
 #### 3. All log files are put in $HOME/common directory unless its has been changed in .pbs file
