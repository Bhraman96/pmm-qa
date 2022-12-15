## This section will start all DB containers
docker pull mysql:${mysql_version}
docker stop mysql || true
docker rm mysql || true
echo "Starting Mysql Container"
docker run --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:${mysql_version}
sleep 30

 docker pull mongo: ${mongodb_version}
 docker stop mongodb_container_name || true
 docker rm mongodb_container_name || true
 echo "Starting Mongodb container"
 docker run --name ${mongodb_container_name} -p 27017:27017 -e MONGO_INITDB_ROOT_USERNAME=admin -e MONGO_INITDB_ROOT_PASSWORD=mysecretpassword -d mongo:${mongodb_version}

 sleep 30
 docker pull postgres:${postgres_version}
 docker stop ${postgres_container_name} || true
 docker rm ${postgres_container_name} || true
 echo "Starting postgres container"
 docker run --name ${postgres_container_name} -p 5432:5432 -e POSTGRES_PASSWORD=mysecretpassword -d postgres

 sleep  15
