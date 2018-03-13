-- Create table
create table CHARGE_ITEM_A01_
(
 ID                    VARCHAR2(14)  ,                          
CHARGE_BILLID         VARCHAR2(10)  ,                         
PATIENTID             VARCHAR2(10)  ,                         
REGISTERID            VARCHAR2(10)  ,                         
RESIDENTID            VARCHAR2(10)  ,                         
DOCTORID              VARCHAR2(10)  ,                         
FEE_TYPE              VARCHAR2(10)  ,                         
PATIENT_DEPTID        VARCHAR2(10)  ,                         
WRITE_DEPTID          VARCHAR2(10)  ,                         
EXECUTE_DEPTID        VARCHAR2(10)  ,                         
ATTRIBUTE             VARCHAR2(10)  ,                         
ITEMID                VARCHAR2(20)  ,                         
UNIT                  VARCHAR2(10)  ,                         
AMOUNT                NUMBER        ,                         
PRICE                 NUMBER        ,                         
PAYER                 VARCHAR2(10)  ,                         
STATUS                VARCHAR2(10)  ,                         
OPERATOR              VARCHAR2(10)  ,                         
UPDATE_DATE           DATE          ,                         
UPDATE_REASON         VARCHAR2(2)   ,                         
NBMAM_LIST_ITEM_TYPE  VARCHAR2(10)  ,                         
RATIO                 NUMBER        ,                         
REMARK                VARCHAR2(100) ,                         
ORDER_LISTID          VARCHAR2(10)  ,                         
ACCOUNT_SEQ           NUMBER        ,                         
SUNDRY_FEEID          VARCHAR2(10)  ,                         
SUNDRY_FEE_DETAIL_SEQ NUMBER        ,                         
PURCHASEID            VARCHAR2(10)  ,                         
SELF_PAY              NUMBER        ,                         
PREFERENTIAL_PRICE    NUMBER        ,                         
MC_UPDATE_DATE        DATE          ,                         
IN_FUND_PAY_SELF      NUMBER        ,                         
SECOND_IN_FUND_PAY    NUMBER        ,                         
DISCOUNT              NUMBER        ,                     
NORM_PRICE            NUMBER        ,                         
PACKAGEID             VARCHAR2(10)  ,                         
MC_GENERATE_TYPE      VARCHAR2(10)  ,                         
BACK_CHARGE_ITEMID    VARCHAR2(14)  ,                         
IN_FUND_PAY           NUMBER        ,                         
MC_OPERATOR           VARCHAR2(10)  ,                         
MATERIALID            VARCHAR2(10)  ,                         
IN_FUND_PAY_METHOD    VARCHAR2(10)  ,                         
MEDCARE_FORMULAID     NUMBER        ,                         
IN_FUND_PAY_PAY       NUMBER        ,                         
PARTIAL_IN_FUND_PAY   NUMBER        ,                         
TRANS_FLAG            VARCHAR2(10)  
)
partition by RANGE (CHARGE_BILLID)
(
  partition CHARGE_ITEM_P2001 VALUES LESS THAN  ('2002000000') tablespace CHARGE_ITEM_P,
  partition CHARGE_ITEM_P2002 VALUES LESS THAN  ('2003000000') tablespace CHARGE_ITEM_P,
  partition CHARGE_ITEM_P2003 VALUES LESS THAN  ('2004000000') tablespace CHARGE_ITEM_P,
  partition CHARGE_ITEM_P2004 VALUES LESS THAN  ('2005000000') tablespace CHARGE_ITEM_P,
  partition CHARGE_ITEM_P2005 VALUES LESS THAN  ('2006000000') tablespace CHARGE_ITEM_P,
  partition CHARGE_ITEM_P2006 VALUES LESS THAN  ('2007000000') tablespace CHARGE_ITEM_P,
  partition CHARGE_ITEM_P2007 VALUES LESS THAN  ('2008000000') tablespace CHARGE_ITEM_P,
  partition CHARGE_ITEM_P2008 VALUES LESS THAN  ('2009000000') tablespace CHARGE_ITEM_P,
  partition CHARGE_ITEM_P2009 VALUES LESS THAN  ('2010000000') tablespace CHARGE_ITEM_P,
  partition CHARGE_ITEM_P2010 VALUES LESS THAN  ('2011000000') tablespace CHARGE_ITEM_P,
  partition CHARGE_ITEM_P2011 VALUES LESS THAN  ('2012000000') tablespace CHARGE_ITEM_P,
  partition CHARGE_ITEM_P2012 VALUES LESS THAN  ('2013000000') tablespace CHARGE_ITEM_P,
  partition CHARGE_ITEM_P2013 VALUES LESS THAN  ('2014000000') tablespace CHARGE_ITEM_P,
  partition CHARGE_ITEM_P2014 VALUES LESS THAN  ('2015000000') tablespace CHARGE_ITEM_P,
  partition CHARGE_ITEM_P2015 VALUES LESS THAN  ('2016000000') tablespace CHARGE_ITEM_P,
  partition CHARGE_ITEM_P2016 VALUES LESS THAN  ('2017000000') tablespace CHARGE_ITEM_P,
  partition CHARGE_ITEM_P2017 VALUES LESS THAN  ('2018000000') tablespace CHARGE_ITEM_P,
  partition CHARGE_ITEM_P2018 VALUES LESS THAN  ('2019000000') tablespace CHARGE_ITEM_P,
  partition CHARGE_ITEM_P2019 VALUES LESS THAN  ('2020000000') tablespace CHARGE_ITEM_P,
  partition CHARGE_ITEM_P2020 VALUES LESS THAN  (MAXVALUE) tablespace CHARGE_ITEM_P
)
;
-- Create/Recreate indexes 
create index I_CHARGE_ITEM_A01$BILLID on CHARGE_ITEM_A01_ (CHARGE_BILLID)
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
create index I_CHARGE_ITEM_A01$ORDER on CHARGE_ITEM_A01_ (ORDER_LISTID, ACCOUNT_SEQ)
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
create index I_CHARGE_ITEM_A01$RESIDENTID on CHARGE_ITEM_A01_ (RESIDENTID)
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
create index I_CHARGE_ITEM_A01$UPDATE_DATE on CHARGE_ITEM_A01_ (UPDATE_DATE)
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
create unique index I_PK_CHARGE_ITEM_A01$ID on CHARGE_ITEM_A01_ (ID)
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
-- Grant/Revoke object privileges 

grant select on CHARGE_ITEM_A01_ to HSHIS_USER;
grant select on CHARGE_ITEM_A01_ to HUMAN;

