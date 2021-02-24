#This is Docker file for Production Environment Image for hosting webapps
#Using base image Tomcat9 with AdoptOpenJDK11
FROM tomcat:9.0.43-jdk11-adoptopenjdk-openj9
COPY target/hello-1.0.war /usr/local/tomcat/webapps