echo "Stopping Nimbus"
nohup {{ common['soft_link_base_path'] }}/storm/bin/storm kill nimbus > storm_nimbus_stop.log 2>&1
