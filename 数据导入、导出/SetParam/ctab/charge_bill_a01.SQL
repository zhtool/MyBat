-- Create table
create table CHARGE_BILL_A01_
(
  ID                         VARCHAR2(10) not null,
  TICKET_NO                  VARCHAR2(20),
  ATTRIBUTE                  VARCHAR2(10),
  PATIENTID                  VARCHAR2(10),
  REGISTERID                 VARCHAR2(10),
  RESIDENTID                 VARCHAR2(10),
  PRESCRIPTIONID             VARCHAR2(10),
  FEE                        NUMBER,
  STATUS                     VARCHAR2(10),
  FEE_OPERATOR               VARCHAR2(10),
  FEE_DATE                   DATE,
  WITHDRAWER                 VARCHAR2(10),
  WITHDRAW_DATE              DATE,
  UPDATE_REASON              VARCHAR2(2),
  MEDICAL_CARE_PAY_FORMULAID NUMBER,
  REMARK                     VARCHAR2(100),
  TYPE                       VARCHAR2(10),
  BALANCE_WORKERID           VARCHAR2(10),
  BALANCE_DATE               DATE,
  DISCOUNT                   NUMBER default 0,
  OUT_BALANCE_INFOID         VARCHAR2(10),
  PRINT                      INTEGER  ,
  Õ≈ºÏID                     VARCHAR2(10)
)
partition by RANGE (ID)
(
  partition CHARGE_BILL_P2001 VALUES LESS THAN  ('2002000000') tablespace CHARGE_BILL_P,
  partition CHARGE_BILL_P2002 VALUES LESS THAN  ('2003000000') tablespace CHARGE_BILL_P,
  partition CHARGE_BILL_P2003 VALUES LESS THAN  ('2004000000') tablespace CHARGE_BILL_P,
  partition CHARGE_BILL_P2004 VALUES LESS THAN  ('2005000000') tablespace CHARGE_BILL_P,
  partition CHARGE_BILL_P2005 VALUES LESS THAN  ('2006000000') tablespace CHARGE_BILL_P,
  partition CHARGE_BILL_P2006 VALUES LESS THAN  ('2007000000') tablespace CHARGE_BILL_P,
  partition CHARGE_BILL_P2007 VALUES LESS THAN  ('2008000000') tablespace CHARGE_BILL_P,
  partition CHARGE_BILL_P2008 VALUES LESS THAN  ('2009000000') tablespace CHARGE_BILL_P,
  partition CHARGE_BILL_P2009 VALUES LESS THAN  ('2010000000') tablespace CHARGE_BILL_P,
  partition CHARGE_BILL_P2010 VALUES LESS THAN  ('2011000000') tablespace CHARGE_BILL_P,
  partition CHARGE_BILL_P2011 VALUES LESS THAN  ('2012000000') tablespace CHARGE_BILL_P,
  partition CHARGE_BILL_P2012 VALUES LESS THAN  ('2013000000') tablespace CHARGE_BILL_P,
  partition CHARGE_BILL_P2013 VALUES LESS THAN  ('2014000000') tablespace CHARGE_BILL_P,
  partition CHARGE_BILL_P2014 VALUES LESS THAN  ('2015000000') tablespace CHARGE_BILL_P,
  partition CHARGE_BILL_P2015 VALUES LESS THAN  ('2016000000') tablespace CHARGE_BILL_P,
  partition CHARGE_BILL_P2016 VALUES LESS THAN  ('2017000000') tablespace CHARGE_BILL_P,
  partition CHARGE_BILL_P2017 VALUES LESS THAN  ('2018000000') tablespace CHARGE_BILL_P,
  partition CHARGE_BILL_P2018 VALUES LESS THAN  ('2019000000') tablespace CHARGE_BILL_P,
  partition CHARGE_BILL_P2019 VALUES LESS THAN  ('2020000000') tablespace CHARGE_BILL_P,
  partition CHARGE_BILL_P2020 VALUES LESS THAN  (MAXVALUE) tablespace CHARGE_BILL_P );


-- Create/Recreate indexes 
create index I_CHARGE_BILL_A01$FEE_DATE on CHARGE_BILL_A01_ (FEE_DATE)
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
create index I_CHARGE_BILL_A01$PATIENTID on CHARGE_BILL_A01_ (PATIENTID)
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
create index I_CHARGE_BILL_A01$RESIDENTID on CHARGE_BILL_A01_ (RESIDENTID)
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
create index I_CHARGE_BILL_A01$WITHDRAW_D on CHARGE_BILL_A01_ (WITHDRAW_DATE)
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
create unique index I_PK_CHARGE_BILL_A01$ID on CHARGE_BILL_A01_ (ID)
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
grant select on CHARGE_BILL_A01_ to HSHIS_USER;
grant select on CHARGE_BILL_A01_ to HUMAN;
