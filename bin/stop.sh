#!/bin/bash

PROGRESS=poetrya

cd "$(dirname $0)"

PROGRESS_PATH=${path}/boot/poetry.jar

PID=$(ps -ef | grep ${PROGRESS_PATH}  | grep -v grep | awk '{ print $2 }')
if [ -z "$PID" ]
then
  echo ${PROGRESS} is already stopped!
else
  echo kill $PID
  kill $PID
  echo stop ${PROGRESS} success!
fi
