@echo off

choice /c 123 /n /m "Please select 1.Start 2.Stop 3.Restart"

if errorlevel 3 goto restart
if errorlevel 2 goto stop
if errorlevel 1 goto start

:restart
net stop "mysql"
net start "mysql"
goto end

:start
net start "mysql"
goto end

:stop
net stop "mysql"
goto end

:end
pause


