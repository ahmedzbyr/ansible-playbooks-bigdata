export JAVA_OPTS="$JAVA_OPTS\
  -server\
  -Xms8g\
  -Xmx16g\
  -XX:MaxPermSize=512m\
  -XX:MaxNewSize=512m\
  -XX:NewSize=512m\
  -XX:SurvivorRatio=12"
