
docker stop petergdoyle_tomcat8 && docker rm petergdoyle_tomcat8

docker run -d -ti -p 8080:8080 -h petergdoyle_tomcat8.dkr --name petergdoyle_tomcat8 petergdoyle/tomcat:8 /tomcat/default/bin/catalina.sh run

docker ps -a
