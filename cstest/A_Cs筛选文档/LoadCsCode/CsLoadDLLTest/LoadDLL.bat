@echo off
rem if exist .\WelcomeApp.exe del .\WelcomeApp.exe
rem if exist .\WelcomeMessage.dll del .\WelcomeMessage.dll
rem ---0��ֱ�Ӳ���test.exe
rem csc test.cs
rem ---1-1������test.dll���
csc /target:library  WelcomeMessage.cs
rem ---1-2������test.exeӦ�ó���
csc /reference:WelcomeMessage.dll WelcomeApp.cs
WelcomeApp.exe 
pause


