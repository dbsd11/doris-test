docker ps|grep flink|awk '{print $1}'|xargs docker stop
