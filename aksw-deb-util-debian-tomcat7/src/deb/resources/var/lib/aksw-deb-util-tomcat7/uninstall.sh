#!/bin/sh

DIR="$( cd "$( dirname "$0" )" && pwd )"
src="$DIR/backup/"

mv -f "$src/tomcat-dbcp-7.0.30.jar" /usr/share/tomcat7/lib/tomcat-dbcp-7.0.30.jar 2> /dev/null; true
mv -f "$src/postgresql-42.2.1.jre7.jar" /usr/share/tomcat7/lib/postgresql-42.2.1.jre7.jar 2> /dev/null; true

