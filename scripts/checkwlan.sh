#!/bin/bash
/bin/ping -c 1 8.8.8.8
if [ "$?" = "0" ]
then
  echo "WiFi is Up"
else
  echo "WiFi is Down"
  /sbin/ifconfig wlan0 down
  sleep 5
  /sbin/ifconfig wlan0 up
fi
