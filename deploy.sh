#!/usr/bin/env bash

killTomcat()
{
    pid=`ps -ef|grep tomcat|grep java|awk '{print $2}'`
    echo "tomcat Id list :$pid"
    if[ "$pid" = "" ]
    then
        echo "no tomcat pid alive"
    else
        kill -9 $pid
    }
    fi
}

cd $PROJ_PATH/Guns
mvn clean install

#停止tomcat
killTomcat

#删除原有工程
rm -rf $TOMCAT_APP_PATH/webapps/ROOT
rm -f $TOMCAT_APP_PATH/webapps/ROOT.jar
rm -f $TOMCAT_APP_PATH/webapps/guns.jar

# 复制新的工程
cp $PROJ_PATH/Guns/target/guns-1.0.0.jar $TOMCAT_APP_PATH/webapps/

cd $TOMCAT_APP_PATH/webapps
mv guns-1.0.0.jar ROOT.jar

#启动tomcat
cd $TOMCAT_APP_PATH/
sh bin/startup.sh



