-- Create table
create table PRESCRIPTION_A01_
(
  ID              VARCHAR2(10) not null,
  REGISTERID      VARCHAR2(10),
  PATIENTID       VARCHAR2(10),
  RESIDENTID      VARCHAR2(10),
  BEDID           VARCHAR2(10),
  DEPTID          VARCHAR2(10),
  MATERIAL_DEPTID VARCHAR2(10),
  CHARGE_BILLID   VARCHAR2(10),
  WRITE_WORKERID  VARCHAR2(6),
  WRITE_DATE      DATE,
  INPUT_WORKERID  VARCHAR2(6),
  INPUT_DATE      DATE,
  FEE             NUMBER,
  FEE_WORKERID    VARCHAR2(6),
  FEE_DATE        DATE,
  MIX_WORKERID    VARCHAR2(6),
  MIX_DATE        DATE,
  CHECK_WORKERID  VARCHAR2(6),
  CHECK_DATE      DATE,
  ATTRIBUTE       VARCHAR2(10),
  ATTRIBUTE1      VARCHAR2(10),
  ATTRIBUTE2      VARCHAR2(10),
  STATUS          VARCHAR2(10),
  AMOUNT          NUMBER,
  OPERATOR        VARCHAR2(6),
  UPDATE_DATE     DATE,
  REMARK          VARCHAR2(30),
  CHECKED         NUMBER(38),
  METHOD          VARCHAR2(200),
  DIAGNOSE        VARCHAR2(200),
  DISCOUNT        NUMBER default 0,
  CHILDREN_FLAG   VARCHAR2(10) default 'N',
  EMERGENCY_FLAG  VARCHAR2(10) default 'N',
  AGE             VARCHAR2(10)  ,                         
  AGE_UNIT        VARCHAR2(10)  ,
  TRANS_FLAG      VARCHAR2(5) ,
  DIAGNOSE_ICD10  VARCHAR2(20) ,
  WITHDRAW_AUDIT_WORKERID  VARCHAR2(10) ,
  WITHDRAW_AUDIT_DATE     DATE,
  AUDIT_WORKERID        VARCHAR2(10) ,
  AUDIT_DATE            DATE ,
  SKIN_TEST_RESULT        VARCHAR2(10)  ,                             
  CH_DIAGNOSE             VARCHAR2(200) ,  
  CH_DIAGNOSE_ICD10       VARCHAR2(20)     
)
partition by RANGE (ID)
(
      partition  "PRESCRIPTION_P2000"  values less than  ('2004000000')  tablespace PRESCRIPTION_P,
      partition  "PRESCRIPTION_P2004"  values less than  ('2008000000')  tablespace PRESCRIPTION_P,
      partition  "PRESCRIPTION_P2008"  values less than  ('2012000000')  tablespace PRESCRIPTION_P,
      partition  "PRESCRIPTION_P2012"  values less than  ('2016000000')  tablespace PRESCRIPTION_P,
      partition  "PRESCRIPTION_P2016"  values less than  ('2020000000')  tablespace PRESCRIPTION_P,
      partition  "PRESCRIPTION_P2020"  values less than  (maxvalue)  tablespace PRESCRIPTION_P
)
;
-- Create/Recreate indexes 
create unique index I_PK_PRESCRIPTION_A01 on PRESCRIPTION_A01_ (ID)
  tablespace HSIND
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 4M
    minextents 1
    maxextents unlimited
  );
create index I_PRE_A01$CHARGE_BILLID on PRESCRIPTION_A01_ (CHARGE_BILLID)
  tablespace HSIND
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index I_PRE_A01$FEE_DATE on PRESCRIPTION_A01_ (FEE_DATE)
  tablespace HSIND
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 4M
    minextents 1
    maxextents unlimited
  );
create index I_PRE_A01$INPUT_DATE on PRESCRIPTION_A01_ (INPUT_DATE)
  tablespace HSIND
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 4M
    minextents 1
    maxextents unlimited
  );
create index I_PRE_A01$MIX_DATE on PRESCRIPTION_A01_ (MIX_DATE)
  tablespace HSIND
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 4M
    minextents 1
    maxextents unlimited
  );
create index I_PRE_A01$PATIENTID on PRESCRIPTION_A01_ (PATIENTID)
  tablespace HSIND
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 4M
    minextents 1
    maxextents unlimited
  );
create index I_PRE_A01$UPDATE_DATE on PRESCRIPTION_A01_ (UPDATE_DATE)
  tablespace HSIND
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 4M
    minextents 1
    maxextents unlimited
  );
-- Grant/Revoke object privileges 

grant select on PRESCRIPTION_A01_ to HSHIS_USER;
grant select on PRESCRIPTION_A01_ to HUMAN;

