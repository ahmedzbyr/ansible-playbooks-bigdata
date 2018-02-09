echo "Starting UI"
nohup {{ common['soft_link_base_path'] }}/storm/bin/storm kill ui > storm_ui_stop.log 2>&1
