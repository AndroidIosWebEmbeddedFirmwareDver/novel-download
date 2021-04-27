#JAVA_HOME=/usr/java/jdk1.8.0_201
#JRE_HOME=${JAVA_HOME}/jre
#export PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin

DATE=$(date +%Y%m%d%H%M%S)
JARFILE=novel-crawl-3.1.0.jar  #开启启动的时候，不会是这个名字
NOHUP=crawl
#base=/root/java
base=$(pwd)
#echo $base

ps -ef | grep novel-crawl-3.1.0.jar  | grep -v grep | awk '{print $2}' | xargs kill -9
sleep 5
mkdir $base/$NOHUP
nohup java -jar $base/$JARFILE  > $base/$NOHUP/nohup.out 2>&1 &