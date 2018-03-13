-- Create table
create table PRESCRIPTION_DETAIL_A01_
(
  PRESCRIPTIONID       VARCHAR2(10) not null,
  SEQUENCE             NUMBER not null,
  ATTRIBUTE            VARCHAR2(10),
  MATERIALID           VARCHAR2(10),
  PACKAGEID            VARCHAR2(10),
  PURCHASEID           VARCHAR2(10),
  DEPTID               VARCHAR2(10),
  METHOD               VARCHAR2(60),
  SUNDRY_FEEID         VARCHAR2(10),
  FEE_TYPE             VARCHAR2(10),
  PRICE                NUMBER,
  AMOUNT               NUMBER,
  OPERATOR             VARCHAR2(6),
  UPDATE_DATE          DATE,
  NBMAM_LIST_ITEM_TYPE VARCHAR2(10),
  RATIO                NUMBER,
  REMARK               VARCHAR2(30),
  DISCOUNT             NUMBER default 0,
  PRE_TEMPLETID        VARCHAR2(10),
  GROUPSEQ             NUMBER,
  COMBO_AMOUNT         NUMBER  ,
  LZYB_TRANS_FLAG      VARCHAR2(10),
  INPUT_SEQ            NUMBER ,                     
  DROP_SPEED           NUMBER ,                    
  USE_DAYS             NUMBER ,                    
  MEDICAMENT           NUMBER ,                  
  USE_METHOD           VARCHAR2(30) ,                  
  FREQUENCE            NUMBER ,                  
  ORIGINAL_PRICE       NUMBER ,                 
  DROP_SPEED_UNIT      VARCHAR2(30),                
  PE_DISCOUNT_TYPE     NUMBER default 0
)
partition by RANGE (PRESCRIPTIONID)
(
  partition  "PRESCRIPTION_DETAIL_P2001"  values less than  ('2002000000')  tablespace PRESCRIPTION_DETAIL_P,
  partition  "PRESCRIPTION_DETAIL_P2002"  values less than  ('2003000000')  tablespace PRESCRIPTION_DETAIL_P,
  partition  "PRESCRIPTION_DETAIL_P2003"  values less than  ('2004000000')  tablespace PRESCRIPTION_DETAIL_P,
  partition  "PRESCRIPTION_DETAIL_P2004"  values less than  ('2005000000')  tablespace PRESCRIPTION_DETAIL_P,
  partition  "PRESCRIPTION_DETAIL_P2005"  values less than  ('2006000000')  tablespace PRESCRIPTION_DETAIL_P,
  partition  "PRESCRIPTION_DETAIL_P2006"  values less than  ('2007000000')  tablespace PRESCRIPTION_DETAIL_P,
  partition  "PRESCRIPTION_DETAIL_P2007"  values less than  ('2008000000')  tablespace PRESCRIPTION_DETAIL_P,
  partition  "PRESCRIPTION_DETAIL_P2008"  values less than  ('2009000000')  tablespace PRESCRIPTION_DETAIL_P,
  partition  "PRESCRIPTION_DETAIL_P2009"  values less than  ('2010000000')  tablespace PRESCRIPTION_DETAIL_P,
  partition  "PRESCRIPTION_DETAIL_P2010"  values less than  ('2011000000')  tablespace PRESCRIPTION_DETAIL_P,
  partition  "PRESCRIPTION_DETAIL_P2011"  values less than  ('2012000000')  tablespace PRESCRIPTION_DETAIL_P,
  partition  "PRESCRIPTION_DETAIL_P2012"  values less than  ('2013000000')  tablespace PRESCRIPTION_DETAIL_P,
  partition  "PRESCRIPTION_DETAIL_P2013"  values less than  ('2014000000')  tablespace PRESCRIPTION_DETAIL_P,
  partition  "PRESCRIPTION_DETAIL_P2014"  values less than  ('2015000000')  tablespace PRESCRIPTION_DETAIL_P,
  partition  "PRESCRIPTION_DETAIL_P2015"  values less than  ('2016000000')  tablespace PRESCRIPTION_DETAIL_P,
  partition  "PRESCRIPTION_DETAIL_P2016"  values less than  ('2017000000')  tablespace PRESCRIPTION_DETAIL_P,
  partition  "PRESCRIPTION_DETAIL_P2017"  values less than  ('2018000000')  tablespace PRESCRIPTION_DETAIL_P,
  partition  "PRESCRIPTION_DETAIL_P2018"  values less than  ('2019000000')  tablespace PRESCRIPTION_DETAIL_P,
  partition  "PRESCRIPTION_DETAIL_P2019"  values less than  ('2020000000')  tablespace PRESCRIPTION_DETAIL_P,
  partition  "PRESCRIPTION_DETAIL_P2020"  values less than  (MAXVALUE)  tablespace PRESCRIPTION_DETAIL_P
)
;
-- Create/Recreate indexes 
create unique index I_PK_PRE_DETAIL_A01 on PRESCRIPTION_DETAIL_A01_ (PRESCRIPTIONID, SEQUENCE)
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

grant select on PRESCRIPTION_DETAIL_A01_ to HSHIS_USER;
grant select on PRESCRIPTION_DETAIL_A01_ to HUMAN;

