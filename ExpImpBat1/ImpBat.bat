exit
IMP system/tigersysdba@his BUFFER=955500 file=dmp\HsCenter.dmp  FROMUSER=hscenter TOUSER=hscenter log=log\impHsCenter.log
rem IMP system/tigersysdba@his BUFFER=955500  file=dmp\hsemr.dmp  FROMUSER=hscenter TOUSER=hscenter log=log\impHsEmr.log
rem IMP system/tigersysdba@his BUFFER=955500  file=dmp\hospital.dmp  FROMUSER=hospital TOUSER=hospital log=log\ImpHospital.log
rem IMP system/tigersysdba@his BUFFER=955500  file=dmp\hsins.dmp  FROMUSER=hsins TOUSER=hsins log=log\impHsins.log
rem IMP system/tigersysdba@his BUFFER=955500  file=dmp\HisYQ.dmp   log=log\ImpHisYQ.log   full=y
exit
