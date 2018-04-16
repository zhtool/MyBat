@echo off
set start_log=Start：%USERDOMAIN% %DATE% %TIME%
set BAT_PATH=%cd%

rem 创建 log 目录
@if not exist .\log md log
set Load_log=.\log\Load_log.log
del .\log\*.* /q/s


rem 创建 FILES 目录
@if not exist .\FILES md FILES
cd FILES
set FILES_PATH=%cd%
for /d %%i in (HOSPITAL_KRNL,HOSPITAL_PACK,HOSPITAL_PROC,HOSPITAL_EMR_FUNC,HOSPITAL_EMR_PROC,HSCENTER_PROC,HSEMR_FUNC,HSEMR_PROC,HSEMR_TRIG,HSOIS_PACKAGE) do @if not exist %%i md %%i
del .\*.* /q
for /d %%i in (HOSPITAL_KRNL,HOSPITAL_PACK,HOSPITAL_PROC,HOSPITAL_EMR_FUNC,HOSPITAL_EMR_PROC,HSCENTER_PROC,HSEMR_FUNC,HSEMR_PROC,HSEMR_TRIG,HSOIS_PACKAGE) do @if exist %%i dir %%i /b >.\%%i.txt

rem 创建 PLBS 目录
@if not exist PLBS md  PLBS
cd  PLBS
for /d %%i in (HSEMR_PLB,HSOIS_PLB,HSCENTER_PLB,HOSPITAL_PLB) do @if not exist %%i md %%i
del .\*.* /q/s

cd %BAT_PATH%
sqlplus sys/tigersysdba as sysdba @LoadSql.md %FILES_PATH% %BAT_PATH%  %Load_log%  

cd %FILES_PATH%
for /d %%i in (HOSPITAL_KRNL,HOSPITAL_PACK,HOSPITAL_PROC,HOSPITAL_EMR_FUNC,HOSPITAL_EMR_PROC,HSCENTER_PROC,HSEMR_FUNC,HSEMR_PROC,HSEMR_TRIG,HSOIS_PACKAGE) do @if exist %%i del .\%%i.txt

cd %BAT_PATH%

rem 调用wrap.bat
cd .\log
for /d %%i in (WRAP_HOSPITAL.BAT,WRAP_HSCENTER.BAT,WRAP_HSEMR.BAT,WRAP_HSOIS.BAT) do @if exist %%i call %%i


rem 拷贝 PLBS 到脚本目录
cd %BAT_PATH%
@if  exist .\LoadPLBS rd .\LoadPLBS /q/s
xcopy .\FILES\PLBS\*.* .\LoadPLBS\*.* /e/y/q
xcopy .\Script\LoadPlbSql\*.* .\LoadPLBS\*.* /e/y/q
@if exist .\FILES\PLBS tree .\FILES\PLBS /F >>%Load_log%
@if exist .\FILES\PLBS rd   .\FILES\PLBS /q/s

echo =================================== >> %Load_log%
echo %start_log% >> %Load_log%
echo BAT_PATH:   %BAT_PATH% >> %Load_log%
echo FILES_PATH: %FILES_PATH%  >> %Load_log%
echo End：  %USERDOMAIN% %DATE% %TIME%>> %Load_log%
echo =================================== >> %Load_log%

set FILES_PATH=
rem pause
exit


