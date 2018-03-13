@echo off
set BAT_PATH=%cd%

@if not exist .\dump md dump
set dump_PATH=%BAT_PATH%\dump
set Load_log=%BAT_PATH%\dump\Log.log

cd %BAT_PATH%
sqlplus sys/tigersysdba as sysdba  @Loads.sql %BAT_PATH% %Load_log% %dump_PATH%

impdp system/tigersysdba tables=hscenter.REPORT_FILE_ directory=DPPATH1 dumpfile =DP_REPORT_FILE_.DMP table_exists_action=APPEND data_options=SKIP_CONSTRAINT_ERRORS parallel=2  logfile=impDP_REPORT_FILE_.log
rem impdp system/tigersysdba tables=hscenter.REPORT_FILE_,hscenter.REPORT_CATALOG_,hscenter.report_ directory=DPPATH1 dumpfile=dp_HsCenter_REPORT.dmp table_exists_action=APPEND data_options=SKIP_CONSTRAINT_ERRORS parallel=2  logfile=impdp_REPORT_log.log.log

rem pause
exit

