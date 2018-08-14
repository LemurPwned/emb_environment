sed -i -r 's|#(log4j.appender.ROLLINGFILE.MaxBackupIndex.*)|\1|g' $HOME/$ZK_HOME/conf/log4j.properties
sed -i -r 's|#autopurge|autopurge|g' $HOME/$ZK_HOME/conf/zoo.cfg

$HOME/zookeeper-${ZOOKEEPER_VERSION}/bin/zkServer.sh start-foreground
