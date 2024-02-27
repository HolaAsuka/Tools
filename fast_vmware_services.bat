@echo off

choice /c 12 /n /m "Please select 1.Start 2.Stop"

if errorlevel 2 goto stop
if errorlevel 1 goto start

:start
net start "VMware Authorization Service"

net start "VMware Workstation Server"

net start "VMware USB Arbitration Service"

net start "VMware DHCP Service"

net start "VMware NAT Service"


goto end


:stop
net stop "VMware Workstation Server"

net stop "VMware Authorization Service"

net stop "VMware DHCP Service"

net stop "VMware NAT Service"

net stop "VMware USB Arbitration Service"

goto end


:end
pause