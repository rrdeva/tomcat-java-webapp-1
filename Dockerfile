FROM tomcat:9
MAINTAINER DevOpsTeams@gmail.com
COPY target/demo.war /usr/local/tomcat/webapps
