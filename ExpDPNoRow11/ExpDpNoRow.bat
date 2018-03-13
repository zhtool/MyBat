md d:\test\dump;
del d:\test\dump\DP_HIS_NOW_ROW_LOG.log
del d:\test\dump\DP_HIS_NOW_ROW.DMP

sqlplus /nolog  @alterParm.txt
expdp system/tigersysdba DIRECTORY=dpdata1  DUMPFILE=DP_HIS_NOW_ROW.dmp content=metadata_only full=Y logfile=DP_HIS_NOW_ROW_LOG.log


