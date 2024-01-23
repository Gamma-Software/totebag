# Current script parent folder is the root of the project
JFROG_HOME=$PWD

mkdir -p $JFROG_HOME/artifactory/var/etc/
cd $JFROG_HOME/artifactory/var/etc/
touch ./system.yaml
chown -R 1030:1030 $JFROG_HOME/artifactory/var
chmod -R 777 $JFROG_HOME/artifactory/var

docker run --name artifactory -v $JFROG_HOME/artifactory/var/:/var/opt/jfrog/artifactory -d -p 8581:8081 -p 8582:8082 releases-docker.jfrog.io/jfrog/artifactory-oss:latest