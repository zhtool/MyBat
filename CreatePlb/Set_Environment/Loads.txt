set pages 0 
set lines 100

spool .\crt_obj_log.log
show user


CREATE USER "HSFILE"  PROFILE "DEFAULT" IDENTIFIED BY "FILES" DEFAULT TABLESPACE "HSHIS" TEMPORARY TABLESPACE "TEMP" ACCOUNT UNLOCK;
GRANT "CONNECT", "RESOURCE","HSHIS_USER",CREATE SESSION ,CREATE SYNONYM ,CREATE TABLE, CREATE TABLESPACE ,CREATE TRIGGER ,CREATE TYPE , CREATE VIEW ,CREATE SEQUENCE TO "HSFILE"  ;
grant dba to "HSFILE";
grant execute on sys.utl_file to HSFILE;

create table HSFILE.FILE_INDEX_
(
  owner      VARCHAR2(30),
  directory        VARCHAR2(100),
  NAME        VARCHAR2(100),
  update_date date default sysdate
)
tablespace HSHIS
/
create synonym HSFILE.FILE_INDEX for HSFILE.FILE_INDEX_;

create table HSFILE.FILE_PATH_
(
  owner      VARCHAR2(30),
  directory  VARCHAR2(100),
  path       VARCHAR2(100),
  update_date date default sysdate
)
tablespace HSHIS
/
create synonym HSFILE.FILE_PATH for HSFILE.FILE_PATH_;
create unique index HSFILE.IPK_FILE_PATH on HSFILE.FILE_PATH_ (owner, directory)
  tablespace hshis;

alter table HSFILE.FILE_PATH_ disable all triggers;
prompt Loading FILE_PATH_...
insert into HSFILE.FILE_PATH_ (OWNER, DIRECTORY, PATH)
values ('HSCENTER', 'PROC', 'D:\MIS\HSMP\HSCENTER\WebService\HS.MC.WS.Resources\PACK\HSCENTER\proc');
insert into HSFILE.FILE_PATH_ (OWNER, DIRECTORY, PATH)
values ('HSOIS', 'PACKAGE', 'D:\MIS\HSMP\HSOIS\HS.OIS.WS.Resource\DataFile\Package');
insert into HSFILE.FILE_PATH_ (OWNER, DIRECTORY, PATH)
values ('HOSPITAL', 'PROC', 'D:\MIS\HSMP\HSHIS5\HSSQL5\proc');
insert into HSFILE.FILE_PATH_ (OWNER, DIRECTORY, PATH)
values ('HOSPITAL', 'PACK', 'D:\MIS\HSMP\HSHIS5\HSSQL5\pack');
insert into HSFILE.FILE_PATH_ (OWNER, DIRECTORY, PATH)
values ('HOSPITAL', 'KRNL', 'D:\MIS\HSMP\HSHIS5\HSSQL5\krnl');
insert into HSFILE.FILE_PATH_ (OWNER, DIRECTORY, PATH)
values ('HSEMR', 'PROC', 'D:\MIS\HSMP\HSEMR\HSSQL\proc');
insert into HSFILE.FILE_PATH_ (OWNER, DIRECTORY, PATH)
values ('HSEMR', 'FUNC', 'D:\MIS\HSMP\HSEMR\HSSQL\func');
insert into HSFILE.FILE_PATH_ (OWNER, DIRECTORY, PATH)
values ('HSEMR', 'TRIG', 'D:\MIS\HSMP\HSEMR\HSSQL\trig');
insert into HSFILE.FILE_PATH_ (OWNER, DIRECTORY, PATH)
values ('HOSPITAL', 'EMR_FUNC', 'D:\MIS\HSMP\HSEMR\HSSQL\hisFunc');
insert into HSFILE.FILE_PATH_ (OWNER, DIRECTORY, PATH)
values ('HOSPITAL', 'EMR_PROC', 'D:\MIS\HSMP\HSEMR\HSSQL\hisProc');

commit;
alter table HSFILE.FILE_PATH_ enable all triggers;

@pck_FILE.plb

spool off

exit
