@echo off
if exist .\test.exe del .\test.exe

rem ---0��ֱ�Ӳ���test.exe
csc .\ZhTest\test.cs 

rem ---1-1������test.dll���
rem csc /target:library  test.cs
rem ---1-2������test.exeӦ�ó���
rem csc /reference:test.dll test.cs

test.exe 
pause


