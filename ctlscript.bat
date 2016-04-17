@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist D:\Ivan\school\IT\server\hypersonic\scripts\ctl.bat (start /MIN /B D:\Ivan\school\IT\server\server\hsql-sample-database\scripts\ctl.bat START)
if exist D:\Ivan\school\IT\server\ingres\scripts\ctl.bat (start /MIN /B D:\Ivan\school\IT\server\ingres\scripts\ctl.bat START)
if exist D:\Ivan\school\IT\server\mysql\scripts\ctl.bat (start /MIN /B D:\Ivan\school\IT\server\mysql\scripts\ctl.bat START)
if exist D:\Ivan\school\IT\server\postgresql\scripts\ctl.bat (start /MIN /B D:\Ivan\school\IT\server\postgresql\scripts\ctl.bat START)
if exist D:\Ivan\school\IT\server\apache\scripts\ctl.bat (start /MIN /B D:\Ivan\school\IT\server\apache\scripts\ctl.bat START)
if exist D:\Ivan\school\IT\server\openoffice\scripts\ctl.bat (start /MIN /B D:\Ivan\school\IT\server\openoffice\scripts\ctl.bat START)
if exist D:\Ivan\school\IT\server\apache-tomcat\scripts\ctl.bat (start /MIN /B D:\Ivan\school\IT\server\apache-tomcat\scripts\ctl.bat START)
if exist D:\Ivan\school\IT\server\resin\scripts\ctl.bat (start /MIN /B D:\Ivan\school\IT\server\resin\scripts\ctl.bat START)
if exist D:\Ivan\school\IT\server\jboss\scripts\ctl.bat (start /MIN /B D:\Ivan\school\IT\server\jboss\scripts\ctl.bat START)
if exist D:\Ivan\school\IT\server\jetty\scripts\ctl.bat (start /MIN /B D:\Ivan\school\IT\server\jetty\scripts\ctl.bat START)
if exist D:\Ivan\school\IT\server\subversion\scripts\ctl.bat (start /MIN /B D:\Ivan\school\IT\server\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist D:\Ivan\school\IT\server\lucene\scripts\ctl.bat (start /MIN /B D:\Ivan\school\IT\server\lucene\scripts\ctl.bat START)
if exist D:\Ivan\school\IT\server\third_application\scripts\ctl.bat (start /MIN /B D:\Ivan\school\IT\server\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist D:\Ivan\school\IT\server\third_application\scripts\ctl.bat (start /MIN /B D:\Ivan\school\IT\server\third_application\scripts\ctl.bat STOP)
if exist D:\Ivan\school\IT\server\lucene\scripts\ctl.bat (start /MIN /B D:\Ivan\school\IT\server\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist D:\Ivan\school\IT\server\subversion\scripts\ctl.bat (start /MIN /B D:\Ivan\school\IT\server\subversion\scripts\ctl.bat STOP)
if exist D:\Ivan\school\IT\server\jetty\scripts\ctl.bat (start /MIN /B D:\Ivan\school\IT\server\jetty\scripts\ctl.bat STOP)
if exist D:\Ivan\school\IT\server\hypersonic\scripts\ctl.bat (start /MIN /B D:\Ivan\school\IT\server\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist D:\Ivan\school\IT\server\jboss\scripts\ctl.bat (start /MIN /B D:\Ivan\school\IT\server\jboss\scripts\ctl.bat STOP)
if exist D:\Ivan\school\IT\server\resin\scripts\ctl.bat (start /MIN /B D:\Ivan\school\IT\server\resin\scripts\ctl.bat STOP)
if exist D:\Ivan\school\IT\server\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT D:\Ivan\school\IT\server\apache-tomcat\scripts\ctl.bat STOP)
if exist D:\Ivan\school\IT\server\openoffice\scripts\ctl.bat (start /MIN /B D:\Ivan\school\IT\server\openoffice\scripts\ctl.bat STOP)
if exist D:\Ivan\school\IT\server\apache\scripts\ctl.bat (start /MIN /B D:\Ivan\school\IT\server\apache\scripts\ctl.bat STOP)
if exist D:\Ivan\school\IT\server\ingres\scripts\ctl.bat (start /MIN /B D:\Ivan\school\IT\server\ingres\scripts\ctl.bat STOP)
if exist D:\Ivan\school\IT\server\mysql\scripts\ctl.bat (start /MIN /B D:\Ivan\school\IT\server\mysql\scripts\ctl.bat STOP)
if exist D:\Ivan\school\IT\server\postgresql\scripts\ctl.bat (start /MIN /B D:\Ivan\school\IT\server\postgresql\scripts\ctl.bat STOP)

:end

