�������ܣ�
    ����ָ���û�����
    ������hscenter.REPORT_FILE_,hscenter.REPORT_CATALOG_,hscenter.report_
------------------------------------------------------
ע�����
    �ű�����Ŀ¼�������㹻���̿ռ�
    �ű����������ݷ�����ִ�У�
    ������ҵ��߷���ִ�нű���
------------------------------------------------------
����˵����
    1������ .\ExpDpTable.bat
    2�������ļ�λ�� .\dump 


�ű�˼·��
1��������������[Դ���ݿ�]
 expdp system/tigersysdba tables=hscenter.REPORT_FILE_, dumpfile =expdp_REPORT_FILE_.dmp logfile=expdp_REPORT_FILE_.log directory=DPPATH1 compression=NONE content=ALL reuse_dumpfiles=y  query='"""where report_id in(select id from hscenter.v_REPORT_id_201611)"""'
 expdp system/tigersysdba tables=hscenter.REPORT_FILE_,hscenter.REPORT_CATALOG_,hscenter.report_ dumpfile =dp_REPORT_.dmp logfile=dp_REPORT_log.log directory=DPPATH1 compression=NONE content=ALL reuse_dumpfiles=y  
 
2���޸�188������[Ŀ�����ݿ�]
alter table hscenter.report_ rename to report_20170116B;
alter table hscenter.report_file_ rename to report_file_20170116B;
alter table hscenter.report_history_ rename to report_history_20170116B;
 
3�����뱨������[Ŀ�����ݿ�]
impdp system/tigersysdba tables=hscenter.REPORT_FILE_,hscenter.REPORT_CATALOG_,hscenter.report_ directory=DPPATH1 dumpfile=dp_HsCenter_REPORT.dmp table_exists_action=APPEND data_options=SKIP_CONSTRAINT_ERRORS parallel=2  logfile=impdp_REPORT_log.log.log

