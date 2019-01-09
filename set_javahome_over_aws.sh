#!/bin/sh
cd /tmp/abcdcheck
jdk_version = $1
version=echo $jdk_version | cut -d "." -f1
tar xvzf jdk_version
rm -rf *.gz
mkdir -p ~/java_for_tomcat
cp -R  version* ~/java_for_tomcat/
cd ~/java_for_tomcat/version*
java_name=`${PWD##*/}`
export JAVA_HOME=/java_for_tomcat/$java_name > ~/.profile
export PATH=$JAVA_HOME/bin:$PATH >> ~/.profile
. ~/.profile