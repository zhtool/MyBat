@echo off
set BAT_PATH=%cd%

@if not exist .\dump md dump
del .\dump\*.* /q/s
set dump_PATH=%BAT_PATH%\dump
set Load_log=%BAT_PATH%\dump\Log.log

cd %BAT_PATH%
sqlplus sys/tigersysdba as sysdba  @Loads.txt %BAT_PATH% %Load_log% %dump_PATH%
expdp system/tigersysdba DIRECTORY=DPPATH1  DUMPFILE=DP_HIS_NOW_ROW.dmp content=metadata_only full=Y logfile=DP_HIS_NOW_ROW_LOG.log

rem pause
exit

