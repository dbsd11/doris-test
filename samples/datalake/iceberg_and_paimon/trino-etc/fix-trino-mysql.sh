trino_docker_id=`docker ps|grep trino|awk '{print $1}'`
docker cp mysql ${trino_docker_id}:/usr/lib/trino/plugin/

jar -uvf0 paimon/trino-orc-*.jar -C paimon-trino-orc-classes .
jar -uvf0 paimon/paimon-trino-*.jar -C paimon-trino-orc-classes .
docker cp paimon ${trino_docker_id}:/usr/lib/trino/plugin/

docker exec -ti ${trino_docker_id} rm -rf '$(ls /usr/lib/trino/plugin|grep -vE "mysql|paimon")'

docker exec -ti ${trino_docker_id} rm -rf '/tmp/trino-data/plugin/*'

docker restart ${trino_docker_id}
