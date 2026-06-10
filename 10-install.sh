#!/bin/bash

USER=$(id -u)

if [ $USER -ne 0 ]
then
    echo "ERROR You must have sudo sudo access to execute this command"
fi

dnf -y install mysql

if [ $? -ne 0 ]
then
    echo "Installing Mysql...FAILURE"
    exit 1

else
    echo "Installing Mysql...SUCESS"
    fi