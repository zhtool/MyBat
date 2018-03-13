set echo on
set lines 1000
set trimspool on
spool log.log



conn system/tigersysdba@his;

rem alter system set processes =500 scope=spfile;
rem alter system set sga_target =1024M scope=spfile; 
rem alter system set db_files =1024 scope=spfile;
ALTER SYSTEM SET SEC_CASE_SENSITIVE_LOGON = FALSE;
ALTER PROFILE "DEFAULT" LIMIT FAILED_LOGIN_ATTEMPTS UNLIMITED;

PROMPT
PROMPT ������ռ�....
PROMPT



--������ռ� HSCENTER
create tablespace HSCENTER  logging  datafile 'D:\APP\YJYY\ORADATA\his\HSCENTER.dbf' size 50m  autoextend on  next 50m maxsize 20480m  extent management local; 
--�����û�HSCENTER
create user HSCENTER identified by HSCENTER
DEFAULT TABLESPACE HSCENTER;

--��Ȩ�û�HSCENTER
grant resource to HSCENTER;
grant connect to HSCENTER;
grant hshis_user to HSCENTER;


conn hospital/source@his
--��Ȩ
grant execute on hospital.verify_length to hscenter;
grant execute on hospital.login to hscenter;
grant execute on hospital.VERIFY_WORKER to hscenter;
grant execute on hospital.verify_department to hscenter;
grant execute on hospital.verify_valid_number to hscenter;

conn HSCENTER/HSCENTER@his

--HSCENTER�û�
create sequence HSCENTER.SEQ_��ɫID
minvalue 1
maxvalue 999999
start with 1
increment by 1
nocache
cycle;


grant select on hscenter.system_option to hsemr;
grant execute on hscenter.bm to HSPE;
grant execute on hscenter.bm to HOSPITAL;
grant execute on hscenter.bm to HSHIS_USER;
grant select on hscenter.system_option to HSPE;


grant select on hscenter.WORKER_ROLE to hsemr;
grant select on hscenter.SYSTEM_OPTION to hsemr;
grant select on hscenter.ROLE_MENU to hsemr;
grant select on hscenter.ROLE to hsemr;
grant select on hscenter.MENU to hsemr;
grant select on hscenter.LOG_SYSTEM_OPTION to hsemr;
grant select on hscenter.FILES to hsemr;
grant select on hscenter.FIELD_DICT to hsemr;
grant select on hscenter.FAST_REPORT_SQL to hsemr;

grant select on hscenter.WORKER_ROLE to hshis_user;
grant select on hscenter.SYSTEM_OPTION to hshis_user;
grant select on hscenter.ROLE_MENU to hshis_user;
grant select on hscenter.ROLE to hshis_user;
grant select on hscenter.MENU to hshis_user;
grant select on hscenter.LOG_SYSTEM_OPTION to hshis_user;
grant select on hscenter.FILES to hshis_user;
grant select on hscenter.FIELD_DICT to hshis_user;
grant select on hscenter.FAST_REPORT_SQL to hshis_user;



spool off

exit