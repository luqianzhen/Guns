#!/usr/bin/env bash


cd $PROJ_PATH/Guns

echo "下面是路径=========================="
echo `$PROJ_PATH`
echo "上面是路径=========================="
mvn clean install

cd $PROJ_PATH/Guns/target
mv guns-1.0.0.jar guns.jar
java -jar guns.jar

# 复制新的工程
#cp $PROJ_PATH/Guns/target/guns-1.0.0.jar $TOMCAT_APP_PATH/webapps/

#cd $TOMCAT_APP_PATH/webapps
#mv guns-1.0.0.jar ROOT.jar

#启动tomcat
#cd $TOMCAT_APP_PATH/
#sh bin/startup.sh



