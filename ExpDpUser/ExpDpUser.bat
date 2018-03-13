@echo off
set BAT_PATH=%cd%

@if not exist .\dump md dump
del .\dump\*.* /q/s
set dump_PATH=%BAT_PATH%\dump
set Load_log=%BAT_PATH%\dump\Log.log

cd %BAT_PATH%
sqlplus sys/tigersysdba as sysdba  @Loads.txt %BAT_PATH% %Load_log% %dump_PATH%
rem expdp system/tigersysdba schemas=AMQP     DIRECTORY=DPPATH1 DUMPFILE=DP_AMQP.dmp   logfile=expDP_AMQP_LOG.log
rem expdp system/tigersysdba schemas=HSCENTER DIRECTORY=DPPATH1 DUMPFILE=DP_HSCENTER.dmp  logfile=expDP_HSCENTER_LOG.log
rem expdp system/tigersysdba schemas=HSEMR    DIRECTORY=DPPATH1 DUMPFILE=DP_HSEMR.dmp  logfile=expDP_HSEMR_LOG.log
rem expdp system/tigersysdba schemas=HSOIS    DIRECTORY=DPPATH1 DUMPFILE=DP_HSOIS.dmp  logfile=expDP_HSOIS_LOG.log
rem expdp system/tigersysdba schemas=HSHIS    DIRECTORY=DPPATH1 DUMPFILE=DP_HSHIS.dmp  logfile=expDP_HSHIS_LOG.log
rem expdp system/tigersysdba schemas=HSINS    DIRECTORY=DPPATH1 DUMPFILE=DP_HSINS.dmp  logfile=expDP_HSINS_LOG.log

rem pause
exit

