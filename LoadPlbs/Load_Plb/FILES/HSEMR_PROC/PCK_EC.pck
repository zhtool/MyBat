create or replace package pck_ec is
  --
  -- 电子病历用户自定义错误代码
  -- 2015-10-22
  ---------------------------------------------------------------- 
  -- 1 通用错误信息
  e_start                 constant integer := -20002;
  e_not_null              constant integer := e_start - 1;
  e_invalid_logical_value constant integer := e_not_null - 1; --无效的逻辑值
  e_invalid_number        constant integer := e_invalid_logical_value - 1;
  e_invalid_integer       constant integer := e_invalid_number - 1;
  e_invalid_date          constant integer := e_invalid_integer - 1;
  e_invalid_year          constant integer := e_invalid_date - 1;
  e_invalid_month         constant integer := e_invalid_year - 1;
  e_invalid_worker        constant integer := e_invalid_month - 1;
  e_invalid_dept          constant integer := e_invalid_worker - 1;
  e_invalid_length        constant integer := e_invalid_dept - 1;
  e_invalid_param         constant integer := e_invalid_length - 1;
  e_invalid_login_info    constant integer := e_invalid_param - 1;
  e_dup_operation         constant integer := e_invalid_login_info - 1;
  e_invalid_operation     constant integer := e_dup_operation - 1; --无效操作
  e_wait_and_try          constant integer := e_invalid_operation - 1;
  e_no_data_found         constant integer := e_wait_and_try - 1;
  e_repeat_record         constant integer := e_no_data_found - 1; --重复的记录
  e_non_own_record        constant integer := e_repeat_record - 1; --不是自己的记录
  e_has_been_used         constant integer := e_non_own_record - 1; --已被使用，不能删除
  e_too_many_rows         constant integer := e_has_been_used - 1; --返回的值太多
  ---------------------------------------------------------------- 
  --2 基础数据误信息定义
  --  规范，使用 e_bd_开始的定义
  e_bd_start                   constant integer := -20050;
  e_bd_invalid_data_element    constant integer := e_bd_start - 1;
  e_bd_invalid_code_value      constant integer := e_bd_invalid_data_element - 1;
  e_bd_invalid_data_group      constant integer := e_bd_invalid_code_value - 1;
  e_bd_pubblished              constant integer := e_bd_invalid_data_group - 1; --已发布不能操作
  e_bd_no_published_version    constant integer := e_bd_pubblished - 1;
  e_bd_has_unpublished_version constant integer := e_bd_no_published_version - 1; --有版本未发布,不能新增版本
  ---------------------------------------------------------------- 
  --3 疾病分组错误信息定义
  --  规范，使用 e_dg_开始的定义
  e_dg_start constant integer := -20100;
  ---------------------------------------------------------------- 
  --4 病案管理错误信息定义
  --  规范，使用 e_fm_开始的定义
  e_mf_start        constant integer := -20150;
  e_mf_error_status constant integer := e_mf_start - 1;
  e_mf_has_content  constant integer := e_mf_error_status - 1;
  ---------------------------------------------------------------- 
  --5 病历记录错误信息定义
  --  规范，使用 e_mr_开始的定义
  e_mr_start constant integer := -20200;
  ---------------------------------------------------------------- 
  --6 护理记录错误信息定义
  --  规范，使用 e_mr_开始的定义
  e_nr_start                  constant integer := -20250;
  e_nr_more_than_current_time constant integer := e_nr_start - 1; --输入时间大于当前时间
  e_nr_ago_in_date_time       constant integer := e_nr_more_than_current_time - 1;
  e_nr_more_common_time       constant integer := e_nr_ago_in_date_time - 1;
  ---------------------------------------------------------------- 
  --7 模板错误信息定义
  --  规范，使用 e_nr_开始的定义
  e_templet_start    constant integer := -20300;
  e_templet_editing  constant integer := e_templet_start - 1;
  e_templet_auditing constant integer := e_templet_editing - 1;
  e_templet_finished constant integer := e_templet_auditing - 1;
  ---------------------------------------------------------------- 
  --8 工作流记录错误信息定义
  --  规范，使用 e_nr_开始的定义
  e_wf_start         constant integer := -20350;
  e_wf_editing       constant integer := e_wf_start - 1;
  e_wf_using         constant integer := e_wf_editing - 1;
  e_wf_stoped        constant integer := e_wf_using - 1;
  e_wf_no_max_record constant integer := e_wf_stoped - 1;
  ---------------------------------------------------------------- 
  --9 参数验证记录错误信息定义
  --  规范，使用 e_nr_开始的定义
  e_verify_start constant integer := -20350;

  --通用异常处理函数
  ---------------------------------------------------------------- 
  -- 异常处理过程定义
  procedure ver_not_null(in_str     in varchar2
                        ,in_message in varchar2);
  procedure raise_invalid_logical_value(in_number  in varchar2
                                       ,in_message in varchar2);
  procedure ver_invalid_number(in_number  in varchar2
                              ,in_message in varchar2);
  procedure ver_invalid_integer(in_integer in varchar2
                               ,in_message in varchar2);
  procedure ver_invalid_length(in_field_value in varchar2
                              ,in_length      in number
                              ,in_message     in varchar2);
  procedure ver_invalid_date(in_date    in varchar2
                            ,in_message in varchar2);
  procedure ver_invalid_year(in_year in varchar2);
  procedure ver_invalid_month(in_month in varchar2);
  -------
  procedure ver_invalid_worker(in_workerid in varchar2);
  procedure ver_invalid_dept(in_deptid in varchar2);
  -------
  procedure his_login(in_hospid   in varchar2
                     ,in_deptid   in varchar2
                     ,in_workerid in varchar2);
  procedure raise_wait_and_try;
  procedure raise_invalid_operation(in_message in varchar2);
  procedure raise_invalid_param(in_message in varchar2);
  -------
  procedure raise_no_data_found(in_message in varchar2);
  procedure raise_too_many_rows(in_message in varchar2);
  procedure raise_repeat_record(in_message in varchar2);
  procedure raise_non_own_record(in_message in varchar2);
  procedure raise_has_been_used(in_message in varchar2);

  procedure raise_bd_invalid_data_element(in_message in varchar2);
  procedure raise_bd_invalid_code_value(in_message in varchar2);
  procedure raise_bd_invalid_data_group(in_message in varchar2);
  procedure raise_bd_pubblished(in_message in varchar2);
  procedure raise_bd_no_published_version(in_message in varchar2);
  procedure raise_bd_has_unpublished_versi(in_message in varchar2);

  procedure raise_mf_error_status(in_message in varchar2);
  procedure raise_mf_have_content(in_message in varchar2);

  procedure raise_wf_editing(in_message in varchar2);
  procedure raise_wf_using(in_message in varchar2);
  procedure raise_wf_stoped(in_message in varchar2);
  procedure raise_wf_no_max_record(in_message in varchar2);

  procedure raise_templet_editing(in_message in varchar2);
  procedure raise_templet_auditing(in_message in varchar2);
  procedure raise_templet_finished(in_message in varchar2);

  procedure raise_nr_more_current_time(in_message in varchar2);
  procedure raise_nr_ago_in_date_time(in_message in varchar2);
  procedure raise_nr_more_common_time(in_message in varchar2);
  ---------------------------------------------------------------- 
end pck_ec;
/
create or replace package body pck_ec is
  ---------------------------------------------------------------- 
  procedure ver_not_null(in_str     in varchar2
                        ,in_message in varchar2) as
  begin
    if in_str is null
    then
      raise_application_error(e_not_null, in_message || '不能为空。');
    end if;
  end ver_not_null;
  ---------------------------------------------------------------- 
  procedure raise_invalid_logical_value(in_number  in varchar2
                                       ,in_message in varchar2) as
    i integer;
  begin
    begin
      select to_number(in_number) into i from dual;
    exception
      when others then
        raise_application_error(e_invalid_logical_value,
                                '无效的逻辑值,  ' || in_message || ':' ||
                                in_number || '  取值范围只能是0和1  ！');
    end;
  end raise_invalid_logical_value;
  ---------------------------------------------------------------- 
  procedure ver_invalid_number(in_number  in varchar2
                              ,in_message in varchar2) as
    i number;
  begin
    begin
      select to_number(in_number) into i from dual;
    exception
      when others then
        raise_application_error(e_invalid_number,
                                in_message || '不是有效的数字格式(' ||
                                in_number || ')。');
    end;
  end ver_invalid_number;
  ---------------------------------------------------------------- 
  procedure ver_invalid_date(in_date    in varchar2
                            ,in_message in varchar2) as
    v_date date;
  begin
    if in_date is not null
    then
      select to_date(substrb(replace(translate(in_date, '/:-', '   '),
                                     ' ',
                                     null) || '00000000000000',
                             1,
                             14),
                     'YYYYMMDDHH24MISS')
        into v_date
        from dual;
    end if;
  exception
    when others then
      raise_application_error(e_invalid_date,
                              in_message || '无效的日期格式(' || in_date ||
                              ').正确例子是如 1998/11/06 06:34:54 请注意6号写成06 每个数字不能超界。');
  end ver_invalid_date;
  ---------------------------------------------------------------- 
  procedure ver_invalid_length(in_field_value in varchar2
                              ,in_length      in number
                              ,in_message     in varchar2) is
  begin
    if lengthb(in_field_value) > in_length
    then
      raise_application_error(e_invalid_length,
                              in_message || '的长度大于字段长度(' ||
                              in_length || ')');
    end if;
  end ver_invalid_length;
  ---------------------------------------------------------------- 
  function get_date_from_str(in_date in varchar2) return date as
    i date;
  begin
    if in_date is null
    then
      return null;
    end if;
    select to_date(substrb(replace(translate(in_date,
                                             '/,:.;\_-',
                                             '        '),
                                   ' ',
                                   null) || '00000000000000',
                           1,
                           14),
                   'YYYYMMDDHH24MISS')
      into i
      from dual;
    return i;
  exception
    when others then
      return null;
  end;
  ---------------------------------------------------------------- 
  procedure ver_invalid_year(in_year in varchar2) is
    v_date date;
  begin
    select to_date(in_year || '\' || to_char(sysdate, 'mm\dd'),
                   'yyyy/mm/dd')
      into v_date
      from dual;
  exception
    when others then
      raise_application_error(e_invalid_year,
                              '输入了非法的年份: [' || in_year || '] ');
  end ver_invalid_year;
  ----------------------------------------------------------------------------    
  procedure ver_invalid_month(in_month in varchar2) is
    v_date date;
  begin
    select to_date(to_char(sysdate, 'yyyy') || '\' || in_month || '\' || '01',
                   'yyyy/mm/dd')
      into v_date
      from dual;
  exception
    when others then
      raise_application_error(e_invalid_month,
                              '输入了非法的月份: [' || in_month || ']  ');
  end ver_invalid_month;
  ------------------------------------------------------------------------  
  procedure ver_invalid_integer(in_integer in varchar2
                               ,in_message in varchar2) is
    i integer;
  begin
    select in_integer into i from dual;
    if i <> to_number(in_integer)
    then
      raise_application_error(e_invalid_integer,
                              '输入了非法的整数 [' || in_message || ']: ' ||
                              in_integer);
    end if;
  exception
    when others then
      raise_application_error(e_invalid_integer,
                              '输入了非法的整数 [' || in_message || ']: ' ||
                              in_integer);
  end ver_invalid_integer;
  ------------------------------------------------------------------------  
  procedure ver_invalid_worker(in_workerid in varchar2) is
    i integer;
  begin
    select 2 into i from hospital.all_worker where id = in_workerid;
  exception
    when no_data_found then
      raise_application_error(e_invalid_worker,
                              '指定的员工不存在: [' || in_workerid || ']  ');
  end ver_invalid_worker;
  ---------------------------------------------------------------- 
  procedure ver_invalid_dept(in_deptid in varchar2) is
    i integer;
  begin
    select 2 into i from hospital.all_department where id = in_deptid;
  exception
    when no_data_found then
      raise_application_error(e_invalid_dept,
                              '指定的科室不存在: [' || in_deptid || ']  ');
  end ver_invalid_dept;
  ---------------------------------------------------------------- 
  procedure his_login(in_hospid   in varchar2
                     ,in_deptid   in varchar2
                     ,in_workerid in varchar2) is
    i number;
  begin
    begin
      select 2
        into i
        from hospital.hosp a, hospital.all_worker b
       where a.id = in_hospid
         and b.id = in_workerid
         and b.deptid = in_deptid
         and a.id = b.hospid;
    exception
      when no_data_found then
        begin
          select 2
            into i
            from hospital.hosp        a,
                 hospital.all_worker  b,
                 hospital.worker_dept c
           where a.id = in_hospid
             and b.id = in_workerid
             and a.id = b.hospid
             and c.workerid = in_workerid
             and c.type = 'CAN_LOGIN_DEPT'
             and c.status = 'VALID'
             and rownum = 1;
        exception
          when no_data_found then
            raise_application_error(e_invalid_login_info,
                                    '登录信息不匹配[' || in_hospid || '],[' ||
                                    in_deptid || '],[' || in_workerid || ']');
        end;
    end;
    hospital.login.login(in_hospid, in_deptid, in_workerid);
  end his_login;
  ---------------------------------------------------------------- 
  procedure raise_wait_and_try is
  begin
    raise_application_error(e_wait_and_try, '系统忙,请重新操作.;');
  end raise_wait_and_try;
  ---------------------------------------------------------------- 
  procedure raise_invalid_operation(in_message in varchar2) is
  begin
    raise_application_error(e_invalid_operation, in_message);
  end raise_invalid_operation;
  ---------------------------------------------------------------- 
  procedure raise_invalid_param(in_message in varchar2) is
  begin
    raise_application_error(e_invalid_param, in_message);
  end raise_invalid_param;
  ---------------------------------------------------------------- 
  procedure raise_no_data_found(in_message in varchar2) is
  begin
    raise_application_error(e_no_data_found, in_message);
  end raise_no_data_found;
  ---------------------------------------------------------------- 
  procedure raise_too_many_rows(in_message in varchar2) is
  begin
    raise_application_error(e_too_many_rows, in_message);
  end raise_too_many_rows;
  ---------------------------------------------------------------- 
  procedure raise_repeat_record(in_message in varchar2) is
  begin
    raise_application_error(e_repeat_record, in_message);
  end raise_repeat_record;
  ---------------------------------------------------------------- 
  procedure raise_non_own_record(in_message in varchar2) is
  begin
    raise_application_error(e_non_own_record, in_message);
  end raise_non_own_record;
  ---------------------------------------------------------------- 
  procedure raise_has_been_used(in_message in varchar2) is
  begin
    raise_application_error(e_has_been_used, in_message);
  end raise_has_been_used;
  ---------------------------------------------------------------- 
  procedure raise_bd_invalid_data_element(in_message in varchar2) is
  begin
    raise_application_error(e_bd_invalid_data_element, in_message);
  end raise_bd_invalid_data_element;
  ---------------------------------------------------------------- 
  procedure raise_bd_invalid_code_value(in_message in varchar2) is
  begin
    raise_application_error(e_bd_invalid_code_value, in_message);
  end raise_bd_invalid_code_value;
  ---------------------------------------------------------------- 
  procedure raise_bd_invalid_data_group(in_message in varchar2) is
  begin
    raise_application_error(e_bd_invalid_data_group, in_message);
  end raise_bd_invalid_data_group;
  ---------------------------------------------------------------- 
  procedure raise_bd_pubblished(in_message in varchar2) is
  begin
    raise_application_error(e_bd_pubblished, in_message);
  end raise_bd_pubblished;
  ---------------------------------------------------------------- 
  procedure raise_bd_no_published_version(in_message in varchar2) is
  begin
    raise_application_error(e_bd_no_published_version, in_message);
  end raise_bd_no_published_version;
  ---------------------------------------------------------------- 
  procedure raise_bd_has_unpublished_versi(in_message in varchar2) is
  begin
    raise_application_error(e_bd_has_unpublished_version, in_message);
  end raise_bd_has_unpublished_versi;
  ---------------------------------------------------------------- 
  procedure raise_mf_error_status(in_message in varchar2) is
  begin
    raise_application_error(e_mf_error_status, in_message);
  end raise_mf_error_status;
  ---------------------------------------------------------------- 
  procedure raise_mf_have_content(in_message in varchar2) is
  begin
    raise_application_error(e_mf_has_content, in_message);
  end raise_mf_have_content;
  ---------------------------------------------------------------- 
  procedure raise_wf_editing(in_message in varchar2) is
  begin
    raise_application_error(e_wf_editing, in_message);
  end raise_wf_editing;
  ---------------------------------------------------------------- 
  procedure raise_wf_using(in_message in varchar2) is
  begin
    raise_application_error(e_wf_using, in_message);
  end raise_wf_using;
  ---------------------------------------------------------------- 
  procedure raise_wf_stoped(in_message in varchar2) is
  begin
    raise_application_error(e_wf_stoped, in_message);
  end raise_wf_stoped;
  ---------------------------------------------------------------- 
  procedure raise_wf_no_max_record(in_message in varchar2) is
  begin
    raise_application_error(e_wf_no_max_record, in_message);
  end raise_wf_no_max_record;
  ---------------------------------------------------------------- 
  procedure raise_templet_editing(in_message in varchar2) is
  begin
    raise_application_error(e_templet_editing, in_message);
  end raise_templet_editing;
  ---------------------------------------------------------------- 
  procedure raise_templet_auditing(in_message in varchar2) is
  begin
    raise_application_error(e_templet_auditing, in_message);
  end raise_templet_auditing;
  ---------------------------------------------------------------- 
  procedure raise_templet_finished(in_message in varchar2) is
  begin
    raise_application_error(e_templet_finished, in_message);
  end raise_templet_finished;
  ---------------------------------------------------------------- 
  procedure raise_nr_more_current_time(in_message in varchar2) is
  begin
    raise_application_error(e_nr_more_than_current_time, in_message);
  end raise_nr_more_current_time;
  ---------------------------------------------------------------- 
  procedure raise_nr_ago_in_date_time(in_message in varchar2) is
  begin
    raise_application_error(e_nr_ago_in_date_time, in_message);
  end raise_nr_ago_in_date_time;
  ---------------------------------------------------------------- 
  procedure raise_nr_more_common_time(in_message in varchar2) is
  begin
    raise_application_error(e_nr_more_common_time, in_message);
  end raise_nr_more_common_time;
  ---------------------------------------------------------------- 
begin
  null;

end pck_ec;
/
