#Requiered - FROM - docker base image name
FROM nginx:latest

#Optional - MAINTAINER - specify maintainer details
MAINTAINER Omri Freidenberg omrifreidenberg@gmail.com

#Optional - USER - set user to root for permissions sake
USER root

#Curl for relevant nginx index.html file - coming from https://github.com/EpicApex/CI-CD-jenkins-Nginx
# stodout to relative path will overwrite the relative location ( if it has the file specified ) else it will just create a new file.
RUN curl -fsSL https://raw.githubusercontent.com/EpicApex/CI-CD-jenkins-Nginx/master/index.html > /usr/share/nginx/html/index.html
#Edit static content - changed for exercise purpose to "Hello World" 
#COPY /usr/github-repos/index.html /usr/share/nginx/html/
