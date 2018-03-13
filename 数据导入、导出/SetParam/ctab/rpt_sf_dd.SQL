create table RPT_SF_DD_
(
  RPT_DATE       DATE,
  SUNDRY_FEEID   VARCHAR2(10),
  FEE_TYPE       VARCHAR2(10),
  PATIENT_DEPTID VARCHAR2(10),
  EXECUTE_DEPTID VARCHAR2(10),
  WRITE_WORKERID VARCHAR2(10),
  OUT_NUM        NUMBER,
  OUT_FEE        NUMBER,
  IN_NUM         NUMBER,
  IN_FEE         NUMBER,
  NUM            NUMBER,
  FEE            NUMBER
)
tablespace HSHIS
  pctfree 10
  initrans 3
  maxtrans 255
  storage
  (
    initial 10
    minextents 1
    maxextents unlimited
  );
-- Create/Recreate indexes 
create unique index I_PK_RPT_SF_DD on RPT_SF_DD_ (RPT_DATE, SUNDRY_FEEID, FEE_TYPE, PATIENT_DEPTID, EXECUTE_DEPTID, WRITE_WORKERID)
  tablespace HSHIS
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
grant select on RPT_SF_DD_ to EBL;
grant select on RPT_SF_DD_ to HSHIS_USER;
