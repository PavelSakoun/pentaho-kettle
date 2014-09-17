#!/bin/sh

BASEDIR="`dirname "$0"`"
cd "$BASEDIR"

"./spoon.sh" -main org.pentaho.di.core.encryption.Encr "$@"
