@echo off
set logs=.\log\load_log.log
del %logs%

echo %USERDOMAIN% %DATE% %TIME%>> %logs%
rem md ..\TEMP_TXT
set current_path=%cd% 
cd..
set parent_path=%cd%
cd %current_path%
echo 参数1：当前cmd路径: %current_path% >> %logs%
echo 参数2：上级cmd路径: %parent_path% >> %logs%

sqlplus sys/tigersysdba as sysdba @Loads.txt %current_path% %parent_path%

pause
