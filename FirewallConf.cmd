if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
@echo off
:BEGIN
cls
echo =======Firewall Config Tool======= & echo.[1] On & echo.[2] Off
choice /N /C:12 /M "choose a number... : "%2
if errorlevel ==2 goto TWO
if errorlevel ==1 goto ONE
goto END
:TWO
netsh advfirewall set  allprofiles state off
goto END
:ONE
netsh advfirewall set  allprofiles state on
:END
timeout 5

