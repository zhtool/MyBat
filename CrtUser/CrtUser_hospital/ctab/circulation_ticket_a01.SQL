create table CIRCULATION_TICKET_A01_
(
  ID             VARCHAR2(10) not null,
  TYPE           VARCHAR2(10),
  ATTRIBUTE      VARCHAR2(10),
  SOURCEID       VARCHAR2(10),
  DESTINATIONID  VARCHAR2(10),
  INPUT_WORKERID VARCHAR2(6),
  INPUT_DATE     DATE,
  OUT_WORKERID   VARCHAR2(6),
  OUT_DATE       DATE,
  IN_WORKERID    VARCHAR2(6),
  IN_DATE        DATE,
  IO_TYPE        VARCHAR2(10),
  TRANS_STATE    VARCHAR2(20),
  REMARK         VARCHAR2(200),
  AUDIT_WORKERID VARCHAR2(10),
  AUDIT_DATE     DATE ,
  GROUPID        VARCHAR2(10)
) tablespace hshis   pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 4M
    minextents 1
    maxextents unlimited
  );


create index I_CIR_TICKET_A01$INPUT on CIRCULATION_TICKET_A01_ (INPUT_DATE)
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
create index I_CIR_TICKET_A01$IN_DATE on CIRCULATION_TICKET_A01_ (IN_DATE, IO_TYPE)
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
create index I_CIR_TICKET_A01$OUT_DATE on CIRCULATION_TICKET_A01_ (OUT_DATE)
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
create unique index I_PK_CIR_TICKET_A01$ID on CIRCULATION_TICKET_A01_ (ID)
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
grant select on CIRCULATION_TICKET_A01_ to HSHIS_USER;
