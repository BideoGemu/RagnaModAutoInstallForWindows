@ECHO OFF
SETLOCAL

:BEGIN
CLS
COLOR 3F >nul 2>&1
SET MC_SYS32=%SYSTEMROOT%\SYSTEM32
REM Make batch directory the same as the directory it's being called from
REM For example, if "run as admin" the batch starting dir could be system32
CD "%~dp0" >nul 2>&1
GOTO EULA

:SSTCHECK
REM Check if serverstarter JAR is already downloaded
IF NOT EXIST "%cd%\serverstarter-2.0.1.jar" (
    ECHO serverstarter binary not found, downloading serverstarter...
    %SYSTEMROOT%\SYSTEM32\bitsadmin.exe /rawreturn /nowrap /transfer starter /dynamic /download /priority foreground https://github.com/Ocraftyone/ServerStarter-CFCorePatch/releases/download/v2.3.1/serverstarter-2.3.1.jar "%cd%\serverstarter-2.0.1.jar"
   GOTO MAIN
) ELSE (
    ECHO serverstarter has been found
   GOTO MAIN
)

:MAIN
java -jar serverstarter-2.0.1.jar
GOTO EOF

:EULA
mkdir server
copy eula.txt server
GOTO SSTCHECK

:EOF
ECHO Error
pause
