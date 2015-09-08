Building form the base image and Docker file
To create the base image jeurboy/docker-phpmongodb

git clone https://github.com/jeurboy/docker-phpmongodb.git

docker build -t jeurboy/docker-phpmongodb .

and use following command to start the service

docker run -p 80:80 -d -it -e MONGO_SERVER=192.168.99.100 -e MONGO_PORT=27017 jeurboy/docker-phpmongodb

This is available parameter with default value.

MONGO_ADMIN_USERNAME        admin
MONGO_ADMIN_PASSWORD        password

MONGO_SERVER        localhost
MONGO_PORT          27017
MONGO_USERNAME      admin
MONGO_PASSWORD      password

Test your deployment:

curl http://localhost/

PS Compatible with Mongo <=2.6
