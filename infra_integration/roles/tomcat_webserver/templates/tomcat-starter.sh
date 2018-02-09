#!/bin/sh
nohup sh {{ common['soft_link_base_path'] }}/tomcat/bin/startup.sh > {{ common['soft_link_base_path'] }}/tomcat/logs/tomcat-starter.log &
