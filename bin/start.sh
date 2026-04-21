#!/bin/bash

PROGRESS=poetry

cd "$(dirname $0)"
cd ../
path=$PWD
PROGRESS_PATH=${path}/boot/poetry-0.0.1-SNAPSHOT.jar

PROGRESS_LOG_PATH=${path}/${PROGRESS}.log

PID=$(ps -ef | grep ${PROGRESS_PATH} | grep -v grep | awk '{ print $2 }')
if [ -n "$PID" ]
then
  echo ${PROGRESS} is already start, cannot repeat start!
else
   nohup java -jar ${PROGRESS_PATH} --spring.config.location=file:${path}/conf/application.properties > ${PROGRESS_LOG_PATH}  2>&1 &
   
   PID=$(ps -ef | grep ${PROGRESS_PATH} | grep -v grep | awk '{ print $2 }')
   if [ -n "$PID" ]
   then
       echo start ${PROGRESS}  success!
       echo PID $PID
   else
     echo start ${PROGRESS} is fail!
   fi
fi
