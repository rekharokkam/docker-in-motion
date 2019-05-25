#A very basic Dockerfile with vim :: This is a comment

#This dockerfile has 4 commands.

#This tells docker what image to use. 
FROM ubuntu:16.04
#################################################################         LAYER 1


#Can have as many labels as you wish. Simply adds meta data to the Image.
LABEL maintainer "Rekha Rokkam" 
#################################################################          Adds metadata to the over Image


#Each RUN command will execute its statement againt our docker image. Ampersand joins 2 different commands. 
# first command to the left executes first and then the right command. -y is to assume yes
#RUN apt-get update && apt-get upgrade -y
RUN apt-get update 
RUN apt-get upgrade -y
##################################################################          LAYER 2

RUN apt-get install -y vim nginx
##################################################################          LAYER 3
