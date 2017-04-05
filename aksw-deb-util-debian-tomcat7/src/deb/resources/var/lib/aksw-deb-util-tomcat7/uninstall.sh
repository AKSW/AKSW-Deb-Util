#!/bin/sh

DIR="$( cd "$( dirname "$0" )" && pwd )"
src="$DIR/backup/"

mv -f "$src/tomcat-dbcp-7.0.30.jar" /usr/share/tomcat7/lib/tomcat-dbcp-7.0.30.jar 2> /dev/null; true
mv -f "$src/postgresql-8.4-701.jdbc4.jar" /usr/share/tomcat7/lib/postgresql-8.4-701.jdbc4.jar 2> /dev/null; true

