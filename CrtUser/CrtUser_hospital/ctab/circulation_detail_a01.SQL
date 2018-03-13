-- Create table
create table CIRCULATION_DETAIL_A01_
(
  ID                     VARCHAR2(10) not null,
  CIRCULATION_TICKETID   VARCHAR2(10) not null,
  SEQUENCE               NUMBER,
  MATERIALID             VARCHAR2(10),
  PACKAGEID              VARCHAR2(10),
  PURCHASEID             VARCHAR2(10),
  AMOUNT                 NUMBER,
  COST                   NUMBER,
  PRICE                  NUMBER,
  ATTRIBUTE              VARCHAR2(10),
  REMAIN                 NUMBER,
  RESIDENTID             VARCHAR2(10),
  BEDID                  VARCHAR2(10),
  RECORD_NO              VARCHAR2(10),
  ORDER_LISTID           VARCHAR2(10),
  PATIENTID              VARCHAR2(10),
  OPERATOR               VARCHAR2(6),
  UPDATE_DATE            DATE,
  REMARK                 VARCHAR2(200),
  CHARGE_ITEMID          VARCHAR2(14),
  DISCOUNT               NUMBER default 0,
  ORDER_LIST_ACCOUNT_SEQ NUMBER default 1
)
partition by RANGE (CIRCULATION_TICKETID)
(
  partition CIRCULATION_DETAIL_P2001 VALUES LESS THAN  ('2002000000') tablespace CIRCULATION_DETAIL_P,
  partition CIRCULATION_DETAIL_P2002 VALUES LESS THAN  ('2003000000') tablespace CIRCULATION_DETAIL_P,
  partition CIRCULATION_DETAIL_P2003 VALUES LESS THAN  ('2004000000') tablespace CIRCULATION_DETAIL_P,
  partition CIRCULATION_DETAIL_P2004 VALUES LESS THAN  ('2005000000') tablespace CIRCULATION_DETAIL_P,
  partition CIRCULATION_DETAIL_P2005 VALUES LESS THAN  ('2006000000') tablespace CIRCULATION_DETAIL_P,
  partition CIRCULATION_DETAIL_P2006 VALUES LESS THAN  ('2007000000') tablespace CIRCULATION_DETAIL_P,
  partition CIRCULATION_DETAIL_P2007 VALUES LESS THAN  ('2008000000') tablespace CIRCULATION_DETAIL_P,
  partition CIRCULATION_DETAIL_P2008 VALUES LESS THAN  ('2009000000') tablespace CIRCULATION_DETAIL_P,
  partition CIRCULATION_DETAIL_P2009 VALUES LESS THAN  ('2010000000') tablespace CIRCULATION_DETAIL_P,
  partition CIRCULATION_DETAIL_P2010 VALUES LESS THAN  ('2011000000') tablespace CIRCULATION_DETAIL_P,
  partition CIRCULATION_DETAIL_P2011 VALUES LESS THAN  ('2012000000') tablespace CIRCULATION_DETAIL_P,
  partition CIRCULATION_DETAIL_P2012 VALUES LESS THAN  ('2013000000') tablespace CIRCULATION_DETAIL_P,
  partition CIRCULATION_DETAIL_P2013 VALUES LESS THAN  ('2014000000') tablespace CIRCULATION_DETAIL_P,
  partition CIRCULATION_DETAIL_P2014 VALUES LESS THAN  ('2015000000') tablespace CIRCULATION_DETAIL_P,
  partition CIRCULATION_DETAIL_P2015 VALUES LESS THAN  ('2016000000') tablespace CIRCULATION_DETAIL_P,
  partition CIRCULATION_DETAIL_P2016 VALUES LESS THAN  ('2017000000') tablespace CIRCULATION_DETAIL_P,
  partition CIRCULATION_DETAIL_P2017 VALUES LESS THAN  ('2018000000') tablespace CIRCULATION_DETAIL_P,
  partition CIRCULATION_DETAIL_P2018 VALUES LESS THAN  ('2019000000') tablespace CIRCULATION_DETAIL_P,
  partition CIRCULATION_DETAIL_P2019 VALUES LESS THAN  ('2020000000') tablespace CIRCULATION_DETAIL_P,
  partition CIRCULATION_DETAIL_P2020 VALUES LESS THAN  (MAXVALUE) tablespace CIRCULATION_DETAIL_P
)
;
-- Create/Recreate indexes 
create index I_CIRC_DETAIL_A01_1 on CIRCULATION_DETAIL_A01_ (MATERIALID, PACKAGEID, PURCHASEID)
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
create index I_CIR_DETAIL_A01_2 on CIRCULATION_DETAIL_A01_ (RESIDENTID)
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
create index I_CIR_DETAIL_A01_3 on CIRCULATION_DETAIL_A01_ (ORDER_LISTID)
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
create index I_CIR_DETAIL_A01_4 on CIRCULATION_DETAIL_A01_ (PATIENTID)
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
create unique index I_PK2_CIR_DETAIL_A01 on CIRCULATION_DETAIL_A01_ (CIRCULATION_TICKETID, SEQUENCE)
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
create unique index I_PK_CIR_DETAIL_A01$ID on CIRCULATION_DETAIL_A01_ (ID)
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
grant select on CIRCULATION_DETAIL_A01_ to HSHIS_USER;
grant select on CIRCULATION_DETAIL_A01_ to HUMAN;
