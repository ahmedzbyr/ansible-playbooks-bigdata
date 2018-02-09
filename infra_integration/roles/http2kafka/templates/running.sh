#!/bin/bash

# Exporting Required Libraries
export LD_LIBRARY_PATH=/usr/local/lib:{{ common['soft_link_base_path'] }}/http2kafka/lib

cd {{ common['soft_link_base_path'] }}/http2kafka/

# Making sure nothing is running.
killall -9 http2KafkaLibUV

# Setting Port Range.
start={{ start_port }}
end={{ end_port }}

# Start Services
for j in $(eval echo "{$start..$end}");
do
   echo "Starting on port $j"
   {{ common['soft_link_base_path']}}/http2kafka/http2KafkaLibUV $j 1>$j.log  2>&1 &
   sleep 1
done

cd -
