@echo off
set BAT_PATH=%cd%

@if not exist .\log md log
del .\log\*.* /q/s
set Load_log=%BAT_PATH%\log\Log.log

@if not exist .\dump md dump
set dump_PATH=%BAT_PATH%\dump

cd %BAT_PATH%
sqlplus sys/tigersysdba as sysdba  @Loads.txt %BAT_PATH% %Load_log% %dump_PATH%

impdp system/tigersysdba@his schemas=HSCENTER DIRECTORY=DPPATH1 DUMPFILE=DP_HSCENTER.DMP logfile=IMPDP_DP_HSCENTER_log.log
impdp system/tigersysdba@his schemas=HSCENTER DIRECTORY=DPPATH1 DUMPFILE=HSCENTER_DP.DMP logfile=IMPDP_HSCENTER_log.log
impdp system/tigersysdba@his schemas=HSEMR DIRECTORY=DPPATH1 DUMPFILE=HSEMR_DP1.DMP logfile=IMPDP_HSEMR1_log.log
impdp system/tigersysdba@his schemas=HSOIS DIRECTORY=DPPATH1 DUMPFILE=HSOIS_DP.DMP logfile=IMPDP_HSOIS_log.log
rem impdp system/tigersysdba@his schemas=HSHIS DIRECTORY=DPPATH1 DUMPFILE=HSHIS_DP.DMP logfile=IMPDP_HSHIS_log.log
rem impdp system/tigersysdba tables=hscenter.REPORT_FILE_ directory=DPPATH1 dumpfile =DP_HSCENTER.DMP table_exists_action=APPEND data_options=SKIP_CONSTRAINT_ERRORS parallel=2  logfile=impDP_HSCENTER.log
pause
exit

