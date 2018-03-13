create or replace package get_fee_contrast is

  -- Author  : ZHPC
  -- Created : 2017-01-18 13:22:55
  -- Purpose : 
  function get_收费员收费金额(in_date1 in varchar2
                             ,in_date2 in varchar2) return varchar2;
  function get_收费员收费金额1(in_date1 in date
                              ,in_date2 in date) return varchar2;
  function get_401金额(in_date1 in varchar2
                      ,in_date2 in varchar2) return varchar2;
  function get_401金额1(in_date1 in date
                       ,in_date2 in date) return varchar2 ;
end get_fee_contrast;
/
create or replace package body get_fee_contrast is
  ------------------------------------------------------------------------
  function get_收费员收费金额(in_date1 in varchar2
                             ,in_date2 in varchar2) return varchar2 is
    v_sum varchar2(100);
  begin
    select ltrim(to_char(sum(fee), '9,999,999,990.00'))
      into v_sum
      from hospital.charge_statistics_ a
     where a.fee_date >= to_date(in_date1, 'yyyy/mm/dd hh24:mi:ss')
       and a.fee_date < to_date(in_date2, 'yyyy/mm/dd hh24:mi:ss')
       and a.attribute = 'ASSURANCE';
    return v_sum;
  exception
    when no_data_found then
      return 0;
  end get_收费员收费金额;
  ------------------------------------------------------------------------
  function get_收费员收费金额1(in_date1 in date
                              ,in_date2 in date) return varchar2 is
    v_sum varchar2(100);
  begin
    select ltrim(to_char(sum(fee), '9,999,999,990.00'))
      into v_sum
      from hospital.charge_statistics_ a
     where a.fee_date >= in_date1
       and a.fee_date < in_date2
       and a.attribute = 'ASSURANCE';
    return v_sum;
  exception
    when no_data_found then
      return 0;
  end get_收费员收费金额1;
  ------------------------------------------------------------------------
  function get_401金额(in_date1 in varchar2
                      ,in_date2 in varchar2) return varchar2 is
    v_sum varchar2(100);
  begin
    select 合计金额
      into v_sum
      from (select substrb(hospital.get_system_option('医院名称'), 1, 40) title,
                   ltrim(to_char(nvl(r.合计, 0) - nvl(w.合计, 0),
                                 '9,999,999,990.00')) 合计金额
              from (select id, sum(nvl(合计, 0)) 合计
                      from (select 1 id, sum(nvl(a.fee, 0)) 合计
                              from hospital.charge_bill a
                             where a.fee_date between
                                   to_date(in_date1, 'YYYY/MM/DD HH24:MI:SS') and
                                   to_date(in_date2, 'YYYY/MM/DD HH24:MI:SS')
                               and a.attribute not in ('ACCOUNT')
                               and a.attribute = 'ASSURANCE'
                            union all
                            select 1 id, sum(nvl(a.fee, 0)) 合计
                              from hospital.charge_bill_a01 a
                             where a.fee_date between
                                   to_date(in_date1, 'YYYY/MM/DD HH24:MI:SS') and
                                   to_date(in_date2, 'YYYY/MM/DD HH24:MI:SS')
                               and a.attribute not in ('ACCOUNT')
                               and a.attribute = 'ASSURANCE')
                     group by id) r,
                   (select id, sum(nvl(合计, 0)) 合计
                      from (select 1 id, sum(nvl(a.fee, 0)) 合计
                              from hospital.charge_bill a
                             where a.withdraw_date between
                                   to_date(in_date1, 'YYYY/MM/DD HH24:MI:SS') and
                                   to_date(in_date2, 'YYYY/MM/DD HH24:MI:SS')
                               and a.attribute not in ('ACCOUNT')
                               and a.attribute = 'ASSURANCE'
                            union all
                            select 1 id, sum(nvl(a.fee, 0)) 合计
                              from hospital.charge_bill_a01 a
                             where a.withdraw_date between
                                   to_date(in_date1, 'YYYY/MM/DD HH24:MI:SS') and
                                   to_date(in_date2, 'YYYY/MM/DD HH24:MI:SS')
                               and a.attribute not in ('ACCOUNT')
                               and a.attribute = 'ASSURANCE')
                     group by id) w
             where r.id = w.id(+));
    return v_sum;
  exception
    when no_data_found then
      return 0;
  end get_401金额;
  ------------------------------------------------------------------------
  function get_401金额1(in_date1 in date
                       ,in_date2 in date) return varchar2 is
    v_sum varchar2(100);
  begin
    select 合计金额
      into v_sum
      from (select substrb(hospital.get_system_option('医院名称'), 1, 40) title,
                   ltrim(to_char(nvl(r.合计, 0) - nvl(w.合计, 0),
                                 '9,999,999,990.00')) 合计金额
              from (select id, sum(nvl(合计, 0)) 合计
                      from (select 1 id, sum(nvl(a.fee, 0)) 合计
                              from hospital.charge_bill a
                             where a.fee_date between in_date1 and in_date2
                               and a.attribute not in ('ACCOUNT')
                               and a.attribute = 'ASSURANCE'
                            union all
                            select 1 id, sum(nvl(a.fee, 0)) 合计
                              from hospital.charge_bill_a01 a
                             where a.fee_date between in_date1 and in_date2
                               and a.attribute not in ('ACCOUNT')
                               and a.attribute = 'ASSURANCE')
                     group by id) r,
                   (select id, sum(nvl(合计, 0)) 合计
                      from (select 1 id, sum(nvl(a.fee, 0)) 合计
                              from hospital.charge_bill a
                             where a.withdraw_date between in_date1 and
                                   in_date2
                               and a.attribute not in ('ACCOUNT')
                               and a.attribute = 'ASSURANCE'
                            union all
                            select 1 id, sum(nvl(a.fee, 0)) 合计
                              from hospital.charge_bill_a01 a
                             where a.withdraw_date between in_date1 and
                                   in_date2
                               and a.attribute not in ('ACCOUNT')
                               and a.attribute = 'ASSURANCE')
                     group by id) w
             where r.id = w.id(+));
    return v_sum;
  exception
    when no_data_found then
      return 0;
  end get_401金额1;
  ------------------------------------------------------------------------

begin
  null;
end get_fee_contrast;
/
