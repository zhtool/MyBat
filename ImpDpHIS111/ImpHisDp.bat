md d:\test\dump;
sqlplus /nolog  @Crt_Directory.txt

impdp system/tigersysdba DIRECTORY=dpdata1 DUMPFILE=HIS_data.DMP FULL=y logfile=impdp_HIS_data.log

pause
