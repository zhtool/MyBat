create or replace package hospital.invoice_man is

  -- Author  : ADMINISTRATOR
  -- Created : 2006/06/07 21:43:50
  -- Purpose : 发票管理
  --2011/04/15: ZH 增加以下函数
  -- s_get_住院发票号、s_get_住院退票号、s_get_住院发票数、s_get_住院退票数
  -- Public type declarations
  procedure s_发票领用(in_workerid   in varchar2
                  ,in_type       in varchar2
                  ,in_from_no    in varchar2
                  ,in_to_no      in varchar2
                  ,in_billreg    in varchar2
                  ,in_billlength in varchar2
                  ,out_id        out varchar2);
  procedure s_发票领用_确认(in_id in varchar2);
  procedure s_发票归还(in_workerid   in varchar2
                  ,in_type       in varchar2
                  ,in_from_no    in varchar2
                  ,in_to_no      in varchar2
                  ,in_billreg    in varchar2
                  ,in_billlength in varchar2
                  ,out_id        out varchar2);
  procedure s_发票归还_确认(in_id in varchar2);
  procedure s_发票删除(in_id in varchar2);
  procedure s_发票作废(in_type       in varchar2
                  ,in_invoice_no in varchar2
                  ,in_workerid   in varchar2
                  ,in_reason     in varchar2);
  procedure s_发票_跳号(in_type     in varchar2
                   ,in_to_no    in varchar2
                   ,in_workerid in varchar2
                   ,in_reason   in varchar2);
  procedure s_修改领用发票记录(in_id         in varchar2
                      ,in_to_no      in varchar2
                      ,in_billreg    in varchar2
                      ,in_billlength in varchar2);

  procedure s_设置打印号段(in_type      in varchar2
                    ,in_invoiceid in varchar2
                    ,in_remark    in varchar2 default null);

  function s_读取下一个发票号(in_type     in varchar2
                     ,in_workerid in varchar2 default null) return integer;
  function s_读取剩余发票数(in_type     in varchar2
                    ,in_workerid in varchar2 default null) return integer;
  procedure s_使用发票(in_type      in varchar2
                  ,out_print_no out varchar2);
  procedure s_注册使用号段(in_type      in varchar2
                    ,in_invoiceid in varchar2);

  function s_get_门诊发票号(in_fee_workerid in varchar2
                      ,in_from_date    in date
                      ,in_to_date      in date) return varchar2;
  function s_get_门诊退票号(in_fee_workerid in varchar2
                      ,in_from_date    in date
                      ,in_to_date      in date) return varchar2;
  function s_get_门诊发票数(in_fee_workerid in varchar2
                      ,in_from_date    in date
                      ,in_to_date      in date) return number;
  function s_get_门诊退票数(in_fee_workerid in varchar2
                      ,in_from_date    in date
                      ,in_to_date      in date) return number;
  function s_get_有号门诊发票数(in_fee_workerid in varchar2
                        ,in_from_date    in date
                        ,in_to_date      in date) return number;
  function s_get_有号门诊退票数(in_fee_workerid in varchar2
                        ,in_from_date    in date
                        ,in_to_date      in date) return number;
  function s_get_无号门诊发票数(in_fee_workerid in varchar2
                        ,in_from_date    in date
                        ,in_to_date      in date) return number;
  function s_get_无号门诊退票数(in_fee_workerid in varchar2
                        ,in_from_date    in date
                        ,in_to_date      in date) return number;

  function s_get_收费员预交金票号(in_fee_workerid in varchar2
                         ,in_from_date    in date
                         ,in_to_date      in date) return varchar2;

  function s_get_收费员预交金票数(in_fee_workerid in varchar2
                         ,in_from_date    in date
                         ,in_to_date      in date) return number;

  function s_get_收费员退预交金票号(in_fee_workerid in varchar2
                          ,in_from_date    in date
                          ,in_to_date      in date) return varchar2;

  function s_get_收费员退预交金票数(in_fee_workerid in varchar2
                          ,in_from_date    in date
                          ,in_to_date      in date) return number;

  function s_get_全院预交金票号(in_from_date in date
                        ,in_to_date   in date) return varchar2;

  function s_get_全院预交金票数(in_from_date in date
                        ,in_to_date   in date) return number;

  function s_get_全院退预交金票号(in_from_date in date
                         ,in_to_date   in date) return varchar2;

  function s_get_全院退预交金票数(in_from_date in date
                         ,in_to_date   in date) return number;
  procedure s_使用住院发票(in_type       in varchar2
                    ,in_action     in varchar2 default 'PRINT'
                    ,in_residentid in varchar2
                    ,in_invoice_no in varchar2 default null
                    ,in_printed    in varchar2);
  function s_发票打印_读取住院发票号(in_residentid in varchar2) return varchar2;
  function s_get_住院发票号(in_fee_workerid in varchar2
                      ,in_from_date    in date
                      ,in_to_date      in date) return varchar2;
  function s_get_住院退票号(in_fee_workerid in varchar2
                      ,in_from_date    in date
                      ,in_to_date      in date) return varchar2;
  function s_get_住院发票数(in_fee_workerid in varchar2
                      ,in_from_date    in date
                      ,in_to_date      in date) return number;
  function s_get_住院退票数(in_fee_workerid in varchar2
                      ,in_from_date    in date
                      ,in_to_date      in date) return number;
  --以下是健康龙卡与门诊预交金业务，集中打印门诊发票管理程序  
  procedure s_合并打印门诊发票_整体打印(in_from_date  in varchar2
                           ,in_to_date    in varchar2
                           ,in_attribute  in varchar2
                           ,out_ticket_no out varchar2);
  procedure s_合并打印门诊发票_删除发票(in_ticket_no in varchar2);
  procedure s_合并打印门诊发票_所有单据(in_patientid  in varchar2
                           ,in_attribute  in varchar2
                           ,out_ticket_no out varchar2);
  procedure s_合并打印门诊发票_新建单据(in_patientid    in varchar2
                           ,in_attribute    in varchar2
                           ,in_content_type in varchar2
                           ,out_ticket_no   out varchar2);
  procedure s_合并打印门诊发票_增加明细(in_ticket_no     in varchar2
                           ,in_charge_billid in varchar2
                           ,in_print_num     in integer default 1);
  procedure s_合并打印门诊发票_增加删除(in_ticket_no     in varchar2
                           ,in_charge_billid in varchar2);
  procedure s_合并打印门诊发票_提交(in_ticket_no in varchar2);
  procedure s_合并打印门诊发票_重新打印(in_ticket_no in varchar2);
  procedure s_合并打印门诊发票_退票审核(in_ticket_no in varchar2);
  procedure s_合并打印门诊发票_审核_取消(in_ticket_no in varchar2);
  procedure s_合并打印门诊发票_退票(in_ticket_no in varchar2);
  procedure sp_合并打印_门诊发票退票nc(in_ticket_no in varchar2);
  procedure s_合并打印门诊发票_打印授权(in_ticket_no    in varchar2
                           ,in_grant_reason in varchar2);
  procedure s_合并打印门诊发票_授权取消(in_ticket_no in varchar2
                           ,in_seq       in varchar2);

  procedure s_门诊发票_重新打印授权(in_prescriptionid in varchar2
                         ,in_charge_billid  in varchar2
                         ,in_grant_reason   in varchar2);
  procedure s_门诊发票_重新打印授权取消(in_prescriptionid in varchar2
                           ,in_charge_billid  in varchar2
                           ,in_seq            in varchar2);
  procedure s_门诊发票_增加打印次数(in_prescriptionid in varchar2
                         ,in_charge_billid  in varchar2
                         ,in_print_count    in number);
  function get_门诊发票_重新打印(in_prescriptionid in varchar2
                        ,in_charge_billid  in varchar2) return number;
  function get_合并打印门诊发票_重新打印(in_ticket_no in varchar2) return number;
  procedure s_住院发票_重新打印授权(in_residentid   in varchar2
                         ,in_grant_reason in varchar2);
  procedure s_住院发票_重新打印授权取消(in_residentid in varchar2
                           ,in_seq        in varchar2);
  procedure s_住院发票_增加打印次数(in_residentid  in varchar2
                         ,in_print_count in number);
  function get_住院发票_重新打印(in_residentid in varchar2) return integer;

  procedure s_住院预交金_重新打印授权(in_residentid   in varchar2
                          ,in_pre_payid    in varchar2
                          ,in_grant_reason in varchar2);
  procedure s_住院预交金_重新打印授权取消(in_residentid in varchar2
                            ,in_pre_payid  in varchar2
                            ,in_seq        in varchar2);
  procedure s_住院预交金_增加打印次数(in_residentid  in varchar2
                          ,in_pre_payid   in varchar2
                          ,in_print_count in number);
  function get_住院预交金_重新打印(in_residentid in varchar2
                         ,in_pre_payid  in varchar2) return integer;
  procedure s_门诊收费_发票管理(in_pay_method    in varchar2
                       ,in_charge_billid in varchar2);
  procedure s_门诊退费_发票管理(in_ticket_no     in varchar2
                       ,in_charge_billid in varchar2
                       ,in_pay_method    in varchar2);
  function get_处方打印发票明细条数(in_prescriptionid in varchar2) return number;
  function get_挂号票打印发票明细条数(in_charge_billid in varchar2) return number;

  ---------门诊预交金发票管理
  procedure s_门诊预交金_发票管理(in_clinic_flow_accountid in number);
  procedure s_门诊预交金_重新打印授权(in_clinic_flow_accountid in number
                          ,in_grant_reason          in varchar2);
  procedure s_门诊预交金_重新打印授权取消(in_clinic_flow_accountid in number
                            ,in_seq                   in varchar2);
  procedure s_门诊预交金_增加打印次数(in_clinic_flow_accountid in number
                          ,in_print_count           in number);
  function get_门诊预交金_重新打印(in_clinic_flow_accountid in number) return number;

  function s_get_合并打印发票号(in_fee_workerid          in varchar2
                        ,in_charge_bill_attribute in varchar2
                        ,in_from_date             in date
                        ,in_to_date               in date) return varchar2;
  function s_get_合并打印发票退票号(in_fee_workerid          in varchar2
                          ,in_charge_bill_attribute in varchar2
                          ,in_from_date             in date
                          ,in_to_date               in date) return varchar2;
  function s_get_合并打印发票数(in_fee_workerid          in varchar2
                        ,in_charge_bill_attribute in varchar2
                        ,in_from_date             in date
                        ,in_to_date               in date) return number;
  function s_get_合并打印发票退票数(in_fee_workerid          in varchar2
                          ,in_charge_bill_attribute in varchar2
                          ,in_from_date             in date
                          ,in_to_date               in date) return number;
  function s_get_门诊预交金_打印票号(in_fee_workerid in varchar2
                           ,in_from_date    in date
                           ,in_to_date      in date) return varchar2;
  procedure s_after_处方收费取消nc(in_patientid     in varchar2
                            ,in_charge_billid in varchar2
                            ,in_attribute     in varchar2
                            ,in_ticket_no     in varchar2);

  procedure s_after_住院结账取消nc(in_patientid  in varchar2
                            ,in_residentid in varchar2);

  function get_合并发票_预交金(in_ticket_no in varchar2) return number;
  function get_合并发票_预交金余额(in_ticket_no in varchar2) return number;

  function get_单个发票费用类型数量(in_charge_billid in varchar2) return number;
  function get_发票费用类型数量(in_ticket_no     in varchar2
                       ,in_charge_billid in varchar2) return number;

end invoice_man;
/
create or replace package body hospital.invoice_man is
  --------------------------------------------------------------------------------------------
  --私有过程定义
  procedure i_按操作员_设置打印号段(in_type      in varchar2
                         ,in_invoiceid in varchar2
                         ,in_remark    in varchar2 default null);
  procedure i_按工作地点_设置打印号段(in_type      in varchar2
                          ,in_invoiceid in varchar2
                          ,in_remark    in varchar2 default null);
  --------------------------------------------------------------------------------------------
  function get_next_invoiceid return varchar2 is
    v_id invoice.id%type;
  begin
  
    select lpad(ltrim(rtrim(to_char(seq_invoice.nextval))), 10, '0')
      into v_id
      from dual;
    return v_id;
  exception
    when no_data_found then
      return null;
  end;
  procedure lock_invoice_info(in_id    in varchar2
                             ,out_info out hospital.invoice_%rowtype);
  --------------------------------------------------------------------------------------------
  procedure s_发票领用(in_workerid   in varchar2
                  ,in_type       in varchar2
                  ,in_from_no    in varchar2
                  ,in_to_no      in varchar2
                  ,in_billreg    in varchar2
                  ,in_billlength in varchar2
                  ,out_id        out varchar2) is
    i    integer;
    v_id invoice.id%type;
  begin
    verify_worker(in_workerid, '发票领用人');
    verify_field_dict('INVOICE', 'TYPE', in_type, '票据类型');
    verify_valid_number(in_from_no, '票据开始号码');
    verify_valid_number(in_to_no, '票据结束号码');
    verify_valid_number(in_billreg, '注册号');
    verify_valid_number(in_billlength, '票号长度');
    if to_number(in_from_no) > to_number(in_to_no)
    then
      raise_application_error(-20001, '开始发票号必须小于结束发票号.;');
    end if;
    if to_number(in_from_no) < 1
    then
      raise_application_error(-20001, '发票号不能小于0');
    end if;
    if to_number(in_to_no) > 999999999999
    then
      raise_application_error(-20001, '发票号不能大于999999999999');
    end if;
    if to_number(in_from_no) <> trunc(to_number(in_from_no))
    then
      raise_application_error(-20001, '发票号不能使用小数');
    end if;
    if to_number(in_to_no) <> trunc(to_number(in_to_no))
    then
      raise_application_error(-20001, '发票号不能使用小数');
    end if;
    begin
      select 2
        into i
        from invoice
       where type = in_type
         and (from_no <= to_number(in_from_no) and
             to_no >= to_number(in_from_no) or
             from_no <= to_number(in_to_no) and
             to_no >= to_number(in_to_no))
         and service = '领用'
         and status <> 'FINISHED'
         and rownum = 1;
      raise_application_error(-20001,
                              '要分配的票号已经包含在已经领用票号中，不能重复领用.;');
    exception
      when no_data_found then
        null;
    end;
    v_id := get_next_invoiceid;
    insert into invoice
      (id,
       type,
       service,
       from_no,
       to_no,
       billreg,
       billlength,
       workerid,
       update_date,
       status)
    values
      (v_id,
       in_type,
       '领用',
       in_from_no,
       in_to_no,
       in_billreg,
       in_billlength,
       in_workerid,
       sysdate,
       'WAIT_ACK');
    out_id := v_id;
    commit;
  end s_发票领用;
  --------------------------------------------------------------------------------------------
  procedure s_发票领用_确认(in_id in varchar2) is
    v_invoice invoice%rowtype;
  begin
    begin
      lock_invoice_info(in_id, v_invoice);
      if v_invoice.service <> '领用'
      then
        raise_application_error(-20001,
                                '不是领用发票的记录,不能确认领用.;');
      end if;
    
      if v_invoice.status <> 'WAIT_ACK'
      then
        raise_application_error(-20001, '该号段的票据已经确认.;');
      end if;
    
      update invoice
         set status       = 'ACKED',
             ack_workerid = hospital.login.get_workerid,
             ack_date     = sysdate
       where id = in_id;
      commit;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '没有找到编号为( ' || in_id || ' )的要确认的领用记录.;');
    end;
  end s_发票领用_确认;
  --------------------------------------------------------------------------------------------
  procedure s_发票归还(in_workerid   in varchar2
                  ,in_type       in varchar2
                  ,in_from_no    in varchar2
                  ,in_to_no      in varchar2
                  ,in_billreg    in varchar2
                  ,in_billlength in varchar2
                  ,out_id        out varchar2) is
    i    integer;
    v_id invoice.id%type;
  begin
    verify_worker(in_workerid, '发票领用人');
    verify_field_dict('INVOICE', 'TYPE', in_type, '票据类型');
    verify_valid_number(in_from_no, '票据开始号码');
    verify_valid_number(in_to_no, '票据结束号码');
    verify_valid_number(in_billreg, '注册号');
    verify_valid_number(in_billlength, '票号长度');
    if to_number(in_from_no) > to_number(in_to_no)
    then
      raise_application_error(-20001, '开始发票号必须小于结束发票号.;');
    end if;
  
    --判断属于自己领用的号段
    begin
      select 2
        into i
        from invoice
       where type = in_type
         and workerid = in_workerid
         and service = '领用'
         and from_no <= to_number(in_from_no)
         and to_no >= to_number(in_to_no)
         and rownum = 1;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '要归还的票号没有包含在任何已经领用的号段中，不能归还.;');
    end;
  
    --判断属于自己未归还的号段
    begin
      select 2
        into i
        from invoice
       where type = in_type
         and service = '归还'
         and (from_no <= to_number(in_from_no) and
             to_no >= to_number(in_from_no) or
             from_no <= to_number(in_to_no) and
             to_no >= to_number(in_to_no) and rownum = 1);
      raise_application_error(-20001,
                              '要归还的票号已经包含在已经归还的号段中，不能重复归还.;');
    exception
      when no_data_found then
        null;
    end;
    v_id := get_next_invoiceid;
    insert into invoice
      (id,
       type,
       service,
       from_no,
       to_no,
       billreg,
       billlength,
       workerid,
       update_date,
       status)
    values
      (v_id,
       in_type,
       '归还',
       in_from_no,
       in_to_no,
       in_billreg,
       in_billlength,
       in_workerid,
       sysdate,
       'WAIT_ACK');
    out_id := v_id;
  end s_发票归还;
  --------------------------------------------------------------------------------------------
  procedure s_发票归还_确认(in_id in varchar2) is
    v_back_invoice invoice%rowtype;
    v_take_invoice invoice%rowtype;
    v_backed_num   number;
  begin
    lock_invoice_info(in_id, v_back_invoice);
  
    if v_back_invoice.service <> '归还'
    then
      raise_application_error(-20001, '不是领用发票的记录,不能确认领用.;');
    end if;
  
    if v_back_invoice.status <> 'WAIT_ACK'
    then
      raise_application_error(-20001, '该号段的票据已经确认.;');
    end if;
  
    update invoice
       set status       = 'ACKED',
           ack_workerid = hospital.login.get_workerid,
           ack_date     = sysdate
     where id = in_id;
  
    --查找归还的发票所属的领用发票记录是否全部归还完毕
    begin
      select *
        into v_take_invoice
        from invoice
       where type = v_back_invoice.type
         and service = '领用'
         and from_no <= v_back_invoice.from_no
         and to_no >= v_back_invoice.to_no
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001, '找不到要归还发票的领用记录.;');
    end;
  
    select sum(to_no - from_no + 1)
      into v_backed_num
      from hospital.invoice
     where service = v_back_invoice.service
       and type = v_back_invoice.type
       and from_no >= v_take_invoice.from_no
       and to_no <= v_take_invoice.to_no;
    if v_backed_num = v_take_invoice.to_no - v_take_invoice.from_no + 1
    then
      update invoice set status = 'FINISHED' where id = v_take_invoice.id;
    end if;
    commit;
  exception
    when no_data_found then
      raise_application_error(-20001,
                              '没有找到编号为( ' || in_id || ' )的要确认的领用记录.;');
  end s_发票归还_确认;
  --------------------------------------------------------------------------------------------
  procedure s_发票删除(in_id in varchar2) is
    v_invoice invoice%rowtype;
  begin
    lock_invoice_info(in_id, v_invoice);
    if v_invoice.status not in ('WAIT_ACK', 'ACKED')
    then
      raise_application_error(-20001, '该号段的票据已经使用,不能删除.;');
    end if;
    delete from invoice where id = in_id;
    commit;
  end s_发票删除;
  --------------------------------------------------------------------------------------------
  procedure s_发票作废nc(in_type       in varchar2
                    ,in_invoice_no in varchar2
                    ,in_workerid   in varchar2
                    ,in_reason     in varchar2) is
    v_invoice      invoice%rowtype;
    v_invoice_pool hospital.invoice_pool_%rowtype;
    v_status       hospital.invoice_print_ticket_.status%type;
  begin
    verify_field_dict('INVOICE', 'TYPE', in_type, '票据类型');
    verify_valid_number(in_invoice_no, '票据开始号码');
    hospital.verify_worker(in_workerid, '领票人员');
  
    begin
      select *
        into v_invoice
        from hospital.invoice_
       where type = in_type
         and from_no <= in_invoice_no
         and to_no >= in_invoice_no;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '未找到发票编号为' || in_invoice_no ||
                                '的发票领用记录,请检查入参.;');
    end;
  
    if v_invoice.workerid <> in_workerid
    then
      raise_application_error(-20001,
                              '未找到发票编号为' || in_invoice_no || '的发票领用人员为' ||
                              v_invoice.workerid || ',传入的人员为' ||
                              in_workerid || '请检查入参.;');
    end if;
  
    if v_invoice.status not in ('PRINTING')
    then
      raise_application_error(-20001,
                              '未找到发票编号为' || in_invoice_no || '领用编号为' ||
                              v_invoice.id || '的发票未处于[在打印]状态,不能作废.;');
    end if;
    begin
      --需要验证 是否只要设置打印的号段 就会产生发票池信息
      select *
        into v_invoice_pool
        from hospital.invoice_pool_
       where workerid = in_workerid
         and type = in_type
         and invoiceid = v_invoice.id;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '未找到发票类型为' || in_type || ',发票编号为' ||
                                v_invoice.id || '工号为' || in_workerid ||
                                '的发票池信息,不能作废.;');
    end;
  
    if to_number(in_invoice_no) < v_invoice_pool.print_no
    then
      raise_application_error(-20001,
                              '当前要作废的发票编号' || in_invoice_no ||
                              '小于已经使用的发票编号' ||
                              to_char(v_invoice_pool.print_no) || '不能作废.;');
    end if;
  
    --是否每次只能作废一张发票
    if to_number(in_invoice_no) > v_invoice_pool.print_no + 1
    then
      raise_application_error(-20001, '每次只能作废一张发票.;');
    end if;
    begin
      select status
        into v_status
        from hospital.invoice_print_ticket_
       where invoice_type = in_type
         and ticket_no = in_invoice_no;
      if v_status = 'INVALIDED'
      then
        raise_application_error(-20001,
                                '该发票已经处于作废状态,无需再次作废.;');
      end if;
      update hospital.invoice_print_ticket_
         set status           = 'INVALIDED',
             invalid_workerid = hospital.login.get_workerid,
             invalid_date     = sysdate,
             invalid_reason   = in_reason
       where invoice_type = in_type
         and ticket_no = in_invoice_no;
    exception
      when no_data_found then
        insert into invoice_print_ticket
          (hospid,
           ticket_no,
           charge_bill_attribute,
           patientid,
           residentid,
           fee,
           现金金额,
           报销金额,
           print_date,
           print_workerid,
           print_num,
           type,
           status,
           content_type,
           invoice_type,
           invalid_workerid,
           invalid_date,
           invalid_reason)
        values
          (hospital.login.get_hospid,
           in_invoice_no,
           'CASH',
           '',
           '',
           0,
           0,
           0,
           sysdate,
           hospital.login.get_workerid,
           0,
           '个人发票',
           'INVALIDED',
           '1',
           in_type,
           hospital.login.get_workerid,
           sysdate,
           in_reason);
    end;
    if to_number(in_invoice_no) >= v_invoice_pool.print_no
    then
      update hospital.invoice_pool_
         set print_no = to_number(in_invoice_no) + 1
       where workerid = in_workerid
         and type = in_type
         and invoiceid = v_invoice.id;
    end if;
  
  end s_发票作废nc;
  --------------------------------------------------------------------------------------------
  procedure s_发票作废(in_type       in varchar2
                  ,in_invoice_no in varchar2
                  ,in_workerid   in varchar2
                  ,in_reason     in varchar2) is
  begin
    s_发票作废nc(in_type, in_invoice_no, in_workerid, in_reason);
    commit;
  end s_发票作废;
  --------------------------------------------------------------------------------------------
  procedure s_发票_跳号nc(in_type     in varchar2
                     ,in_to_no    in varchar2
                     ,in_workerid in varchar2
                     ,in_reason   in varchar2) is
    v_invoice      invoice%rowtype;
    v_invoice_pool hospital.invoice_pool_%rowtype;
    v_from_no      number;
  begin
    verify_field_dict('INVOICE', 'TYPE', in_type, '票据类型');
    verify_valid_number(in_to_no, '票据开始号码');
    hospital.verify_worker(in_workerid, '领票人员');
  
    begin
      select *
        into v_invoice
        from hospital.invoice_
       where type = in_type
         and from_no <= to_number(in_to_no)
         and to_no >= to_number(in_to_no);
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '未找到发票编号为' || in_to_no || '的发票领用记录,请检查入参.;');
    end;
  
    if v_invoice.workerid <> in_workerid
    then
      raise_application_error(-20001,
                              '未找到发票编号为' || in_to_no || '的发票领用人员为' ||
                              v_invoice.workerid || ',传入的人员为' ||
                              in_workerid || '请检查入参.;');
    end if;
  
    if v_invoice.status not in ('PRINTING')
    then
      raise_application_error(-20001,
                              '编号为' || v_invoice.id ||
                              '的发票未处于[在打印]状态,不能跳号.;');
    end if;
    begin
      --需要验证 是否只要设置打印的号段 就会产生发票池信息
      select *
        into v_invoice_pool
        from hospital.invoice_pool_
       where workerid = in_workerid
         and type = in_type
         and invoiceid = v_invoice.id;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '未找到发票类型为' || in_type || ',发票编号为' ||
                                v_invoice.id || '工号为' || in_workerid ||
                                '的发票池信息,不能跳号.;');
    end;
  
    if to_number(in_to_no) < v_invoice_pool.print_no
    then
      raise_application_error(-20001,
                              '当前跳转的发票编号' || in_to_no || '小于已经使用的发票编号' ||
                              to_char(v_invoice_pool.print_no) || '不能跳号.;');
    end if;
    v_from_no := v_invoice_pool.print_no;
    loop
      if v_from_no > to_number(in_to_no)
      then
        exit;
      else
        --作废一张发票
        s_发票作废nc(in_type, v_from_no, in_workerid, in_reason);
        v_from_no := v_from_no + 1;
      end if;
    end loop;
  
  end s_发票_跳号nc;

  --------------------------------------------------------------------------------------------
  procedure s_发票_跳号(in_type     in varchar2
                   ,in_to_no    in varchar2
                   ,in_workerid in varchar2
                   ,in_reason   in varchar2) is
  begin
    s_发票_跳号nc(in_type, in_to_no, in_workerid, in_reason);
    commit;
  end s_发票_跳号;
  --------------------------------------------------------------------------------------------
  procedure s_修改领用发票记录(in_id         in varchar2
                      ,in_to_no      in varchar2
                      ,in_billreg    in varchar2
                      ,in_billlength in varchar2) is
    v_invoice      invoice%rowtype;
    v_invoice_pool invoice_pool%rowtype;
  begin
    begin
      lock_invoice_info(in_id, v_invoice);
      if v_invoice.status not in ('PRINTING')
      then
        raise_application_error(-20001,
                                '该段发票不是正在打印的发票,不能修改.;');
      end if;
    
      if v_invoice.to_no <= in_to_no
      then
        raise_application_error(-20001,
                                '要修改的新截止号码大于已经分配的号码,不能修改.;');
      end if;
    
      select *
        into v_invoice_pool
        from invoice_pool
       where invoiceid = in_id
         for update nowait;
      if v_invoice_pool.print_no > in_to_no
      then
        raise_application_error(-20001, '新的截止发票号已经打印,不能修改');
      end if;
    
      update invoice_pool set to_no = in_to_no where invoiceid = in_id;
      update invoice
         set to_no      = in_to_no,
             billreg    = in_billreg,
             billlength = in_billlength
       where id = in_id;
      commit;
    exception
      when no_data_found then
        raise_application_error(-20001, '要修改的发票领用记录不存在.;');
    end;
  
  end s_修改领用发票记录;
  --------------------------------------------------------------------------------------------
  procedure s_设置打印号段(in_type      in varchar2
                    ,in_invoiceid in varchar2
                    ,in_remark    in varchar2 default null) is
  begin
    --判断要设置的号段是一个合法的打印号段
    if nvl(get_system_option('按照工作地点分配发票号段' || in_type), 'N') = 'Y'
    then
      verify_not_null(in_remark, '备注');
      verify_length(in_remark, 20, '使用范围');
      i_按工作地点_设置打印号段(in_type, in_invoiceid, in_remark);
    else
      if in_remark is not null
      then
        raise_application_error(-20001, '备注必须为空.;');
      end if;
      i_按操作员_设置打印号段(in_type, in_invoiceid);
    end if;
  end s_设置打印号段;
  --------------------------------------------------------------------------------------------
  procedure s_注册使用号段(in_type      in varchar2
                    ,in_invoiceid in varchar2) is
    v_invoice_pool invoice_pool%rowtype;
  begin
    begin
      select *
        into v_invoice_pool
        from invoice_pool
       where invoiceid = in_invoiceid
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '编号为(' || in_invoiceid || ')的号段不是正在打印的号段.;');
    end;
    if v_invoice_pool.type <> in_type
    then
      raise_application_error(-20001,
                              '输入的发票类别和打印的号段类别不相同，不能设置.;');
    end if;
    if nvl(get_system_option('按照工作地点分配发票号段' || in_type), 'N') = 'N'
    then
      raise_application_error(-20001,
                              '不是按照工作地点分配发票号段，无须注册号段');
    end if;
  
    delete from worker_invoice_pool
     where workerid = hospital.login.get_workerid
       and type = in_type;
  
    insert into worker_invoice_pool
      (workerid, type, invoiceid)
    values
      (hospital.login.get_workerid, in_type, in_invoiceid);
    commit;
  end s_注册使用号段;
  --------------------------------------------------------------------------------------------
  function s_读取下一个发票号(in_type     in varchar2
                     ,in_workerid in varchar2 default null) return integer is
    v_no       integer;
    v_workerid hospital.all_worker_.id%type;
  begin
    if in_workerid is null
    then
      v_workerid := hospital.login.get_workerid;
    else
      v_workerid := in_workerid;
    end if;
    if nvl(get_system_option('按照工作地点分配发票号段' || in_type), 'N') = 'Y'
    then
      select a.print_no
        into v_no
        from invoice_pool a, worker_invoice_pool b
       where b.workerid = v_workerid
         and b.type = in_type
         and a.invoiceid = b.invoiceid;
    else
      select print_no
        into v_no
        from invoice_pool
       where workerid = v_workerid
         and type = in_type
         and print_no <= to_no;
    end if;
    return v_no;
  exception
    when no_data_found then
      return to_number(null);
  end s_读取下一个发票号;
  --------------------------------------------------------------------------------------------
  function s_读取剩余发票数(in_type     in varchar2
                    ,in_workerid in varchar2 default null) return integer is
    v_no       integer;
    v_workerid hospital.all_worker_.id%type;
  begin
    if in_workerid is null
    then
      v_workerid := hospital.login.get_workerid;
    else
      v_workerid := in_workerid;
    end if;
    if nvl(get_system_option('按照工作地点分配发票号段' || in_type), 'N') = 'Y'
    then
      select a.to_no - a.print_no + 1
        into v_no
        from invoice_pool a, worker_invoice_pool b
       where b.workerid = v_workerid
         and b.type = in_type
         and a.invoiceid = b.invoiceid;
    else
      select to_no - print_no + 1
        into v_no
        from invoice_pool
       where workerid = v_workerid
         and type = in_type
         and print_no <= to_no;
    end if;
    return v_no;
  exception
    when no_data_found then
      return to_number(null);
  end s_读取剩余发票数;
  --------------------------------------------------------------------------------------------
  procedure prv_锁定发票(in_ticket_no   in varchar2
                    ,in_ticket_type in varchar2
                    ,v_ticket       out invoice_print_ticket%rowtype) is
  begin
    begin
      select *
        into v_ticket
        from invoice_print_ticket
       where invoice_type = in_ticket_type
         and ticket_no = in_ticket_no
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                
                                '编号为(' || in_ticket_no || ')的(' ||
                                in_ticket_type || ')不存在，不能打印.;');
      when others then
        raise_application_error(-20001, '其他人正在操作，请稍后重试.;');
    end;
  end prv_锁定发票;
  --------------------------------------------------------------------------------------------
  function get_next_ticket_no return varchar2 is
    v_ticket_no invoice_print_ticket.ticket_no%type;
  begin
    select lpad(ltrim(rtrim(to_char(seq_ticket_no.nextval))), 10, '0')
      into v_ticket_no
      from dual;
    return v_ticket_no;
  end;
  --------------------------------------------------------------------------------------------
  procedure s_发票_新建单据(in_patientid    in varchar2
                     ,in_residentid   in varchar2
                     ,in_attribute    in varchar2
                     ,in_content_type in varchar2
                     ,in_invoice_type in varchar2
                     ,in_ticket_no    in varchar2
                     ,in_printed      in varchar2) is
  begin
  
    verify_patient(in_patientid);
    if in_residentid is not null
    then
      verify_resident(in_residentid);
    end if;
    verify_field_dict('CHARGE_BILL', 'ATTRIBUTE', in_attribute, '收费方式');
  
    insert into invoice_print_ticket
      (hospid,
       ticket_no,
       charge_bill_attribute,
       patientid,
       residentid,
       fee,
       现金金额,
       报销金额,
       print_date,
       print_workerid,
       print_num,
       type,
       status,
       content_type,
       invoice_type)
    values
      (get_login_hospid,
       in_ticket_no,
       in_attribute,
       in_patientid,
       in_residentid,
       0,
       0,
       0,
       sysdate,
       hospital.login.get_workerid,
       in_printed,
       '个人发票',
       'WAIT_ACK',
       in_content_type,
       in_invoice_type);
  end s_发票_新建单据;

  --------------------------------------------------------------------------------------------
  -- in_print_num 1 ,-1 代表打印次数
  procedure s_发票_增加明细(in_ticket_no     in varchar2
                     ,in_ticket_type   in varchar2
                     ,in_charge_billid in varchar2
                     ,in_print_num     in integer default 1) is
    v_ticket     invoice_print_ticket%rowtype;
    v_fee        charge_bill.fee%type;
    v_find       varchar2(10);
    v_ticket_no  charge_bill.ticket_no%type;
    v_rowid      rowid;
    v_现金金额   number := 0;
    v_报销金额   number := 0;
    v_attribute  charge_bill.attribute%type;
    v_patientid  hospital.patient_.id%type;
    v_residentid hospital.resident_info_.residentid%type;
  begin
    prv_锁定发票(in_ticket_no, in_ticket_type, v_ticket);
    if v_ticket.status <> 'WAIT_ACK'
    then
      raise_application_error(-20001, '不能给一个已经完成的发票中添加明细');
    end if;
  
    if in_print_num not in (1, -1)
    then
      raise_application_error(-20001, '非法的打印次数');
    end if;
    v_find := 'NO';
  
    begin
      select a.fee, a.ticket_no, a.attribute, a.patientid, a.residentid
        into v_fee, v_ticket_no, v_attribute, v_patientid, v_residentid
        from hospital.charge_bill a, hospital.all_worker b
       where a.id = in_charge_billid
         and a.fee_operator = b.id
         and b.hospid = hospital.login.get_hospid
         for update nowait;
      if v_ticket.type = '个人发票'
      then
        if v_ticket_no is not null
        then
          raise_application_error(-20001,
                                  '输入的编号为( ' || in_charge_billid ||
                                  ' )的单据已经包括在其他的发票中.;');
        else
          update charge_bill
             set ticket_no = in_ticket_no
           where id = in_charge_billid;
        end if;
      end if;
      v_find := 'YES';
    exception
      when no_data_found then
        v_find := 'NO';
        null;
    end;
  
    if v_find = 'NO'
    then
      begin
        select a.fee, a.ticket_no, a.attribute, a.patientid, a.residentid
          into v_fee, v_ticket_no, v_attribute, v_patientid, v_residentid
          from hospital.charge_bill_a01 a, hospital.all_worker b
         where a.id = in_charge_billid
           and a.fee_operator = b.id
           and b.hospid = hospital.login.get_hospid
           for update nowait;
        v_find := 'YES';
        if v_ticket.type = '个人发票'
        then
          if v_ticket_no is not null
          then
            raise_application_error(-20001,
                                    '输入的编号为( ' || in_charge_billid ||
                                    ' )的单据已经包括在其他的发票(' || v_ticket_no ||
                                    ')中.;');
          else
            update charge_bill_a01
               set ticket_no = in_ticket_no
             where id = in_charge_billid;
          end if;
        end if;
      exception
        when no_data_found then
          v_find := 'NO';
          null;
      end;
    end if;
  
    if v_find = 'NO'
    then
      raise_application_error(-20001,
                              '找不到编号为( ' || in_charge_billid || ' )的收费账单.;');
    end if;
  
    if v_attribute = 'CASH'
    then
      v_现金金额 := v_fee;
    else
      if v_attribute = 'ACCOUNT'
      then
        begin
          select a.self_pay, a.account_pay
            into v_现金金额, v_报销金额
            from hospital.out_balance_info_ a
           where a.residentid = v_residentid
             and a.出院标志 = '出院'
             and a.update_reason is null;
        exception
          when no_data_found then
            raise_application_error(-20001,
                                    '找不到住院号为( ' || v_residentid ||
                                    ' )的出院记录.;');
        end;
      else
        v_报销金额 := v_fee;
      end if;
    end if;
  
    begin
      select rowid
        into v_rowid
        from invoice_print_detail
       where ticket_no = in_ticket_no
         and charge_billid = in_charge_billid
         and invoice_type = in_ticket_type
         for update nowait;
      update invoice_print_detail
         set 打印次数 = 打印次数 + in_print_num
       where rowid = v_rowid;
    exception
      when no_data_found then
        insert into invoice_print_detail
          (invoice_type, ticket_no, charge_billid, 打印次数)
        values
          (in_ticket_type, in_ticket_no, in_charge_billid, in_print_num);
    end;
    update invoice_print_ticket
       set fee      = nvl(fee, 0) + in_print_num * v_fee,
           现金金额 = nvl(现金金额, 0) + in_print_num * nvl(v_现金金额, 0),
           报销金额 = nvl(报销金额, 0) + in_print_num * nvl(v_报销金额, 0)
     where ticket_no = in_ticket_no
       and invoice_type = in_ticket_type;
  end s_发票_增加明细;

  --------------------------------------------------------------------------------------------
  procedure s_发票_增加删除(in_ticket_no     in varchar2
                     ,in_ticket_type   in varchar2
                     ,in_charge_billid in varchar2) is
    v_ticket     invoice_print_ticket%rowtype;
    v_fee        charge_bill.fee%type;
    v_find       varchar2(10);
    v_ticket_no  charge_bill.ticket_no%type;
    v_现金金额   number := 0;
    v_报销金额   number := 0;
    v_attribute  charge_bill.attribute%type;
    v_residentid hospital.resident_info_.residentid%type;
  begin
    prv_锁定发票(in_ticket_no, in_ticket_type, v_ticket);
    if v_ticket.status <> 'WAIT_ACK'
    then
      raise_application_error(-20001, '不能给一个已经完成的发票中添加明细');
    end if;
  
    begin
      select a.fee, a.ticket_no, a.attribute
        into v_fee, v_ticket_no, v_attribute
        from hospital.charge_bill a, hospital.all_worker b
       where a.id = in_charge_billid
         and a.fee_operator = b.id
         and b.hospid = hospital.login.get_hospid
         for update nowait;
      if v_ticket.type = '个人发票'
      then
        if nvl(v_ticket_no, 'x') <> in_ticket_no
        then
          raise_application_error(-20001,
                                  '输入的编号为( ' || in_charge_billid ||
                                  ' )的单据已经包括在其他的发票中.;');
        else
          update charge_bill
             set ticket_no = null
           where id = in_charge_billid;
        end if;
      end if;
      v_find := 'YES';
    exception
      when no_data_found then
        v_find := 'NO';
        null;
    end;
  
    if v_find = 'NO'
    then
      begin
        select a.fee, a.ticket_no, a.attribute
          into v_fee, v_ticket_no, v_attribute
          from hospital.charge_bill_a01 a, hospital.all_worker b
         where a.id = in_charge_billid
           and a.fee_operator = b.id
           and b.hospid = hospital.login.get_hospid
           for update nowait;
        v_find := 'YES';
        if v_ticket.type = '个人发票'
        then
          if nvl(v_ticket_no, 'x') <> in_ticket_no
          then
            raise_application_error(-20001,
                                    '输入的编号为( ' || in_charge_billid ||
                                    ' )的单据已经包括在其他的发票中.;');
          else
            update charge_bill_a01
               set ticket_no = null
             where id = in_charge_billid;
          end if;
        end if;
      exception
        when no_data_found then
          v_find := 'NO';
          null;
      end;
    end if;
  
    if v_find = 'NO'
    then
      raise_application_error(-20001,
                              '找不到编号为( ' || in_charge_billid || ' )的收费账单.;');
    end if;
  
    if v_attribute = 'CASH'
    then
      v_现金金额 := v_fee;
    else
      if v_attribute = 'ACCOUNT'
      then
        begin
          select a.self_pay, a.account_pay
            into v_现金金额, v_报销金额
            from hospital.out_balance_info_ a
           where a.residentid = v_residentid
             and a.出院标志 = '出院'
             and a.update_reason is null;
        exception
          when no_data_found then
            raise_application_error(-20001,
                                    '找不到住院号为( ' || v_residentid ||
                                    ' )的出院记录.;');
        end;
      else
        v_报销金额 := v_fee;
      end if;
    end if;
  
    delete from invoice_print_detail
     where ticket_no = in_ticket_no
       and charge_billid = in_charge_billid;
  
    update invoice_print_ticket
       set fee      = nvl(fee, 0) - v_fee,
           现金金额 = nvl(现金金额, 0) - nvl(v_现金金额, 0),
           报销金额 = nvl(报销金额, 0) - nvl(v_报销金额, 0)
     where ticket_no = in_ticket_no;
  end s_发票_增加删除;

  --------------------------------------------------------------------------------------------
  procedure s_使用发票(in_type      in varchar2
                  ,out_print_no out varchar2) is
    t_rowid rowid;
  begin
    if in_type = '住院发票'
    then
      raise_application_error(-20001, '调用了错误的存储过程!!');
    end if;
    if nvl(get_system_option('按照工作地点分配发票号段' || in_type), 'N') = 'Y'
    then
      begin
        select a.print_no, a.rowid
          into out_print_no, t_rowid
          from invoice_pool a, worker_invoice_pool b
         where b.workerid = hospital.login.get_workerid
           and b.type = in_type
           and a.print_no <= to_no
           and b.invoiceid = a.invoiceid
           for update of a.print_no nowait;
        update invoice_pool
           set print_no = print_no + 1
         where rowid = t_rowid;
      exception
        when no_data_found then
          raise_application_error(-20001, '该职员没有可使用的发票.;');
      end;
    else
      begin
        select print_no
          into out_print_no
          from invoice_pool
         where workerid = hospital.login.get_workerid
           and type = in_type
           and print_no <= to_no
           for update nowait;
        update invoice_pool
           set print_no = print_no + 1
         where workerid = hospital.login.get_workerid
           and type = in_type;
      exception
        when no_data_found then
          raise_application_error(-20001,
                                  hospital.login.get_workerid || in_type ||
                                  '该职员没有可使用的发票.;');
      end;
    end if;
  end;
  /*
  --------------------------------------------------------------------------------------------
  procedure s_使用发票ex(in_type          in varchar2
                        ,in_pay_method    in varchar2
                        ,in_charge_billid in varchar2
                        ,out_print_no     out varchar2) is
    t_rowid      rowid;
    v_patientid  hospital.patient_.id%type;
    v_residentid hospital.resident_info_.residentid%type;
    v_attribute  hospital.charge_bill_.attribute%type;
    v_find       varchar2(10);
    v_fee        charge_bill.fee%type;
    v_ticket_no  charge_bill.ticket_no%type;
  begin
    if in_type = '住院发票'
    then
      raise_application_error(-20001, '调用了错误的存储过程!!');
    end if;
    if nvl(get_system_option('按照工作地点分配发票号段' || in_type), 'N') = 'Y'
    then
      begin
        select a.print_no, a.rowid
          into out_print_no, t_rowid
          from invoice_pool a, worker_invoice_pool b
         where b.workerid = hospital.login.get_workerid
           and b.type = in_type
           and a.print_no <= to_no
           and b.invoiceid = a.invoiceid
           for update of a.print_no nowait;
        update invoice_pool
           set print_no = print_no + 1
         where rowid = t_rowid;
      exception
        when no_data_found then
          raise_application_error(-20001, '该职员没有可使用的发票.;');
      end;
    else
      begin
        select print_no
          into out_print_no
          from invoice_pool
         where workerid = hospital.login.get_workerid
           and type = in_type
           and print_no <= to_no
           for update nowait;
        update invoice_pool
           set print_no = print_no + 1
         where workerid = hospital.login.get_workerid
           and type = in_type;
      exception
        when no_data_found then
          raise_application_error(-20001,
                                  hospital.login.get_workerid || in_type ||
                                  '该职员没有可使用的发票.;');
      end;
    end if;
    v_find := 'NO';
  
    begin
      select a.fee, a.ticket_no, a.attribute, a.patientid, a.residentid
        into v_fee, v_ticket_no, v_attribute, v_patientid, v_residentid
        from hospital.charge_bill a, hospital.worker b
       where a.id = in_charge_billid
         and a.fee_operator = b.id
         for update nowait;
      update charge_bill
         set ticket_no = out_print_no
       where id = in_charge_billid;
      v_find := 'YES';
    exception
      when no_data_found then
        v_find := 'NO';
        null;
    end;
  
    if v_find = 'NO'
    then
      begin
        select a.fee, a.ticket_no, a.attribute, a.patientid, a.residentid
          into v_fee, v_ticket_no, v_attribute, v_patientid, v_residentid
          from hospital.charge_bill_a01 a, hospital.worker b
         where a.id = in_charge_billid
           and a.fee_operator = b.id
           for update nowait;
        v_find := 'YES';
        update charge_bill_a01
           set ticket_no = out_print_no
         where id = in_charge_billid;
      exception
        when no_data_found then
          v_find := 'NO';
          null;
      end;
    end if;
  
    if v_find = 'NO'
    then
      raise_application_error(-20001,
                              '找不到编号为( ' || in_charge_billid ||
                              ' )的收费账单.;');
    end if;
  
    s_发票_新建单据(v_patientid,
                    v_residentid,
                    v_attribute,
                    '1',
                    in_type,
                    out_print_no);
  
    s_发票_增加明细(out_print_no, in_type, in_charge_billid, 1);
  
  end;
  */
  --------------------------------------------------------------------------------------------
  procedure prv_使用发票(in_fee_workerid in varchar2
                    ,in_type         in varchar2
                    ,out_print_no    out number) is
    t_rowid rowid;
  begin
    if in_type = '住院发票'
    then
      raise_application_error(-20001, '调用了错误的存储过程!!');
    end if;
    if nvl(get_system_option('按照工作地点分配发票号段' || in_type), 'N') = 'Y'
    then
      begin
        select a.print_no, a.rowid
          into out_print_no, t_rowid
          from invoice_pool a, worker_invoice_pool b
         where b.workerid = in_fee_workerid
           and b.type = in_type
           and a.print_no <= to_no
           and b.invoiceid = a.invoiceid
           for update of a.print_no nowait;
        update invoice_pool
           set print_no = print_no + 1
         where rowid = t_rowid;
      exception
        when no_data_found then
          raise_application_error(-20001, '该职员没有可使用的发票.;');
      end;
    else
      begin
        select print_no
          into out_print_no
          from invoice_pool
         where workerid = in_fee_workerid
           and type = in_type
           and print_no <= to_no
           for update nowait;
        update invoice_pool
           set print_no = print_no + 1
         where workerid = in_fee_workerid
           and type = in_type;
      exception
        when no_data_found then
          raise_application_error(-20001,
                                  in_fee_workerid || in_type ||
                                  '该职员没有可使用的发票.;');
      end;
    end if;
  end;
  --------------------------------------------------------------------------------------------

  procedure s_使用住院发票(in_type       in varchar2
                    ,in_action     in varchar2 default 'PRINT'
                    ,in_residentid in varchar2
                    ,in_invoice_no in varchar2 default null
                    ,in_printed    in varchar2) is
    v_invoice_no    hospital.charge_bill_.ticket_no%type;
    v_charge_billid hospital.charge_bill.id%type;
    v_flag          varchar2(10) default null;
    v_patientid     hospital.resident_info_.patientid%type;
    v_printed       integer;
  begin
    if nvl(hospital.get_system_option('使用住院发票管理'), 'N') <> 'Y'
    then
      return;
    end if;
    if in_invoice_no is null
    then
      null;
    end if;
    if in_action = 'PRINT'
    then
      begin
        select id
          into v_charge_billid
          from hospital.charge_bill
         where residentid = in_residentid
           and attribute = 'ACCOUNT'
           and ticket_no is null
           and rownum = 1;
      exception
        when no_data_found then
          begin
            select id, 'A01'
              into v_charge_billid, v_flag
              from hospital.charge_bill_a01_
             where residentid = in_residentid
               and attribute = 'ACCOUNT'
               and ticket_no is null
               and rownum = 1;
          exception
            when no_data_found then
              return;
          end;
      end;
    
      begin
        select patientid
          into v_patientid
          from hospital.resident_info_
         where residentid = in_residentid
           and process_reason = 'IN';
      exception
        when no_data_found then
          raise_application_error(-20001,
                                  '没有找到住院号为' || in_residentid ||
                                  '的入院登记记录.;');
      end;
    
      begin
        select print_no
          into v_invoice_no
          from invoice_pool
         where workerid = hospital.login.get_workerid
           and type = in_type
           and print_no <= to_no
           for update nowait;
        --跳号处理
        update invoice_pool
           set print_no = print_no + 1
         where workerid = hospital.login.get_workerid
           and type = in_type;
      exception
        when no_data_found then
          raise_application_error(-20001, '该职员没有可使用的发票.;');
      end;
    
      s_发票_新建单据(v_patientid,
                in_residentid,
                'ACCOUNT',
                '1',
                in_type,
                v_invoice_no,
                in_printed);
      if to_number(in_printed) >= 1
      then
        v_printed := 1;
      else
        v_printed := -1;
      end if;
    
      s_发票_增加明细(v_invoice_no, in_type, v_charge_billid, v_printed);
      /*
      --记录住院发票使用情况
      insert into hospital.resident_invoice_consume
        (residentid, invoice_no, workerid, update_date, print_count)
      values
        (in_residentid,
         v_invoice_no,
         hospital.login.get_workerid,
         sysdate,
         in_printed);
      */
      --记录发票使用情况于charge_bill
      if v_flag is null
      then
        update hospital.charge_bill
           set ticket_no = v_invoice_no
         where residentid = in_residentid
           and attribute = 'ACCOUNT'
           and ticket_no is null;
      else
        update hospital.charge_bill_a01_
           set ticket_no = v_invoice_no
         where residentid = in_residentid
           and attribute = 'ACCOUNT'
           and ticket_no is null;
      end if;
    end if;
    commit;
  end;
  --------------------------------------------------------------------------------------------

  procedure s_重新使用住院发票(in_type       in varchar2
                      ,in_action     in varchar2 default 'PRINT'
                      ,in_residentid in varchar2
                      ,in_printed    in varchar2) is
    v_invoice_no    hospital.charge_bill_.ticket_no%type;
    v_charge_billid hospital.charge_bill.id%type;
    v_flag          varchar2(10) default null;
    v_patientid     hospital.resident_info_.patientid%type;
    v_printed       integer;
  
  begin
    if nvl(hospital.get_system_option('使用住院发票管理'), 'N') <> 'Y'
    then
      return;
    end if;
    if in_action = 'PRINT'
    then
      begin
        select id, ticket_no
          into v_charge_billid, v_invoice_no
          from hospital.charge_bill
         where residentid = in_residentid
           and attribute = 'ACCOUNT'
           and ticket_no is not null
           and rownum = 1;
      exception
        when no_data_found then
          begin
            select id, 'A01', ticket_no
              into v_charge_billid, v_flag, v_invoice_no
              from hospital.charge_bill_a01_
             where residentid = in_residentid
               and attribute = 'ACCOUNT'
               and ticket_no is not null
               and rownum = 1;
          exception
            when no_data_found then
              return;
          end;
      end;
    
      begin
        select patientid
          into v_patientid
          from hospital.resident_info_
         where residentid = in_residentid
           and process_reason = 'IN';
      exception
        when no_data_found then
          raise_application_error(-20001,
                                  '没有找到住院号为' || in_residentid ||
                                  '的入院登记记录.;');
      end;
    
      begin
        select print_no
          into v_invoice_no
          from invoice_pool
         where workerid = hospital.login.get_workerid
           and type = in_type
           and print_no <= to_no
           for update nowait;
        --跳号处理
        update invoice_pool
           set print_no = print_no + 1
         where workerid = hospital.login.get_workerid
           and type = in_type;
      exception
        when no_data_found then
          raise_application_error(-20001, '该职员没有可使用的发票.;');
      end;
    
      s_发票_新建单据(v_patientid,
                in_residentid,
                'ACCOUNT',
                '1',
                in_type,
                v_invoice_no,
                in_printed);
      if to_number(in_printed) >= 1
      then
        v_printed := 1;
      else
        v_printed := -1;
      end if;
    
      s_发票_增加明细(v_invoice_no, in_type, v_charge_billid, v_printed);
      /*
      --记录住院发票使用情况
      insert into hospital.resident_invoice_consume
        (residentid, invoice_no, workerid, update_date, print_count)
      values
        (in_residentid,
         v_invoice_no,
         hospital.login.get_workerid,
         sysdate,
         in_printed);
      */
      --记录发票使用情况于charge_bill
      if v_flag is null
      then
        update hospital.charge_bill
           set ticket_no = v_invoice_no
         where residentid = in_residentid
           and attribute = 'ACCOUNT'
           and ticket_no is null;
      else
        update hospital.charge_bill_a01_
           set ticket_no = v_invoice_no
         where residentid = in_residentid
           and attribute = 'ACCOUNT'
           and ticket_no is null;
      end if;
    end if;
    commit;
  end;
  --------------------------------------------------------------------------------------------
  function s_发票打印_读取住院发票号(in_residentid in varchar2) return varchar2 is
    i            number;
    v_invoice_no varchar2(20);
  begin
    if nvl(hospital.get_system_option('使用住院发票管理'), 'N') <> 'Y'
    then
      return null;
    end if;
    begin
      select 2
        into i
        from hospital.charge_bill
       where residentid = in_residentid
         and attribute = 'ACCOUNT'
         and ticket_no is null
         and rownum = 1;
      return null;
    exception
      when no_data_found then
        begin
          select ticket_no
            into v_invoice_no
            from (select id, ticket_no, residentid, fee_date
                    from hospital.charge_bill
                   where residentid = in_residentid
                     and attribute = 'ACCOUNT'
                     and ticket_no is not null
                  union all
                  select id, ticket_no, residentid, fee_date
                    from hospital.charge_bill_a01_
                   where residentid = in_residentid
                     and attribute = 'ACCOUNT'
                     and ticket_no is not null
                   order by fee_date desc)
           where rownum = 1;
        
        exception
          when no_data_found then
            raise_application_error(-20001,
                                    '此病人没有结算单据，无法获得发票号！！');
        end;
    end;
  
    return v_invoice_no;
    commit;
  end s_发票打印_读取住院发票号;
  --------------------------------------------------------------------------------------------
  function s_get_门诊发票号(in_fee_workerid in varchar2
                      ,in_from_date    in date
                      ,in_to_date      in date) return varchar2 is
    v_str varchar2(2000);
    v_min varchar2(20) := null;
    v_max varchar2(20) := null;
  begin
    for c in (select ticket_no, to_number(ticket_no) lines
                from hospital.charge_bill a
               where fee_operator = in_fee_workerid
                 and fee_date > in_from_date
                 and fee_date <= in_to_date
                 and ticket_no is not null
                 and attribute in ('USER_INS1',
                                   'USER_INS2',
                                   'USER_INS3',
                                   'USER_INS4',
                                   'USER_INS5',
                                   'USER_INS6',
                                   'USER_INS7',
                                   'USER_INS8',
                                   'USER_INS9',
                                   'CASH',
                                   'ASSURANCE')
                 and ticket_no <> ' '
              union all
              select ticket_no, to_number(ticket_no) lines
                from hospital.charge_bill_a01 a
               where fee_operator = in_fee_workerid
                 and fee_date > in_from_date
                 and fee_date <= in_to_date
                 and ticket_no is not null
                 and attribute in ('USER_INS1',
                                   'USER_INS2',
                                   'USER_INS3',
                                   'USER_INS4',
                                   'USER_INS5',
                                   'USER_INS6',
                                   'USER_INS7',
                                   'USER_INS8',
                                   'USER_INS9',
                                   'CASH',
                                   'ASSURANCE')
                 and ticket_no <> ' '
               order by lines)
    loop
      if v_min is not null
      then
        if v_max is not null
        then
          if to_number(v_max) + 1 <> to_number(c.ticket_no)
          then
            if v_str is null
            then
              v_str := v_min || '-' || v_max;
            else
              v_str := v_str || ',' || v_min || '-' || v_max;
            end if;
            v_min := c.ticket_no;
            v_max := null;
          else
            v_max := c.ticket_no;
          end if;
        else
          v_max := c.ticket_no;
          if to_number(v_min) + 1 <> to_number(v_max)
          then
            if v_str is null
            then
              v_str := v_min;
            else
              v_str := v_str || ',' || v_min;
            end if;
            v_min := v_max;
            v_max := null;
          end if;
        end if;
      else
        v_min := c.ticket_no;
      end if;
    end loop;
    if v_min is not null
    then
      if v_str is null
      then
        if v_max is null
        then
          v_str := v_min;
        else
          v_str := v_min || '-' || v_max;
        end if;
      else
        if v_max is null
        then
          v_str := v_str || ',' || v_min;
        else
          v_str := v_str || ',' || v_min || '-' || v_max;
        end if;
      end if;
    end if;
    return v_str;
  end s_get_门诊发票号;
  --------------------------------------------------------------------------------------------
  function s_get_门诊退票号(in_fee_workerid in varchar2
                      ,in_from_date    in date
                      ,in_to_date      in date) return varchar2 is
    v_str varchar2(2000);
  begin
    for c in (select ticket_no, to_number(ticket_no) lines
                from charge_bill
               where withdrawer = in_fee_workerid
                 and withdraw_date > in_from_date
                 and withdraw_date <= in_to_date
                 and ticket_no is not null
                 and attribute in ('USER_INS1',
                                   'USER_INS2',
                                   'USER_INS3',
                                   'USER_INS4',
                                   'USER_INS5',
                                   'USER_INS6',
                                   'USER_INS7',
                                   'USER_INS8',
                                   'USER_INS9',
                                   'CASH',
                                   'ASSURANCE')
                 and ticket_no <> ' '
              union all
              select ticket_no, to_number(ticket_no) lines
                from charge_bill_a01
               where withdrawer = in_fee_workerid
                 and withdraw_date > in_from_date
                 and withdraw_date <= in_to_date
                 and ticket_no is not null
                 and attribute in ('USER_INS1',
                                   'USER_INS2',
                                   'USER_INS3',
                                   'USER_INS4',
                                   'USER_INS5',
                                   'USER_INS6',
                                   'USER_INS7',
                                   'USER_INS8',
                                   'USER_INS9',
                                   'CASH',
                                   'ASSURANCE')
                 and ticket_no <> ' '
               order by lines)
    loop
      if v_str is null
      then
        v_str := c.ticket_no || ',';
      else
        v_str := v_str || c.ticket_no || ',';
      end if;
      if lengthb(v_str) >= 1990
      then
        exit;
      end if;
    end loop;
    return v_str;
  end s_get_门诊退票号;
  --------------------------------------------------------------------------------------------
  function s_get_门诊发票数(in_fee_workerid in varchar2
                      ,in_from_date    in date
                      ,in_to_date      in date) return number is
    v_num number := 0;
  begin
    select count(distinct id)
      into v_num
      from (select id
              from hospital.charge_bill a
             where a.fee_operator = in_fee_workerid
               and a.fee_date > in_from_date
               and a.fee_date <= in_to_date
               and attribute in ('USER_INS1',
                                 'USER_INS2',
                                 'USER_INS3',
                                 'USER_INS4',
                                 'USER_INS5',
                                 'USER_INS6',
                                 'USER_INS7',
                                 'USER_INS8',
                                 'USER_INS9',
                                 'CASH',
                                 'ASSURANCE')
            union
            select id
              from hospital.charge_bill_a01 a
             where a.fee_operator = in_fee_workerid
               and a.fee_date > in_from_date
               and a.fee_date <= in_to_date
               and attribute in ('USER_INS1',
                                 'USER_INS2',
                                 'USER_INS3',
                                 'USER_INS4',
                                 'USER_INS5',
                                 'USER_INS6',
                                 'USER_INS7',
                                 'USER_INS8',
                                 'USER_INS9',
                                 'CASH',
                                 'ASSURANCE'));
    return v_num;
  end s_get_门诊发票数;
  --------------------------------------------------------------------------------------------
  function s_get_门诊退票数(in_fee_workerid in varchar2
                      ,in_from_date    in date
                      ,in_to_date      in date) return number is
    v_num number := 0;
  begin
    select count(distinct id)
      into v_num
      from (select id
              from hospital.charge_bill a
             where a.withdrawer = in_fee_workerid
               and a.withdraw_date > in_from_date
               and a.withdraw_date <= in_to_date
               and attribute in ('USER_INS1',
                                 'USER_INS2',
                                 'USER_INS3',
                                 'USER_INS4',
                                 'USER_INS5',
                                 'USER_INS6',
                                 'USER_INS7',
                                 'USER_INS8',
                                 'USER_INS9',
                                 'CASH',
                                 'ASSURANCE')
               and a.status = 'WITHDRAWED'
            union
            select id
              from hospital.charge_bill_a01 a
             where a.withdrawer = in_fee_workerid
               and a.withdraw_date > in_from_date
               and a.withdraw_date <= in_to_date
               and attribute in ('USER_INS1',
                                 'USER_INS2',
                                 'USER_INS3',
                                 'USER_INS4',
                                 'USER_INS5',
                                 'USER_INS6',
                                 'USER_INS7',
                                 'USER_INS8',
                                 'USER_INS9',
                                 'CASH',
                                 'ASSURANCE')
               and a.status = 'WITHDRAWED');
    return v_num;
  end s_get_门诊退票数;
  --------------------------------------------------------------------------------------------
  function s_get_有号门诊发票数(in_fee_workerid in varchar2
                        ,in_from_date    in date
                        ,in_to_date      in date) return number is
    v_num number := 0;
  begin
    select count(distinct id)
      into v_num
      from (select id
              from hospital.charge_bill a
             where a.fee_operator = in_fee_workerid
               and a.fee_date > in_from_date
               and a.fee_date <= in_to_date
                  --and a.attribute = 'CASH'
               and a.ticket_no is not null
            union
            select id
              from hospital.charge_bill_a01 a
             where a.fee_operator = in_fee_workerid
               and a.fee_date > in_from_date
               and a.fee_date <= in_to_date
                  -- and attribute = 'CASH'
               and a.ticket_no is not null);
    return v_num;
  end s_get_有号门诊发票数;
  --------------------------------------------------------------------------------------------
  function s_get_有号门诊退票数(in_fee_workerid in varchar2
                        ,in_from_date    in date
                        ,in_to_date      in date) return number is
    v_num number := 0;
  begin
    select count(distinct id)
      into v_num
      from (select id
              from hospital.charge_bill a
             where a.withdrawer = in_fee_workerid
               and a.withdraw_date > in_from_date
               and a.withdraw_date <= in_to_date
                  --and attribute = 'CASH'
               and a.status = 'WITHDRAWED'
               and a.ticket_no is not null
            union
            select id
              from hospital.charge_bill_a01 a
             where a.withdrawer = in_fee_workerid
               and a.withdraw_date > in_from_date
               and a.withdraw_date <= in_to_date
                  --and attribute = 'CASH'
               and a.status = 'WITHDRAWED'
               and a.ticket_no is not null);
    return v_num;
  end s_get_有号门诊退票数;
  --------------------------------------------------------------------------------------------
  function s_get_无号门诊发票数(in_fee_workerid in varchar2
                        ,in_from_date    in date
                        ,in_to_date      in date) return number is
    v_num number := 0;
  begin
    select count(distinct id)
      into v_num
      from (select id
              from hospital.charge_bill a
             where a.fee_operator = in_fee_workerid
               and a.fee_date > in_from_date
               and a.fee_date <= in_to_date
               and a.attribute = 'CASH'
               and a.ticket_no is null
            union
            select id
              from hospital.charge_bill_a01 a
             where a.fee_operator = in_fee_workerid
               and a.fee_date > in_from_date
               and a.fee_date <= in_to_date
               and attribute = 'CASH'
               and a.ticket_no is null);
    return v_num;
  end s_get_无号门诊发票数;
  --------------------------------------------------------------------------------------------
  function s_get_无号门诊退票数(in_fee_workerid in varchar2
                        ,in_from_date    in date
                        ,in_to_date      in date) return number is
    v_num number := 0;
  begin
    select count(distinct id)
      into v_num
      from (select id
              from hospital.charge_bill a
             where a.withdrawer = in_fee_workerid
               and a.withdraw_date > in_from_date
               and a.withdraw_date <= in_to_date
               and attribute = 'CASH'
               and a.status = 'WITHDRAWED'
               and a.ticket_no is null
            union
            select id
              from hospital.charge_bill_a01 a
             where a.withdrawer = in_fee_workerid
               and a.withdraw_date > in_from_date
               and a.withdraw_date <= in_to_date
               and attribute = 'CASH'
               and a.status = 'WITHDRAWED'
               and a.ticket_no is null);
    return v_num;
  end s_get_无号门诊退票数;
  --------------------------------------------------------------------------------------------
  function s_get_收费员预交金票号(in_fee_workerid in varchar2
                         ,in_from_date    in date
                         ,in_to_date      in date) return varchar2 is
    v_str varchar2(2000);
    v_min varchar2(10) := null;
    v_max varchar2(10) := null;
  begin
    for c in (select bill_no ticket_no, to_number(bill_no) lines
                from hospital.pre_pay a
               where fee_operator = in_fee_workerid
                 and fee_date > in_from_date
                 and fee_date <= in_to_date
                 and bill_no is not null
                 and bill_type in ('A', 'B', 'C', 'BANK')
                 and bill_no <> ' '
               order by lines)
    loop
      if v_min is not null
      then
        if v_max is not null
        then
          if to_number(v_max) + 1 <> to_number(c.ticket_no)
          then
            v_str := v_str || ',' || v_min || '-' || v_max;
            v_min := c.ticket_no;
            v_max := null;
          else
            v_max := c.ticket_no;
          end if;
        else
          v_max := c.ticket_no;
          if to_number(v_min) + 1 <> to_number(v_max)
          then
            v_str := v_str || ',' || v_min;
            v_min := v_max;
            v_max := null;
          end if;
        end if;
      else
        v_min := c.ticket_no;
      end if;
    end loop;
    if v_min is not null
    then
      if v_max is null
      then
        v_str := v_str || ',' || v_min;
      else
        v_str := v_str || ',' || v_min || '-' || v_max;
      end if;
    end if;
    return v_str;
  end s_get_收费员预交金票号;
  --------------------------------------------------------------------------------------------
  function s_get_收费员预交金票数(in_fee_workerid in varchar2
                         ,in_from_date    in date
                         ,in_to_date      in date) return number is
    v_num number;
  begin
    select count(distinct ticket_no)
      into v_num
      from (select bill_no ticket_no
              from pre_pay
             where fee_operator = in_fee_workerid
               and fee_date > in_from_date
               and fee_date <= in_to_date
               and bill_no is not null
               and bill_type in ('A', 'B', 'C', 'BANK')
               and bill_no <> ' ');
    return v_num;
  end s_get_收费员预交金票数;
  --------------------------------------------------------------------------------------------
  function s_get_收费员退预交金票号(in_fee_workerid in varchar2
                          ,in_from_date    in date
                          ,in_to_date      in date) return varchar2 is
    v_str varchar2(2000);
  begin
    for c in (select bill_no ticket_no, to_number(bill_no) lines
                from pre_pay
               where withdrawer = in_fee_workerid
                 and withdraw_date > in_from_date
                 and withdraw_date <= in_to_date
                 and bill_no is not null
                 and attribute in ('A', 'B', 'C', 'CASH')
                 and bill_no <> ' '
               order by lines)
    loop
      if v_str is null
      then
        v_str := c.ticket_no || ',';
      else
        v_str := v_str || c.ticket_no || ',';
      end if;
      if lengthb(v_str) >= 1990
      then
        exit;
      end if;
    end loop;
    return v_str;
  end s_get_收费员退预交金票号;
  --------------------------------------------------------------------------------------------
  function s_get_收费员退预交金票数(in_fee_workerid in varchar2
                          ,in_from_date    in date
                          ,in_to_date      in date) return number is
    v_num number;
  begin
    select count(distinct ticket_no)
      into v_num
      from (select bill_no ticket_no
              from pre_pay
             where withdrawer = in_fee_workerid
               and withdraw_date > in_from_date
               and withdraw_date <= in_to_date
               and bill_no is not null
               and attribute in ('A', 'B', 'C', 'CASH')
               and bill_no <> ' ');
    return v_num;
  end s_get_收费员退预交金票数;
  --------------------------------------------------------------------------------------------
  function s_get_全院预交金票号(in_from_date in date
                        ,in_to_date   in date) return varchar2 is
    v_str varchar2(2000);
    v_min varchar2(10) := null;
    v_max varchar2(10) := null;
  begin
    for c in (select a.bill_no ticket_no, to_number(a.bill_no) lines
                from hospital.pre_pay a, hospital.department b
               where a.fee_date > in_from_date
                 and a.fee_date <= in_to_date
                 and a.bill_no is not null
                 and a.bill_type in ('A', 'B', 'C', 'BANK')
                 and a.bill_no <> ' '
                 and a.deptid = b.id
               order by lines)
    loop
      if v_min is not null
      then
        if v_max is not null
        then
          if to_number(v_max) + 1 <> to_number(c.ticket_no)
          then
            if v_str is null
            then
              v_str := v_min || '-' || v_max;
            else
              v_str := v_str || ',' || v_min || '-' || v_max;
            end if;
            v_min := c.ticket_no;
            v_max := null;
          else
            v_max := c.ticket_no;
          end if;
        else
          v_max := c.ticket_no;
          if to_number(v_min) + 1 <> to_number(v_max)
          then
            if v_str is null
            then
              v_str := v_min;
            else
              v_str := v_str || ',' || v_min;
            end if;
            v_min := v_max;
            v_max := null;
          end if;
        end if;
      else
        v_min := c.ticket_no;
      end if;
    end loop;
    if v_min is not null
    then
      if v_str is null
      then
        if v_max is null
        then
          v_str := v_min;
        else
          v_str := v_min || '-' || v_max;
        end if;
      else
        if v_max is null
        then
          v_str := v_str || ',' || v_min;
        else
          v_str := v_str || ',' || v_min || '-' || v_max;
        end if;
      end if;
    end if;
    return v_str;
  end s_get_全院预交金票号;
  --------------------------------------------------------------------------------------------
  function s_get_全院预交金票数(in_from_date in date
                        ,in_to_date   in date) return number is
    v_num number;
  begin
    select count(distinct ticket_no)
      into v_num
      from (select a.bill_no ticket_no
              from pre_pay a, hospital.department b
             where a.fee_date > in_from_date
               and a.fee_date <= in_to_date
               and a.bill_no is not null
               and a.bill_type in ('A', 'B', 'C', 'BANK')
               and a.bill_no <> ' '
               and a.deptid = b.id);
    return v_num;
  end s_get_全院预交金票数;
  --------------------------------------------------------------------------------------------
  function s_get_全院退预交金票号(in_from_date in date
                         ,in_to_date   in date) return varchar2 is
    v_str varchar2(2000);
  begin
    for c in (select a.bill_no ticket_no, to_number(a.bill_no) lines
                from pre_pay a, hospital.department b
               where a.withdraw_date > in_from_date
                 and a.withdraw_date <= in_to_date
                 and a.bill_no is not null
                 and a.attribute in ('A', 'B', 'C', 'CASH')
                 and a.bill_no <> ' '
                 and a.deptid = b.id
               order by lines)
    loop
      if v_str is null
      then
        v_str := c.ticket_no || ',';
      else
        v_str := v_str || c.ticket_no || ',';
      end if;
      if lengthb(v_str) >= 1990
      then
        exit;
      end if;
    end loop;
    return v_str;
  end s_get_全院退预交金票号;
  --------------------------------------------------------------------------------------------
  function s_get_全院退预交金票数(in_from_date in date
                         ,in_to_date   in date) return number is
    v_num number;
  begin
    select count(distinct ticket_no)
      into v_num
      from (select a.bill_no ticket_no
              from pre_pay a, hospital.department b
             where a.withdraw_date > in_from_date
               and a.withdraw_date <= in_to_date
               and a.bill_no is not null
               and a.attribute in ('A', 'B', 'C', 'CASH')
               and a.bill_no <> ' '
               and a.deptid = b.id);
    return v_num;
  end s_get_全院退预交金票数;
  --------------------------------------------------------------------------------------------
  procedure i_按操作员_设置打印号段(in_type      in varchar2
                         ,in_invoiceid in varchar2
                         ,in_remark    in varchar2 default null) is
    v_invoice      invoice%rowtype;
    v_invoice_pool invoice_pool%rowtype;
  begin
    begin
      lock_invoice_info(in_invoiceid, v_invoice);
      if v_invoice.service <> '领用'
      then
        raise_application_error(-20001,
                                '不是领用发票的记录,不能设置打印号段.;');
      end if;
    
      if v_invoice.status <> 'ACKED'
      then
        raise_application_error(-20001,
                                '该号段的发票还没有确认,不能设置打印号段.;');
      end if;
    
      if v_invoice.workerid <> hospital.login.get_workerid
      then
        raise_application_error(-20001,
                                '该号段的发票不是你领用的,不能设置打印号段.;');
      end if;
    exception
      when no_data_found then
        null;
    end;
    --判断该职员的打印发票号段中没有可使用的发票了
    begin
      select *
        into v_invoice_pool
        from invoice_pool
       where workerid = hospital.login.get_workerid
         and type = in_type
         for update nowait;
      if v_invoice_pool.print_no <= v_invoice_pool.to_no
      then
        raise_application_error(-20001,
                                '当前使用的发票还没有打印完毕,不能设置新的打印号段,下一个打印发票号是' ||
                                to_char(v_invoice_pool.print_no) || '.;');
      end if;
      update invoice_pool
         set from_no   = v_invoice.from_no,
             to_no     = v_invoice.to_no,
             print_no  = v_invoice.from_no,
             invoiceid = v_invoice.id,
             remark    = in_remark
       where workerid = hospital.login.get_workerid
         and type = in_type;
    exception
      when no_data_found then
        insert into invoice_pool
          (workerid, type, invoiceid, from_no, print_no, to_no, remark)
        values
          (hospital.login.get_workerid,
           in_type,
           v_invoice.id,
           v_invoice.from_no,
           v_invoice.from_no,
           v_invoice.to_no,
           in_remark);
    end;
    update invoice
       set status = 'RETURN'
     where status = 'PRINTING'
       and type = in_type
       and workerid = hospital.login.get_workerid;
    update invoice set status = 'PRINTING' where id = in_invoiceid;
    commit;
  end i_按操作员_设置打印号段;
  --------------------------------------------------------------------------------------------
  procedure i_按工作地点_设置打印号段(in_type      in varchar2
                          ,in_invoiceid in varchar2
                          ,in_remark    in varchar2 default null) is
    v_invoice      invoice%rowtype;
    v_invoice_pool invoice_pool%rowtype;
  begin
    begin
      lock_invoice_info(in_invoiceid, v_invoice);
      if v_invoice.service <> '领用'
      then
        raise_application_error(-20001,
                                '不是领用发票的记录,不能设置打印号段.;');
      end if;
    
      if v_invoice.status <> 'ACKED'
      then
        raise_application_error(-20001,
                                '该号段的发票还没有确认,不能设置打印号段.;');
      end if;
    
    exception
      when no_data_found then
        null;
    end;
    --判断该职员的打印发票号段中没有可使用的发票了
    begin
      select *
        into v_invoice_pool
        from invoice_pool
       where workerid = v_invoice.workerid
         and type = in_type
         for update nowait;
      if v_invoice_pool.print_no <= v_invoice_pool.to_no
      then
        raise_application_error(-20001,
                                '当前使用的发票还没有打印完毕,不能设置新的打印号段,下一个打印发票号是' ||
                                to_char(v_invoice_pool.print_no) || '.;');
      end if;
      update invoice_pool
         set from_no   = v_invoice.from_no,
             to_no     = v_invoice.to_no,
             print_no  = v_invoice.from_no,
             invoiceid = v_invoice.id,
             remark    = in_remark
       where workerid = v_invoice.workerid
         and type = in_type;
    exception
      when no_data_found then
        insert into invoice_pool
          (workerid, type, invoiceid, from_no, print_no, to_no, remark)
        values
          (v_invoice.workerid,
           in_type,
           v_invoice.id,
           v_invoice.from_no,
           v_invoice.from_no,
           v_invoice.to_no,
           in_remark);
    end;
    update invoice
       set status = 'RETURN'
     where status = 'PRINTING'
       and type = in_type
       and workerid = v_invoice.workerid;
    update invoice set status = 'PRINTING' where id = in_invoiceid;
    commit;
  end i_按工作地点_设置打印号段;
  --------------------------------------------------------------------------------------------
  function s_get_住院发票号(in_fee_workerid in varchar2
                      ,in_from_date    in date
                      ,in_to_date      in date) return varchar2 is
    v_str varchar2(2000);
    v_min varchar2(10) := null;
    v_max varchar2(10) := null;
  begin
    for c in (select ticket_no, to_number(ticket_no) lines
                from hospital.charge_bill a
               where fee_operator = in_fee_workerid
                 and fee_date > in_from_date
                 and fee_date <= in_to_date
                 and ticket_no is not null
                 and residentid is not null
                 and attribute in ('ACCOUNT')
                 and ticket_no <> ' '
               group by ticket_no
              union
              select ticket_no, to_number(ticket_no) lines
                from hospital.charge_bill_a01 a
               where fee_operator = in_fee_workerid
                 and fee_date > in_from_date
                 and fee_date <= in_to_date
                 and residentid is not null
                 and ticket_no is not null
                 and attribute in ('ACCOUNT')
                 and ticket_no <> ' '
               group by ticket_no
               order by lines)
    loop
      if v_min is not null
      then
        if v_max is not null
        then
          if to_number(v_max) + 1 <> to_number(c.ticket_no)
          then
            v_str := v_str || ',' || v_min || '-' || v_max;
            v_min := c.ticket_no;
            v_max := null;
          else
            v_max := c.ticket_no;
          end if;
        else
          v_max := c.ticket_no;
          if to_number(v_min) + 1 <> to_number(v_max)
          then
            v_str := v_str || ',' || v_min;
            v_min := v_max;
            v_max := null;
          end if;
        end if;
      else
        v_min := c.ticket_no;
      end if;
    end loop;
    if v_min is not null
    then
      if v_max is null
      then
        v_str := v_str || ',' || v_min;
      else
        v_str := v_str || ',' || v_min || '-' || v_max;
      end if;
    end if;
    return v_str;
  end s_get_住院发票号;
  --------------------------------------------------------------------------------------------
  function s_get_住院退票号(in_fee_workerid in varchar2
                      ,in_from_date    in date
                      ,in_to_date      in date) return varchar2 is
    v_str varchar2(2000);
  begin
    for c in (select ticket_no, to_number(ticket_no) lines
                from charge_bill
               where fee_operator = in_fee_workerid
                 and fee_date > in_from_date
                 and fee_date <= in_to_date
                 and ticket_no is not null
                 and attribute in ('ACCOUNT')
                 and ticket_no <> ' '
                 and status = 'WITHDRAWED'
               group by ticket_no
              union
              select ticket_no, to_number(ticket_no) lines
                from charge_bill_a01
               where fee_operator = in_fee_workerid
                 and fee_date > in_from_date
                 and fee_date <= in_to_date
                 and ticket_no is not null
                 and attribute in ('ACCOUNT')
                 and ticket_no <> ' '
                 and status = 'WITHDRAWED'
               group by ticket_no
               order by lines)
    loop
      v_str := v_str || c.ticket_no || ',';
      if lengthb(v_str) >= 1990
      then
        exit;
      end if;
    end loop;
    return v_str;
  end s_get_住院退票号;
  --------------------------------------------------------------------------------------------
  function s_get_住院发票数(in_fee_workerid in varchar2
                      ,in_from_date    in date
                      ,in_to_date      in date) return number is
    v_num number := 0;
  begin
    select count(distinct id)
      into v_num
      from (select id
              from hospital.charge_bill a
             where a.fee_operator = in_fee_workerid
               and a.fee_date > in_from_date
               and a.fee_date <= in_to_date
               and attribute = 'ACCOUNT'
            union
            select id
              from hospital.charge_bill_a01 a
             where a.fee_operator = in_fee_workerid
               and a.fee_date > in_from_date
               and a.fee_date <= in_to_date
               and attribute = 'ACCOUNT');
    return v_num;
  end s_get_住院发票数;
  --------------------------------------------------------------------------------------------
  function s_get_住院退票数(in_fee_workerid in varchar2
                      ,in_from_date    in date
                      ,in_to_date      in date) return number is
    v_num number := 0;
  begin
    select count(distinct id)
      into v_num
      from (select id
              from hospital.charge_bill a
             where a.fee_operator = in_fee_workerid
               and a.fee_date > in_from_date
               and a.fee_date <= in_to_date
               and attribute = 'ACCOUNT'
               and a.status = 'WITHDRAWED'
               and status = 'WITHDRAWED'
            
            union
            select id
              from hospital.charge_bill_a01 a
             where a.fee_operator = in_fee_workerid
               and a.fee_date > in_from_date
               and a.fee_date <= in_to_date
               and attribute = 'ACCOUNT'
               and a.status = 'WITHDRAWED');
    return v_num;
  end s_get_住院退票数;
  --------------------------------------------------------------------------------------------
  procedure s_打印门诊发票(in_patientid     in varchar2
                    ,in_attribute     in varchar2
                    ,in_from_date     in varchar2
                    ,in_to_date       in varchar2
                    ,in_charge_billid in varchar2
                    ,out_ticket_no    out varchar2) is
    i           number;
    v_ticket_no invoice_print_ticket.ticket_no%type;
    v_total_fee number := 0;
    cursor bill(pin_patientid     in varchar2
               ,pin_attribute     in varchar2
               ,pin_from_date     in varchar2
               ,pin_to_date       in varchar2
               ,pin_charge_billid in varchar2) is
      select a.id, a.fee
        from charge_bill a, hospital.all_worker b
       where a.patientid = pin_patientid
         and a.attribute = pin_attribute
         and a.ticket_no is null
         and a.fee_date >= get_date_from_str(pin_from_date)
         and a.fee_date <= get_date_from_str(pin_to_date)
         and (a.id = pin_charge_billid and pin_charge_billid is not null or
             pin_charge_billid is null)
         and a.status = 'FINISHED'
         and a.fee_operator = b.id
         and b.hospid = hospital.login.get_hospid
         for update nowait;
    cursor bill_a01(pin_patientid     in varchar2
                   ,pin_attribute     in varchar2
                   ,pin_from_date     in varchar2
                   ,pin_to_date       in varchar2
                   ,pin_charge_billid in varchar2) is
      select a.id, a.fee
        from charge_bill_a01 a, hospital.all_worker b
       where a.patientid = pin_patientid
         and a.attribute = pin_attribute
         and a.ticket_no is null
         and a.fee_date >= get_date_from_str(pin_from_date)
         and a.fee_date <= get_date_from_str(pin_to_date)
         and (a.id = pin_charge_billid and pin_charge_billid is not null or
             pin_charge_billid is null)
         and a.status = 'FINISHED'
         and a.fee_operator = b.id
         and b.hospid = hospital.login.get_hospid
         for update nowait;
    v_bill bill%rowtype;
    v_find number := 0;
  begin
    begin
      select 2
        into i
        from patient
       where id = in_patientid
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '编号为( ' || in_patientid || ' )的病人不存在.;');
    end;
  
    if in_attribute not in ('USER_DEF9', 'PRE_PAY')
    then
      raise_application_error(-20001,
                              '不支持的业务( ' || in_attribute || ').;');
    end if;
  
    s_使用发票('门诊发票', v_ticket_no);
  
    open bill(in_patientid,
              in_attribute,
              in_from_date,
              in_to_date,
              in_charge_billid);
    loop
      fetch bill
        into v_bill;
      exit when bill%notfound;
      insert into invoice_print_detail
        (ticket_no, charge_billid)
      values
        (v_ticket_no, v_bill.id);
      update charge_bill set ticket_no = v_ticket_no where id = v_bill.id;
      v_total_fee := v_total_fee + v_bill.fee;
      v_find      := v_find + 1;
    end loop;
    close bill;
  
    open bill_a01(in_patientid,
                  in_attribute,
                  in_from_date,
                  in_to_date,
                  in_charge_billid);
    loop
      fetch bill_a01
        into v_bill;
      exit when bill_a01%notfound;
      insert into invoice_print_detail
        (ticket_no, charge_billid)
      values
        (v_ticket_no, v_bill.id);
      update charge_bill_a01
         set ticket_no = v_ticket_no
       where id = v_bill.id;
      v_total_fee := v_total_fee + v_bill.fee;
      v_find      := v_find + 1;
    end loop;
    close bill_a01;
    if v_find <= 0
    then
      raise_application_error(-20001, '没有找到要打印的单据.;');
    end if;
    insert into invoice_print_ticket
      (ticket_no,
       charge_bill_attribute,
       patientid,
       fee,
       print_workerid,
       print_date,
       print_num,
       status,
       invoice_type)
    values
      (v_ticket_no,
       in_attribute,
       in_patientid,
       v_total_fee,
       hospital.login.get_workerid,
       sysdate,
       0,
       'FINISHED',
       '门诊现金');
    out_ticket_no := v_ticket_no;
    commit;
  end s_打印门诊发票;

  --------------------------------------------------------------------------------------------
  procedure s_合并打印门诊发票_新建单据(in_from_date  date
                           ,in_to_date    date
                           ,in_attribute  in varchar2
                           ,out_ticket_no out varchar2) is
    v_ticket_no invoice_print_ticket.ticket_no%type;
    v_ticket    invoice_print_ticket%rowtype;
  begin
    verify_field_dict('CHARGE_BILL', 'ATTRIBUTE', in_attribute, '收费方式');
  
    select min(ticket_no)
      into v_ticket_no
      from hospital.invoice_print_ticket_
     where hospid = get_login_hospid
       and print_workerid = hospital.login.get_workerid
       and status = 'DELETED'
       and type = '整体发票';
    if v_ticket_no is not null
    then
      prv_锁定发票(v_ticket_no, '门诊发票', v_ticket);
      update hospital.invoice_print_ticket_
         set charge_bill_attribute = in_attribute,
             from_date             = in_from_date,
             to_date               = in_to_date,
             fee                   = 0,
             print_workerid        = hospital.login.get_workerid,
             print_date            = sysdate,
             print_num             = 0,
             type                  = '整体发票',
             status                = 'WAIT_ACK'
       where hospid = get_login_hospid
         and ticket_no = v_ticket_no
         and invoice_type = '门诊发票';
    else
      s_使用发票('门诊发票', v_ticket_no);
      insert into invoice_print_ticket
        (hospid,
         ticket_no,
         charge_bill_attribute,
         from_date,
         to_date,
         fee,
         print_workerid,
         print_date,
         print_num,
         type,
         status,
         invoice_type)
      values
        (get_login_hospid,
         v_ticket_no,
         in_attribute,
         in_from_date,
         in_to_date,
         0,
         hospital.login.get_workerid,
         sysdate,
         0,
         '整体发票',
         'WAIT_ACK',
         '门诊发票');
    end if;
    out_ticket_no := v_ticket_no;
  end s_合并打印门诊发票_新建单据;
  --------------------------------------------------------------------------------------------
  --  计算本时间段内，需要整体打印的发票
  --  算法：
  -- (r) = (1) - (2) -（3） + （4）
  --   (1) = 本时间段收费金额
  --   (2) = 本时间段退费金额
  --   (3) = 本时间段打印个人发票金额 
  --   (4) = 本时间段个人退票金额  
  --        
  procedure s_合并打印门诊发票_整体打印(in_from_date  in varchar2
                           ,in_to_date    in varchar2
                           ,in_attribute  in varchar2
                           ,out_ticket_no out varchar2) is
    v_from_date date;
    v_to_date   date;
    v_ticket_no varchar2(20);
  begin
    verify_field_dict('CHARGE_BILL', 'ATTRIBUTE', in_attribute, '收费方式');
    --开始时间是上次结束时间的下一天
    select max(to_date)
      into v_from_date
      from hospital.invoice_print_ticket_
     where hospid = get_login_hospid
       and charge_bill_attribute = in_attribute
       and patientid is null
       and from_date is not null
       and to_date is not null
       and from_date >= trunc(v_from_date)
       and to_date < trunc(v_to_date) + 1;
    if v_from_date is null
    then
      verify_valid_date(in_from_date, '开始时间');
      v_from_date := trunc(get_date_from_str(in_from_date));
    else
      v_from_date := trunc(v_from_date) + 1;
    end if;
  
    if v_from_date > trunc(sysdate)
    then
      raise_application_error(-20001, '收费开始日期不能大于今天.;');
    end if;
  
    --结束时间是输入时间的23:59:59
    verify_valid_date(in_to_date, '结束时间');
    v_to_date := trunc(get_date_from_str(in_to_date));
    v_to_date := to_date(to_char(v_to_date, 'yyyy/mm/dd') || ' 23:59:59',
                         'yyyy/mm/dd hh24:mi:ss');
    if v_to_date > trunc(sysdate)
    then
      raise_application_error(-20001, '结束时间不能大于今天.;');
    end if;
  
    s_合并打印门诊发票_新建单据(v_from_date, v_to_date, in_attribute, v_ticket_no);
    --(1) 打印：本打印时间段收费的发票
    for c in (select a.id, a.fee
                from hospital.charge_bill a, hospital.all_worker b
               where a.attribute = in_attribute
                 and a.fee_date >= v_from_date
                 and a.fee_date < trunc(v_to_date) + 1
                 and a.fee_operator = b.id
                 and b.hospid = hospital.login.get_hospid
              union all
              select a.id, a.fee
                from hospital.charge_bill_a01 a, hospital.all_worker b
               where a.attribute = in_attribute
                 and a.fee_date >= v_from_date
                 and a.fee_date < trunc(v_to_date) + 1
                 and a.fee_operator = b.id
                 and b.hospid = hospital.login.get_hospid)
    loop
      s_合并打印门诊发票_增加明细(in_ticket_no     => v_ticket_no,
                      in_charge_billid => c.id);
    end loop;
  
    --(2) 冲减：本打印时间段退费的发票
    for c in (select a.id, a.fee
                from hospital.charge_bill a, hospital.all_worker b
               where a.attribute = in_attribute
                 and a.withdraw_date >= v_from_date
                 and a.withdraw_date < trunc(v_to_date) + 1
                 and a.fee_operator = b.id
                 and b.hospid = hospital.login.get_hospid
              union all
              select a.id, a.fee
                from hospital.charge_bill_a01 a, hospital.all_worker b
               where a.attribute = in_attribute
                 and a.withdraw_date >= v_from_date
                 and a.withdraw_date < trunc(v_to_date) + 1
                 and a.fee_operator = b.id
                 and b.hospid = hospital.login.get_hospid)
    loop
      s_合并打印门诊发票_增加明细(in_ticket_no     => v_ticket_no,
                      in_charge_billid => c.id,
                      in_print_num     => -1);
    end loop;
  
    --(3) 冲减：本时间段内打印的个人发票中
    for c in (select a.id, a.fee
                from hospital.charge_bill          a,
                     hospital.invoice_print_ticket b,
                     hospital.invoice_print_detail c
               where b.hospid = get_login_hospid
                 and b.charge_bill_attribute = in_attribute
                 and b.patientid is not null
                 and b.print_date >= v_from_date
                 and b.print_date < trunc(v_to_date) + 1
                 and b.ticket_no = c.ticket_no
                 and c.charge_billid = a.id
              union all
              select a.id, a.fee
                from hospital.charge_bill_a01      a,
                     hospital.invoice_print_ticket b,
                     hospital.invoice_print_detail c
               where b.hospid = get_login_hospid
                 and b.charge_bill_attribute = in_attribute
                 and b.patientid is not null
                 and b.print_date >= v_from_date
                 and b.print_date < trunc(v_to_date) + 1
                 and b.ticket_no = c.ticket_no
                 and c.charge_billid = a.id)
    loop
      s_合并打印门诊发票_增加明细(in_ticket_no     => v_ticket_no,
                      in_charge_billid => c.id,
                      in_print_num     => -1);
    
    end loop;
  
    --增加:(4) 本时间内退票的个人发票
    for c in (select a.id, a.fee
                from hospital.charge_bill          a,
                     hospital.invoice_print_ticket b,
                     hospital.invoice_print_detail c
               where b.hospid = get_login_hospid
                 and b.charge_bill_attribute = in_attribute
                 and b.patientid is not null
                 and b.withdraw_date is not null
                 and b.withdraw_date >= v_from_date
                 and b.withdraw_date < trunc(v_to_date) + 1
                 and b.ticket_no = c.ticket_no
                 and c.charge_billid = a.id
              union all
              select a.id, a.fee
                from hospital.charge_bill_a01      a,
                     hospital.invoice_print_ticket b,
                     hospital.invoice_print_detail c
               where b.hospid = get_login_hospid
                 and b.charge_bill_attribute = in_attribute
                 and b.patientid is not null
                 and b.withdraw_date is not null
                 and b.withdraw_date >= v_from_date
                 and b.withdraw_date < trunc(v_to_date) + 1
                 and b.ticket_no = c.ticket_no
                 and c.charge_billid = a.id)
    loop
      s_合并打印门诊发票_增加明细(in_ticket_no     => v_ticket_no,
                      in_charge_billid => c.id);
    end loop;
    delete from invoice_print_detail
     where ticket_no = v_ticket_no
       and 打印次数 = 0;
    s_合并打印门诊发票_提交(in_ticket_no => v_ticket_no);
    out_ticket_no := v_ticket_no;
  end s_合并打印门诊发票_整体打印;
  --------------------------------------------------------------------------------------------
  procedure s_合并打印门诊发票_删除发票(in_ticket_no in varchar2) is
    v_ticket hospital.invoice_print_ticket_%rowtype;
  begin
    prv_锁定发票(in_ticket_no, '门诊发票', v_ticket);
    if v_ticket.type <> '整体发票'
    then
      raise_application_error(-20001, '不是整体发票，不能删除.;');
    end if;
    if v_ticket.print_num > 0
    then
      raise_application_error(-20001, '该发票已经打印，不能删除');
    end if;
    update hospital.invoice_print_ticket_
       set status = 'DELETED'
     where ticket_no = in_ticket_no
       and hospid = get_login_hospid
       and invoice_type = '门诊发票';
    delete from hospital.invoice_print_detail_
     where ticket_no = in_ticket_no
       and invoice_type = '门诊发票';
    commit;
  end s_合并打印门诊发票_删除发票;
  --------------------------------------------------------------------------------------------
  function get_挂号票打印发票明细条数(in_charge_billid in varchar2) return number is
    v_num1 number;
    v_num2 number;
  begin
    select count(distinct fee_type)
      into v_num1
      from charge_item
     where charge_billid = in_charge_billid;
    select count(distinct fee_type)
      into v_num2
      from charge_item_a01
     where charge_billid = in_charge_billid;
    return nvl(v_num1, 0) + nvl(v_num2, 0);
  
  end get_挂号票打印发票明细条数;
  --------------------------------------------------------------------------------------------
  --返回发票明细费用类型数量
  function get_单个发票费用类型数量(in_charge_billid in varchar2) return number is
    v_条数 number := 0;
  begin
    select sum(nvl(num, 0))
      into v_条数
      from (select count(distinct fee_type) num
              from hospital.charge_item_
             where charge_billid = in_charge_billid
            union all
            select count(distinct fee_type) num
              from hospital.charge_item_a01_
             where charge_billid = in_charge_billid);
    return v_条数;
  end get_单个发票费用类型数量;
  --------------------------------------------------------------------------------------------
  function get_发票费用类型数量(in_ticket_no     in varchar2
                       ,in_charge_billid in varchar2) return number is
    v_条数 number := 0;
  begin
    select count(distinct fee_type)
      into v_条数
      from (select fee_type
              from hospital.charge_item a
             where a.charge_billid = in_charge_billid
            union
            select fee_type
              from hospital.charge_item_a01 a
             where a.charge_billid = in_charge_billid
            union
            select fee_type
              from hospital.charge_item a, hospital.invoice_print_detail b
             where b.ticket_no = in_ticket_no
               and a.charge_billid = b.charge_billid
            union
            select fee_type
              from hospital.charge_item_a01      a,
                   hospital.invoice_print_detail b
             where b.ticket_no = in_ticket_no
               and a.charge_billid = b.charge_billid);
    return v_条数;
  end get_发票费用类型数量;
  --------------------------------------------------------------------------------------------
  --返回打印发票明细的条数
  --规则： 1 西药处方和杂费处方： 药品按照明细打印；杂费首先按照组合项目合并，然后按照杂费合并
  --       2 草药处方：药品按照费用类型打印；杂费首先按照组合项目合并，然后按照杂费合并
  function get_处方打印发票明细条数(in_prescriptionid in varchar2) return number is
    v_条数                   number := 0;
    v_prescription_attribute prescription.attribute%type;
    v_table_name             varchar2(30);
  begin
    begin
      select attribute
        into v_prescription_attribute
        from prescription
       where id = in_prescriptionid;
      v_table_name := 'PRESCRIPTION';
    exception
      when no_data_found then
        begin
          select attribute
            into v_prescription_attribute
            from prescription_a01
           where id = in_prescriptionid;
          v_table_name := 'PRESCRIPTION_A01';
        exception
          when no_data_found then
            raise_application_error(-20001,
                                    '找不到编号为( ' || in_prescriptionid ||
                                    ')的处方');
        end;
    end;
    if v_prescription_attribute in ('A', 'C')
    then
      if v_table_name = 'PRESCRIPTION'
      then
        select sum(nvl(num, 0))
          into v_条数
          from (select count(*) num
                  from hospital.prescription_detail
                 where materialid is not null
                   and prescriptionid = in_prescriptionid
                union all
                select count(distinct sundry_feeid) num
                  from hospital.prescription_detail
                 where sundry_feeid is not null
                   and pre_templetid is null
                   and prescriptionid = in_prescriptionid
                union all
                select count(distinct pre_templetid) num
                  from hospital.prescription_detail
                 where sundry_feeid is not null
                   and prescriptionid = in_prescriptionid
                   and pre_templetid is not null);
      else
        select sum(nvl(num, 0))
          into v_条数
          from (select count(*) num
                  from hospital.prescription_detail_a01
                 where materialid is not null
                   and prescriptionid = in_prescriptionid
                union all
                select count(distinct sundry_feeid) num
                  from hospital.prescription_detail_a01
                 where sundry_feeid is not null
                   and prescriptionid = in_prescriptionid
                   and pre_templetid is null
                union all
                select count(distinct pre_templetid) num
                  from hospital.prescription_detail_a01
                 where sundry_feeid is not null
                   and prescriptionid = in_prescriptionid
                   and pre_templetid is not null);
      end if;
    else
      if v_table_name = 'PRESCRIPTION'
      then
        select sum(nvl(num, 0))
          into v_条数
          from (select count(distinct fee_type) num
                  from hospital.prescription_detail
                 where materialid is not null
                   and prescriptionid = in_prescriptionid
                union all
                select count(distinct sundry_feeid) num
                  from hospital.prescription_detail
                 where sundry_feeid is not null
                   and prescriptionid = in_prescriptionid
                   and pre_templetid is null
                union all
                select count(distinct pre_templetid) num
                  from hospital.prescription_detail
                 where sundry_feeid is not null
                   and prescriptionid = in_prescriptionid
                   and pre_templetid is not null);
      else
        select sum(nvl(num, 0))
          into v_条数
          from (select count(distinct fee_type) num
                  from hospital.prescription_detail_a01
                 where materialid is not null
                   and prescriptionid = in_prescriptionid
                union all
                select count(distinct sundry_feeid) num
                  from hospital.prescription_detail
                 where sundry_feeid is not null
                   and prescriptionid = in_prescriptionid
                   and pre_templetid is null
                union all
                select count(distinct pre_templetid) num
                  from hospital.prescription_detail_a01
                 where sundry_feeid is not null
                   and prescriptionid = in_prescriptionid
                   and pre_templetid is not null);
      end if;
    end if;
    return v_条数;
  end get_处方打印发票明细条数;
  --------------------------------------------------------------------------------------------
  --  合并单据后，确保发票明细不超过指定的数量
  --     
  procedure s_合并打印门诊发票_所有单据(in_patientid  in varchar2
                           ,in_attribute  in varchar2
                           ,out_ticket_no out varchar2) is
    v_发票打印总条数         number;
    v_单个记账单发票打印条数 number;
    i                        number;
    v_content_type           varchar2(10);
    v_sysopt                 varchar2(10);
  begin
    v_发票打印总条数 := 0;
    v_sysopt         := get_system_option('门诊发票_合并打印_打印明细');
  
    if v_sysopt is null
       or v_sysopt not in ('Y', 'FEE_TYPE')
    then
      raise_application_error(-20001,
                              '没有设置系统选项:门诊发票_合并打印_打印明细');
    end if;
  
    if v_sysopt = 'Y'
    then
      v_content_type := '1'; --打印明细
    else
      v_content_type := '2'; --打印费用类型
    end if;
  
    begin
      select 2
        into i
        from (select a.id, a.prescriptionid
                from hospital.charge_bill a, hospital.all_worker b
               where a.patientid = in_patientid
                 and a.attribute = in_attribute
                 and a.ticket_no is null
                 and a.status = 'FINISHED'
                 and a.fee_operator = b.id
                 and b.hospid = hospital.login.get_hospid
                 and rownum = 1
              union all
              select a.id, a.prescriptionid
                from hospital.charge_bill_a01 a, hospital.all_worker b
               where a.patientid = in_patientid
                 and a.attribute = in_attribute
                 and a.ticket_no is null
                 and a.status = 'FINISHED'
                 and a.fee_operator = b.id
                 and b.hospid = hospital.login.get_hospid
                 and rownum = 1)
       where rownum = 1;
      s_合并打印门诊发票_新建单据(in_patientid,
                      in_attribute,
                      v_content_type,
                      out_ticket_no);
      for c in (select a.id, a.prescriptionid
                  from hospital.charge_bill a, hospital.all_worker b
                 where a.patientid = in_patientid
                   and a.attribute = in_attribute
                   and a.ticket_no is null
                   and a.status = 'FINISHED'
                   and a.fee_operator = b.id
                   and b.hospid = hospital.login.get_hospid
                union all
                select a.id, a.prescriptionid
                  from hospital.charge_bill_a01 a, hospital.all_worker b
                 where a.patientid = in_patientid
                   and a.attribute = in_attribute
                   and a.ticket_no is null
                   and a.status = 'FINISHED'
                   and a.fee_operator = b.id
                   and b.hospid = hospital.login.get_hospid)
      loop
        if v_content_type = '1'
        then
          if c.prescriptionid is not null
          then
            v_单个记账单发票打印条数 := get_处方打印发票明细条数(c.prescriptionid);
          else
            v_单个记账单发票打印条数 := get_挂号票打印发票明细条数(c.id);
          end if;
          if v_发票打印总条数 + v_单个记账单发票打印条数 > 20
          then
            exit;
          end if;
        elsif v_content_type = '2'
        then
          v_单个记账单发票打印条数 := invoice_man.get_单个发票费用类型数量(c.id);
          if v_单个记账单发票打印条数 > 4
          then
            raise_application_error(-20001,
                                    '处方(' || c.prescriptionid ||
                                    ')单张打印类型超过4,不能结算.;');
          end if;
        
          v_单个记账单发票打印条数 := invoice_man.get_发票费用类型数量(out_ticket_no, c.id);
          if v_单个记账单发票打印条数 > 4
          then
            exit;
          end if;
        else
          raise_application_error(-20001, '不支持的发票内容打印方式.;');
        end if;
      
        v_发票打印总条数 := v_发票打印总条数 + v_单个记账单发票打印条数;
        s_合并打印门诊发票_增加明细(in_ticket_no     => out_ticket_no,
                        in_charge_billid => c.id);
      end loop;
      delete from hospital.t门诊发票退票表_
       where hospid = get_login_hospid
         and fee_workerid = hospital.login.get_workerid
         and patientid = in_patientid;
      s_合并打印门诊发票_提交(in_ticket_no => out_ticket_no);
    exception
      when no_data_found then
        delete from hospital.t门诊发票退票表_
         where hospid = get_login_hospid
           and fee_workerid = hospital.login.get_workerid
           and patientid = in_patientid;
    end;
    commit;
  end s_合并打印门诊发票_所有单据;
  --------------------------------------------------------------------------------------------
  procedure s_after_处方收费取消nc(in_patientid     in varchar2
                            ,in_charge_billid in varchar2
                            ,in_attribute     in varchar2
                            ,in_ticket_no     in varchar2) is
    i            number;
    v_status     hospital.invoice_print_ticket_.status%type;
    v_detail_num integer;
  begin
    begin
      select 2
        into i
        from (select a.id, a.prescriptionid
                from hospital.charge_bill a, hospital.all_worker b
               where a.patientid = in_patientid
                 and a.attribute = 'PRE_PAY'
                 and a.ticket_no is null
                 and a.status = 'FINISHED'
                 and a.fee_operator = b.id
                 and b.hospid = hospital.login.get_hospid
                 and rownum = 1
              union all
              select a.id, a.prescriptionid
                from hospital.charge_bill_a01 a, hospital.all_worker b
               where a.patientid = in_patientid
                 and a.attribute = 'PRE_PAY'
                 and a.ticket_no is null
                 and a.status = 'FINISHED'
                 and a.fee_operator = b.id
                 and b.hospid = hospital.login.get_hospid
                 and rownum = 1)
       where rownum = 1;
    exception
      when no_data_found then
        delete from hospital.t门诊发票退票表_
         where hospid = get_login_hospid
           and fee_workerid = hospital.login.get_workerid
           and patientid = in_patientid;
    end;
    --如果当前账单没有产生对应的发票 则返回
    if in_ticket_no is null
    then
      return;
    end if;
    begin
      select status
        into v_status
        from hospital.invoice_print_ticket_
       where ticket_no = in_ticket_no
         and invoice_type = '门诊发票';
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '编号为( ' || in_ticket_no || ' )的门诊发票记录不存在.;');
    end;
  
    begin
      select count(*)
        into v_detail_num
        from hospital.invoice_print_detail_
       where invoice_type = '门诊发票'
         and ticket_no = in_ticket_no;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '编号为( ' || in_ticket_no ||
                                ' )的门诊发票明细记录不存在.;');
      
    end;
    --更新门诊现金/银行卡收费的发票
    if v_status = 'FINISHED'
       and v_detail_num = 1
       and in_attribute in ('CASH', 'BANK')
    then
      update hospital.invoice_print_ticket_
         set status            = 'WITHDRAWED',
             withdraw_workerid = hospital.login.get_workerid,
             withdraw_date     = sysdate
       where ticket_no = in_ticket_no
         and invoice_type = '门诊发票';
    end if;
  
  end s_after_处方收费取消nc;

  --------------------------------------------------------------------------------------------
  procedure s_after_住院结账取消nc(in_patientid  in varchar2
                            ,in_residentid in varchar2) is
    v_status        hospital.invoice_print_ticket_.status%type;
    v_detail_num    integer;
    v_charge_billid hospital.charge_bill_.id%type;
    v_ticket_no     hospital.charge_bill_.ticket_no%type;
  begin
    begin
      select a.id, a.ticket_no
        into v_charge_billid, v_ticket_no
        from hospital.charge_bill a
       where a.patientid = in_patientid
         and a.residentid = in_residentid
         and a.attribute = 'ACCOUNT'
         and a.status = 'FINISHED'
         and rownum = 1;
    exception
      when no_data_found then
        null;
    end;
    if v_ticket_no is null
    then
      return;
    end if;
    begin
      select status
        into v_status
        from hospital.invoice_print_ticket_
       where ticket_no = v_ticket_no
         and invoice_type = '住院发票';
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '编号为( ' || v_ticket_no || ' )的住院发票记录不存在.;');
    end;
  
    begin
      select count(*)
        into v_detail_num
        from hospital.invoice_print_detail_
       where invoice_type = '住院发票'
         and ticket_no = v_ticket_no;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '编号为( ' || v_ticket_no ||
                                ' )的住院发票明细记录不存在.;');
      
    end;
    --更新住院发票状态
  
    update hospital.invoice_print_ticket_
       set status            = 'WITHDRAWED',
           withdraw_workerid = hospital.login.get_workerid,
           withdraw_date     = sysdate
     where ticket_no = v_ticket_no
       and invoice_type = '住院发票';
  
  end s_after_住院结账取消nc;
  --------------------------------------------------------------------------------------------
  procedure s_合并打印门诊发票_新建单据(in_patientid    in varchar2
                           ,in_attribute    in varchar2
                           ,in_content_type in varchar2
                           ,out_ticket_no   out varchar2) is
    i           number;
    v_ticket_no invoice_print_ticket.ticket_no%type;
  begin
    begin
      select 2
        into i
        from patient
       where id = in_patientid
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '编号为( ' || in_patientid || ' )的病人不存在.;');
    end;
    verify_field_dict('CHARGE_BILL', 'ATTRIBUTE', in_attribute, '收费方式');
    s_使用发票('门诊发票', v_ticket_no);
    insert into invoice_print_ticket
      (hospid,
       ticket_no,
       charge_bill_attribute,
       patientid,
       fee,
       现金金额,
       报销金额,
       print_date,
       print_workerid,
       print_num,
       type,
       status,
       content_type,
       invoice_type)
    values
      (get_login_hospid,
       v_ticket_no,
       in_attribute,
       in_patientid,
       0,
       0,
       0,
       sysdate,
       hospital.login.get_workerid,
       0,
       '个人发票',
       'WAIT_ACK',
       in_content_type,
       '门诊发票');
    out_ticket_no := v_ticket_no;
  end s_合并打印门诊发票_新建单据;
  --------------------------------------------------------------------------------------------
  -- in_print_num 1 ,-1 代表打印次数
  procedure s_合并打印门诊发票_增加明细(in_ticket_no     in varchar2
                           ,in_charge_billid in varchar2
                           ,in_print_num     in integer default 1) is
    v_ticket    invoice_print_ticket%rowtype;
    v_fee       charge_bill.fee%type;
    v_find      varchar2(10);
    v_ticket_no charge_bill.ticket_no%type;
    v_rowid     rowid;
    v_现金金额  number := 0;
    v_报销金额  number := 0;
    v_attribute charge_bill.attribute%type;
  begin
    prv_锁定发票(in_ticket_no, '门诊发票', v_ticket);
    if v_ticket.status <> 'WAIT_ACK'
    then
      raise_application_error(-20001, '不能给一个已经完成的发票中添加明细');
    end if;
  
    if in_print_num not in (1, -1)
    then
      raise_application_error(-20001, '非法的打印次数');
    end if;
    v_find := 'NO';
  
    begin
      select a.fee, a.ticket_no, a.attribute
        into v_fee, v_ticket_no, v_attribute
        from hospital.charge_bill a, hospital.all_worker b
       where a.id = in_charge_billid
         and a.fee_operator = b.id
         and b.hospid = hospital.login.get_hospid
         for update nowait;
      if v_ticket.type = '个人发票'
      then
        if v_ticket_no is not null
        then
          raise_application_error(-20001,
                                  '输入的编号为( ' || in_charge_billid ||
                                  ' )的单据已经包括在其他的发票中.;');
        else
          update charge_bill
             set ticket_no = in_ticket_no
           where id = in_charge_billid;
        end if;
      end if;
      v_find := 'YES';
    exception
      when no_data_found then
        v_find := 'NO';
        null;
    end;
  
    if v_find = 'NO'
    then
      begin
        select a.fee, a.ticket_no, a.attribute
          into v_fee, v_ticket_no, v_attribute
          from hospital.charge_bill_a01 a, hospital.all_worker b
         where a.id = in_charge_billid
           and a.fee_operator = b.id
           and b.hospid = hospital.login.get_hospid
           for update nowait;
        v_find := 'YES';
        if v_ticket.type = '个人发票'
        then
          if v_ticket_no is not null
          then
            raise_application_error(-20001,
                                    '输入的编号为( ' || in_charge_billid ||
                                    ' )的单据已经包括在其他的发票(' || v_ticket_no ||
                                    ')中.;');
          else
            update charge_bill_a01
               set ticket_no = in_ticket_no
             where id = in_charge_billid;
          end if;
        end if;
      exception
        when no_data_found then
          v_find := 'NO';
          null;
      end;
    end if;
  
    if v_find = 'NO'
    then
      raise_application_error(-20001,
                              '找不到编号为( ' || in_charge_billid || ' )的收费账单.;');
    end if;
  
    if v_attribute = 'CASH'
       or v_attribute = 'PRE_PAY'
    then
      v_现金金额 := v_fee;
    else
      v_报销金额 := v_fee;
    end if;
  
    begin
      select rowid
        into v_rowid
        from invoice_print_detail
       where ticket_no = in_ticket_no
         and charge_billid = in_charge_billid
         and invoice_type = '门诊发票'
         for update nowait;
      update invoice_print_detail
         set 打印次数 = 打印次数 + in_print_num
       where rowid = v_rowid;
    exception
      when no_data_found then
        insert into invoice_print_detail
          (ticket_no, charge_billid, 打印次数, invoice_type)
        values
          (in_ticket_no, in_charge_billid, in_print_num, '门诊发票');
    end;
    update invoice_print_ticket
       set fee      = nvl(fee, 0) + in_print_num * v_fee,
           现金金额 = nvl(现金金额, 0) + in_print_num * nvl(v_现金金额, 0),
           报销金额 = nvl(报销金额, 0) + in_print_num * nvl(v_报销金额, 0)
     where ticket_no = in_ticket_no
       and invoice_type = '门诊发票';
  end s_合并打印门诊发票_增加明细;
  --------------------------------------------------------------------------------------------
  procedure s_合并打印门诊发票_增加删除(in_ticket_no     in varchar2
                           ,in_charge_billid in varchar2) is
    v_ticket    invoice_print_ticket%rowtype;
    v_fee       charge_bill.fee%type;
    v_find      varchar2(10);
    v_ticket_no charge_bill.ticket_no%type;
    v_现金金额  number := 0;
    v_报销金额  number := 0;
    v_attribute charge_bill.attribute%type;
  begin
    prv_锁定发票(in_ticket_no, '门诊发票', v_ticket);
    if v_ticket.status <> 'WAIT_ACK'
    then
      raise_application_error(-20001, '不能给一个已经完成的发票中添加明细');
    end if;
  
    begin
      select a.fee, a.ticket_no, a.attribute
        into v_fee, v_ticket_no, v_attribute
        from hospital.charge_bill a, hospital.all_worker b
       where a.id = in_charge_billid
         and a.fee_operator = b.id
         and b.hospid = hospital.login.get_hospid
         for update nowait;
      if v_ticket.type = '个人发票'
      then
        if nvl(v_ticket_no, 'x') <> in_ticket_no
        then
          raise_application_error(-20001,
                                  '输入的编号为( ' || in_charge_billid ||
                                  ' )的单据已经包括在其他的发票中.;');
        else
          update charge_bill
             set ticket_no = null
           where id = in_charge_billid;
        end if;
      end if;
      v_find := 'YES';
    exception
      when no_data_found then
        v_find := 'NO';
        null;
    end;
  
    if v_find = 'NO'
    then
      begin
        select a.fee, a.ticket_no, a.attribute
          into v_fee, v_ticket_no, v_attribute
          from hospital.charge_bill_a01 a, hospital.all_worker b
         where a.id = in_charge_billid
           and a.fee_operator = b.id
           and b.hospid = hospital.login.get_hospid
           for update nowait;
        v_find := 'YES';
        if v_ticket.type = '个人发票'
        then
          if nvl(v_ticket_no, 'x') <> in_ticket_no
          then
            raise_application_error(-20001,
                                    '输入的编号为( ' || in_charge_billid ||
                                    ' )的单据已经包括在其他的发票中.;');
          else
            update charge_bill_a01
               set ticket_no = null
             where id = in_charge_billid;
          end if;
        end if;
      exception
        when no_data_found then
          v_find := 'NO';
          null;
      end;
    end if;
  
    if v_find = 'NO'
    then
      raise_application_error(-20001,
                              '找不到编号为( ' || in_charge_billid || ' )的收费账单.;');
    end if;
  
    if v_attribute = 'CASH'
    then
      v_现金金额 := v_fee;
    else
      v_报销金额 := v_fee;
    end if;
  
    delete from invoice_print_detail
     where ticket_no = in_ticket_no
       and invoice_type = '门诊发票'
       and charge_billid = in_charge_billid;
  
    update invoice_print_ticket
       set fee      = nvl(fee, 0) - v_fee,
           现金金额 = nvl(现金金额, 0) - nvl(v_现金金额, 0),
           报销金额 = nvl(报销金额, 0) - nvl(v_报销金额, 0)
     where ticket_no = in_ticket_no
       and invoice_type = '门诊发票';
  end s_合并打印门诊发票_增加删除;
  --------------------------------------------------------------------------------------------
  procedure s_合并打印门诊发票_提交(in_ticket_no in varchar2) is
    v_ticket invoice_print_ticket%rowtype;
    i        number;
  begin
    prv_锁定发票(in_ticket_no, '门诊发票', v_ticket);
    if v_ticket.status <> 'WAIT_ACK'
    then
      raise_application_error(-20001, '不重复提交一个已经提交的单据.;');
    end if;
  
    begin
      select 2
        into i
        from invoice_print_detail
       where ticket_no = in_ticket_no
         and invoice_type = '门诊发票'
         and rownum = 1;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '打印发票不包括任何的明细，不能提交.;');
    end;
  
    update invoice_print_ticket
       set status = 'FINISHED'
     where ticket_no = in_ticket_no
       and invoice_type = '门诊发票';
    commit;
  end;
  --------------------------------------------------------------------------------------------
  procedure s_合并打印门诊发票_重新打印(in_ticket_no in varchar2) is
    v_ticket invoice_print_ticket%rowtype;
  begin
    prv_锁定发票(in_ticket_no, '门诊发票', v_ticket);
    if v_ticket.print_workerid <> hospital.login.get_workerid
    then
      raise_application_error(-20001, '不是你打印的发票，你不能重新打印.;');
    end if;
  
    update hospital.t门诊集中打印发票授权_
       set 是否已打印 = 1
     where ticket_no = in_ticket_no
       and hospid = get_login_hospid;
  
    --打印当前发票  代表上一张发票退票过程完成
    delete from hospital.t门诊发票退票表_
     where hospid = hospital.login.get_hospid
       and fee_workerid = hospital.login.get_workerid
       and patientid = v_ticket.patientid;
  
    update invoice_print_ticket
       set print_num      = nvl(print_num, 0) + 1,
           print_workerid = hospital.login.get_workerid,
           print_date     = sysdate
     where ticket_no = in_ticket_no
       and invoice_type = '门诊发票'
       and hospid = get_login_hospid;
    commit;
  end s_合并打印门诊发票_重新打印;
  --------------------------------------------------------------------------------------------
  procedure sp_合并打印_门诊发票退票nc(in_ticket_no in varchar2) is
    v_ticket invoice_print_ticket%rowtype;
  begin
    prv_锁定发票(in_ticket_no, '门诊发票', v_ticket);
    if v_ticket.type <> '个人发票'
    then
      raise_application_error(-20001, '不是个人发票,不能退票');
    end if;
  
    if v_ticket.status = 'FINISHED'
    then
      raise_application_error(-20001, '请先进行退票审核后在操作.;');
    elsif v_ticket.status = 'WAIT_WITHDRAW'
    then
      null;
    elsif v_ticket.status = 'WITHDRAWED'
    then
      raise_application_error(-20001,
                              '编号为( ' || in_ticket_no ||
                              ' )的发票已经退票，不能重复操作.;');
    else
      raise_application_error(-20001,
                              '不支持的操作状态( ' || v_ticket.status || ' ).;');
    end if;
  
    update invoice_print_ticket
       set status            = 'WITHDRAWED',
           withdraw_workerid = hospital.login.get_workerid,
           withdraw_date     = sysdate
     where ticket_no = in_ticket_no
       and invoice_type = '门诊发票';
  
    update charge_bill
       set ticket_no = null
     where id in (select charge_billid
                    from invoice_print_detail
                   where ticket_no = in_ticket_no
                     and invoice_type = '门诊发票');
  
    update charge_bill_a01
       set ticket_no = null
     where id in (select charge_billid
                    from invoice_print_detail
                   where ticket_no = in_ticket_no
                     and invoice_type = '门诊发票');
    begin
      insert into hospital.t门诊发票退票表_
        (hospid, fee_workerid, patientid, ticket_no)
      values
        (get_login_hospid,
         hospital.login.get_workerid,
         v_ticket.patientid,
         in_ticket_no);
    exception
      when dup_val_on_index then
        update hospital.t门诊发票退票表_
           set patientid = v_ticket.patientid,
               ticket_no = in_ticket_no
         where hospid = get_login_hospid
           and fee_workerid = hospital.login.get_workerid;
    end;
  end sp_合并打印_门诊发票退票nc;

  --------------------------------------------------------------------------------------------
  procedure sp_合并打印_退票_取消nc(in_ticket_no in varchar2) is
    v_ticket invoice_print_ticket%rowtype;
  begin
    prv_锁定发票(in_ticket_no, '门诊发票', v_ticket);
    if v_ticket.type <> '个人发票'
    then
      raise_application_error(-20001, '不是个人发票,不能退票');
    end if;
  
    if v_ticket.status = 'FINISHED'
    then
      raise_application_error(-20001, '请先进行退票审核后在操作.;');
    elsif v_ticket.status = 'WAIT_WITHDRAW'
    then
      raise_application_error(-20001,
                              '编号为( ' || in_ticket_no ||
                              ' )的发票已经没有完成，无需取消退票.;');
    elsif v_ticket.status = 'WITHDRAWED'
    then
      null;
    else
      raise_application_error(-20001,
                              '不支持的操作状态( ' || v_ticket.status || ' ).;');
    end if;
  
    update invoice_print_ticket
       set status            = 'WAIT_WITHDRAW',
           withdraw_workerid = hospital.login.get_workerid,
           withdraw_date     = sysdate
     where ticket_no = in_ticket_no
       and invoice_type = '门诊发票';
  
    update charge_bill
       set ticket_no = in_ticket_no
     where id in (select charge_billid
                    from invoice_print_detail
                   where ticket_no = in_ticket_no
                     and invoice_type = '门诊发票');
  
    update charge_bill_a01
       set ticket_no = in_ticket_no
     where id in (select charge_billid
                    from invoice_print_detail
                   where ticket_no = in_ticket_no
                     and invoice_type = '门诊发票');
  
    delete from hospital.t门诊发票退票表_
     where hospid = hospital.login.get_hospid
       and ticket_no = in_ticket_no;
  
  end sp_合并打印_退票_取消nc;
  --------------------------------------------------------------------------------------------
  --退票：对于门诊预交金而言
  --  1)退当前的发票 
  --  2)更新当前发票对应账单发票编号为空 
  --  3)更新clinic_flow_account中charge_billid为当前发票对应charge_billid的所有记录 发票编号、发票序号为空
  procedure s_合并打印门诊发票_退票(in_ticket_no in varchar2) is
    v_ticket invoice_print_ticket%rowtype;
  begin
    prv_锁定发票(in_ticket_no, '门诊发票', v_ticket);
    if v_ticket.type <> '个人发票'
    then
      raise_application_error(-20001, '不是个人发票,不能退票');
    end if;
  
    if v_ticket.status = 'FINISHED'
    then
      raise_application_error(-20001, '请先进行退票审核后在操作.;');
    elsif v_ticket.status = 'WAIT_WITHDRAW'
    then
      null;
    elsif v_ticket.status = 'WITHDRAWED'
    then
      raise_application_error(-20001, '已经退票，不能重复操作.;');
    else
      raise_application_error(-20001,
                              '不支持的操作状态( ' || v_ticket.status || ' ).;');
    end if;
  
    --  1)退当前的发票 
    --  2)更新当前发票对应账单发票编号为空 
    sp_合并打印_门诊发票退票nc(in_ticket_no);
  
    --  3)更新clinic_flow_account中和本次发票退票相关的预交金记录
    update hospital.clinic_flow_account_
       set ticket_no = null,
           发票序号  = null
     where patientid = v_ticket.patientid
       and ticket_no = v_ticket.ticket_no
       and 发票序号 = v_ticket.发票序号
       and charge_billid in (select charge_billid
                               from invoice_print_detail
                              where ticket_no = in_ticket_no
                                and invoice_type = '门诊发票');
  
    commit;
  end s_合并打印门诊发票_退票;
  --------------------------------------------------------------------------------------------
  --取消退票：对于门诊预交金而言
  --  1)取消退当前的发票 
  --  2)取消更新当前发票对应账单发票编号为空 
  --  3)取消更新clinic_flow_account中charge_billid为当前发票对应charge_billid的所有记录 发票编号、发票序号为空
  procedure s_合并打印门诊发票_退票_取消(in_ticket_no in varchar2) is
    v_ticket invoice_print_ticket%rowtype;
  begin
    prv_锁定发票(in_ticket_no, '门诊发票', v_ticket);
    if v_ticket.type <> '个人发票'
    then
      raise_application_error(-20001, '不是个人发票,不能退票');
    end if;
  
    if v_ticket.status = 'FINISHED'
    then
      raise_application_error(-20001, '请先进行退票审核后在操作.;');
    elsif v_ticket.status = 'WAIT_WITHDRAW'
    then
      raise_application_error(-20001,
                              '编号为( ' || in_ticket_no ||
                              ' )的发票已经没有完成，无需取消退票.;');
    elsif v_ticket.status = 'WITHDRAWED'
    then
      null;
    else
      raise_application_error(-20001,
                              '不支持的操作状态( ' || v_ticket.status || ' ).;');
    end if;
    --  1)取消退当前的发票 
    --  2)取消更新当前发票对应账单发票编号为空 
    invoice_man.sp_合并打印_退票_取消nc(in_ticket_no);
    --  3)取消更新clinic_flow_account中和本次发票退票相关的预交金记录
    update hospital.clinic_flow_account_
       set ticket_no = v_ticket.ticket_no,
           发票序号  = v_ticket.发票序号
     where patientid = v_ticket.patientid
       and charge_billid in (select charge_billid
                               from invoice_print_detail
                              where ticket_no = in_ticket_no
                                and invoice_type = '门诊发票');
  
    commit;
  end s_合并打印门诊发票_退票_取消;
  --------------------------------------------------------------------------------------------
  procedure s_合并打印门诊发票_退票审核(in_ticket_no in varchar2) is
    v_ticket invoice_print_ticket%rowtype;
  begin
    prv_锁定发票(in_ticket_no, '门诊发票', v_ticket);
    if v_ticket.type <> '个人发票'
    then
      raise_application_error(-20001, '不是个人发票,不能退票');
    end if;
    if v_ticket.status = 'FINISHED'
    then
      null;
    elsif v_ticket.status = 'WAIT_WITHDRAW'
    then
      raise_application_error(-20001, '已经审核，不能重复操作.;');
    elsif v_ticket.status = 'WITHDRAWED'
    then
      raise_application_error(-20001, '已经退票，不能重复操作.;');
    else
      raise_application_error(-20001,
                              '不支持的操作状态( ' || v_ticket.status || ' ).;');
    end if;
    update invoice_print_ticket
       set status         = 'WAIT_WITHDRAW',
           audit_workerid = hospital.login.get_workerid,
           audit_date     = sysdate
     where ticket_no = in_ticket_no
       and invoice_type = '门诊发票';
    commit;
  end s_合并打印门诊发票_退票审核;
  --------------------------------------------------------------------------------------------
  procedure s_合并打印门诊发票_审核_取消(in_ticket_no in varchar2) is
    v_ticket invoice_print_ticket%rowtype;
  begin
    prv_锁定发票(in_ticket_no, '门诊发票', v_ticket);
    if v_ticket.type <> '个人发票'
    then
      raise_application_error(-20001, '不是个人发票,不能退票');
    end if;
    if v_ticket.status = 'FINISHED'
    then
      raise_application_error(-20001, '没有退票审核，不需要撤销审核.;');
    elsif v_ticket.status = 'WAIT_WITHDRAW'
    then
      null;
    elsif v_ticket.status = 'WITHDRAWED'
    then
      raise_application_error(-20001, '已经退票，不能撤销审核.;');
    else
      raise_application_error(-20001,
                              '不支持的操作状态( ' || v_ticket.status || ' ).;');
    end if;
    update invoice_print_ticket
       set status         = 'FINISHED',
           audit_workerid = hospital.login.get_workerid,
           audit_date     = sysdate
     where ticket_no = in_ticket_no
       and invoice_type = '门诊发票';
    commit;
  end s_合并打印门诊发票_审核_取消;
  --------------------------------------------------------------------------------------------
  procedure s_合并打印门诊发票_打印授权(in_ticket_no    in varchar2
                           ,in_grant_reason in varchar2) is
    i           number;
    v_seq       number;
    v_ticket_no hospital.invoice_print_ticket_%rowtype;
  begin
    prv_锁定发票(in_ticket_no, '门诊发票', v_ticket_no);
    verify_field_dict('T门诊集中打印发票授权',
                      '授权原因',
                      in_grant_reason,
                      '修改发票原因');
    begin
      select 2
        into i
        from hospital.invoice_print_ticket_
       where ticket_no = in_ticket_no
         and invoice_type = '门诊发票'
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '找不到要授权的发票( ' || in_ticket_no || ').;');
    end;
  
    begin
      select 2
        into i
        from t门诊集中打印发票授权
       where hospid = get_login_hospid
         and ticket_no = in_ticket_no
         and 是否已打印 is null;
      raise_application_error(-20001, '已经有授权信息，无需重复授权.;');
    exception
      when no_data_found then
        null;
    end;
  
    select max(授权序号)
      into v_seq
      from hospital.t门诊集中打印发票授权
     where hospid = get_login_hospid
       and ticket_no = in_ticket_no;
  
    v_seq := nvl(v_seq, 0) + 1;
  
    insert into hospital.t门诊集中打印发票授权
      (hospid,
       ticket_no,
       授权序号,
       授权工号,
       授权日期,
       授权原因,
       是否已打印)
    values
      (get_login_hospid,
       in_ticket_no,
       v_seq,
       hospital.login.get_workerid,
       sysdate,
       in_grant_reason,
       null);
  
    commit;
  end s_合并打印门诊发票_打印授权;
  --------------------------------------------------------------------------------------------
  procedure s_合并打印门诊发票_授权取消(in_ticket_no in varchar2
                           ,in_seq       in varchar2) is
    v_rec t门诊集中打印发票授权%rowtype;
  begin
    begin
      select *
        into v_rec
        from hospital.t门诊集中打印发票授权
       where hospid = get_login_hospid
         and ticket_no = in_ticket_no
         and 授权序号 = in_seq
         for update nowait;
      if v_rec.是否已打印 is not null
      then
        raise_application_error(-20001, '已经打印，不能够取消授权信息.;');
      end if;
    exception
      when no_data_found then
        null;
    end;
    delete from hospital.t门诊集中打印发票授权
     where hospid = get_login_hospid
       and ticket_no = in_ticket_no
       and 授权序号 = in_seq;
    commit;
  end s_合并打印门诊发票_授权取消;
  --------------------------------------------------------------------------------------------

  procedure s_住院发票_重新打印授权(in_residentid   in varchar2
                         ,in_grant_reason in varchar2) is
    i     number;
    v_seq number;
  begin
    verify_field_dict('RESIDENT_INVOICE_PRINT_GRANT',
                      'GRANT_REASON',
                      in_grant_reason,
                      '修改发票原因');
    begin
      select 2
        into i
        from hospital.resident_info a
       where a.residentid = in_residentid
         and a.process_reason = 'OUT'
         and rownum = 1;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '找不到住院号为( ' || in_residentid ||
                                ')的患者住院就信息，无法打印');
    end;
  
    begin
      select 2
        into i
        from hospital.resident_invoice_print_grant
       where residentid = in_residentid
         and printed is null;
      raise_application_error(-20001, '已经有授权信息，无需重复授权.;');
    exception
      when no_data_found then
        null;
    end;
  
    select max(seq)
      into v_seq
      from hospital.resident_invoice_print_grant
     where residentid = in_residentid;
  
    v_seq := nvl(v_seq, 0) + 1;
  
    insert into hospital.resident_invoice_print_grant
      (residentid, seq, grant_workerid, grant_date, grant_reason, printed)
    values
      (in_residentid,
       v_seq,
       hospital.login.get_workerid,
       sysdate,
       in_grant_reason,
       null); --printed 
    commit;
  
  end s_住院发票_重新打印授权;
  --------------------------------------------------------------------------------------------
  procedure s_住院发票_重新打印授权取消(in_residentid in varchar2
                           ,in_seq        in varchar2) is
    v_rec resident_invoice_print_grant%rowtype;
  begin
    begin
      select *
        into v_rec
        from hospital.resident_invoice_print_grant
       where residentid = in_residentid
         and seq = in_seq
         for update nowait;
      if v_rec.printed is not null
      then
        raise_application_error(-20001, '已经打印，不能够取消授权信息.;');
      end if;
    exception
      when no_data_found then
        null;
    end;
    delete from hospital.resident_invoice_print_grant
     where residentid = in_residentid
       and seq = in_seq;
    commit;
  end s_住院发票_重新打印授权取消;
  --------------------------------------------------------------------------------------------
  procedure s_住院发票_增加打印次数(in_residentid  in varchar2
                         ,in_print_count in number) is
  begin
    update charge_bill
       set print = nvl(print, 0) + nvl(in_print_count, 1)
     where residentid = in_residentid;
    update charge_bill_a01
       set print = nvl(print, 0) + nvl(in_print_count, 1)
     where residentid = in_residentid;
    update hospital.resident_invoice_print_grant
       set printed = 'Y'
     where residentid = in_residentid
       and printed is null;
    commit;
  end s_住院发票_增加打印次数;
  --------------------------------------------------------------------------------------------
  --返回0 代表可以打印 , 非0代表不能打印
  function get_住院发票_重新打印(in_residentid in varchar2) return integer is
    v_ret number := 0;
  begin
    if nvl(get_system_option('住院发票_重复打印必须授权'), 'N') = 'N'
    then
      return 0;
    end if;
  
    begin
      select 0
        into v_ret
        from hospital.charge_bill
       where residentid = in_residentid
         and nvl(print, 0) = 0
         and rownum = 1;
      return 0;
    exception
      when no_data_found then
        null;
    end;
  
    begin
      select 0
        into v_ret
        from hospital.charge_bill_a01
       where residentid = in_residentid
         and nvl(print, 0) = 0
         and rownum = 1;
      return 0;
    exception
      when no_data_found then
        null;
    end;
  
    --是否有药效的打印授权信息
    begin
      select 0
        into v_ret
        from hospital.resident_invoice_print_grant
       where residentid = in_residentid
         and printed is null;
      return v_ret;
    exception
      when no_data_found then
        null;
    end;
  
    --判断是否为第一次打印
    select max(print)
      into v_ret
      from hospital.charge_bill
     where residentid = in_residentid;
  
    return nvl(v_ret, 1);
  
  end get_住院发票_重新打印;
  --------------------------------------------------------------------------------------------
  procedure s_住院预交金_重新打印授权(in_residentid   in varchar2
                          ,in_pre_payid    in varchar2
                          ,in_grant_reason in varchar2) is
    i     number;
    v_seq number;
  begin
    verify_field_dict('RESIDENT_PRE_PAY_PRINT_GRANT',
                      'GRANT_REASON',
                      in_grant_reason,
                      '修改发票原因');
    begin
      select 2
        into i
        from hospital.pre_pay
       where id = in_pre_payid
         and residentid = in_residentid;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '找不到住院号为( ' || in_residentid || '),编号为:(' ||
                                in_pre_payid || '),账预交金记录，无法打印');
    end;
  
    begin
      select 2
        into i
        from hospital.resident_pre_pay_print_grant
       where residentid = in_residentid
         and pre_payid = in_pre_payid
         and printed is null;
      raise_application_error(-20001, '已经有授权信息，无需重复授权.;');
    exception
      when no_data_found then
        null;
    end;
  
    select max(seq)
      into v_seq
      from hospital.resident_pre_pay_print_grant
     where residentid = in_residentid
       and pre_payid = in_pre_payid;
  
    v_seq := nvl(v_seq, 0) + 1;
  
    insert into hospital.resident_pre_pay_print_grant
      (residentid,
       pre_payid,
       seq,
       grant_workerid,
       grant_date,
       grant_reason,
       printed)
    values
      (in_residentid,
       in_pre_payid,
       v_seq,
       hospital.login.get_workerid,
       sysdate,
       in_grant_reason,
       null); --printed 
    commit;
  end s_住院预交金_重新打印授权;
  --------------------------------------------------------------------------------------------
  procedure s_住院预交金_重新打印授权取消(in_residentid in varchar2
                            ,in_pre_payid  in varchar2
                            ,in_seq        in varchar2) is
    v_rec resident_pre_pay_print_grant%rowtype;
  begin
    begin
      select *
        into v_rec
        from hospital.resident_pre_pay_print_grant
       where residentid = in_residentid
         and pre_payid = in_pre_payid
         and seq = in_seq
         for update nowait;
      if v_rec.printed is not null
      then
        raise_application_error(-20001, '已经打印，不能够取消授权信息.;');
      end if;
    exception
      when no_data_found then
        null;
    end;
    delete from hospital.resident_pre_pay_print_grant
     where residentid = in_residentid
       and pre_payid = in_pre_payid
       and seq = in_seq;
    commit;
  end s_住院预交金_重新打印授权取消;
  --------------------------------------------------------------------------------------------
  procedure s_住院预交金_增加打印次数(in_residentid  in varchar2
                          ,in_pre_payid   in varchar2
                          ,in_print_count in number) is
  begin
    update hospital.resident_pre_pay_print_grant
       set printed = 'Y'
     where residentid = in_residentid
       and pre_payid = in_pre_payid
       and printed is null;
    update pre_pay
       set print = nvl(print, 0) + nvl(in_print_count, 1)
     where id = in_pre_payid
       and residentid = in_residentid;
    commit;
  end s_住院预交金_增加打印次数;
  --------------------------------------------------------------------------------------------
  -- 返回0可以打印， 非0禁止打印
  function get_住院预交金_重新打印(in_residentid in varchar2
                         ,in_pre_payid  in varchar2) return integer is
    v_ret number := 0;
  begin
    if nvl(get_system_option('住院预交金_重复打印必须授权'), 'N') = 'N'
    then
      return 0;
    end if;
  
    --是否有药效的打印授权信息
    begin
      select 0
        into v_ret
        from hospital.resident_pre_pay_print_grant
       where residentid = in_residentid
         and pre_payid = in_pre_payid
         and printed is null;
      return v_ret;
    exception
      when no_data_found then
        null;
    end;
  
    --判断是否为第一次打印
    begin
      select print
        into v_ret
        from hospital.pre_pay
       where residentid = in_residentid
         and id = in_pre_payid;
    exception
      when no_data_found then
        v_ret := 1;
    end;
    return v_ret;
  
  end get_住院预交金_重新打印;
  --------------------------------------------------------------------------------------------  
  -- in_grant_resaon :   A 作废发票，
  --                     B 不作废发票，重新打印
  procedure s_门诊发票_重新打印授权(in_prescriptionid in varchar2
                         ,in_charge_billid  in varchar2
                         ,in_grant_reason   in varchar2) is
    i                  number;
    v_seq              number;
    v_spoilt_ticket_no charge_bill.ticket_no%type;
    v_new_ticket_no    charge_bill.ticket_no%type;
    v_fee_workerid     worker.id%type;
  begin
    verify_field_dict('CLINIC_INVOICE_PRINT_GRANT',
                      'GRANT_REASON',
                      in_grant_reason,
                      '修改发票原因');
    begin
      select ticket_no, fee_operator
        into v_spoilt_ticket_no, v_fee_workerid
        from hospital.charge_bill
       where id = in_charge_billid
         and prescriptionid = in_prescriptionid;
    exception
      when no_data_found then
        begin
          select ticket_no, fee_operator
            into v_spoilt_ticket_no, v_fee_workerid
            from hospital.charge_bill_a01
           where id = in_charge_billid
             and prescriptionid = in_prescriptionid;
        exception
          when no_data_found then
            raise_application_error(-20001,
                                    '找不到处方编号为:(' || in_prescriptionid ||
                                    '),账单编号为(' || in_charge_billid ||
                                    ')的发票信息，无法打印');
        end;
    end;
  
    begin
      select 2
        into i
        from hospital.clinic_invoice_print_grant
       where prescriptionid = in_prescriptionid
         and charge_billid = in_charge_billid
         and printed is null;
      raise_application_error(-20001, '已经有授权信息，无需重复授权.;');
    exception
      when no_data_found then
        null;
    end;
  
    select max(seq)
      into v_seq
      from hospital.clinic_invoice_print_grant
     where prescriptionid = in_prescriptionid
       and charge_billid = in_charge_billid;
  
    v_seq := nvl(v_seq, 0) + 1;
  
    insert into hospital.clinic_invoice_print_grant
      (prescriptionid,
       charge_billid,
       seq,
       grant_workerid,
       grant_date,
       grant_reason,
       printed,
       spoilt_ticket_no)
    values
      (in_prescriptionid,
       in_charge_billid,
       v_seq,
       hospital.login.get_workerid,
       sysdate,
       in_grant_reason,
       null,
       v_spoilt_ticket_no); --printed 
  
    if in_grant_reason = 'A'
    then
      --作废发票，使用新的编号
      prv_使用发票(v_fee_workerid, '门诊发票', v_new_ticket_no);
      update charge_bill
         set ticket_no = v_new_ticket_no
       where id = in_charge_billid;
      update charge_bill_a01
         set ticket_no = v_new_ticket_no
       where id = in_charge_billid;
    end if;
    commit;
  end s_门诊发票_重新打印授权;
  --------------------------------------------------------------------------------------------  
  procedure s_门诊发票_重新打印授权取消(in_prescriptionid in varchar2
                           ,in_charge_billid  in varchar2
                           ,in_seq            in varchar2) is
    v_rec clinic_invoice_print_grant%rowtype;
  begin
    begin
      select *
        into v_rec
        from hospital.clinic_invoice_print_grant
       where prescriptionid = in_prescriptionid
         and charge_billid = in_charge_billid
         and seq = in_seq
         for update nowait;
      if v_rec.grant_reason = 'A'
      then
        raise_application_error(-20001, '旧发票已经作废了，不能取消打印.;');
      end if;
      if v_rec.printed is not null
      then
        raise_application_error(-20001, '已经打印，不能够取消授权信息.;');
      end if;
    exception
      when no_data_found then
        null;
    end;
    delete from hospital.clinic_invoice_print_grant
     where prescriptionid = in_prescriptionid
       and charge_billid = in_charge_billid
       and seq = in_seq;
    commit;
  end s_门诊发票_重新打印授权取消;
  --------------------------------------------------------------------------------------------
  procedure s_门诊发票_增加打印次数(in_prescriptionid in varchar2
                         ,in_charge_billid  in varchar2
                         ,in_print_count    in number) is
  begin
    update charge_bill
       set print = nvl(print, 0) + nvl(in_print_count, 1)
     where id = in_charge_billid;
    update charge_bill_a01
       set print = nvl(print, 0) + nvl(in_print_count, 1)
     where id = in_charge_billid;
    update hospital.clinic_invoice_print_grant
       set printed = 'Y'
     where prescriptionid = in_prescriptionid
       and charge_billid = in_charge_billid
       and printed is null;
    commit;
  end s_门诊发票_增加打印次数;

  --------------------------------------------------------------------------------------------
  --返回0 代表可以打印 , 非0代表不能打印
  function get_门诊发票_重新打印(in_prescriptionid in varchar2
                        ,in_charge_billid  in varchar2) return number is
    v_ret number := 0;
  begin
    if nvl(get_system_option('门诊发票_重复打印必须授权'), 'N') = 'N'
    then
      return 0;
    end if;
  
    --是否有药效的打印授权信息
    begin
      select 0
        into v_ret
        from hospital.clinic_invoice_print_grant
       where prescriptionid = in_prescriptionid
         and charge_billid = in_charge_billid
         and printed is null;
      return v_ret;
    exception
      when no_data_found then
        null;
    end;
  
    --判断是否为第一次打印
    begin
      select nvl(print, 0)
        into v_ret
        from hospital.charge_bill
       where id = in_charge_billid;
    exception
      when no_data_found then
        begin
          select print
            into v_ret
            from hospital.charge_bill_a01
           where id = in_charge_billid;
        exception
          when no_data_found then
            v_ret := 1;
        end;
    end;
    return nvl(v_ret, 0);
  end get_门诊发票_重新打印;
  --------------------------------------------------------------------------------------------
  function get_合并打印门诊发票_重新打印(in_ticket_no in varchar2) return number is
    v_ret number := 0;
  begin
    if nvl(get_system_option('门诊发票_重复打印必须授权'), 'N') = 'N'
    then
      return 0;
    end if;
  
    --是否有药效的打印授权信息
    begin
      select 0
        into v_ret
        from hospital.t门诊集中打印发票授权_
       where hospid = get_login_hospid
         and ticket_no = in_ticket_no
         and 是否已打印 is null;
      return v_ret;
    exception
      when no_data_found then
        null;
    end;
  
    --判断是否为第一次打印
    select nvl(print_num, 0)
      into v_ret
      from hospital.invoice_print_ticket
     where hospid = get_login_hospid
       and ticket_no = in_ticket_no;
    return v_ret;
  end get_合并打印门诊发票_重新打印;
  --------------------------------------------------------------------------------------------
  procedure s_门诊收费_发票管理(in_pay_method    in varchar2
                       ,in_charge_billid in varchar2) is
    v_打印发票   hospital.t门诊收费设置_.打印发票%type;
    v_ticket_no  hospital.charge_bill.ticket_no%type;
    v_attribute  charge_bill.attribute%type;
    v_patientid  hospital.patient_.id%type;
    v_residentid hospital.resident_info_.residentid%type;
    v_fee        number;
  
  begin
    --if in_pay_method not in ('CASH', 'BANK')
    --then
    -- raise_application_error(-20001,
    --                         '编号为:' || in_charge_billid || '收费类型为' ||
    --                        in_pay_method ||
    --                        ',不能使用s_门诊收费_发票管理.;');
    --end if;
    select 打印发票
      into v_打印发票
      from hospital.t门诊收费设置
     where hospid = get_login_hospid
       and charge_bill_attribute = in_pay_method;
  
    if v_打印发票 = '2'
    then
      begin
        select a.ticket_no, a.attribute, a.patientid, a.residentid, a.fee
          into v_ticket_no, v_attribute, v_patientid, v_residentid, v_fee
          from hospital.charge_bill a, hospital.all_worker b
         where a.id = in_charge_billid
           and a.fee_operator = b.id
           and b.hospid = hospital.login.get_hospid
           for update nowait;
      exception
        when no_data_found then
          raise_application_error(-20001,
                                  '找不到编号为( ' || in_charge_billid ||
                                  ' )的收费账单.;');
          null;
      end;
      if v_fee <= 0
      then
        return;
      end if;
    
      s_使用发票('门诊发票', v_ticket_no);
      s_发票_新建单据(v_patientid,
                v_residentid,
                v_attribute,
                '1',
                '门诊发票',
                v_ticket_no,
                '0');
    
      s_发票_增加明细(v_ticket_no, '门诊发票', in_charge_billid, 1);
      update invoice_print_ticket
         set status = 'FINISHED'
       where ticket_no = v_ticket_no
         and invoice_type = '门诊发票';
    end if;
  end s_门诊收费_发票管理;

  --------------------------------------------------------------------------------------------
  procedure s_门诊退费_发票管理(in_ticket_no     in varchar2
                       ,in_charge_billid in varchar2
                       ,in_pay_method    in varchar2) is
    i      integer;
    v_flag varchar2(10);
  begin
    if in_ticket_no is null
       or in_charge_billid is null
       or in_pay_method not in ('CASH', 'BANK')
    then
      return;
    end if;
    begin
      select 2
        into i
        from hospital.invoice_print_ticket_
       where ticket_no = in_ticket_no
         and invoice_type = '门诊发票'
         and status = 'FINISHED';
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '编号为:' || in_ticket_no || '发票使用记录不存在.;');
    end;
    v_flag := 'YES';
    begin
      select 2
        into i
        from hospital.charge_bill_
       where id = in_charge_billid;
    exception
      when no_data_found then
        v_flag := 'NO';
    end;
    if v_flag = 'NO'
    then
      begin
        select 2
          into i
          from hospital.charge_bill_a01_
         where id = in_charge_billid;
        v_flag := 'YES';
      exception
        when no_data_found then
          v_flag := null;
      end;
    end if;
    if v_flag is null
    then
      raise_application_error(-20001,
                              '编号为:' || in_charge_billid || '的账单记录不存在.;');
    end if;
    if v_flag = 'YES'
    then
      update hospital.charge_bill_
         set ticket_no = ''
       where id = in_charge_billid;
    else
      update hospital.charge_bill_a01_
         set ticket_no = ''
       where id = in_charge_billid;
    end if;
  
    update invoice_print_ticket
       set status = 'WITHDRAWED'
     where ticket_no = in_ticket_no
       and invoice_type = '门诊发票';
  end s_门诊退费_发票管理;
  --------------------------------------------------------------------------------------------
  procedure s_门诊预交金_发票管理(in_clinic_flow_accountid in number) is
    v_ticket_no           hospital.charge_bill.ticket_no%type;
    v_clinic_flow_account hospital.clinic_flow_account%rowtype;
  begin
    if nvl(get_system_option('门诊预交金_发票管理'), 'N') = 'Y'
    then
      select *
        into v_clinic_flow_account
        from clinic_flow_account
       where id = in_clinic_flow_accountid
         for update nowait;
      if v_clinic_flow_account.flag = 'B'
         and v_clinic_flow_account.back_clinic_flow_accountid is null
         and get_system_option('门诊预交金_结算单发票管理') = 'Y'
      then
        invoice_man.s_使用发票('门诊结算单', v_ticket_no);
      else
        invoice_man.s_使用发票('门诊预交金', v_ticket_no);
      end if;
      update clinic_flow_account
         set ticket_no = to_char(v_ticket_no)
       where id = in_clinic_flow_accountid;
    end if;
  end s_门诊预交金_发票管理;
  --------------------------------------------------------------------------------------------
  procedure s_门诊预交金_重新打印授权(in_clinic_flow_accountid in number
                          ,in_grant_reason          in varchar2) is
    i     number;
    v_seq number;
  begin
    verify_field_dict('T门诊预交金打印授权',
                      '授权原因',
                      in_grant_reason,
                      '修改发票原因');
    begin
      select 2
        into i
        from hospital.clinic_flow_account_
       where id = in_clinic_flow_accountid
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '找不到要授权的( ' || in_clinic_flow_accountid ||
                                ')门诊预交金单据.;');
    end;
  
    begin
      select 2
        into i
        from hospital.t门诊预交金打印授权
       where hospid = get_login_hospid
         and clinic_flow_accountid = in_clinic_flow_accountid
         and 是否已打印 is null;
      raise_application_error(-20001, '已经有授权信息，无需重复授权.;');
    exception
      when no_data_found then
        null;
    end;
  
    select max(授权序号)
      into v_seq
      from hospital.t门诊预交金打印授权
     where hospid = get_login_hospid
       and clinic_flow_accountid = in_clinic_flow_accountid;
  
    v_seq := nvl(v_seq, 0) + 1;
  
    insert into hospital.t门诊预交金打印授权
      (hospid,
       clinic_flow_accountid,
       授权序号,
       授权工号,
       授权日期,
       授权原因,
       是否已打印)
    values
      (get_login_hospid,
       in_clinic_flow_accountid,
       v_seq,
       hospital.login.get_workerid,
       sysdate,
       in_grant_reason,
       null);
    commit;
  end s_门诊预交金_重新打印授权;
  --------------------------------------------------------------------------------------------
  procedure s_门诊预交金_重新打印授权取消(in_clinic_flow_accountid in number
                            ,in_seq                   in varchar2) is
    v_rec hospital.t门诊预交金打印授权%rowtype;
  begin
    begin
      select *
        into v_rec
        from hospital.t门诊预交金打印授权
       where hospid = get_login_hospid
         and clinic_flow_accountid = in_clinic_flow_accountid
         and 授权序号 = in_seq
         for update nowait;
      if v_rec.是否已打印 is not null
      then
        raise_application_error(-20001, '已经打印，不能够取消授权信息.;');
      end if;
    exception
      when no_data_found then
        null;
    end;
    delete from hospital.t门诊预交金打印授权
     where hospid = get_login_hospid
       and clinic_flow_accountid = in_clinic_flow_accountid
       and 授权序号 = in_seq;
    commit;
  
  end s_门诊预交金_重新打印授权取消;
  --------------------------------------------------------------------------------------------
  procedure s_门诊预交金_增加打印次数(in_clinic_flow_accountid in number
                          ,in_print_count           in number) is
  begin
    update hospital.t门诊预交金打印授权
       set 是否已打印 = 1
     where hospid = get_login_hospid
       and clinic_flow_accountid = in_clinic_flow_accountid
       and 是否已打印 is null;
    update clinic_flow_account
       set print = nvl(print, 0) + nvl(in_print_count, 1)
     where id = in_clinic_flow_accountid;
    commit;
  end s_门诊预交金_增加打印次数;
  --------------------------------------------------------------------------------------------
  function get_门诊预交金_重新打印(in_clinic_flow_accountid in number) return number is
    v_ret number := 0;
  begin
    if nvl(get_system_option('门诊预交金_重复打印必须授权'), 'N') = 'N'
    then
      return 0;
    end if;
  
    --是否有药效的打印授权信息
    begin
      select 0
        into v_ret
        from hospital.t门诊预交金打印授权
       where hospid = get_login_hospid
         and clinic_flow_accountid = in_clinic_flow_accountid
         and 是否已打印 is null;
      return v_ret;
    exception
      when no_data_found then
        null;
    end;
  
    --判断是否为第一次打印
    begin
      select nvl(print, 0)
        into v_ret
        from hospital.clinic_flow_account
       where id = in_clinic_flow_accountid;
    exception
      when no_data_found then
        v_ret := 1;
    end;
    return nvl(v_ret, 0);
  end get_门诊预交金_重新打印;
  --------------------------------------------------------------------------------------------
  function s_get_合并打印发票号(in_fee_workerid          in varchar2
                        ,in_charge_bill_attribute in varchar2
                        ,in_from_date             in date
                        ,in_to_date               in date) return varchar2 is
    v_str varchar2(5000);
    v_min varchar2(20) := null;
    v_max varchar2(20) := null;
  begin
    for c in (select ticket_no, to_number(ticket_no) lines
                from hospital.invoice_print_ticket a
               where print_workerid = in_fee_workerid
                 and print_date >= in_from_date
                 and print_date < in_to_date
                 and charge_bill_attribute = in_charge_bill_attribute
               order by lines)
    loop
      if v_min is not null
      then
        if v_max is not null
        then
          if to_number(v_max) + 1 <> to_number(c.ticket_no)
          then
            if v_str is null
            then
              v_str := v_min || '-' || v_max;
            else
              v_str := v_str || ',' || v_min || '-' || v_max;
            end if;
            v_min := c.ticket_no;
            v_max := null;
          else
            v_max := c.ticket_no;
          end if;
        else
          v_max := c.ticket_no;
          if to_number(v_min) + 1 <> to_number(v_max)
          then
            if v_str is null
            then
              v_str := v_min;
            else
              v_str := v_str || ',' || v_min;
            end if;
            v_min := v_max;
            v_max := null;
          end if;
        end if;
      else
        v_min := c.ticket_no;
      end if;
    end loop;
    if v_min is not null
    then
      if v_str is null
      then
        if v_max is null
        then
          v_str := v_min;
        else
          v_str := v_min || '-' || v_max;
        end if;
      
      else
        if v_max is null
        then
          v_str := v_str || ',' || v_min;
        else
          v_str := v_str || ',' || v_min || '-' || v_max;
        end if;
      end if;
    end if;
    return v_str;
  end s_get_合并打印发票号;
  --------------------------------------------------------------------------------------------
  function s_get_合并打印发票退票号(in_fee_workerid          in varchar2
                          ,in_charge_bill_attribute in varchar2
                          ,in_from_date             in date
                          ,in_to_date               in date) return varchar2 is
    v_str varchar2(2000);
    v_min varchar2(10) := null;
    v_max varchar2(10) := null;
  begin
    for c in (select ticket_no, to_number(ticket_no) lines
                from hospital.invoice_print_ticket a
               where print_workerid = in_fee_workerid
                 and print_date >= in_from_date
                 and print_date < in_to_date
                 and charge_bill_attribute = in_charge_bill_attribute
                 and status = 'WITHDRAWED'
               order by lines)
    loop
      if v_min is not null
      then
        if v_max is not null
        then
          if to_number(v_max) + 1 <> to_number(c.ticket_no)
          then
            if v_str is null
            then
              v_str := v_min || '-' || v_max;
            else
              v_str := v_str || ',' || v_min || '-' || v_max;
            end if;
            v_min := c.ticket_no;
            v_max := null;
          else
            v_max := c.ticket_no;
          end if;
        else
          v_max := c.ticket_no;
          if to_number(v_min) + 1 <> to_number(v_max)
          then
            if v_str is null
            then
              v_str := v_min;
            else
              v_str := v_str || ',' || v_min;
            end if;
            v_min := v_max;
            v_max := null;
          end if;
        end if;
      else
        v_min := c.ticket_no;
      end if;
    end loop;
    if v_min is not null
    then
      if v_str is null
      then
        if v_max is null
        then
          v_str := v_min;
        else
          v_str := v_min || '-' || v_max;
        end if;
      else
        if v_max is null
        then
          v_str := v_str || ',' || v_min;
        else
          v_str := v_str || ',' || v_min || '-' || v_max;
        end if;
      end if;
    end if;
    return v_str;
  end s_get_合并打印发票退票号;
  --------------------------------------------------------------------------------------------
  function s_get_合并打印发票数(in_fee_workerid          in varchar2
                        ,in_charge_bill_attribute in varchar2
                        ,in_from_date             in date
                        ,in_to_date               in date) return number is
    v_result number;
  begin
    select count(*)
      into v_result
      from hospital.invoice_print_ticket a
     where print_workerid = in_fee_workerid
       and print_date >= in_from_date
       and print_date < in_to_date
       and charge_bill_attribute = in_charge_bill_attribute;
    return v_result;
  end s_get_合并打印发票数;
  --------------------------------------------------------------------------------------------
  function s_get_合并打印发票退票数(in_fee_workerid          in varchar2
                          ,in_charge_bill_attribute in varchar2
                          ,in_from_date             in date
                          ,in_to_date               in date) return number is
    v_result number;
  begin
    select count(*)
      into v_result
      from hospital.invoice_print_ticket a
     where print_workerid = in_fee_workerid
       and print_date >= in_from_date
       and print_date < in_to_date
       and charge_bill_attribute = in_charge_bill_attribute
       and status = 'WITHDRAWED';
    return v_result;
  end s_get_合并打印发票退票数;
  --------------------------------------------------------------------------------------------
  function s_get_门诊预交金_打印票号(in_fee_workerid in varchar2
                           ,in_from_date    in date
                           ,in_to_date      in date) return varchar2 is
    v_str varchar2(2000);
    v_min varchar2(10) := null;
    v_max varchar2(10) := null;
  begin
    for c in (select ticket_no, to_number(ticket_no) lines
                from hospital.clinic_flow_account a
               where operator = in_fee_workerid
                 and update_date >= in_from_date
                 and update_date < in_to_date
                 and flag in ('A', 'B')
                 and ticket_no is not null
               order by lines)
    loop
      if v_min is not null
      then
        if v_max is not null
        then
          if to_number(v_max) + 1 <> to_number(c.ticket_no)
          then
            if v_str is null
            then
              v_str := v_min || '-' || v_max;
            else
              v_str := v_str || ',' || v_min || '-' || v_max;
            end if;
            v_min := c.ticket_no;
            v_max := null;
          else
            v_max := c.ticket_no;
          end if;
        else
          v_max := c.ticket_no;
          if to_number(v_min) + 1 <> to_number(v_max)
          then
            if v_str is null
            then
              v_str := v_str || ',' || v_min;
            else
              v_str := v_str || ',' || v_min;
            end if;
            v_min := v_max;
            v_max := null;
          end if;
        end if;
      else
        v_min := c.ticket_no;
      end if;
    end loop;
    if v_min is not null
    then
      if v_str is null
      then
        if v_max is null
        then
          v_str := v_min;
        else
          v_str := v_min || '-' || v_max;
        end if;
      
      else
        if v_max is null
        then
          v_str := v_str || ',' || v_min;
        else
          v_str := v_str || ',' || v_min || '-' || v_max;
        end if;
      end if;
    end if;
    return v_str;
  end s_get_门诊预交金_打印票号;
  --------------------------------------------------------------------------------------------
  function get_合并发票_预交金(in_ticket_no in varchar2) return number is
    v_收费前余额     number;
    v_收费期间发生额 number;
    v_预交金         number; -- = v_收费前余额 + v_收费期间发生额
    v_max_id         number;
    v_min_id         number;
    v_ticket         invoice_print_ticket%rowtype;
  begin
    begin
      select *
        into v_ticket
        from invoice_print_ticket
       where ticket_no = in_ticket_no;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '编号为(' || in_ticket_no || ')的发票不存在，不能打印.;');
      when others then
        raise_application_error(-20001, '其他人正在操作，请稍后重试.;');
    end;
  
    for c in (select b.id, b.fee_date
                from hospital.invoice_print_detail a, hospital.charge_bill b
               where a.ticket_no = in_ticket_no
                 and a.charge_billid = b.id
              union all
              select b.id, b.fee_date
                from hospital.invoice_print_detail a,
                     hospital.charge_bill_a01      b
               where a.ticket_no = in_ticket_no
                 and a.charge_billid = b.id
               order by fee_date asc, id asc)
    loop
      begin
        select former_fee, id
          into v_收费前余额, v_min_id
          from hospital.clinic_flow_account
         where charge_billid = c.id
           and charge_billid is not null;
      exception
        when no_data_found then
          raise_application_error(-20001, '非法的错误.;');
      end;
      exit;
    end loop;
  
    for c in (select b.id, b.fee_date
                from hospital.invoice_print_detail a, hospital.charge_bill b
               where a.ticket_no = in_ticket_no
                 and a.charge_billid = b.id
              union all
              select b.id, b.fee_date
                from hospital.invoice_print_detail a,
                     hospital.charge_bill_a01      b
               where a.ticket_no = in_ticket_no
                 and a.charge_billid = b.id
               order by fee_date desc, id desc)
    loop
      begin
        select id
          into v_max_id
          from hospital.clinic_flow_account
         where charge_billid = c.id
           and charge_billid is not null;
      exception
        when no_data_found then
          raise_application_error(-20001, '非法的错误.;');
      end;
      exit;
    end loop;
  
    select sum(in_fee)
      into v_收费期间发生额
      from hospital.clinic_flow_account_
     where patientid = v_ticket.patientid
       and id > v_min_id
       and id < v_max_id
       and flag in ('A', 'B');
    v_预交金 := nvl(v_收费前余额, 0) + nvl(v_收费期间发生额, 0);
    return v_预交金;
  end get_合并发票_预交金;
  --------------------------------------------------------------------------------------------
  function get_合并发票_预交金余额(in_ticket_no in varchar2) return number is
    v_预交金余额 number;
    v_ticket     invoice_print_ticket%rowtype;
  begin
    begin
      select *
        into v_ticket
        from invoice_print_ticket
       where ticket_no = in_ticket_no;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '编号为(' || in_ticket_no || ')的发票不存在，不能打印.;');
      when others then
        raise_application_error(-20001, '其他人正在操作，请稍后重试.;');
    end;
    for c in (select b.id, b.fee_date
                from hospital.invoice_print_detail a, hospital.charge_bill b
               where a.ticket_no = in_ticket_no
                 and a.charge_billid = b.id
              union all
              select b.id, b.fee_date
                from hospital.invoice_print_detail a,
                     hospital.charge_bill_a01      b
               where a.ticket_no = in_ticket_no
                 and a.charge_billid = b.id
               order by fee_date desc, id desc)
    loop
      begin
        select remain_fee
          into v_预交金余额
          from hospital.clinic_flow_account
         where charge_billid = c.id
           and charge_billid is not null;
      exception
        when no_data_found then
          raise_application_error(-20001, '非法的错误.;');
      end;
      exit;
    end loop;
    return nvl(v_预交金余额, 0);
  end;

  ----------------------------------------------------------------------------------------------------
  procedure lock_invoice_info(in_id    in varchar2
                             ,out_info out hospital.invoice_%rowtype) is
  begin
    select *
      into out_info
      from hospital.invoice_
     where id = in_id
       for update nowait;
  exception
    when no_data_found then
      raise_application_error(-20001,
                              '编号为(' || in_id || ')的发票信息不存在.;');
  end lock_invoice_info;
  -------------------------------------------------------------------------------------------
begin
  null;
end invoice_man;
/
