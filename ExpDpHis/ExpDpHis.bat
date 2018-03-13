@echo off
set BAT_PATH=%cd%

@if not exist .\dump md dump
del .\dump\*.* /q/s
set dump_PATH=%BAT_PATH%\dump
set Load_log=%BAT_PATH%\dump\Log.log

cd %BAT_PATH%
sqlplus sys/tigersysdba as sysdba  @Loads.txt %BAT_PATH% %Load_log% %dump_PATH%
expdp system/tigersysdba DIRECTORY=DPPATH1   DUMPFILE=DP_HIS.dmp full=Y logfile=DP_HIS_LOG.log
rem expdp hsins/hsins schemas=HSINS  DIRECTORY=DPPATH1 DUMPFILE=DP_HSINS.dmp  logfile=expDP_HSINS_LOG.log
rem expdp system/tigersysdba schemas=HSCENTER DIRECTORY=DPPATH1 DUMPFILE=DP_HSCENTER.dmp  logfile=expDP_HSCENTER_LOG.log

rem pause
exit

