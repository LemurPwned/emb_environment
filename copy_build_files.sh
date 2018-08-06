#!/bin/bash
mkdir singularity_builds
cp ./kafka_prod/kafka_prod singularity_builds 
cp ./kafka_cont/kafka_serv singularity_builds
cp ./kafka_cons/kafka_cons singularity_builds
cp ./spark_cont/spark singularity_builds 
cp ./cassandra_cont/cassandra singularity_builds

