#!/bin/bash
USERID=(id -u)

if [ $USERID -ne 0 ]; then
   echo "please run this script with root user"
   exit 1

fi

echo "installing Nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then 
   echo "Installing Nginx.........FAILURE"
   exit 1
else
   echo "Installing Nginx...........SUCCESS"
fi
dnf install mysql -y

if [ $? -ne 0 ]; then
   echo "installing Mysql..........FAILURE"
   exit 1
else
   echo "installing Mysql..........SUCCESS"
fi
dnf install nodejs -y

if [ $? -ne 0 ] then
   echo "Installing nodejs..........FAILURE"
   exit 1
else
   echo "Installing nodejs..........SUCCESS"
fi
