@echo off	

cls
color 0a
title Script By Bionix Credit : https://github.com/bionix61

goto start
:start
echo  __    __   ______  ______    ______    
echo /\ "-./  \ /\  ___\/\  __ \  /\  ___\   
echo \ \ \-./\ \\ \  __\\ \ \__\\ \ \___  \  
echo  \ \_\ \ \_\\ \_\   \ \_____\ \/\_____\ 
echo   \/_/  \/_/ \/_/    \/_____/  \/_____/ 
echo.                                   
echo 1 - PING
echo 2 - Clearing DNS cache
echo 3 - NSLOOKUP
echo 4 - IPCONFIG
echo 5 - DNS View
echo 6 - Mac adress view
echo 7 - Quitter le programme
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
:defalut
cls
echo ERREUR
timeout /t 5
cls
goto start
 

:choice1 
cls
set /p adresse= Merci de bien vouloir rentrer une adresse (www.google.fr) : 
ping -4 -n 3 %adresse%
echo.
pause
cls
goto start

:choice2
cls
timeout /t 5
cls
echo.
cls
timeout /t 10
cls
echo.
ipconfig /flushdns
echo.
timeout /t 5
cls
echo.
echo ...
echo.
echo Succes.
pause
cls
goto start

:choice3
cls
echo.
set /p adress= Merci de bien vouloir rentrer une adresse  : 
echo.
cls
nslookup %adress%
pause
cls
goto start

:choice4
cls
timeout /t 5
echo.
echo ...
ipconfig /all
pause
cls
goto start

:choice5
cls
echo.
timeout /t 3
cls
ipconfig /all | findstr DNS
pause
cls
goto start

:choice6
cls
echo.
timeout /t 4
cls
getmac /v
pause
cls
goto start

:default
cls
echo Erreur 
pause
cls
goto start


:exit 
color F
cls
exit