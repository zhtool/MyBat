SET LINES 50
SET PAGES 0
SET ECHO off

DEFINE BAT_PATH1=&1
DEFINE LOAD_LOG1=&2
DEFINE dump_PATH1=&3

spool '&LOAD_LOG1'
prompt AUTHOR:ZH 2016/11/15
prompt 
select name  h   from hospital.hosp;
select '------START:' || to_char(sysdate, 'yyyy/mm/dd hh24:mi:ss') ||'------' d from dual;
show user;

prompt <deferred_segment_creation=false>
alter system set deferred_segment_creation=false; 
prompt <directory>
create or replace directory DPPATH1 as '&dump_PATH1';
prompt <sys.utl_file>
grant execute on sys.utl_file to system;

prompt ========================================
prompt <1、备份数据>
create table hscenter.report_20170220 as
select * from hscenter.report_;

create table hscenter.REPORT_FILE_20170220 as
select * from hscenter.REPORT_FILE_;

create table hscenter.REPORT_HISTORY_20170220 as
select * from hscenter.REPORT_HISTORY_;

create table hscenter.REPORT_CATALOG_20170220 as
select * from hscenter.REPORT_CATALOG_;

prompt <report_catalog_Temps>
@report_catalog_Temps.sql;

prompt <2、删除数据>
prompt <Delete hscenter.report_file>
delete from hscenter.report_file_ f
 where f.report_id in
       (select p.id
          from hscenter.report_catalog_temps t, hscenter.report_ p
         where t.id not in
               ('navBarGroup7', 'navBarItem276', 'rc20160908000035')
           and p.report_catalog_id = t.id
           and p.hospid = '*'
           and p.owner = 'HSHIS')
   and f.hospid = '*'
   and f.owner = 'HSHIS';

prompt <Delete report_history_>
delete  from hscenter.report_history_ h
 where h.id in
       (select h.id
          from hscenter.report_catalog_temps t, hscenter.report_history_ h
         where t.id not in
               ('navBarGroup7', 'navBarItem276', 'rc20160908000035')
           and h.report_catalog_id = t.id
           and h.hospid = '*'
           and h.owner = 'HSHIS')
   and h.hospid = '*'
   and h.owner = 'HSHIS';

prompt <Delete report_history_>
delete from hscenter.report h
 where h.id in
       (select h.id
          from hscenter.report_catalog_temps t, hscenter.report_ h
         where t.id not in
               ('navBarGroup7', 'navBarItem276', 'rc20160908000035')
           and h.report_catalog_id = t.id
           and h.hospid = '*'
           and h.owner = 'HSHIS')
   and h.hospid = '*'
   and h.owner = 'HSHIS';

prompt <3、导入数据>
@Ins_hscenter_REPORT_.sql;
@Ins_hscenter_REPORT_HISTORY_.sql;

prompt <4、清除备份数据>

commit;

prompt ========================================


select '------END:' || to_char(sysdate, 'yyyy/mm/dd hh24:mi:ss') ||'------' d from dual;
spool off
exit