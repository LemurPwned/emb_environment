# Change directory here to the one with writing permissions
HOME_DIRECTORY=$HOME
echo "SAVING ALL FILES TO $HOME_DIRECTORY"
cd $HOME_DIRECTORY

CASS_VERSION=3.0.17
SPARK_VERSION=2.3.1
KAFKA_VERSION=2.0.0
SCALA_VERSION=2.12

# Cassandra
wget http://mirror.ox.ac.uk/sites/rsync.apache.org/cassandra/${CASS_VERSION}/apache-cassandra-${CASS_VERSION}-bin.tar.gz 
tar xvf apache-cassandra-${CASS_VERSION}-bin.tar.gz
# Spark
wget http://www.mirrorservice.org/sites/ftp.apache.org/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop2.7.tgz
tar xvf spark-${SPARK_VERSION}-bin-hadoop2.7
# kafka
wget http://mirror.ox.ac.uk/sites/rsync.apache.org/kafka/${KAFKA_VERSION}/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz
tar xvf kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz
 
