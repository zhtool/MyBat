SET LINES 100
SET PAGES 0
SET ECHO off
conn hospital/source;
spool log\log.log
DEFINE v_date1='2016-10-30 00:00:00'
DEFINE v_date2='2016-12-30 00:00:00'

prompt AUTHOR:ZH 2016/11/01
prompt 
select id || ':' || name s from hospital.hosp_;
select '------START:' || to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss') ||'------' d from dual;
show user;


prompt <DateTime> 
select to_char(sysdate, 'yyyy/mm/dd hh24:mi:ss') d,'&v_date1'd1,'&v_date2'd2 from dual;


select '------END:' || to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss') ||'------' d from dual;
spool off
exit
