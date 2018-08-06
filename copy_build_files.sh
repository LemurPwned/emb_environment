#!/bin/bash
mkdir singularity_builds
cp /*/Singularity.* singularity_builds
cd singularity_builds
cp ./kafka_prod/kafka_prod .
cp ./kafka_cont/kafka_serv .
cp ./kafka_cons/kafka_cons .
cp ./spark_cont/spark .
cp ./cassandra_cont/cassandra .

