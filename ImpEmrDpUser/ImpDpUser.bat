md d:\test\dump;

sqlplus /nolog  @Crt_Emr_User.txt

impdp system/tigersysdba@his schemas=HSCENTER DIRECTORY=dpdata1 DUMPFILE=HSCENTER_DP.DMP logfile=IMPDP_HSCENTER_log.log
impdp system/tigersysdba@his schemas=HSEMR DIRECTORY=dpdata1 DUMPFILE=HSEMR_DP.DMP logfile=IMPDP_HSEMR_log.log
impdp system/tigersysdba@his schemas=HSOIS DIRECTORY=dpdata1 DUMPFILE=HSOIS_DP.DMP logfile=IMPDP_HSOIS_log.log

pause
