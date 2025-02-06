docker ps -a|grep flink|awk '{print $1}'|xargs docker restart
