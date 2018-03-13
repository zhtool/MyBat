conn hospital/source@his

set pages 0
set lines 1000
set trimspool on

spool exp_tables.txt


select  tname || ',' 
  from tab
 where tabtype='TABLE'
   and ( tname not like '%A01_' and tname not like 'BIN%' )
/


spool off

EXIT