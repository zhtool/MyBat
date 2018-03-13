@echo off
set v_workerid="001001"
sqlplus hospital/source@his100  @Loads.txt %v_workerid%
sqlplus hscenter/hscenter@his100  @Loads.txt %v_workerid%
sqlplus hsemr/hsemr@his100  @Loads.txt %v_workerid%

exit


