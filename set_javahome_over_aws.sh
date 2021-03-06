#!/bin/sh
cd /tmp/abcdcheck1
jdk_version=$1
#echo $jdk_version > ~/.profile
version=`echo $jdk_version | cut -d "." -f1`
#echo $version >> ~/.profile
java_folder=`tar -tf $jdk_version | head -1 | cut -d "/" -f1`
tar xvzf $jdk_version
rm -rf *.gz
mkdir -p ~/java_for_tomcat
#cp -R  $version* ~/java_for_tomcat/
cp -R  $java_folder ~/java_for_tomcat/
cd ~/java_for_tomcat/$java_folder
java_name=${PWD##*/}
#echo "Hello $java_name" >> ~/.profile
echo "export JAVA_HOME=~/java_for_tomcat/$java_name" > ~/.profile
echo "export PATH=\$JAVA_HOME/bin:\$PATH" >> ~/.profile
. ~/.profile