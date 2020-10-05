#Requiered - FROM - docker base image name
FROM nginx:latest

#Optional - MAINTAINER - specify maintainer details
MAINTAINER Omri Freidenberg omrifreidenberg@gmail.com

#Optional - USER - set user to root for permissions sake
USER root

#clone relevant github repository - for index.html
RUN mkdir -p /usr/github-repos/
RUN git clone https://github.com/EpicApex/CI-CD-jenkins-Nginx /usr/github-repos/
#Edit static content - changed for exercise purpose to "Hello World" 
COPY /usr/github-repos/index.html /usr/share/nginx/html/
