@echo off
set logs=.\log\load_log.log
del %logs%

echo %USERDOMAIN% %DATE% %TIME%>> %logs%
rem md ..\TEMP_TXT
set current_path=%cd% 
cd..
set parent_path=%cd%
cd %current_path%
echo ����1����ǰcmd·��: %current_path% >> %logs%
echo ����2���ϼ�cmd·��: %parent_path% >> %logs%

sqlplus sys/tigersysdba as sysdba @Loads.txt %current_path% %parent_path%

pause
