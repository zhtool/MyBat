create table HSCENTER.REPORT_CATALOG_TEMPS
(
  ID          VARCHAR2(200),
  PARENTID    VARCHAR2(200),
  OWNER       VARCHAR2(10),
  NAME        VARCHAR2(50),
  TYPE        VARCHAR2(20),
  SEQ         INTEGER,
  OPERATOR    VARCHAR2(10),
  UPDATE_DATE DATE
)
tablespace HSCENTER;
/
delete from HSCENTER.REPORT_CATALOG_TEMPS;

insert into HSCENTER.REPORT_CATALOG_TEMPS (ID, PARENTID, OWNER, NAME, TYPE, SEQ, OPERATOR, UPDATE_DATE)
values ('navBarGroup7', '0', 'HSHIS', '统计分析', 'SYSTEM', 296, '101208', to_date('19-01-2017 11:15:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into HSCENTER.REPORT_CATALOG_TEMPS (ID, PARENTID, OWNER, NAME, TYPE, SEQ, OPERATOR, UPDATE_DATE)
values ('navBarItem276', 'navBarGroup7', 'HSHIS', '查询统计', 'SYSTEM', 297, '101208', to_date('19-01-2017 11:15:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into HSCENTER.REPORT_CATALOG_TEMPS (ID, PARENTID, OWNER, NAME, TYPE, SEQ, OPERATOR, UPDATE_DATE)
values ('rc20160908000029', 'navBarItem276', 'HSHIS', '库存类报表-[1]', 'CUSTOM', 1, '001001', to_date('08-09-2016 10:29:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into HSCENTER.REPORT_CATALOG_TEMPS (ID, PARENTID, OWNER, NAME, TYPE, SEQ, OPERATOR, UPDATE_DATE)
values ('rc20160908000030', 'navBarItem276', 'HSHIS', '库存类报表-[2]', 'CUSTOM', 2, '001001', to_date('08-09-2016 10:29:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into HSCENTER.REPORT_CATALOG_TEMPS (ID, PARENTID, OWNER, NAME, TYPE, SEQ, OPERATOR, UPDATE_DATE)
values ('rc20160908000031', 'navBarItem276', 'HSHIS', '杂费分类统计报表-[3]', 'CUSTOM', 3, '001001', to_date('08-09-2016 10:30:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into HSCENTER.REPORT_CATALOG_TEMPS (ID, PARENTID, OWNER, NAME, TYPE, SEQ, OPERATOR, UPDATE_DATE)
values ('rc20160908000032', 'navBarItem276', 'HSHIS', '门诊业务统计-[4]', 'CUSTOM', 4, '001001', to_date('21-09-2016 21:00:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into HSCENTER.REPORT_CATALOG_TEMPS (ID, PARENTID, OWNER, NAME, TYPE, SEQ, OPERATOR, UPDATE_DATE)
values ('rc20160908000033', 'navBarItem276', 'HSHIS', '住院记账报表-[5]', 'CUSTOM', 5, '001001', to_date('08-09-2016 10:30:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into HSCENTER.REPORT_CATALOG_TEMPS (ID, PARENTID, OWNER, NAME, TYPE, SEQ, OPERATOR, UPDATE_DATE)
values ('rc20160908000034', 'navBarItem276', 'HSHIS', '出院结账报表-[6]', 'CUSTOM', 6, '001001', to_date('08-09-2016 10:31:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into HSCENTER.REPORT_CATALOG_TEMPS (ID, PARENTID, OWNER, NAME, TYPE, SEQ, OPERATOR, UPDATE_DATE)
values ('rc20160908000035', 'navBarItem276', 'HSHIS', '住院结算报表-[7]', 'CUSTOM', 7, '001001', to_date('08-09-2016 10:31:31', 'dd-mm-yyyy hh24:mi:ss'));
insert into HSCENTER.REPORT_CATALOG_TEMPS (ID, PARENTID, OWNER, NAME, TYPE, SEQ, OPERATOR, UPDATE_DATE)
values ('rc20160908000036', 'navBarItem276', 'HSHIS', '出院结账报表-[8]', 'CUSTOM', 8, '001001', to_date('08-09-2016 10:31:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into HSCENTER.REPORT_CATALOG_TEMPS (ID, PARENTID, OWNER, NAME, TYPE, SEQ, OPERATOR, UPDATE_DATE)
values ('rc20160908000037', 'navBarItem276', 'HSHIS', '库存类报表-[9]', 'CUSTOM', 9, '001001', to_date('08-09-2016 10:32:05', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 11 records loaded
