-- Create table
create table ORDER_LIST_A01_
(
  ID                   VARCHAR2(10),
  PARENTID             VARCHAR2(10),
  PATIENTID            VARCHAR2(10),
  OWNERID              VARCHAR2(10),
  SEQUENCE             NUMBER,
  START_WORKERID       VARCHAR2(6),
  START_DATE           DATE,
  INPUT_WORKERID       VARCHAR2(6),
  INPUT_DATE           DATE,
  ACK_WORKERID         VARCHAR2(6),
  ACK_DATE             DATE,
  EXECUTED_DAYS        NUMBER,
  THIS_DAYS            NUMBER,
  ACCOUNT_WORKERID     VARCHAR2(6),
  ACCOUNT_DATE         DATE,
  MIX_WORKERID         VARCHAR2(6),
  MIX_DATE             DATE,
  EXECUTE_WORKERID     VARCHAR2(6),
  EXECUTE_DATE         DATE,
  STOP_WORKERID        VARCHAR2(6),
  STOP_DATE            DATE,
  MATERIAL_DEPTID      VARCHAR2(10),
  EXECUTE_DEPTID       VARCHAR2(10),
  CHARGE_ITEMID        VARCHAR2(14),
  ATTRIBUTE            VARCHAR2(10),
  LONG_FLAG            VARCHAR2(1),
  MATERIALID           VARCHAR2(10),
  PACKAGEID            VARCHAR2(10),
  MEDICAMENT           NUMBER,
  USE_METHOD           VARCHAR2(30),
  FREQUENCE            NUMBER,
  METHOD               VARCHAR2(60),
  SUNDRY_FEEID         VARCHAR2(10),
  STATUS               VARCHAR2(10),
  STATUS1              VARCHAR2(10),
  AMOUNT               NUMBER,
  PRICE                NUMBER,
  CIRCULATION_DETAILID VARCHAR2(10),
  SKIP_DAYS            NUMBER,
  OPERATOR             VARCHAR2(6),
  UPDATE_DATE          DATE,
  REMARK               VARCHAR2(20),
  PLANNED_DAYS         VARCHAR2(10),
  THIS_ACCOUNT_SEQ     NUMBER,
  TYPE                 VARCHAR2(10),
  TEXT                 VARCHAR2(200),
  STOP_NURSE_WORKERID  VARCHAR2(6),
  STOP_DOCTOR_WORKERID VARCHAR2(6),
  SUBSEQ               INTEGER,
  PERFORM_SCHEDULE     VARCHAR2(30)  ,                         
  PATHWAY_ORDERID      VARCHAR2(10)  ,                         
  PATHWAY_STATUS       VARCHAR2(10)  ,                         
  PATIENT_PATHWAYID    VARCHAR2(10)  ,                        
  PERIOD_SEQ           NUMBER        ,                         
  PLANNED_DAYS         VARCHAR2(10)  
)
partition by RANGE (ID)
(
      partition  "ORDER_LIST_P2001"  values less than  ('2002000000')  tablespace ORDER_LIST_P,
      partition  "ORDER_LIST_P2002"  values less than  ('2003000000')  tablespace ORDER_LIST_P,
      partition  "ORDER_LIST_P2003"  values less than  ('2004000000')  tablespace ORDER_LIST_P,
      partition  "ORDER_LIST_P2004"  values less than  ('2005000000')  tablespace ORDER_LIST_P,
      partition  "ORDER_LIST_P2005"  values less than  ('2006000000')  tablespace ORDER_LIST_P,
      partition  "ORDER_LIST_P2006"  values less than  ('2007000000')  tablespace ORDER_LIST_P,
      partition  "ORDER_LIST_P2007"  values less than  ('2008000000')  tablespace ORDER_LIST_P,
      partition  "ORDER_LIST_P2008"  values less than  ('2009000000')  tablespace ORDER_LIST_P,
      partition  "ORDER_LIST_P2009"  values less than  ('2010000000')  tablespace ORDER_LIST_P,
      partition  "ORDER_LIST_P2010"  values less than  ('2011000000')  tablespace ORDER_LIST_P,
      partition  "ORDER_LIST_P2011"  values less than  ('2012000000')  tablespace ORDER_LIST_P,
      partition  "ORDER_LIST_P2012"  values less than  ('2013000000')  tablespace ORDER_LIST_P,
      partition  "ORDER_LIST_P2013"  values less than  ('2014000000')  tablespace ORDER_LIST_P,
      partition  "ORDER_LIST_P2014"  values less than  ('2015000000')  tablespace ORDER_LIST_P,
      partition  "ORDER_LIST_P2015"  values less than  ('2016000000')  tablespace ORDER_LIST_P,
      partition  "ORDER_LIST_P2016"  values less than  ('2017000000')  tablespace ORDER_LIST_P,
      partition  "ORDER_LIST_P2017"  values less than  ('2018000000')  tablespace ORDER_LIST_P,
      partition  "ORDER_LIST_P2018"  values less than  ('2019000000')  tablespace ORDER_LIST_P,
      partition  "ORDER_LIST_P2019"  values less than  ('2020000000')  tablespace ORDER_LIST_P,
      partition  "ORDER_LIST_P2020"  values less than  (maxvalue)  tablespace ORDER_LIST_P
)
;
-- Create/Recreate indexes 
create index I_ORDER_LIST_A01$PARENTID on ORDER_LIST_A01_ (PARENTID)
  tablespace HSIND
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 10M
    minextents 1
    maxextents unlimited
  );
create unique index I_PK_ORDER_LIST_A01$ID on ORDER_LIST_A01_ (ID)
  tablespace HSIND
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 10M
    minextents 1
    maxextents unlimited
  );
create index I_PK_ORDER_LIST_A01$OWNER on ORDER_LIST_A01_ (OWNERID, SEQUENCE)
  tablespace HSIND
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 20M
    minextents 1
    maxextents unlimited
  );
-- Grant/Revoke object privileges 
grant select on ORDER_LIST_A01_ to HSHIS_USER;
grant select on ORDER_LIST_A01_ to HUMAN;
