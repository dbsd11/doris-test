trino_docker_id=`docker ps|grep trino|awk '{print $1}'`
docker cp trino-etc/atrino-mysql-overwrite.jar ${trino_docker_id}:/usr/lib/trino/plugin/mysql/
docker restart ${trino_docker_id}
