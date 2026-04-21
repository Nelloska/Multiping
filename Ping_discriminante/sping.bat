TITLE PING
@ECHO OFF
REM

SET ip=%1

REM check connectivity
ping -n 4 %IP%  >NUL
if ERRORLEVEL 1 goto PINGERR

echo.%IP%;OK >>online.txt
goto FINE

:PINGERR
echo.%IP%;OFFLINE >>offline.txt
echo %IP%: OFFLINE

:FINE
