exit
@echo off
set BAT_PATH=%cd%

@if not exist .\dump md dump
set dump_PATH=%BAT_PATH%\dump
set Load_log=%BAT_PATH%\dump\Log.log

cd %BAT_PATH%
sqlplus sys/tigersysdba as sysdba  @Loads.txt %BAT_PATH% %Load_log% %dump_PATH%
impdp system/tigersysdba DIRECTORY=DPPATH1 DUMPFILE=HIS_data.DMP FULL=y logfile=impdp_HIS_data.log

pause
exit

