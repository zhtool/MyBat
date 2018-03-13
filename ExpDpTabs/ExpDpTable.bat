@echo off
set BAT_PATH=%cd%

@if not exist .\dump md dump
rem del .\dump\*.* /q/s
set dump_PATH=%BAT_PATH%\dump
set Load_log=%BAT_PATH%\dump\Log.log

cd %BAT_PATH%
sqlplus system/tigersysdba as sysdba  @Loads.txt %BAT_PATH% %Load_log% %dump_PATH%

rem expdp system/tigersysdba tables=hsemr.mr_file_content_xml_, dumpfile =expdp_mr_file_content_xml.dmp logfile=expdp_mr_file_content_xml.log directory=DPPATH1 compression=NONE content=ALL reuse_dumpfiles=y  query='"""where mr_file_id in (select id from hsemr.v_mr_file_id)"""'
rem impdp system/tigersysdba tables=hsemr.mr_file_content_xml_ directory=DPPATH1 dumpfile=expdp_mr_file_content_xml.dmp table_exists_action=APPEND data_options=SKIP_CONSTRAINT_ERRORS parallel=2  logfile=impdp_mr_file_content_xml.log


sqlplus sys/tigersysdba as sysdba ;
drop view hsemr.mr_file_id;
exit

rem pause
exit

