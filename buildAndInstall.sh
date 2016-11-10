#!/bin/bash
dir=`dirname "$0"`
cd "$dir"

EXTNAME="extension-wake-lock"

rm -rf $EXTNAME.zip

zip -r $EXTNAME.zip haxelib.json include.xml extension java

haxelib remove $EXTNAME
haxelib local $EXTNAME.zip
