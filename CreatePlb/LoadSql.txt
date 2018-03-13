SET LINES 50
SET PAGES 0
SET ECHO off

DEFINE FILES_PATH=&1
DEFINE BAT_PATH=&2
DEFINE LOAD_LOG=&3

rem SPOOL .\log\LoadSql_log.log
SPOOL '&LOAD_LOG'

prompt AUTHOR:ZH 2016/02/27
prompt 
select '------START:' || to_char(sysdate, 'yyyy/mm/dd hh24:mi:ss') ||'------' d from dual;

create or replace directory FILENAME as '&FILES_PATH';
rem create or replace directory PLB_PATH as '&PLB_PATH';
grant read ,write on directory  FILENAME  to HSFILE;
rem grant read ,write on directory  PLB_PATH  to HSFILE;

PROMPT
PROMPT <清空记录>
PROMPT
delete from hsfile.file_index_;
commit;

PROMPT
PROMPT <生成新记录>
PROMPT

declare
begin
  for c in (select owner, directory, owner || '_' || DIRECTORY || '.txt' txt
              from hsfile.File_PATH_
             ORDER BY OWNER, DIRECTORY) loop  
    hsfile.Pck_File.insert_from_txt(c.owner, c.directory, c.txt);
  end loop;
end;
/

prompt
prompt <删除无效记录>
prompt

delete from hsfile.file_index_
 where instr(name, '.') = 0
    or name like '%.~%'
    or name = 'a.txt';
commit;

prompt
prompt <最终记录>
prompt
select substr(owner,1,20)||':  '|| count(*) c from hsfile.file_index_ group by owner;
spool off

SET LINES 300
spool .\log\WRAP_HOSPITAL.BAT
select 'wrap iname=' || b.path || '\' || name || ' oname=' ||
       c.directory_path || '\PLBS\' || A.owner || '_PLB\' ||
       substr(name, 1, instr(name, '.') - 1) || '.plb' s1
  from hsfile.file_index_ a, hsfile.File_Path_ b, all_directories c
 where a.owner = 'HOSPITAL'
   and b.owner = a.owner
   and b.directory = a.directory
   and c.directory_name = 'FILENAME'
 order by a.owner, a.directory, a.name;
spool off

spool .\log\WRAP_HSCENTER.BAT
select 'wrap iname=' || b.path || '\' || name || ' oname=' ||
       c.directory_path || '\PLBS\' || A.owner || '_PLB\' ||
       substr(name, 1, instr(name, '.') - 1) || '.plb' s1
  from hsfile.file_index_ a, hsfile.File_Path_ b, all_directories c
 where a.owner = 'HSCENTER'
   and b.owner = a.owner
   and b.directory = a.directory
   and c.directory_name = 'FILENAME'
 order by a.owner, a.directory, a.name;
spool off

spool .\log\WRAP_HSEMR.BAT
select 'wrap iname=' || b.path || '\' || name || ' oname=' ||
       c.directory_path || '\PLBS\' || A.owner || '_PLB\' ||
       substr(name, 1, instr(name, '.') - 1) || '.plb' s1
  from hsfile.file_index_ a, hsfile.File_Path_ b, all_directories c
 where a.owner = 'HSEMR'
   and b.owner = a.owner
   and b.directory = a.directory
   and c.directory_name = 'FILENAME'
 order by a.owner, a.directory, a.name;
spool off

spool .\log\WRAP_HSOIS.BAT
select 'wrap iname=' || b.path || '\' || name || ' oname=' ||
       c.directory_path || '\PLBS\' || A.owner || '_PLB\' ||
       substr(name, 1, instr(name, '.') - 1) || '.plb' s1
  from hsfile.file_index_ a, hsfile.File_Path_ b, all_directories c
 where a.owner = 'HSOIS'
   and b.owner = a.owner
   and b.directory = a.directory
   and c.directory_name = 'FILENAME'
 order by a.owner, a.directory, a.name;
spool off

SET LINES 100
spool '&FILES_PATH\PLBS\LOAD_HOSPITAL.TXT'
select 'prompt ==' || substr(a.name, 1, instr(a.name, '.') - 1) || chr(10) ||
       '@.\' || A.owner || '_PLB\' ||
       substr(a.name, 1, instr(a.name, '.') - 1) || '.plb' s2
  from hsfile.file_index_ a, hsfile.File_Path_ b
 where a.owner = 'HOSPITAL'
   and b.owner = a.owner
   and b.directory = a.directory
 order by a.owner, a.directory, a.name;
spool off

spool '&FILES_PATH\PLBS\LOAD_HSCENTER.TXT'
select 'prompt ==' || substr(a.name, 1, instr(a.name, '.') - 1) || chr(10) ||
       '@.\' || A.owner || '_PLB\' ||
       substr(a.name, 1, instr(a.name, '.') - 1) || '.plb' s2
  from hsfile.file_index_ a, hsfile.File_Path_ b
 where a.owner = 'HSCENTER'
   and b.owner = a.owner
   and b.directory = a.directory
 order by a.owner, a.directory, a.name;
spool off

spool '&FILES_PATH\PLBS\LOAD_HSEMR.TXT'
select 'prompt ==' || substr(a.name, 1, instr(a.name, '.') - 1) || chr(10) ||
       '@.\' || A.owner || '_PLB\' ||
       substr(a.name, 1, instr(a.name, '.') - 1) || '.plb' s2
  from hsfile.file_index_ a, hsfile.File_Path_ b
 where a.owner = 'HSEMR'
   and b.owner = a.owner
   and b.directory = a.directory
 order by a.owner, a.directory, a.name;
spool off

spool '&FILES_PATH\PLBS\LOAD_HSOIS.TXT'
select 'prompt ==' || substr(a.name, 1, instr(a.name, '.') - 1) || chr(10) ||
       '@.\' || A.owner || '_PLB\' ||
       substr(a.name, 1, instr(a.name, '.') - 1) || '.plb' s2
  from hsfile.file_index_ a, hsfile.File_Path_ b
 where a.owner = 'HSOIS'
   and b.owner = a.owner
   and b.directory = a.directory
 order by a.owner, a.directory, a.name;
spool off

prompt 
prompt <操作完成,按回车键退出>
prompt 

rem select &in_s from dual;

select '------End:' || to_char(sysdate, 'yyyy/mm/dd hh24:mi:ss') ||'------' d from dual;
exit

