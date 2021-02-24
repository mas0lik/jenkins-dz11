#This is Docker file for Jenkins Agent as Build Environment Contaier
#Using base image Ubuntu 20.04
FROM ubuntu:20.04
ENV TZ=Europe/Moscow

#Update Repos
RUN apt-get update

#Install required tools & packages for Build Environment
#Install Git
RUN apt-get install git -y

#Install AdoptOpenJDK
RUN apt-get install default-jdk -y

#Install Maven
RUN apt-get install maven -y

#Install Docker
RUN apt-get install docker.io -y

# Clear cache
RUN apt-get clean