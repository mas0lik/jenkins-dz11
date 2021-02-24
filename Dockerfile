#This is Docker file for Production Environment Image for hosting webapps
#Using base image Ubuntu 20.04
FROM ubuntu:20.04

#Update Repos
RUN apt-get update