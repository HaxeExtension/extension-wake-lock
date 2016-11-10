@ECHO OFF
SET EXTNAME="extension-wake-lock"

REM Build extension
zip -r %EXTNAME%.zip haxelib.json include.xml extension java
haxelib local %EXTNAME%.zip
