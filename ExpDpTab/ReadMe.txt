导出功能：
    导入指定用户数据
    包括：hscenter.REPORT_FILE_,hscenter.REPORT_CATALOG_,hscenter.report_
------------------------------------------------------
注意事项：
    脚本所在目录必须有足够磁盘空间
    脚本必须在数据服务器执行；
    不得在业务高峰期执行脚本；
------------------------------------------------------
操作说明：
    1、运行 .\ExpDpTable.bat
    2、导入文件位置 .\dump 


脚本思路：
1、导出报表数据[源数据库]
 expdp system/tigersysdba tables=hscenter.REPORT_FILE_, dumpfile =expdp_REPORT_FILE_.dmp logfile=expdp_REPORT_FILE_.log directory=DPPATH1 compression=NONE content=ALL reuse_dumpfiles=y  query='"""where report_id in(select id from hscenter.v_REPORT_id_201611)"""'
 expdp system/tigersysdba tables=hscenter.REPORT_FILE_,hscenter.REPORT_CATALOG_,hscenter.report_ dumpfile =dp_REPORT_.dmp logfile=dp_REPORT_log.log directory=DPPATH1 compression=NONE content=ALL reuse_dumpfiles=y  
 
2、修改188表名称[目标数据库]
alter table hscenter.report_ rename to report_20170116B;
alter table hscenter.report_file_ rename to report_file_20170116B;
alter table hscenter.report_history_ rename to report_history_20170116B;
 
3、导入报表数据[目标数据库]
impdp system/tigersysdba tables=hscenter.REPORT_FILE_,hscenter.REPORT_CATALOG_,hscenter.report_ directory=DPPATH1 dumpfile=dp_HsCenter_REPORT.dmp table_exists_action=APPEND data_options=SKIP_CONSTRAINT_ERRORS parallel=2  logfile=impdp_REPORT_log.log.log

