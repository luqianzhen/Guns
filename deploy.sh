#!/usr/bin/env bash


cd $PROJ_PATH/Guns
mvn clean install

mv guns-1.0.0.jar guns.jar
java -jar guns.jar

# 复制新的工程
#cp $PROJ_PATH/Guns/target/guns-1.0.0.jar $TOMCAT_APP_PATH/webapps/

#cd $TOMCAT_APP_PATH/webapps
#mv guns-1.0.0.jar ROOT.jar

#启动tomcat
#cd $TOMCAT_APP_PATH/
#sh bin/startup.sh



