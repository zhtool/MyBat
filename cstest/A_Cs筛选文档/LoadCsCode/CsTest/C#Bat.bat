@echo off
if exist .\test.exe del .\test.exe

rem ---0、直接产生test.exe
csc .\ZhTest\test.cs 

rem ---1-1、产生test.dll类库
rem csc /target:library  test.cs
rem ---1-2、产生test.exe应用程序
rem csc /reference:test.dll test.cs

test.exe 
pause


