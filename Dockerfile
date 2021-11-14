FROM tomcat:jdk8-openjdk

LABEL maintainer="dev@bmsShop.com"
RUN rm -f /usr/local/tomcat/conf/tomcat-users.xml
RUN chmod +x $CATALINA_HOME/bin
COPY resources/tomcat-users.xml /usr/local/tomcat/conf/
COPY target/bookzyWebApp.war /usr/local/tomcat/webapps/
COPY resources/setenv.sh /usr/local/tomcat/bin/
EXPOSE 8080
CMD ["catalina.sh","run"]                         
