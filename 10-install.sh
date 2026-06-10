#!/bin/bash

USER=$(id -u)

if [ $USER -ne 0 ]
then
    echo "ERROR You must have sudo sudo access to execute this command"
fi

dnf -y install mysql
