@ECHO OFF
REM
SETLOCAL EnableDelayedExpansion


for /f "tokens=1 delims= " %%a IN (iptest.txt) DO (

set add=%%a

CALL sping.bat !add!


)
pause