-- Create table
create table PATIENT_
(
  ID                VARCHAR2(20) not null,
  NAME              VARCHAR2(40),
  PINYIN            VARCHAR2(20),
  ATTRIBUTE         VARCHAR2(20),
  GENDER            VARCHAR2(2),
  BIRTHDAY          DATE,
  PROFESSION        VARCHAR2(20),
  COUNTRY           VARCHAR2(20),
  IDENTIFICATION    VARCHAR2(20),
  MARRY_STATUS      VARCHAR2(2),
  BIRTH_PROVINCE    VARCHAR2(40),
  BIRTH_COUNTY      VARCHAR2(40),
  RACE              VARCHAR2(10),
  BLOOD_TYPE        VARCHAR2(2),
  FREE_NO           VARCHAR2(20),
  HOME_ADDRESS      VARCHAR2(200),
  HOME_TELE         VARCHAR2(20),
  HOME_ZIP          VARCHAR2(6),
  OFFICE_ADDRESS    VARCHAR2(200),
  OFFICE_TELE       VARCHAR2(20),
  OFFICE_ZIP        VARCHAR2(20),
  ASSO_NAME         VARCHAR2(10),
  ASSO_RELATION     VARCHAR2(10),
  ASSO_ADDRESS      VARCHAR2(200),
  ASSO_TELE         VARCHAR2(20),
  ASSO_ZIP          VARCHAR2(6),
  CLINIC_FEE_RATE   NUMBER,
  RESIDENT_FEE_TYPE VARCHAR2(2),
  RESIDENT_FEE_RATE NUMBER,
  REGISTER_DATE     VARCHAR2(10),
  OPERATOR          VARCHAR2(10),
  UPDATE_DATE       DATE,
  REMARK            VARCHAR2(20),
  HOME_ADMIN        VARCHAR2(200),
  HOME_AMDIN        VARCHAR2(200),
  ADDRESS1          VARCHAR2(200),
  ADDRESS2          VARCHAR2(200),
  ADDRESS3          VARCHAR2(200),
  EDUCATION         VARCHAR2(30),
  FERTILITY         VARCHAR2(50),
  RELIGION          VARCHAR2(40),
  REGIONID          VARCHAR2(40)
)
partition by RANGE (ID)
(
    partition  "PATIENT_P1"  values less than  ('0100000')  tablespace PATIENT_P,
    partition  "PATIENT_P2"  values less than  ('0200000')  tablespace PATIENT_P ,
    partition  "PATIENT_P3"  values less than  ('0300000')  tablespace PATIENT_P,
    partition  "PATIENT_P4"  values less than  ('0400000')  tablespace PATIENT_P,
    partition  "PATIENT_P5"  values less than  ('0500000')  tablespace PATIENT_P,
    partition  "PATIENT_P6"  values less than  ('0600000')  tablespace PATIENT_P,
    partition  "PATIENT_P7"  values less than  ('0700000')  tablespace PATIENT_P,
    partition  "PATIENT_P8"  values less than  ('0800000')  tablespace PATIENT_P,
    partition  "PATIENT_P9"  values less than  ('0900000')  tablespace PATIENT_P,
    partition  "PATIENT_PA"  values less than  (maxvalue)   tablespace PATIENT_P
)
;
-- Create/Recreate indexes 
create index I_PATIENT_1 on PATIENT_ (NAME)
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
create index I_PATIENT_2 on PATIENT_ (PINYIN)
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
create unique index I_PK_PATIENT on PATIENT_ (ID)
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

grant select on PATIENT_ to HSHIS_USER;
grant select on PATIENT_ to HUMAN;

