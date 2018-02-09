# Ansible Infra 

My Ansible Infra using Roles.  Work In Progress.

## Completed Roles.

### Commons.

1. JDK. [jdk-7u75-linux-x64.tar.gz](http://www.oracle.com/technetwork/java/javase/downloads/java-archive-downloads-javase7-521261.html#jdk-7u75-oth-JPR)
2. `ssh_known` Hosts
3. Password less entry for Hadoop Nodes.
4. Update `sysctl.conf`, `limit.conf` and `90-nproc.conf`

### Infra. (All the application are installed using `tarballs`)

1. Zookeeper. [zookeeper-3.4.5-cdh5.1.2.tar.gz](http://archive.cloudera.com/cdh5/cdh/5/zookeeper-3.4.5-cdh5.1.2.tar.gz)
2. Kafka. [kafka_2.9.2-0.8.2.1.tgz](http://mirror.metrocast.net/apache/kafka/0.8.2.1/kafka_2.9.2-0.8.2.1.tgz)
3. Hadoop (CDH5). [hadoop-2.3.0-cdh5.1.2.tar.gz](http://archive.cloudera.com/cdh5/cdh/5/hadoop-2.3.0-cdh5.1.2.tar.gz)
4. Storm. [apache-storm-0.9.4.tar.gz](http://download.nextag.com/apache/storm/apache-storm-0.9.4/apache-storm-0.9.4.tar.gz)
5. Tomcat Webserver. [apache-tomcat-7.0.62.tar.gz](http://apache.mirrors.pair.com/tomcat/tomcat-7/v7.0.62/bin/apache-tomcat-7.0.62.tar.gz)

## Work In Progress.

1. Nginx. (using yum)
2. MySQL. (using yum and rpm)


## Wish List. 

1. LogStash. 
2. Elastic Search.
3. Kibana.
4. Hbase. 
5. MongoDB.

