@echo off
if exist .\test.exe del .\test.exe
csc test.cs 
rem >log.log
test.exe 
rem >>log.log
if exist .\test.exe del .\test.exe
pause
