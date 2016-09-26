@echo off
:: SET SOME VARIABLES

:: DOMAIN is like .com for my purpose I use .localhost, but you can chose whatever you want
:: remember you need a dot at the begining. !!!! NO SPACES !!!!
SET DOMAIN=.localhost

:: If you know what you do go ahead
echo Hello This will add Entry to your host file.
set /p ID=HOST entry: 
echo Creating entry: %ID%%DOMAIN%

:: This put all info in HOST file
echo ##### %ID%%DOMAIN%t >> C:\windows\system32\drivers\etc\hosts
echo 127.0.0.1	%ID%%DOMAIN% >> C:\windows\system32\drivers\etc\hosts
echo ::1 %ID%%DOMAIN% >> C:\windows\system32\drivers\etc\hosts
echo Entry added to HOST file.

:: This just restart DNS
net stop dnscache
net start dnscache
echo Restarting DNS
echo Now you can open it in browser by typing http://%ID%%DOMAIN%

pause