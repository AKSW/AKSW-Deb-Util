#!/bin/bash

DIR="$( cd "$( dirname "$0" )" && pwd )"

# Do backup
tgt="$DIR/backup/"

function doBackup() {
    src="$1"
    file="$2"

    if [ ! -f "$tgt/$file" ]; then
        cp "$src/$file" "$tgt"
    else
        echo "WARNING: Backup of $file already exists in $src - not overridden"
    fi
}

doBackup "/usr/share/java/" "tomcat-dbcp-7.0.30.jar"
doBackup "/usr/share/tomcat7/lib/" "postgresql-8.4-701.jdbc4.jar"

# Copy the files
src="$DIR/files/"

cp "$src/tomcat-dbcp-7.0.30.jar" /usr/share/tomcat7/lib/tomcat-dbcp-7.0.30.jar
cp "$src/postgresql-8.4-701.jdbc4.jar" /usr/share/tomcat7/lib/postgresql-8.4-701.jdbc4.jar

