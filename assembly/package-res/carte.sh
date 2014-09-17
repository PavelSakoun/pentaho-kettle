#!/bin/sh

BASEDIR="`dirname "$0"`"
cd "$BASEDIR"

OPT="$OPT -Dorg.mortbay.util.URI.charset=UTF-8"
if [ ! "x$JAAS_LOGIN_MODULE_CONFIG" = "x" -a ! "x$JAAS_LOGIN_MODULE_NAME" = "x" ]; then
	OPT=$OPT" -Djava.security.auth.login.config=$JAAS_LOGIN_MODULE_CONFIG"
	OPT=$OPT" -Dloginmodulename=$JAAS_LOGIN_MODULE_NAME"
fi
export OPT
"./spoon.sh" -main org.pentaho.di.www.Carte "$@"
