@echo off
set BAT_PATH=%cd%

@if not exist .\dump md dump
del .\dump\*.* /q/s
set dump_PATH=%BAT_PATH%\dump
set Load_log=%BAT_PATH%\dump\Load_Log.log

cd %BAT_PATH%
sqlplus sys/tigersysdba as sysdba  @Loads.txt %BAT_PATH% %Load_log% %dump_PATH%

rem expdp system/tigersysdba tables=hscenter.REPORT_FILE_, dumpfile =expdp_REPORT_FILE_.dmp logfile=expdp_REPORT_FILE_.log directory=DPPATH1 compression=NONE content=ALL reuse_dumpfiles=y  query='"""where report_id in(select id from hscenter.v_REPORT_id_201611)"""'
expdp system/tigersysdba tables=hscenter.REPORT_FILE_, dumpfile =expdp_REPORT_FILE_.dmp logfile=expdp_REPORT_FILE_.log directory=DPPATH1 compression=NONE content=ALL reuse_dumpfiles=y  query='"""where (report_id,hospid,owner,version) in( select report_id,hospid,owner,version from hscenter.v_report_file_)"""'

rem impdp system/tigersysdba tables=hscenter.REPORT_FILE_,hscenter.REPORT_CATALOG_,hscenter.report_ directory=DPPATH1 dumpfile=dp_HsCenter_REPORT.dmp table_exists_action=APPEND data_options=SKIP_CONSTRAINT_ERRORS parallel=2  logfile=impdp_REPORT_log.log.log
rem expdp system/tigersysdba tables=hscenter.REPORT_FILE_,hscenter.REPORT_CATALOG_,hscenter.report_ directory=DPPATH1 dumpfile=dp_HsCenter_REPORT.dmp logfile=dp_HsCenter_REPORT_log.log compression=NONE content=ALL reuse_dumpfiles=y  

pause
exit

