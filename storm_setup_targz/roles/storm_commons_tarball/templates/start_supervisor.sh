echo "Starting Supervisor"
nohup {{ common['soft_link_base_path'] }}/storm/bin/storm supervisor &
