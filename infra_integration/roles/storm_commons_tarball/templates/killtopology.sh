#!/bin/bash
if [ $# -eq 0 ];then
        TOPONAME=`grep TOPOLOGY_NAME {{ common['soft_link_base_path'] }}/storm/conf/TopologyConf_prod.props| grep -v '^#'  | cut -d '=' -f2 | sed 's/ //g'`
else
        TOPONAME=$1
fi
HDFS_IP={{ groups['namenodes'][0] }} 
echo $HDFS_IP

{{ common['soft_link_base_path'] }}/storm/bin/storm kill  $TOPONAME
sleep 5
ssh {{ storm_user }}@$HDFS_IP /home/{{ storm_user }}/scripts/mvworkdir.sh
echo "kill topology:" $TOPONAME

#/opt/storm/bin/storm kill  $TOPONAME
#/jobs/new/cleanup/bin/mvworkdir.sh

