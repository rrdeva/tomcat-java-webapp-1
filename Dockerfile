FROM tomcat:9
MAINTAINER StardomSolutions
COPY target/demo.war /usr/local/tomcat/webapps/
EXPOSE 8080
ENTRYPOINT [ "/usr/local/tomcat/bin/catalina.sh", "run" ]
