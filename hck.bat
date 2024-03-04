@echo off

color 0a
cls
title Script By Bionix
goto start
:start
color 0a
echo ===============================================================
echo                            HackerTool                                 
echo ===============================================================
echo.
echo 1 - Tracert
echo 2 - Ping
echo 3 - Nslookup
echo 4 - Netstat
echo 5 - Nmap
echo 6 - ssh
echo 7 - Exit
echo.
set choiceinput=
set /p choiceinput= Merci de bien vouloir faire un choix : 
if %choiceinput%==1 goto choice1
if %choiceinput%==2 goto choice2
if %choiceinput%==3 goto choice3
if %choiceinput%==4 goto choice4
if %choiceinput%==5 goto choice5
if %choiceinput%==6 goto choice6
if %choiceinput%==7 goto exit

set default=
:default
cls
color c
echo ERREUR
timeout /t 3
cls
goto start

:choice1
cls
set adresseTarcert=
set /p adresseTarcert= Merci de bien vouloit choisir une adresse = 
cls
tracert -4 %adresseTarcert%
pause
cls
goto start

:choice2
cls
set adressePing=
set /p adressePing= Merci de bien vouoir choisir une adresse : 
cls
ping -4 %adressePing%
pause
cls
goto start

:choice3
cls
set adressenslookup=
set /p adressenslookup= Merci de bien vouloir choisir une adresse : 
cls
nslookup %adressenslookup%
pause
cls
goto start

:choice4
cls
netstat -a
pause
cls
goto start

:choice5
cls
set adressenmap=
set /p adressenmap= Merci de bien vouloir choisir une adresse : 
cls
nmap -V -a %adressenmap%
pause
cls
goto start

:choice6
cls
set idssh=
set /p idssh= Merci de bien vouloir rentrer vos option de connection ssh : 
ssh %idssh%
pause
cls
goto start

:exit
cls
color c
echo Vous allez etre deconnecter dans 
timeout /t 3
exit
