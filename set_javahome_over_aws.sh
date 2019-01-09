#!/bin/sh
cd /tmp/abcdcheck
jdk_version = $1
echo $jdk_version > ~/.profile
version=echo $jdk_version | cut -d "." -f1
echo $version >> ~/.profile
tar xvzf jdk_version
rm -rf *.gz
mkdir -p ~/java_for_tomcat
cp -R  version* ~/java_for_tomcat/
cd ~/java_for_tomcat/version*
java_name=${PWD##*/}
echo "Hello $java_name" >> ~/.profile
echo "export JAVA_HOME=/java_for_tomcat/$java_name" >> ~/.profile
echo "export PATH=\$JAVA_HOME/bin:\$PATH" >> ~/.profile
. ~/.profile