#!/bin/sh
#cd /tmp/abcdcheck
echo "Hello passed variable is $1 and $2"
versn1=$1
sversion1=$2
tomcat_to_be_uninstalled=apache-tomcat-$versn1.$sversion1
echo "tomcat to be installed is --> $tomcat_to_be_uninstalled"
#tar xvzf apache-tomcat-8.0.23.tar.gz
#mkdir -p /$HOME/tomcat-8.0.23
#cp -R apache-tomcat-8.0.23 /$HOME/tomcat-8.0.23/
#tar xvzf $tomcat_to_be_uninstalled.tar.gz
#mkdir -p /$HOME/$tomcat_to_be_uninstalled
#cp -R $tomcat_to_be_installed /$HOME/$tomcat_to_be_installed/
direct=/$HOME/$tomcat_to_be_uninstalled
if [ ! "$direct" ]; then
    echo "No such Tomcat is installed in here."
else
    echo "Un-installing the Tomcat.."
    rm -rf $direct
fi