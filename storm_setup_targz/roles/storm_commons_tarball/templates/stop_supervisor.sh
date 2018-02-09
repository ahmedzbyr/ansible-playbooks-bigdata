echo "Stopping Supervisor"
nohup {{ common['soft_link_base_path'] }}/storm/bin/storm kill supervisor > storm_supervisor_stop.log 2>&1
