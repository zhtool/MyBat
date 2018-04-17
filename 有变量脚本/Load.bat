@echo off
@if not exist log md log
sqlplus sys/tigersysdba as sysdba @LoadSql.txt

rem pause

exit


