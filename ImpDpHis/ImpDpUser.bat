exit
@echo off
set BAT_PATH=%cd%

@if not exist .\dump md dump
set dump_PATH=%BAT_PATH%\dump
set Load_log=%BAT_PATH%\dump\Log.log


cd %BAT_PATH%
sqlplus sys/tigersysdba as sysdba  @Loads.txt %BAT_PATH% %Load_log% %dump_PATH%

impdp system/tigersysdba schemas=HSCENTER DIRECTORY=DPPATH1 DUMPFILE=HSCENTER_DP.DMP logfile=IMPDP_HSCENTER_log.log
impdp system/tigersysdba schemas=HSEMR    DIRECTORY=DPPATH1 DUMPFILE=HSEMR_DP1.DMP logfile=IMPDP_HSEMR1_log.log
impdp system/tigersysdba schemas=HSOIS    DIRECTORY=DPPATH1 DUMPFILE=HSOIS_DP.DMP logfile=IMPDP_HSOIS_log.log
rem impdp system/tigersysdba schemas=HSHIS DIRECTORY=DPPATH1 DUMPFILE=HSHIS_DP.DMP logfile=IMPDP_HSHIS_log.log

pause
exit

