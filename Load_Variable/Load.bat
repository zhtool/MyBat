@echo off
set v_workerid="001001"
sqlplus sys/tigersysdba as sysdba @LoadSql.txt %v_workerid%

pause
exit


