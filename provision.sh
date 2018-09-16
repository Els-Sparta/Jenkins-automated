#!/bin/bash

# install java

# echo the license so you can install java
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections

# set up the Personal Package Archive which contains the java
sudo add-apt-repository ppa:webupd8team/java -y

# update current packages
sudo apt-get update

# Install the oracle installer
sudo apt-get install oracle-java8-installer

# simple message telling the user what you are doing
echo "Setting environment variables for Java 8.."

# install java
sudo apt-get install -y oracle-java8-set-default


# install jenkins

# add Jenkins repository to your system
cd /tmp && wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

# add the repository
echo 'deb https://pkg.jenkins.io/debian-stable binary/' | sudo tee -a /etc/apt/sources.list.d/jenkins.list

# update current packages
sudo apt update

# install jenkins
sudo apt install -y jenkins
