@echo off
set v_workerid="001001"
sqlplus hospital/source@his  @Loads.txt %v_workerid%

 pause
exit


