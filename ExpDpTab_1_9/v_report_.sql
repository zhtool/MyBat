create or replace view hscenter.v_report_ as
select *
  from hscenter.report_
 where id in (select p.id
                from hscenter.report_catalog_temps t, hscenter.report_ p
               where t.id not in
                     ('navBarGroup7', 'navBarItem276', 'rc20160908000035')
                 and p.report_catalog_id = t.id
                 and p.hospid = '*'
                 and p.owner = 'HSHIS')
   and hospid = '*'
   and owner = 'HSHIS'
/
 --select * from hscenter.report_ where (id,hospid,owner,version)in(select id,hospid,owner,version from hscenter.v_report_)
