@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop


"D:\Ivan\school\IT\server\mysql\bin\mysqld" --defaults-file="D:\Ivan\school\IT\server\mysql\bin\my.ini" --standalone --console
if errorlevel 1 goto error
goto finish

:stop
"D:\Ivan\school\IT\server\apache\bin\pv" -f -k mysqld.exe -q

if not exist "D:\Ivan\school\IT\server\mysql\data\%computername%.pid" goto finish
echo Delete %computername%.pid ...
del "D:\Ivan\school\IT\server\mysql\data\%computername%.pid"
goto finish


:error
echo MySQL could not be started

:finish
exit
