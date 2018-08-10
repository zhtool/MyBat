@echo off
rem if exist .\WelcomeApp.exe del .\WelcomeApp.exe
rem if exist .\WelcomeMessage.dll del .\WelcomeMessage.dll
rem ---0、直接产生test.exe
rem csc test.cs
rem ---1-1、产生test.dll类库
csc /target:library  WelcomeMessage.cs
rem ---1-2、产生test.exe应用程序
csc /reference:WelcomeMessage.dll WelcomeApp.cs
WelcomeApp.exe 
pause


