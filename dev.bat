@echo off

cls
color 0a
title Script By Bionix

goto start 
:start
echo ******************************************
echo               DEV TOOL
echo ******************************************
echo.
echo 1 - Time Change
echo 2 - Date Change
echo 3 - ns look up 
echo 4 - Ping 
echo 5 - Exit

set choiceinput=
set /p choiceinput= Merci de faire un choix : 

if %choiceinput%==1 goto :choice1
if %choiceinput%==2 goto :choice2
if %choiceinput%==3 goto :choice3
if %choiceinput%==4 goto :choice4
if %choiceinput%==5 goto :exit

set default=
:defalut
cls
echo ERREUR
timeout /t 5
cls
goto start

:choice1
cls
echo Pour annuler faire ENTRER
time
timeout /t 3
cls
goto start


:choice2
cls
echo Pour annuler faire ENTRER
date
timeout /t 3
cls
goto start

:choice3
cls
set /p adresse= Merci de bien vouloir choisir une adresse : 
cls
nslookup %adresse%
pause
cls
goto start

:choice4
cls
set /p adress= Merci de bien vouloir choisir une adresse : 
ping -4 %adress%
pause
cls
goto start

:exit
cls
color c
echo Vous allez quitter le programme 
pause
exit
