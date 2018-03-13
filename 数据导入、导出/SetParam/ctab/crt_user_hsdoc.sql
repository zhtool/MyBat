rem =====================================
prompt ½¨±í£ºVERSION_INFO_
conn /as sysdba
alter user system identified by tigersysdba;


conn system/tigersysdba@HIS;
CREATE USER "HSDOC"  PROFILE "DEFAULT" IDENTIFIED BY "DOCPWD" DEFAULT TABLESPACE "HSHIS" TEMPORARY TABLESPACE "TEMP" ACCOUNT UNLOCK;
alter user hsdoc identified by docpwd;
GRANT "CONNECT" TO "HSDOC"  ;
GRANT "RESOURCE" TO "HSDOC"  ;
GRANT CREATE SESSION TO "HSDOC"  ;
GRANT CREATE SYNONYM TO "HSDOC"  ;
GRANT CREATE TABLE TO "HSDOC"  ;
GRANT CREATE TABLESPACE TO "HSDOC"  ;
GRANT CREATE TRIGGER TO "HSDOC"  ;
GRANT CREATE TYPE TO "HSDOC"  ;
GRANT CREATE VIEW TO "HSDOC"  ;
GRANT CREATE SEQUENCE TO "HSDOC"  ;
conn hsdoc/docpwd@HIS;

create table VERSION_INFO_
(
  NAME        VARCHAR2(50) not null,
  TYPE        VARCHAR2(10) not null,
  V1          NUMBER not null,
  V2          NUMBER not null,
  V3          NUMBER not null,
  V4          NUMBER not null,
  CREATE_DATE DATE,
  FILE_SIZE   VARCHAR2(10),
  FILE_ENTITY BLOB,
  UPDATE_DATE DATE,
  OPERATOR    VARCHAR2(10),
  REMARK      VARCHAR2(500)
)
tablespace HSHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
-- Grant/Revoke object privileges 
create synonym VERSION_INFO for VERSION_INFO_;
grant select on VERSION_INFO_ to HSHIS_USER;
grant select, insert, update, delete on VERSION_INFO_ to H_001001;
@doc_manager.plb;
grant execute on doc_manager to hshis_user;
