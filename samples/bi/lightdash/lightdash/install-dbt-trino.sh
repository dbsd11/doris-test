lightdash_docker_id=`docker ps|grep lightdash/lightdash|awk '{print $1}'`
docker exec -ti ${lightdash_docker_id} /usr/local/dbt1.9/bin/pip install -i https://pypi.tuna.tsinghua.edu.cn/simple dbt-trino
