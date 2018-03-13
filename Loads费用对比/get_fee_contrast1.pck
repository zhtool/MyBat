create or replace package get_fee_contrast is

  -- Author  : ZHPC
  -- Created : 2017-01-18 13:22:55
  -- Purpose : 
  function get_�շ�Ա�շѽ��(in_date1 in varchar2
                             ,in_date2 in varchar2) return varchar2;
  function get_�շ�Ա�շѽ��1(in_date1 in date
                              ,in_date2 in date) return varchar2;
  function get_401���(in_date1 in varchar2
                      ,in_date2 in varchar2) return varchar2;
  function get_401���1(in_date1 in date
                       ,in_date2 in date) return varchar2 ;
end get_fee_contrast;
/
create or replace package body get_fee_contrast is
  ------------------------------------------------------------------------
  function get_�շ�Ա�շѽ��(in_date1 in varchar2
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
  end get_�շ�Ա�շѽ��;
  ------------------------------------------------------------------------
  function get_�շ�Ա�շѽ��1(in_date1 in date
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
  end get_�շ�Ա�շѽ��1;
  ------------------------------------------------------------------------
  function get_401���(in_date1 in varchar2
                      ,in_date2 in varchar2) return varchar2 is
    v_sum varchar2(100);
  begin
    select �ϼƽ��
      into v_sum
      from (select substrb(hospital.get_system_option('ҽԺ����'), 1, 40) title,
                   ltrim(to_char(nvl(r.�ϼ�, 0) - nvl(w.�ϼ�, 0),
                                 '9,999,999,990.00')) �ϼƽ��
              from (select id, sum(nvl(�ϼ�, 0)) �ϼ�
                      from (select 1 id, sum(nvl(a.fee, 0)) �ϼ�
                              from hospital.charge_bill a
                             where a.fee_date between
                                   to_date(in_date1, 'YYYY/MM/DD HH24:MI:SS') and
                                   to_date(in_date2, 'YYYY/MM/DD HH24:MI:SS')
                               and a.attribute not in ('ACCOUNT')
                               and a.attribute = 'ASSURANCE'
                            union all
                            select 1 id, sum(nvl(a.fee, 0)) �ϼ�
                              from hospital.charge_bill_a01 a
                             where a.fee_date between
                                   to_date(in_date1, 'YYYY/MM/DD HH24:MI:SS') and
                                   to_date(in_date2, 'YYYY/MM/DD HH24:MI:SS')
                               and a.attribute not in ('ACCOUNT')
                               and a.attribute = 'ASSURANCE')
                     group by id) r,
                   (select id, sum(nvl(�ϼ�, 0)) �ϼ�
                      from (select 1 id, sum(nvl(a.fee, 0)) �ϼ�
                              from hospital.charge_bill a
                             where a.withdraw_date between
                                   to_date(in_date1, 'YYYY/MM/DD HH24:MI:SS') and
                                   to_date(in_date2, 'YYYY/MM/DD HH24:MI:SS')
                               and a.attribute not in ('ACCOUNT')
                               and a.attribute = 'ASSURANCE'
                            union all
                            select 1 id, sum(nvl(a.fee, 0)) �ϼ�
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
  end get_401���;
  ------------------------------------------------------------------------
  function get_401���1(in_date1 in date
                       ,in_date2 in date) return varchar2 is
    v_sum varchar2(100);
  begin
    select �ϼƽ��
      into v_sum
      from (select substrb(hospital.get_system_option('ҽԺ����'), 1, 40) title,
                   ltrim(to_char(nvl(r.�ϼ�, 0) - nvl(w.�ϼ�, 0),
                                 '9,999,999,990.00')) �ϼƽ��
              from (select id, sum(nvl(�ϼ�, 0)) �ϼ�
                      from (select 1 id, sum(nvl(a.fee, 0)) �ϼ�
                              from hospital.charge_bill a
                             where a.fee_date between in_date1 and in_date2
                               and a.attribute not in ('ACCOUNT')
                               and a.attribute = 'ASSURANCE'
                            union all
                            select 1 id, sum(nvl(a.fee, 0)) �ϼ�
                              from hospital.charge_bill_a01 a
                             where a.fee_date between in_date1 and in_date2
                               and a.attribute not in ('ACCOUNT')
                               and a.attribute = 'ASSURANCE')
                     group by id) r,
                   (select id, sum(nvl(�ϼ�, 0)) �ϼ�
                      from (select 1 id, sum(nvl(a.fee, 0)) �ϼ�
                              from hospital.charge_bill a
                             where a.withdraw_date between in_date1 and
                                   in_date2
                               and a.attribute not in ('ACCOUNT')
                               and a.attribute = 'ASSURANCE'
                            union all
                            select 1 id, sum(nvl(a.fee, 0)) �ϼ�
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
  end get_401���1;
  ------------------------------------------------------------------------

begin
  null;
end get_fee_contrast;
/
