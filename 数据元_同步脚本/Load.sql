SET LINES 100
SET PAGES 0
SET ECHO off
conn hsemr1/hsemr1;
spool .\load_log.log

prompt AUTHOR:ZH 2017/02/23
prompt 
select name  h   from hospital.hosp;
select '------START:' || to_char(sysdate, 'yyyy/mm/dd hh24:mi:ss') ||'------' d from dual;
show user;

prompt <---ins_CODE_VALUE---> 
@ins_CODE_VALUE.sql;

prompt <---ins_CODE_VALUE_details---> 
@ins_CODE_VALUE_details.sql;

prompt <---ins_CODE_VALUE_VERSIONS---> 
@ins_CODE_VALUE_VERSIONS.sql;

prompt <---ins_data_element---> 
@ins_data_element.sql;


prompt <---ins_data_group---> 
@ins_data_group.sql;

prompt <---ins_data_group_vs_data_element---> 
@ins_data_group_vs_data_element.sql;

prompt <---ins_data_set---> 
@ins_data_set.sql;

prompt <---ins_data_set_versions---> 
@ins_data_set_versions.sql;

prompt <---ins_data_set_vs_dg_or_de---> 
@ins_data_set_vs_dg_or_de.sql;

select '------END:' || to_char(sysdate, 'yyyy/mm/dd hh24:mi:ss') ||'------' d from dual;
spool off
exit
