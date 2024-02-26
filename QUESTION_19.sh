#!/bin/bash

ROOT_USR=$1
PASSWD=$2

function dbs() {
    echo "Creating database.."
    mysql -u"$ROOT_USR" -p"$PASSWD" <<end
    CREATE DATABASE $DB_NAME;
end
    echo "Database created successfully"
}

read -p "Enter the database Name you want to create: " DB_NAME
if [[ $# == 2 ]]
 then
    echo "Fetching the details..."
    dbs
    read -p "Enter the Username you want to create: " USR_NAME
    read -sp "Enter the Password: " USR_PASSWD
    mysql -u"$ROOT_USR" -p"$PASSWD" <<end
CREATE USER '$USR_NAME'@'localhost' IDENTIFIED BY '$USR_PASSWD';
GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$USR_NAME'@'localhost';
FLUSH PRIVILEGES;
end
    echo "User created successfully"
    echo "User granted the privileges"
    echo "Privileges granted successfully"
else
    echo "Invalid Number of Args"
   
fi