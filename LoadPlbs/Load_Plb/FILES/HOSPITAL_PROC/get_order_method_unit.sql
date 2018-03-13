  --rem
  --rem   tiger  2007/01/17  - 支持大包装
  --rem

create or replace function hospital.get_order_method_unit(in_packageid in varchar2
                                                      ,in_method    in varchar2)
  return varchar is
  t_1           varchar2(255);
  t_2           varchar2(255);
  t_3           varchar2(255);
  t_amount      number;
  t_method      varchar2(255);
  first_space   number;
  t_timesperday number;
  r_1           varchar2(255);
  t_str         varchar2(255);
  i             number;
  v_po_flag     varchar2(4);
  v_method_unit  varchar2(20);
begin
  --verify_package(in_packageid);
  --verify_not_null(in_method, '用法');
  t_method    := upper(ltrim(rtrim(in_method)));
  first_space := instrb(t_method, ' ', 1, 1);
  t_1         := substrb(t_method, 1, first_space - 1);
  t_method    := ltrim(replace(t_method, t_1, ' '));
  first_space := instrb(t_method, ' ', 1, 1);
  t_2         := substrb(t_method, 1, first_space - 1);
  first_space := instrb(t_method, ' ', 1, 1);
  t_3         := trim(substrb(t_method, first_space + 1));
  if t_1 is null
     or t_2 is null
     or t_3 is null
  then
    return null;
  end if;
  begin
    select 2
      into t_timesperday
      from field_dict
     where table_name = 'ORDER_LIST'
       and field_name = 'USE_METHOD'
       and field_value = t_2;
  exception
    when no_data_found then
      begin
        select field_value
          into t_2
          from field_dict
         where table_name = 'ORDER_LIST'
           and field_name = 'USE_METHOD'
           and upper(remark) = upper(t_2);
      exception
        when no_data_found then
          raise_application_error(-20001,
                                  '使用方法(' || lower(t_2) ||
                                  ')不能识别.;');
      end;
  end;
  begin
    select 2
      into i
      from field_dict
     where table_name = 'ORDER_LIST'
       and field_name = 'FREQUENCE'
       and field_value = t_3;
  exception
    when no_data_found then
      raise_application_error(-20001,
                              '执行频率(' || lower(t_3) || ')不能识别.;');
  end;
  begin
    select to_number(remark)
      into t_timesperday
      from field_dict
     where table_name = 'ORDER_LIST'
       and field_name = 'FREQUENCE'
       and field_value = t_3;
  exception
    when others then
      t_timesperday := 1;
  end;
  select content_unit || name
    into t_str
    from all_package
   where id = in_packageid;
  r_1 :=  replace(translate(t_1,
                    '0123456789.',
                   ' '),' ','');
  -- raise_application_error(-20001,t_2);
  v_method_unit := lower(r_1);
  return v_method_unit;
end;
/
