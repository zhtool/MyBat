create or replace package ol_acc as

  procedure s_医嘱_医嘱_入帐(in_order_listid in varchar2
                            ,in_this_days    in varchar2
                            ,in_bar_code     in varchar2 default null);
  procedure s_医嘱_医嘱_入帐_取消(in_order_listid in varchar2);
  procedure s_医嘱_医嘱_入帐_跳过(in_order_listid in varchar2
                                 ,in_this_days    in varchar2);
  procedure s_医嘱_医嘱_入帐_跳过取消(in_order_listid in varchar2
                                     ,in_this_days    in varchar2);
  procedure s_医嘱_医嘱_入帐_按病人(in_patientid  in varchar2
                                   ,in_residentid in varchar2
                                   ,in_this_days  in varchar2);
  procedure s_医嘱_术中医嘱_入帐_按病人(in_patientid  in varchar2
                                       ,in_residentid in varchar2
                                       ,in_this_days  in varchar2);
  procedure s_医嘱_医嘱_入帐_临_按病人(in_patientid  in varchar2
                                      ,in_residentid in varchar2);
  procedure s_医嘱_临非口_入帐_按病人(in_patientid  in varchar2
                                     ,in_residentid in varchar2);
  procedure s_医嘱_临口_入帐_按病人(in_patientid  in varchar2
                                   ,in_residentid in varchar2);
  procedure s_医嘱_长非口_入帐_按病人(in_patientid      in varchar2
                                     ,in_residentid     in varchar2
                                     ,in_this_days      in varchar2
                                     ,in_new_order_list in varchar2);
  procedure s_医嘱_文本医嘱_入帐_按病人(in_patientid  in varchar2
                                       ,in_residentid in varchar2
                                       ,in_this_days  in varchar2);
  procedure s_医嘱_长口_入帐_按病人(in_patientid      in varchar2
                                   ,in_residentid     in varchar2
                                   ,in_this_days      in varchar2
                                   ,in_new_order_list in varchar2);
  procedure s_医嘱_长杂费_入帐_按病人(in_patientid      in varchar2
                                     ,in_residentid     in varchar2
                                     ,in_this_days      in varchar2
                                     ,in_new_order_list in varchar2);
  procedure s_医嘱_长_杂费_入帐nc(t_order_list    in order_list%rowtype
                                 ,t_resident_info in resident_info%rowtype
                                 ,in_this_days    in varchar2);
  procedure s_医嘱_临_杂费_入帐nc(t_order_list    in order_list%rowtype
                                 ,t_resident_info in resident_info%rowtype);
  procedure s_医嘱_结算_补入_杂费(in_residentid     in varchar2
                                 ,in_execute_deptid in varchar2
                                 ,in_sundry_feeid   in varchar2
                                 ,in_price          in varchar2
                                 ,in_amount         in varchar2
                                 ,in_remark         in varchar2
                                 ,in_patient_deptid in varchar2
                                 ,out_order_listid  out varchar2);
  procedure s_医嘱_结算_补入_删除(in_residentid   in varchar2
                                 ,in_order_listid in varchar2);
  procedure s_医嘱_补入_杂费(in_residentid     in varchar2
                            ,in_execute_deptid in varchar2
                            , --核算科室
                             in_sundry_feeid   in varchar2
                            ,in_price          in varchar2
                            ,in_amount         in varchar2
                            ,in_remark         in varchar2
                            ,in_bar_code       in varchar2 default null
                            ,out_order_listid  out varchar2);
  procedure s_医嘱_补入_物资(in_residentid    in varchar2
                            ,in_deptid        in varchar2
                            ,in_materialid    in varchar2
                            ,in_packageid     in varchar2
                            ,in_purchaseid    in varchar2
                            ,in_amount        in varchar2
                            ,in_remark        in varchar2
                            ,out_order_listid out varchar2);
  procedure s_医嘱_补入_删除(in_residentid   in varchar2
                            ,in_order_listid in varchar2);
  procedure s_医嘱_药单_退_增加(in_circulation_detailid  in varchar2
                               ,out_circulation_detailid out varchar2);
  procedure s_医嘱_药单_退_增加_取消(in_consume_detailid in varchar2
                                    ,in_cancel_detailid  in varchar2);
  --无权限判断退药程序，为第三方接口提供
  procedure s_医嘱_药单_退_增加_ex(in_circulation_detailid  in varchar2
                                  ,out_circulation_detailid out varchar2);
  procedure s_医嘱_药单_退_增加_取消_ex(in_consume_detailid in varchar2
                                       ,in_cancel_detailid  in varchar2);

  procedure s_医嘱_临_杂费_退帐(in_order_listid  in varchar2
                               ,in_charge_itemid in varchar2); --2004/11/29 create
  procedure s_医嘱_长_杂费_退帐(in_order_listid  in varchar2
                               ,in_charge_itemid in varchar2); --2004/11/29 create
  procedure s_固定医嘱_设置(in_op_type           in varchar2
                           ,in_long_flag         in varchar2
                           ,in_sundry_feeid      in varchar2
                           ,in_price             in varchar2
                           ,in_amount            in varchar2
                           ,in_execute_dept_flag in varchar2
                           ,in_execute_deptid    in varchar2
                           ,in_from_year         in varchar2
                           ,in_from_mmdd         in varchar2
                           ,in_to_year           in varchar2
                           ,in_to_mmdd           in varchar2
                           ,in_patient_dept_flag in varchar2 default null
                           ,in_patient_deptid    in varchar2 default null);
  procedure s_医嘱_退费审核(in_charge_itemid in varchar2
                           ,in_order_listid  in varchar2
                           ,in_action        in varchar2);
  -----------------------------------------------------------------------------------------
  --  tiger  2006/09/11 处理固定医嘱(即不能由护士操作的医嘱处理过程)
  --  long_flag = E (临时固定医嘱)
  --  long_flag = F (长期固定医嘱)
  procedure s_医嘱_固定医嘱_录入nc(out_order_listid  out varchar2
                                  ,in_long_flag      in varchar2
                                  ,in_start_workerid in varchar2
                                  ,in_residentid     in varchar2
                                  ,in_execute_deptid in varchar2
                                  , --核算科室
                                   in_sundry_feeid   in varchar2
                                  ,in_price          in varchar2
                                  ,in_amount         in varchar2
                                  ,in_remark         in varchar2);
  -----------------------------------------------------------------------------------------
  procedure s_医嘱_固定医嘱_入帐nc(t_order_list    in order_list%rowtype
                                  ,t_resident_info in resident_info%rowtype);
  -----------------------------------------------------------------------------------------
  procedure s_医嘱_固定医嘱_执行nc(t_order_list in order_list%rowtype);
  -----------------------------------------------------------------------------------------
  procedure s_医嘱_固定医嘱_停止nc(in_order_listid in varchar2);
  -----------------------------------------------------------------------------------------
  procedure s_医嘱_手工计费_入账(in_order_listid in varchar2
                                ,in_this_days    in varchar2
                                ,in_amount       in varchar2);
end ol_acc;
/
create or replace package body ol_acc as
  ------------------------------------------------------------------------
  -- tiger      2006/06/24 - 增加优惠价格
  -- 2006/05/27 charge_item增加materialid等，修改charge
  -- 2006/05/09 医嘱入帐和取消入帐，没一个项目采用四舍五入近似
  -- 2006/02/26 组合项目入帐，杂费统计组合的明细，不统计组合项目
  ------------------------------------------------------------------------
  --PRIVATE PROCEDURE IMPLEMENTATION
  procedure prv_ack_入帐(in_cmp_flag  in varchar2
                        ,in_long_flag in varchar2
                        ,in_status    in varchar2
                        ,in_status1   in varchar2) is
  begin
  
    if in_long_flag <> in_cmp_flag
    then
      raise_application_error(-20001,
                              '这不是' ||
                              get_field_dict_name('ORDER_LIST',
                                                  'LONG_FLAG',
                                                  in_long_flag) ||
                              '，不能在这里处理.;');
    end if;
  
    if in_status = 'WAIT_ACK'
    then
      raise_application_error(-20001, '该医嘱还没有确认.;');
    elsif in_status = 'STOPPED'
    then
      raise_application_error(-20001, '该医嘱已经停止.;');
    elsif in_status = 'NORMAL'
    then
      null;
    else
      raise_application_error(-20001,
                              '非法的临时医嘱状态状态( ' || in_status ||
                              ' ).;');
    end if;
  
    if in_status1 = 'WAIT_ACC'
    then
      null;
    elsif in_status1 = 'WAIT_EXEC'
    then
      raise_application_error(-20001, '该医嘱已经入帐,需要进行执行.;');
    else
      raise_application_error(-20001,
                              '非法的临时医嘱执行状态状态( ' || in_status1 ||
                              ' ).;');
    end if;
  
  end prv_ack_入帐;
  --------------------------------------------------------------------------------------------
  procedure prv_ack_住院费用足够(t_order_list    in order_list%rowtype
                                ,t_resident_info in resident_info%rowtype) is
  begin
    if t_order_list.long_flag = 'A'
    then
      if t_order_list.materialid is not null
      then
        if nvl(get_system_option('医嘱入帐_长期物资_限制费用'), 'Y') = 'Y'
        then
          s_ack_住院费用足够(t_resident_info, 0);
        end if;
      else
        if nvl(get_system_option('医嘱入帐_长期杂费_限制费用'), 'N') = 'Y'
        then
          s_ack_住院费用足够(t_resident_info, 0);
        end if;
      end if;
    elsif t_order_list.long_flag = 'B'
    then
      if t_order_list.materialid is not null
      then
        if t_order_list.type not in ('OP1', 'OP2')
        then
          if nvl(get_system_option('医嘱入帐_临时物资_限制费用'), 'Y') = 'Y'
          then
            s_ack_住院费用足够(t_resident_info, 0);
          end if;
        else
          if nvl(get_system_option('医嘱入帐_手术临时物资_限制费用'), 'Y') = 'Y'
          then
            s_ack_住院费用足够(t_resident_info, 0);
          end if;
        end if;
      else
        if t_order_list.type not in ('OP1', 'OP2')
        then
          if nvl(get_system_option('医嘱入帐_临时杂费_限制费用'), 'N') = 'Y'
          then
            s_ack_住院费用足够(t_resident_info, 0);
          end if;
        else
          if nvl(get_system_option('医嘱入帐_手术临时杂费_限制费用'), 'Y') = 'Y'
          then
            s_ack_住院费用足够(t_resident_info, 0);
          end if;
        end if;
      end if;
    end if;
  end;
  -------------------------------------------------------------------------------------------------------
  --  2013/11/06  参数in_amount 空值代表正常杂费医嘱，入账数量按照医嘱数量计算
  --              参数in_amount 不为空值，代表医嘱杂费是手工入账项目，入账数量由用户手工设置   ,in_amount代表整个入账天数的中数量
  --                      
  -- 2006/05/15 增加 优惠价为
  procedure prv_无明细杂费_入帐_特殊医保(t_order_list        in order_list%rowtype
                                        ,t_resident_info     in resident_info%rowtype
                                        ,out_charge_itemid   out varchar2
                                        ,in_this_account_seq in number
                                        ,in_fee_type         in varchar2
                                        ,in_unit             in varchar2
                                        ,in_remark           in varchar2
                                        ,in_mc_price         in number
                                        ,in_days             in number
                                        ,in_amount           in number default null
                                        ,in_bar_code         in varchar2 default null) is
    v_amount      number := 0;
    v_a_price     number := 0;
    v_c_price     number := 0;
    v_in_fund_pay number := 0;
    v_self_pay    number := 0;
  begin
    if in_amount is null
    then
      if nvl(t_order_list.price, 0) <= nvl(in_mc_price, 0)
      then
        v_a_price := nvl(t_order_list.price, 0);
        v_amount  := nvl(t_order_list.amount, 0) * nvl(in_days, 0);
      else
        v_a_price := nvl(in_mc_price, 0) * 2;
        v_c_price := (nvl(t_order_list.price, 0) - nvl(in_mc_price, 0)) * 2;
        v_amount  := nvl(t_order_list.amount, 0) / 2 * nvl(in_days, 0);
      end if;
      v_in_fund_pay := v_amount * v_a_price;
      v_self_pay    := nvl(t_order_list.price, 0) *
                       nvl(t_order_list.amount, 0) * nvl(in_days, 0) -
                       v_in_fund_pay;
    else
      if nvl(t_order_list.price, 0) <= nvl(in_mc_price, 0)
      then
        v_a_price := nvl(t_order_list.price, 0);
        v_amount  := in_amount;
      else
        v_a_price := nvl(in_mc_price, 0) * 2;
        v_c_price := (nvl(t_order_list.price, 0) - nvl(in_mc_price, 0)) * 2;
        v_amount  := in_amount / 2;
      end if;
      v_in_fund_pay := v_amount * v_a_price;
      v_self_pay    := nvl(t_order_list.price, 0) * v_amount -
                       v_in_fund_pay;
    end if;
    charge.ins_item(out_charge_itemid,
                    null,
                    t_resident_info.patientid,
                    null,
                    t_resident_info.residentid,
                    t_order_list.start_workerid,
                    in_fee_type,
                    t_resident_info.deptid,
                    get_worker_in_deptid(t_order_list.start_workerid),
                    t_order_list.execute_deptid,
                    'ACCOUNT',
                    t_order_list.id,
                    t_order_list.id,
                    in_this_account_seq,
                    t_order_list.sundry_feeid,
                    null,
                    nvl(in_unit, ' '),
                    v_amount,
                    v_a_price,
                    'WAIT_PAY',
                    null,
                    'A',
                    0,
                    in_remark,
                    null,
                    in_materialid => null,
                    in_packageid => null,
                    in_purchaseid => null,
                    in_norm_price => null,
                    in_in_fund_pay => v_in_fund_pay,
                    in_self_pay => 0,
                    in_discount => 0,
                    in_bar_code => in_bar_code);
    if v_c_price > 0
    then
      charge.ins_item(out_charge_itemid,
                      null,
                      t_resident_info.patientid,
                      null,
                      t_resident_info.residentid,
                      t_order_list.start_workerid,
                      in_fee_type,
                      t_resident_info.deptid,
                      get_worker_in_deptid(t_order_list.start_workerid),
                      t_order_list.execute_deptid,
                      'ACCOUNT',
                      t_order_list.id,
                      t_order_list.id,
                      in_this_account_seq,
                      t_order_list.sundry_feeid,
                      null,
                      nvl(in_unit, ' '),
                      v_amount,
                      v_c_price,
                      'WAIT_PAY',
                      null,
                      'C',
                      1,
                      in_remark,
                      null,
                      in_materialid => null,
                      in_packageid => null,
                      in_purchaseid => null,
                      in_norm_price => null,
                      in_in_fund_pay => 0,
                      in_self_pay => v_self_pay,
                      in_discount => 0);
    end if;
    update resident_patient
       set account     = nvl(account, 0) + round(v_a_price * v_amount, 2) +
                         round(v_c_price * v_amount, 2),
           a_account   = nvl(a_account, 0) + round(v_a_price * v_amount, 2),
           b_account   = nvl(b_account, 0) + 0,
           c_account   = nvl(c_account, 0) + round(v_c_price * v_amount, 2),
           in_fund_pay = nvl(in_fund_pay, 0) + v_in_fund_pay,
           self_pay    = nvl(self_pay, 0) + v_self_pay
     where patientid = t_order_list.patientid
       and residentid = t_order_list.ownerid;
  end prv_无明细杂费_入帐_特殊医保;

  --------------------------------------------------------------------------------------------
  --  2013/11/06  参数in_amount 空值代表正常杂费医嘱，入账数量按照医嘱数量计算
  --              参数in_amount 不为空值，代表医嘱杂费是手工入账项目，入账数量由用户手工设置   ,in_amount代表整个入账天数的中数量
  --                      
  procedure prv_无明细杂费_入帐_正常医保(t_order_list        in order_list%rowtype
                                        ,t_resident_info     in resident_info%rowtype
                                        ,out_charge_itemid   out varchar2
                                        ,in_this_account_seq in number
                                        ,in_fee_type         in varchar2
                                        ,in_unit             in varchar2
                                        ,in_remark           in varchar2
                                        ,in_days             in number
                                        ,out_discount        out number
                                        ,in_amount           in number default null
                                        ,in_bar_code         in varchar2 default null) is
    v_item_type nbmam_list.item_type%type;
    v_ratio     number;
    v_account   number := 0;
    v_a_account number := 0;
    v_b_account number := 0;
    v_c_account number := 0;
    --v_b_account1   number := 0;
    v_patient_attr patient.attribute%type;
    v_in_fund_pay  number := 0;
    v_self_pay     number := 0;
    v_discount     number := 0; --优惠价格
    v_discount_fee number := 0; --优惠金额
    v_price        number := 0;
    v_amount       number; --记账次数
    --v_费用发生日期 date;
  begin
    select attribute
      into v_patient_attr
      from patient
     where id = t_order_list.patientid;
    s_get_杂费_医保信息(v_patient_attr,
                        t_order_list.sundry_feeid,
                        v_item_type,
                        v_ratio);
    v_discount := discount_man.get_住院_杂费优惠价(t_order_list.ownerid,
                                                   t_order_list.sundry_feeid,
                                                   t_order_list.price);
    v_price    := round(round(nvl(t_order_list.price, 0), 3) -
                        nvl(v_discount, 0),
                        3);
    if in_amount is null
    then
      v_amount := nvl(t_order_list.amount, 0) * nvl(in_days, 0);
    else
      v_amount := in_amount;
    end if;
    /*
      if t_order_list.sundry_feeid in
         ('120400005B', '120400006B', '120400007B')
         and t_order_list.id <> nvl(t_order_list.parentid, 'X')
      then
        if t_order_list.long_flag = 'A'
        then
          select trunc(start_date) + nvl(this_days, 0) + nvl(in_days, 0)
            into v_费用发生日期
            from hospital.order_list
           where id = t_order_list.id;
        else
          select trunc(start_date)
            into v_费用发生日期
            from hospital.order_list
           where id = t_order_list.id;
        end if;
      
        begin
          select 2
            into i
            from hospital.静脉输液加收退费表
           where residentid = t_order_list.ownerid
             and withdraw_date = v_费用发生日期
             and rownum = 1;
        exception
          when no_data_found then
            v_amount := v_amount - 1;
            insert into hospital.静脉输液加收退费表
              (residentid,
               withdraw_date,
               order_listid,
               operator,
               update_date)
            values
              (t_order_list.ownerid,
               v_费用发生日期,
               t_order_list.id,
               login.workerid,
               sysdate);
          
        end;
      
        --判断是否需要退费，如果需要，则数量-1
      end if;
    */
    v_account      := round(v_price * v_amount, 2);
    v_discount_fee := round(v_discount * v_amount, 2);
    v_in_fund_pay  := medcare_balance.get_收费明细_进入统筹(t_order_list.patientid,
                                                            t_order_list.ownerid,
                                                            t_order_list.sundry_feeid,
                                                            null,
                                                            null,
                                                            v_amount,
                                                            nvl(v_price, 0),
                                                            nvl(v_discount,
                                                                0),
                                                            v_item_type);
    v_self_pay     := v_account + v_discount_fee - round(v_in_fund_pay, 2);
  
    charge.ins_item(out_charge_itemid,
                    null,
                    t_resident_info.patientid,
                    null,
                    t_resident_info.residentid,
                    t_order_list.start_workerid,
                    in_fee_type,
                    t_resident_info.deptid,
                    get_worker_in_deptid(t_order_list.start_workerid),
                    t_order_list.execute_deptid,
                    'ACCOUNT',
                    t_order_list.id,
                    t_order_list.id,
                    in_this_account_seq,
                    t_order_list.sundry_feeid,
                    null,
                    nvl(in_unit, ' '),
                    v_amount,
                    v_price,
                    'WAIT_PAY',
                    null,
                    v_item_type,
                    v_ratio,
                    in_remark,
                    null,
                    in_materialid => null,
                    in_packageid => null,
                    in_purchaseid => null,
                    in_norm_price => get_杂费基准价(t_order_list.sundry_feeid,
                                                    t_order_list.price),
                    in_in_fund_pay => v_in_fund_pay,
                    in_self_pay => v_self_pay,
                    in_discount => v_discount,
                    in_bar_code => in_bar_code);
  
    if v_item_type = 'A'
    then
      v_a_account := v_account + v_discount_fee;
    elsif v_item_type = 'B'
    then
      v_b_account := v_account + v_discount_fee;
    else
      v_c_account := v_account + v_discount_fee;
    end if;
    update resident_patient
       set account     = nvl(account, 0) + v_account,
           a_account   = nvl(a_account, 0) + v_a_account,
           b_account   = nvl(b_account, 0) + v_b_account,
           c_account   = nvl(c_account, 0) + v_c_account,
           in_fund_pay = nvl(in_fund_pay, 0) + v_in_fund_pay,
           self_pay    = nvl(self_pay, 0) + v_self_pay,
           discount    = nvl(discount, 0) + v_discount_fee
     where patientid = t_order_list.patientid
       and residentid = t_order_list.ownerid;
    out_discount := v_discount;
  end prv_无明细杂费_入帐_正常医保;
  ---------------------------------------------------------------------------------------------------
  --2006/05/15 tiger 增加优惠价
  procedure prv_杂费_组合项目_入帐_特殊医保(t_order_list        in order_list%rowtype
                                           ,t_resident_info     in resident_info%rowtype
                                           ,in_execute_deptid   in varchar2
                                           ,in_sundry_feeid     in varchar2
                                           ,in_price            in number
                                           ,in_amount           in number
                                           ,out_charge_itemid   out varchar2
                                           ,in_this_account_seq in number
                                           ,in_fee_type         in varchar2
                                           ,in_unit             in varchar2
                                           ,in_remark           in varchar2
                                           ,in_mc_price         in number
                                           ,in_days             in number) is
    v_amount  number := 0;
    v_a_price number := 0;
    v_c_price number := 0;
  begin
    raise_application_error(-20001, '不支持的程序程序调用.;');
    if nvl(in_price, 0) <= nvl(in_mc_price, 0)
    then
      v_a_price := nvl(in_price, 0);
      v_amount  := nvl(in_amount, 0) * nvl(in_days, 0);
    else
      v_a_price := nvl(in_mc_price, 0) * 2;
      v_c_price := (nvl(in_price, 0) - nvl(in_mc_price, 0)) * 2;
      v_amount  := nvl(in_amount, 0) / 2 * nvl(in_days, 0);
    end if;
    charge.ins_item(out_charge_itemid,
                    null,
                    t_resident_info.patientid,
                    null,
                    t_resident_info.residentid,
                    t_order_list.start_workerid,
                    in_fee_type,
                    t_resident_info.deptid,
                    get_worker_in_deptid(t_order_list.start_workerid),
                    in_execute_deptid,
                    'ACCOUNT',
                    t_order_list.id,
                    t_order_list.id,
                    in_this_account_seq,
                    in_sundry_feeid,
                    null,
                    nvl(in_unit, ' '),
                    v_amount,
                    v_a_price,
                    'WAIT_PAY',
                    null,
                    'A',
                    0,
                    in_remark,
                    null,
                    in_materialid => null,
                    in_packageid => null,
                    in_purchaseid => null,
                    in_norm_price => null,
                    in_in_fund_pay => 0,
                    in_self_pay => 0,
                    in_discount => 0);
    if v_c_price > 0
    then
      charge.ins_item(out_charge_itemid,
                      null,
                      t_resident_info.patientid,
                      null,
                      t_resident_info.residentid,
                      t_order_list.start_workerid,
                      in_fee_type,
                      t_resident_info.deptid,
                      get_worker_in_deptid(t_order_list.start_workerid),
                      t_order_list.execute_deptid,
                      'ACCOUNT',
                      t_order_list.id,
                      t_order_list.id,
                      in_this_account_seq,
                      in_sundry_feeid,
                      null,
                      nvl(in_unit, ' '),
                      v_amount,
                      v_c_price,
                      'WAIT_PAY',
                      null,
                      'C',
                      1,
                      in_remark,
                      null,
                      in_materialid => null,
                      in_packageid => null,
                      in_purchaseid => null,
                      in_norm_price => null,
                      in_in_fund_pay => 0,
                      in_self_pay => 0,
                      in_discount => 0);
    end if;
    update resident_patient
       set account   = nvl(account, 0) + round(v_a_price * v_amount, 2) +
                       round(v_c_price * v_amount, 2),
           a_account = nvl(a_account, 0) + round(v_a_price * v_amount, 2),
           b_account = nvl(b_account, 0) + 0,
           c_account = nvl(c_account, 0) + round(v_c_price * v_amount, 2)
     where patientid = t_order_list.patientid
       and residentid = t_order_list.ownerid;
  end prv_杂费_组合项目_入帐_特殊医保;

  --------------------------------------------------------------------------------------------
  procedure prv_杂费_组合项目_入帐_正常医保(t_order_list        in order_list%rowtype
                                           ,t_resident_info     in resident_info%rowtype
                                           ,in_execute_deptid   in varchar2
                                           ,in_sundry_feeid     in varchar2
                                           ,in_price            in number
                                           ,in_amount           in number
                                           ,out_charge_itemid   out varchar2
                                           ,in_this_account_seq in number
                                           ,in_fee_type         in varchar2
                                           ,in_unit             in varchar2
                                           ,in_remark           in varchar2
                                           ,in_days             in number
                                           ,out_discount        out number) is
    v_item_type nbmam_list.item_type%type;
    v_ratio     number;
    v_account   number := 0;
    v_a_account number := 0;
    v_b_account number := 0;
    v_c_account number := 0;
    --v_b_account1   number := 0;
    v_patient_attr patient.attribute%type;
    v_in_fund_pay  number := 0;
    v_self_pay     number := 0;
    v_discount     number := 0;
    v_price        number := 0;
    v_discount_fee number := 0;
  begin
    select attribute
      into v_patient_attr
      from patient
     where id = t_order_list.patientid;
    s_get_杂费_医保信息(v_patient_attr,
                        in_sundry_feeid,
                        v_item_type,
                        v_ratio);
    v_discount := discount_man.get_住院_杂费优惠价(t_order_list.ownerid,
                                                   t_order_list.sundry_feeid,
                                                   in_price);
  
    v_price := round(round(nvl(in_price, 0), 3) - nvl(v_discount, 0), 3);
  
    v_account      := round(v_price * nvl(in_amount, 0) * nvl(in_days, 0),
                            2);
    v_discount_fee := round(v_discount * nvl(in_amount, 0) *
                            nvl(in_days, 0),
                            2);
    v_in_fund_pay  := medcare_balance.get_收费明细_进入统筹(t_order_list.patientid,
                                                            t_order_list.ownerid,
                                                            in_sundry_feeid,
                                                            null,
                                                            null,
                                                            in_amount,
                                                            nvl(v_price, 0),
                                                            nvl(v_discount,
                                                                0),
                                                            v_item_type);
    v_self_pay     := v_account + v_discount_fee - round(v_in_fund_pay, 2);
    charge.ins_item(out_charge_itemid,
                    null,
                    t_resident_info.patientid,
                    null,
                    t_resident_info.residentid,
                    t_order_list.start_workerid,
                    in_fee_type,
                    t_resident_info.deptid,
                    get_worker_in_deptid(t_order_list.start_workerid),
                    in_execute_deptid,
                    'ACCOUNT',
                    t_order_list.id,
                    t_order_list.id,
                    in_this_account_seq,
                    in_sundry_feeid,
                    null,
                    nvl(in_unit, ' '),
                    in_amount * nvl(in_days, 0),
                    v_price,
                    'WAIT_PAY',
                    null,
                    v_item_type,
                    v_ratio,
                    in_remark,
                    null,
                    in_materialid => null,
                    in_packageid => null,
                    in_purchaseid => null,
                    in_norm_price => get_杂费基准价(in_sundry_feeid,
                                                    in_price),
                    in_in_fund_pay => v_in_fund_pay,
                    in_self_pay => v_self_pay,
                    in_discount => v_discount);
    if v_item_type = 'A'
    then
      v_a_account := v_account + v_discount_fee;
    elsif v_item_type = 'B'
    then
      v_b_account := v_account + v_discount_fee;
    else
      v_c_account := v_account + v_discount_fee;
    end if;
    update resident_patient
       set account     = nvl(account, 0) + v_account,
           a_account   = nvl(a_account, 0) + v_a_account,
           b_account   = nvl(b_account, 0) + v_b_account,
           c_account   = nvl(c_account, 0) + v_c_account,
           in_fund_pay = nvl(in_fund_pay, 0) + v_in_fund_pay,
           self_pay    = nvl(self_pay, 0) + v_self_pay,
           discount    = nvl(discount, 0) + v_discount_fee
     where patientid = t_order_list.patientid
       and residentid = t_order_list.ownerid;
    out_discount := v_discount;
  end prv_杂费_组合项目_入帐_正常医保;
  ------------------------------------------------------------------------------------------------
  procedure prv_无明细杂费_入帐(t_order_list        in order_list%rowtype
                               ,t_resident_info     in resident_info%rowtype
                               ,out_charge_itemid   out varchar2
                               ,in_this_account_seq in number
                               ,in_days             in number
                               ,in_amount           in number default null
                               ,in_bar_code         in varchar2 default null) is
    v_mc_price       number;
    v_fee_type       charge_item.fee_type%type;
    v_unit           all_sundry_fee.unit%type;
    v_name           all_sundry_fee.name%type;
    v_combo_flag     all_sundry_fee.combo_flag%type;
    v_status         order_list_group.status%type;
    v_execute_deptid all_department.id%type;
    v_price          number;
    v_discount       number;
    v_sysopt         system_option.name%type;
    v_total_fee      number := 0;
    v_amount         number;
    v_hospid         hosp.id%type;
  begin
    select fee_type, unit, name, combo_flag
      into v_fee_type, v_unit, v_name, v_combo_flag
      from sundry_fee
     where id = t_order_list.sundry_feeid;
    if v_combo_flag = 'SINGLE'
    then
      begin
        select account_pay
          into v_mc_price
          from medical_care_special_fee
         where sundry_feeid = t_order_list.sundry_feeid
           and deptid = t_resident_info.deptid
           and rownum = 1;
        prv_无明细杂费_入帐_特殊医保(t_order_list,
                                     t_resident_info,
                                     out_charge_itemid,
                                     in_this_account_seq,
                                     v_fee_type,
                                     v_unit,
                                     v_name,
                                     v_mc_price,
                                     in_days,
                                     in_amount,
                                     in_bar_code);
      exception
        when no_data_found then
          prv_无明细杂费_入帐_正常医保(t_order_list,
                                       t_resident_info,
                                       out_charge_itemid,
                                       in_this_account_seq,
                                       v_fee_type,
                                       v_unit,
                                       v_name,
                                       in_days,
                                       v_discount,
                                       in_amount,
                                       in_bar_code);
      end;
      --tiger  2006/03/08 统计费用以前没有乘天数in_days
      v_amount    := t_order_list.amount * nvl(in_days, 0);
      v_total_fee := (t_order_list.price - v_discount) *
                     t_order_list.amount * nvl(in_days, 0);
      rpt_sf.s_acc(sysdate,
                   t_order_list.sundry_feeid,
                   t_resident_info.deptid,
                   t_order_list.execute_deptid,
                   t_order_list.start_workerid,
                   v_fee_type,
                   v_amount,
                   v_total_fee,
                   0,
                   0);
    elsif v_combo_flag = 'COMBO'
    then
      select hospid
        into v_hospid
        from hospital.all_department_
       where id = t_order_list.execute_deptid;
      begin
        select status
          into v_status
          from sundry_fee_combo
         where hospid = v_hospid
           and sundry_feeid = t_order_list.sundry_feeid;
        if v_status <> 'ENABLED'
        then
          raise_application_error(-20001,
                                  '该组合项目对应的医嘱摸板不是启用状态,不能入帐.;');
        end if;
      exception
        when no_data_found then
          raise_application_error(-20001,
                                  '组合项目无法找到医嘱摸板对应的杂费组合项目.;');
      end;
    
      v_sysopt := nvl(get_system_option('医嘱入账_组合项目单项价格_自定义'),
                      'N');
    
      for c in (select c.sundry_feeid as id,
                       decode(v_sysopt, 'N', c.price, b.price) as price,
                       b.amount,
                       b.execute_deptid,
                       d.fee_type,
                       d.unit,
                       d.name,
                       b.execute_dept_flag
                  from sundry_fee_combo_detail b,
                       sundry_fee_config       c,
                       all_sundry_fee          d
                 where b.hospid = get_login_hospid
                   and b.combo_sundry_feeid = t_order_list.sundry_feeid
                   and b.detail_sundry_feeid = c.sundry_feeid
                   and c.hospid = get_login_hospid
                   and b.detail_sundry_feeid = d.id)
      loop
        if c.execute_dept_flag = 'STATIC'
        then
          v_execute_deptid := c.execute_deptid;
        elsif c.execute_dept_flag = 'INPUT_DEPT'
        then
          v_execute_deptid := get_worker_in_deptid(t_order_list.input_workerid);
        elsif c.execute_dept_flag = 'PATIENT_DEPT'
        then
          v_execute_deptid := get_病人住院科别(t_order_list.ownerid,
                                               sysdate);
        else
          raise_application_error(-20001, '不支持的医嘱组执行科室标志.;');
        end if;
        begin
          select account_pay
            into v_mc_price
            from medical_care_special_fee
           where sundry_feeid = t_order_list.sundry_feeid
             and deptid = t_resident_info.deptid
             and rownum = 1;
          prv_杂费_组合项目_入帐_特殊医保(t_order_list,
                                          t_resident_info,
                                          v_execute_deptid,
                                          c.id,
                                          c.price,
                                          c.amount * t_order_list.amount,
                                          out_charge_itemid,
                                          in_this_account_seq,
                                          c.fee_type,
                                          c.unit,
                                          c.name,
                                          v_mc_price,
                                          in_days);
        exception
          when no_data_found then
            prv_杂费_组合项目_入帐_正常医保(t_order_list,
                                            t_resident_info,
                                            v_execute_deptid,
                                            c.id,
                                            c.price,
                                            c.amount * t_order_list.amount,
                                            out_charge_itemid,
                                            in_this_account_seq,
                                            c.fee_type,
                                            c.unit,
                                            c.name,
                                            in_days,
                                            v_discount);
        end;
        /*
        rpt_sf.s_acc(sysdate,
                     c.id,
                     t_resident_info.deptid,
                     v_execute_deptid,
                     t_order_list.start_workerid,
                     c.fee_type,
                     c.amount * t_order_list.amount * nvl(in_days, 0),
                     (c.price - v_discount) * c.amount *
                     t_order_list.amount * nvl(in_days, 0),
                     0,
                     0);
        */
        --组合项目入账，不统计明细，而统计组合
        v_total_fee := v_total_fee + (c.price - v_discount) * c.amount *
                       t_order_list.amount * nvl(in_days, 0);
      end loop;
      rpt_sf.s_acc(sysdate,
                   t_order_list.sundry_feeid,
                   t_resident_info.deptid,
                   t_order_list.execute_deptid,
                   t_order_list.start_workerid,
                   v_fee_type,
                   t_order_list.amount * nvl(in_days, 0),
                   v_total_fee,
                   0,
                   0);
    
      select sum(decode(v_sysopt, 'N', c.price, a.price) * nvl(a.amount, 0))
        into v_price
        from sundry_fee_combo_detail a, sundry_fee_config c
       where a.combo_sundry_feeid = t_order_list.sundry_feeid
         and a.hospid = hospital.get_login_hospid
         and c.hospid = hospital.get_login_hospid
         and a.detail_sundry_feeid = c.sundry_feeid;
      update order_list set price = v_price where id = t_order_list.id;
    else
      raise_application_error(-20001,
                              '非法的不支持的杂费组合类型( ' ||
                              v_combo_flag || ' ).;');
    end if;
  
  end prv_无明细杂费_入帐;

  procedure prv_ack_入帐_取消(in_cmp_flag  in varchar2
                             ,in_long_flag in varchar2
                             ,in_status    in varchar2
                             ,in_status1   in varchar2) is
  begin
    if in_long_flag <> in_cmp_flag
    then
      raise_application_error(-20001,
                              '这是' ||
                              get_field_dict_name('ORDER_LIST',
                                                  'LONG_FLAG',
                                                  in_long_flag) ||
                              '，不能在这里处理.;');
    end if;
  
    if in_status = 'WAIT_ACK'
    then
      raise_application_error(-20001, '该医嘱还没有确认.;');
    elsif in_status = 'STOPPED'
    then
      raise_application_error(-20001, '该医嘱已经停止.;');
    elsif in_status = 'NORMAL'
    then
      null;
    else
      raise_application_error(-20001,
                              '非法的医嘱状态状态( ' || in_status || ' ).;');
    end if;
  
    if in_status1 = 'WAIT_ACC'
    then
      raise_application_error(-20001, '该医嘱还没有入帐.;');
    elsif in_status1 = 'WAIT_EXEC'
    then
      null;
    else
      raise_application_error(-20001,
                              '非法的医嘱执行状态状态( ' || in_status1 ||
                              ' ).;');
    end if;
  end prv_ack_入帐_取消;
  -------------------------------------------------------------------------------------------------------
  --2007/11/27  tiger 已经检查的项目，禁止退费,必须使用医嘱退费审核允许退费
  procedure prv_杂费_入帐_取消(in_patientid        in varchar2
                              ,in_order_listid     in varchar2
                              ,in_this_account_seq in number
                              ,out_del_flag        out varchar2) is
    v_charge_itemid  charge_item.id%type;
    v_account        number := 0;
    v_discount       number := 0;
    v_sysopt         varchar2(20);
    v_total_fee      number := 0;
    v_total_amount   number := 0;
    v_patient_deptid all_department.id%type;
    t_order_list     order_list%rowtype;
    v_fee_type       charge_item.fee_type%type;
    v_fee            number;
    v_out_flag       varchar2(10); --控费系统返回值，1允许退费，0，不允许退费
  begin
    out_del_flag := 'EMPTY';
    select *
      into t_order_list
      from order_list
     where id = in_order_listid
       for update nowait;
  
    v_sysopt := nvl(get_system_option('医嘱退费_杂费_必须审核'), 'N');
    if v_sysopt = 'Y'
    then
      if nvl(get_system_option('医嘱退费_杂费_取消入账无需审核'), 'N') = 'Y'
      then
        v_sysopt := 'N';
      end if;
    end if;
  
    for c in (select a.*
                from charge_item a
               where a.order_listid = in_order_listid
                 and a.account_seq = in_this_account_seq
                 and a.status = 'WAIT_PAY'
                 and nvl(a.update_reason, '1') not in ('W', 'X'))
    loop
      v_patient_deptid := c.patient_deptid;
    
      if nvl(c.update_reason, '1') = 'C'
      then
        if get_system_option('控费系统控制已检查项目退费') = 'Y'
        then
          hospital.s_允许退费(c.id, v_out_flag);
          if v_out_flag = '1'
          then
            null;
          else
            raise_application_error(-20001, '该项目已经检查，不能退费.;');
          end if;
        else
          raise_application_error(-20001, '该项目已经检查，不能退费.;');
        end if;
      end if;
    
      if trunc(c.update_date) = trunc(sysdate)
         and c.operator = hospital.login.get_workerid
         and c.charge_billid is null
      then
        delete from charge_item
         where id = c.id
           and patientid = c.patientid
           and residentid = c.residentid;
        insert into hospital.deleted_records_
          (schema_name, table_name, id, delete_date)
        values
          ('HOSPITAL', 'CHARGE_ITEM', c.id, sysdate);
        out_del_flag := 'DELETE';
      else
        if v_sysopt = 'Y'
           and nvl(c.update_reason, '1') <> 'A'
        then
          raise_application_error(-20001,
                                  '该项目没有允许退费,不能取消入帐或退费.;');
        end if;
        charge.ins_item(v_charge_itemid,
                        null,
                        c.patientid,
                        null,
                        c.residentid,
                        c.doctorid,
                        c.fee_type,
                        c.patient_deptid,
                        c.write_deptid,
                        c.execute_deptid,
                        'ACCOUNT',
                        c.itemid,
                        c.order_listid,
                        in_this_account_seq + 1,
                        c.sundry_feeid,
                        c.sundry_fee_detail_seq,
                        c.unit,
                        -1 * c.amount,
                        nvl(c.price, 0),
                        'WAIT_PAY',
                        in_update_reason => 'X',
                        in_nbmam_list_item_type => c.nbmam_list_item_type,
                        in_ratio => c.ratio,
                        in_remark => c.remark,
                        in_back_charge_itemid => c.id,
                        in_materialid => c.materialid,
                        in_packageid => c.packageid,
                        in_purchaseid => c.purchaseid,
                        in_norm_price => c.norm_price,
                        in_in_fund_pay => -1 * c.in_fund_pay,
                        in_self_pay => -1 * c.self_pay,
                        in_discount => -1 * c.discount);
        update charge_item set update_reason = 'W' where id = c.id;
        out_del_flag := 'INSERT';
      end if;
      --if v_have_detail = 0 then
      /*
      rpt_sf.s_cancel_acc(sysdate,
                          c.sundry_feeid,
                          c.patient_deptid,
                          c.execute_deptid,
                          c.doctorid,
                          c.fee_type,
                          c.amount,
                          nvl(c.price, 0) * nvl(c.amount, 0),
                          0,
                          0);
                          */
      --end if;
      v_total_fee    := v_total_fee + nvl(c.price, 0) * nvl(c.amount, 0);
      v_total_amount := v_total_amount + nvl(c.amount, 0);
      v_discount     := round(round(c.discount, 3) * c.amount, 2);
      v_account      := round(round(nvl(c.price, 0), 3) * nvl(c.amount, 0),
                              2);
      update resident_patient
         set account     = nvl(account, 0) - v_account,
             a_account   = nvl(a_account, 0) - decode(c.nbmam_list_item_type,
                                                      'A',
                                                      v_account + v_discount,
                                                      0),
             b_account   = nvl(b_account, 0) - decode(c.nbmam_list_item_type,
                                                      'B',
                                                      v_account + v_discount,
                                                      0),
             c_account   = nvl(c_account, 0) - decode(c.nbmam_list_item_type,
                                                      'C',
                                                      v_account + v_discount,
                                                      0),
             in_fund_pay = nvl(in_fund_pay, 0) - nvl(c.in_fund_pay, 0),
             self_pay    = nvl(self_pay, 0) - nvl(c.self_pay, 0),
             discount    = nvl(discount, 0) - v_discount
       where patientid = in_patientid
         and residentid = t_order_list.ownerid;
    end loop;
  
    --判断确定没有错误的退费记录
    select sum(nvl(amount, 0) * nvl(price, 0))
      into v_fee
      from hospital.charge_item
     where order_listid = in_order_listid;
    if v_fee < 0
    then
      raise_application_error(-20001,
                              '该医嘱产生的费用合计已经小于0元,不能取消入账.;');
    end if;
  
    select fee_type
      into v_fee_type
      from sundry_fee
     where id = t_order_list.sundry_feeid;
    rpt_sf.s_cancel_acc(sysdate,
                        t_order_list.sundry_feeid,
                        v_patient_deptid,
                        t_order_list.execute_deptid,
                        t_order_list.start_workerid,
                        v_fee_type,
                        t_order_list.amount,
                        v_total_fee,
                        0,
                        0);
  
    if out_del_flag = 'EMPTY'
    then
      raise_application_error(-20001,
                              '没有找到要退费的入账信息，不能退费.;');
    end if;
  end prv_杂费_入帐_取消;
  ----------------------------------------------------------------------------------------------------
  --
  --  tiger  2006/10/25 - 在circulation_detail增加order_list_account_seq
  --  tiger  2001/06/14 - 增加明细后，修改单据的输入日期为今天
  --
  procedure prv_医嘱_药单_配_增加(in_order_listid           in varchar2
                                 ,in_materialid             in varchar2
                                 ,in_packageid              in varchar2
                                 ,in_purchaseid             in varchar2
                                 ,in_cost                   in number
                                 ,in_price                  in number
                                 ,in_amount                 in number
                                 ,in_charge_itemid          in varchar2
                                 ,in_discount               in number
                                 ,out_circulation_detailid  out varchar2
                                 ,in_order_list_account_seq in number
                                 ,in_nurse_unit             in varchar2
                                 ,in_groupid                in varchar2) as
    t_circulation_ticketid circulation_ticket.id%type;
    t_circulation_detailid circulation_detail.id%type;
    new_ticket             varchar2(1);
    i                      number;
    t_patient_deptid       all_department.id%type;
    t_material_deptid      all_department.id%type;
    t_residentid           resident_info.residentid%type;
    t_patientid            patient.id%type;
    t_patient_record_no    resident_info.record_no%type;
    t_patient_bedid        bed.id%type;
    t_this_days            number;
    t_end_day              date;
  begin
    verify_order_list(in_order_listid);
    verify_material_purchase(in_materialid, in_packageid, in_purchaseid);
    if in_amount <= 0
    then
      return;
    end if;
    begin
      select a.deptid,
             c.material_deptid,
             a.residentid,
             a.patientid,
             a.bedid,
             a.record_no,
             in_amount / c.amount,
             c.start_date + nvl(c.this_days, 0) + nvl(c.executed_days, 0)
        into t_patient_deptid,
             t_material_deptid,
             t_residentid,
             t_patientid,
             t_patient_bedid,
             t_patient_record_no,
             t_this_days,
             t_end_day
        from resident_info a, resident_patient b, order_list c
       where c.id = in_order_listid
         and a.residentid = c.ownerid
         and a.record_no = b.record_no;
    exception
      when no_data_found then
        raise_application_error(-20001, 'not found');
    end;
    new_ticket := 'Y';
    begin
      select id
        into t_circulation_ticketid
        from circulation_ticket
       where sourceid = t_material_deptid
         and destinationid = t_patient_deptid
         and type = 'F'
         and attribute = 'WAIT_ACK'
         and nvl(groupid, 'x') = nvl(in_groupid, 'x')
         and nvl(nurse_unit, '0') = nvl(in_nurse_unit, '0')
         and rownum = 1
         for update nowait;
      new_ticket := 'N';
    exception
      when no_data_found then
        null;
      when too_many_rows then
        raise_application_error(-20001, '有多个未确认的医嘱配药单.;');
      when others then
        raise_application_error(-20001, '其他人正在操作，请重试.;');
    end;
    if new_ticket = 'N'
    then
      begin
        select 2
          into i
          from circulation_detail
         where circulation_ticketid = t_circulation_ticketid
           and materialid = in_materialid
           and order_listid = in_order_listid
           and residentid = t_residentid
           and order_list_account_seq <> in_order_list_account_seq
           and rownum = 1;
        raise_application_error(-20001,
                                '在同一个配药单里不能对该医嘱入多次帐.;');
      exception
        when no_data_found then
          null;
      end;
    else
      t_circulation_ticketid := get_next_circulation_ticketid;
      insert into circulation_ticket
        (id,
         type,
         attribute,
         sourceid,
         destinationid,
         input_workerid,
         input_date,
         io_type,
         nurse_unit,
         groupid)
      values
        (t_circulation_ticketid,
         'F',
         'WAIT_ACK',
         t_material_deptid,
         t_patient_deptid,
         hospital.login.get_workerid,
         sysdate,
         'O',
         in_nurse_unit,
         in_groupid);
    end if;
    select max(sequence)
      into i
      from circulation_detail
     where circulation_ticketid = t_circulation_ticketid;
    t_circulation_detailid := get_next_circulation_detailid;
    insert into circulation_detail
      (id,
       circulation_ticketid,
       sequence,
       materialid,
       packageid,
       purchaseid,
       amount,
       cost,
       price,
       residentid,
       order_listid,
       bedid,
       patientid,
       record_no,
       operator,
       update_date,
       remark,
       charge_itemid,
       discount,
       order_list_account_seq)
    values
      (t_circulation_detailid,
       t_circulation_ticketid,
       nvl(i, 0) + 1,
       in_materialid,
       in_packageid,
       in_purchaseid,
       in_amount,
       in_cost,
       in_price,
       t_residentid,
       in_order_listid,
       t_patient_bedid,
       t_patientid,
       t_patient_record_no,
       hospital.login.get_workerid,
       sysdate,
       to_char(t_this_days) || ' ' || to_char(t_end_day, 'MM/DD'),
       in_charge_itemid,
       in_discount,
       in_order_list_account_seq);
    update charge_item_
       set circulation_detailid = t_circulation_detailid
     where id = in_charge_itemid;
    if new_ticket = 'N'
    then
      update circulation_ticket
         set input_date = sysdate
       where id = t_circulation_ticketid;
    end if;
    out_circulation_detailid := t_circulation_detailid;
  end prv_医嘱_药单_配_增加;

  --      tiger   2014/02/21 - 引入取药部门 IN_MATERIAL_DEPTID 不再从医嘱的取药部门中提取数据
  --                         - 以支持静配中心药品，从第二天后直接进入静配中心药房
  --      tiger  2006/10/25 - 在circulation_detail增加order_list_account_seq
  --rem   tiger 2001/10/15 - 增加职员的登录部门、门诊核算部门和住院核算部门管理
  --rem   tiger 2001/06/14 - 增加明细后，修改单据录入时间为今天
  --rem   tiger 2000/12/12 - 可以根据出库部门定义邻物单物品容量
  --rem                          ***************************
  --rem           system_option  *  id = '领物单物资种类', *
  --rem                          *  name = deptid ,        *
  --rem                          *  remark = 数量          *
  --rem                          *************************** 

  procedure prv_医嘱_药单_领_增加(in_order_listid           in varchar2
                                 ,in_material_deptid        in varchar2
                                 ,in_materialid             in varchar2
                                 ,in_packageid              in varchar2
                                 ,in_purchaseid             in varchar2
                                 ,in_cost                   in number
                                 ,in_price                  in number
                                 ,in_amount                 in number
                                 ,in_charge_itemid          in varchar2
                                 ,in_discount               in number
                                 ,out_circulation_detailid  out varchar2
                                 ,in_order_list_account_seq in number
                                 ,in_nurse_unit             in varchar2
                                 ,in_groupid                in varchar2) as
    t_circulation_ticketid circulation_ticket.id%type;
    t_circulation_detailid circulation_detail.id%type;
    new_ticket             varchar2(1);
    i                      number;
    t_patient_deptid       all_department.id%type;
    t_material_deptid      all_department.id%type;
    t_worker_deptid        all_department.id%type;
    t_residentid           resident_info.residentid%type;
    t_patientid            patient.id%type;
    t_patient_record_no    resident_info.record_no%type;
    t_patient_bedid        bed.id%type;
    t_destinationid        all_department.id%type;
    t_max_num              number;
  begin
    verify_order_list(in_order_listid);
    verify_material_purchase(in_materialid, in_packageid, in_purchaseid);
    if in_amount <= 0
    then
      return;
    end if;
    begin
      select a.deptid,
             in_material_deptid,
             a.residentid,
             a.patientid,
             a.bedid,
             a.record_no
        into t_patient_deptid,
             t_material_deptid,
             t_residentid,
             t_patientid,
             t_patient_bedid,
             t_patient_record_no
        from resident_info a, resident_patient b, order_list c
       where c.id = in_order_listid
         and a.residentid = c.ownerid
         and a.record_no = b.record_no;
    exception
      when no_data_found then
        raise_application_error(-20001, 'not found');
    end;
    t_worker_deptid := get_login_deptid;
    --
    --对于临床科室，操作员部门 = 病人部门
    --对于非临床可是，操作员部门 <>病人科室，
    --         判断部门的范围:GET_SYSTEM_OPTION('医嘱领其他部门病人物资部门');
    --
    new_ticket := 'Y';
    if t_patient_deptid = t_worker_deptid
    then
      t_destinationid := t_patient_deptid;
    else
      /*      if is_worker_login_dept(hospital.login.get_workerid, t_patient_deptid) <> 0
      then
        raise_application_error(-20001,
                                '你现在是以' ||
                                get_dept_name(t_worker_deptid) ||
                                '的身份登录,不允许对' ||
                                get_dept_name(t_patient_deptid) ||
                                '病人医嘱进行处理 .;');
      end if;*/
      begin
        select 2
          into i
          from system_option
         where id like '医嘱领其他部门病人物资部门%'
           and name = t_worker_deptid
           and rownum = 1;
        t_destinationid := t_worker_deptid;
      exception
        when no_data_found then
          raise_application_error(-20001,
                                  '你的部门没有权利补如其他部门病人物资的权利.;');
      end;
    end if;
    begin
      select to_number(remark)
        into t_max_num
        from system_option
       where id like '领物单物资种类%'
         and name = t_material_deptid
         and rownum = 1;
    exception
      when others then
        t_max_num := 30;
    end;
  
    for c in (select id
                from circulation_ticket
               where sourceid = t_material_deptid
                 and destinationid = t_destinationid
                 and type = 'E'
                 and attribute = 'WAIT_ACK'
                 and nvl(nurse_unit, '0') = nvl(in_nurse_unit, '0')
                 and nvl(groupid, 'x') = nvl(in_groupid, 'x')
               order by id)
    loop
      select count(distinct packageid)
        into i
        from circulation_detail
       where circulation_ticketid = c.id;
      if i < t_max_num
      then
        t_circulation_ticketid := c.id;
        new_ticket             := 'N';
        exit;
      end if;
      begin
        select 2
          into i
          from circulation_detail
         where circulation_ticketid = c.id
           and packageid = in_packageid
           and rownum = 1;
        t_circulation_ticketid := c.id;
        new_ticket             := 'N';
        exit;
      exception
        when no_data_found then
          null;
      end;
    end loop;
    if new_ticket = 'Y'
    then
      t_circulation_ticketid := get_next_circulation_ticketid;
      insert into circulation_ticket
        (id,
         type,
         attribute,
         sourceid,
         destinationid,
         input_workerid,
         input_date,
         io_type,
         nurse_unit,
         groupid)
      values
        (t_circulation_ticketid,
         'E',
         'WAIT_ACK',
         t_material_deptid,
         t_destinationid,
         hospital.login.get_workerid,
         sysdate,
         'O',
         in_nurse_unit,
         in_groupid);
    end if;
    begin
      select 2
        into i
        from hospital.circulation_ticket
       where id = t_circulation_ticketid
         for update nowait;
    exception
      when others then
        raise_application_error(-20001, '其他人正在操作，请重试');
    end;
    select max(sequence)
      into i
      from circulation_detail
     where circulation_ticketid = t_circulation_ticketid;
    t_circulation_detailid := get_next_circulation_detailid;
    insert into circulation_detail
      (id,
       circulation_ticketid,
       sequence,
       materialid,
       packageid,
       purchaseid,
       amount,
       cost,
       price,
       residentid,
       order_listid,
       bedid,
       patientid,
       record_no,
       operator,
       update_date,
       charge_itemid,
       discount,
       order_list_account_seq)
    values
      (t_circulation_detailid,
       t_circulation_ticketid,
       nvl(i, 0) + 1,
       in_materialid,
       in_packageid,
       in_purchaseid,
       in_amount,
       in_cost,
       in_price,
       t_residentid,
       in_order_listid,
       t_patient_bedid,
       t_patientid,
       t_patient_record_no,
       hospital.login.get_workerid,
       sysdate,
       in_charge_itemid,
       in_discount,
       in_order_list_account_seq);
    update charge_item_
       set circulation_detailid = t_circulation_detailid
     where id = in_charge_itemid;
    if new_ticket = 'N'
    then
      update circulation_ticket
         set input_date = sysdate
       where id = t_circulation_ticketid;
    end if;
    out_circulation_detailid := t_circulation_detailid;
  end prv_医嘱_药单_领_增加;
  ----------------------------------------------------------------
  function get_麻醉药品单据分开处理(in_materialid in varchar2
                                   ,in_long_flag  in varchar2)
    return varchar2 is
    v_sysopt varchar(10);
    v_result varchar(10);
  begin
    --if in_long_flag = 'B'
    --then
    v_sysopt := nvl(get_system_option('医嘱入账_麻醉药品按照患者分别制单'),
                    'Y');
    if v_sysopt = 'N'
    then
      v_sysopt := nvl(get_system_option('医嘱入账_麻醉药品按照科室分别制单'),
                      'Y');
    end if;
    v_result := 'N';
    if v_sysopt = 'Y'
    then
      begin
        select 'Y'
          into v_result
          from hospital.all_material
         where id = in_materialid
           and (substrb(attribute, 2, 1) = 'B' --麻醉药品
               or substrb(attribute, 3, 1) = 'B' --精一
               or substrb(attribute, 6, 1) = 'B'); --精二
      exception
        when no_data_found then
          v_result := 'N';
      end;
    end if;
    -- end if;
    return v_result;
  end get_麻醉药品单据分开处理;
  ----------------------------------------------------------------------------------------------------------
  procedure prv_物资_入帐(t_order_list              in order_list%rowtype
                         ,t_resident_info           resident_info%rowtype
                         ,in_this_account_seq       in number
                         ,in_days                   in number
                         ,out_charge_itemid         out varchar2
                         ,out_circulation_detailid  out varchar2
                         ,out_purchaseid            out varchar2
                         ,out_price                 out number
                         ,in_order_list_account_seq in number) is
    v_purchaseid all_purchase.id%type;
    v_price      number;
    v_cost       number;
    v_item_type  nbmam_list.item_type%type;
    v_ratio      number;
    v_fee_type   charge_item.fee_type%type;
    v_unit       charge_item.unit%type;
    v_remark     charge_item.remark%type;
    v_account    number := 0;
    v_a_account  number := 0;
    v_b_account  number := 0;
    v_c_account  number := 0;
    --v_b_account1   number := 0;
    v_patient_attr                patient.attribute%type;
    v_in_fund_pay                 number := 0;
    v_self_pay                    number := 0;
    v_discount                    number := 0;
    v_discount_fee                number := 0;
    v_order_amount                number := 0; --应该预定数量
    v_out_amount                  number := 0; --实际预定数量
    v_min_packageid               all_package.id%type;
    v_nurse_unit                  varchar2(10);
    v_groupid                     circulation_ticket.groupid%type;
    v_count                       number := 1;
    v_account_seq                 number;
    v_material_deptid             varchar2(10); --取药药房
    v_pivas_deptid                varchar2(10); --静脉配置中心药房
    v_pivas_flag                  varchar2(20);
    v_use_method                  order_list.use_method%type;
    v_静脉配置中心_临时医嘱       varchar2(10);
    v_静配中心_首次入账区分时间段 varchar2(30); -- 区分时间段 ; 不区分时间段  ;不进静脉配置中心 
    v_静脉配置中心_开始时间       date;
    v_静脉配置中心_结束时间       date;
    v_麻醉分单标志                varchar2(10); --如果是麻醉药品，并且系统设置麻醉药品，按照人分单处理返回 Y，否则返回N
  begin
    select attribute
      into v_patient_attr
      from patient
     where id = t_order_list.patientid;
  
    select remark
      into v_groupid
      from bed
     where id = t_resident_info.bedid
       and deptid = t_resident_info.deptid;
    v_nurse_unit   := login.nurse_unit; --药单的护理单元与护士的护理单元相同
    v_麻醉分单标志 := get_麻醉药品单据分开处理(t_order_list.materialid,
                                               t_order_list.long_flag);
    if nvl(get_system_option('医嘱入账_长期和临时医嘱药品单据分开'), 'N') = 'Y'
    then
      v_groupid := t_order_list.long_flag || v_groupid;
    end if;
    if nvl(get_system_option('医嘱入账_临时口服药药品单据分开'), 'N') = 'Y'
       and t_order_list.po_flag = '1'
    then
      v_groupid := v_groupid || 'BPO';
    end if;
    if nvl(get_system_option('医嘱入账_临时药品单据按病人分开'), 'N') = 'Y'
       and t_order_list.long_flag = 'B'
    then
      v_groupid := t_order_list.ownerid;
    end if;
  
    if v_麻醉分单标志 = 'Y'
    then
      if nvl(get_system_option('医嘱入账_麻醉药品按照科室分别制单'), 'N') = 'Y'
      then
        v_groupid := 'Y';
      else
        v_groupid := t_order_list.ownerid || 'Y';
      end if;
    end if;
  
    v_静脉配置中心_临时医嘱       := nvl(get_system_option('静脉配置中心_临时医嘱'),
                                         'N');
    v_静配中心_首次入账区分时间段 := nvl(get_system_option('静脉配置中心_首次入账区分时间段'),
                                         '不进静脉配置中心');
    v_静脉配置中心_开始时间       := to_date(to_char(sysdate, 'yyyy/mm/dd') ||
                                             nvl(get_system_option('静脉配置中心_首次入账_开始时间'),
                                                 '08:00:00'),
                                             'YYYY/MM/DDhh24:mi:ss');
    v_静脉配置中心_结束时间       := to_date(to_char(sysdate, 'yyyy/mm/dd') ||
                                             nvl(get_system_option('静脉配置中心_首次入账_结束时间'),
                                                 '18:00:00'),
                                             'YYYY/MM/DDhh24:mi:ss');
  
    v_account_seq := in_order_list_account_seq;
  
    --  查找确定静脉配置中心药房
    --    规则：如果设置系统选项 ID = 药房 || 药房编码  || 静脉配置中心药房编码  NAME=    静脉配置中心内药房编码
    --    例如：医院的中心药房编码为 0000123456
    --          静脉配置中心药房编码为 0000999999
    --    则系统选项为    ID=药房0000123456静脉配置中心内药房编码  NAME=0000999999
    --  确定静脉配置中心药房输液规则为
    --    系统选项：ID=静脉配置中心药品用法 || 序号  NAME=药品用法
    --    例如：  ID=静脉配置中心药品用法1   NAME=ivgtt
    --            ID=静脉配置中心药品用法2   NAME=ivgttlk
    --  确定那个临床科室开通静脉配置中心内功能
    --           ID=静脉配置中心配药科室 || 科室编码  NAME=Y
    --  长期医嘱默认开通静脉配置中心功能，
    --  临时医嘱通过系统选项控制是否开通该功能
    --        静脉配置中心_临时医嘱  NAME=Y  
    if nvl(get_system_option('静脉配置中心配药科室' ||
                             t_resident_info.deptid),
           'N') = 'Y'
    then
      v_pivas_flag := '开通科室'; --需要处理静脉配置中心入账处理
    else
      v_pivas_flag := '未开通科室'; --忽略静脉配置中心入账处理
    end if;
  
    if nvl(in_days, 0) > 0
    then
      loop
        -- 长期医嘱第二次用药
        -- 临时医嘱，或者长期医嘱第一次用药，根据时间段判断是否进入临床路径
        if (v_account_seq > 1 and t_order_list.long_flag = 'A' and
           v_pivas_flag = '开通科室')
           or
           (v_account_seq = 1 and
           (t_order_list.long_flag = 'A' or
           t_order_list.long_flag = 'B' and v_静脉配置中心_临时医嘱 = 'Y') and
           v_pivas_flag = '开通科室' and
           (v_静配中心_首次入账区分时间段 = '区分时间段' and
           to_date(to_char(sysdate, 'yyyy/mm/dd') ||
                     to_char(t_order_list.ack_date, 'hh24:mi:ss'),
                     'yyyy/mm/ddhh24:mi:ss') >= v_静脉配置中心_开始时间 and
           to_date(to_char(sysdate, 'yyyy/mm/dd') ||
                     to_char(t_order_list.ack_date, 'hh24:mi:ss'),
                     'yyyy/mm/ddhh24:mi:ss') < v_静脉配置中心_结束时间 or
           v_静配中心_首次入账区分时间段 = '不区分时间段'))
        then
          select material_deptid, use_method
            into v_material_deptid, v_use_method
            from hospital.order_list
           where id = t_order_list.parentid
             and materialid is not null;
          if v_material_deptid is not null
             and v_use_method is not null
          then
            v_pivas_deptid := get_system_option('药房' ||
                                                t_order_list.material_deptid ||
                                                '静脉配置中心药房编码');
            if v_pivas_deptid is not null
            then
              begin
                select '静配中心用药'
                  into v_pivas_flag
                  from hospital.system_option
                 where id like '静脉配置中心药品用法%'
                   and name = v_use_method
                   and rownum = 1;
              exception
                when no_data_found then
                  v_pivas_flag := '非静配中心用药';
              end;
            end if;
          end if;
        end if;
      
        if v_pivas_flag = '静配中心用药'
        then
          v_material_deptid := v_pivas_deptid;
        else
          v_material_deptid := t_order_list.material_deptid;
        end if;
      
        v_order_amount  := t_order_list.amount *
                           get_min_package_exchange(t_order_list.packageid);
        v_min_packageid := get_min_packageid(t_order_list.packageid);
        loop
          s_订购_物资ex(v_material_deptid,
                        t_order_list.materialid,
                        v_min_packageid,
                        v_order_amount,
                        v_purchaseid,
                        v_out_amount);
          s_get_物资_医保信息(v_patient_attr,
                              t_order_list.materialid,
                              v_item_type,
                              v_ratio);
          v_price    := round(get_药品零售价(v_material_deptid,
                                             t_order_list.materialid,
                                             v_min_packageid,
                                             v_purchaseid),
                              3);
          out_price  := v_price *
                        get_min_package_exchange(t_order_list.packageid);
          v_cost     := get_药品批发价(v_material_deptid,
                                       t_order_list.materialid,
                                       v_min_packageid,
                                       v_purchaseid);
          v_discount := discount_man.get_住院_药品优惠价(t_order_list.ownerid,
                                                         t_order_list.materialid,
                                                         v_min_packageid,
                                                         v_purchaseid);
          v_price    := round(nvl(v_price, 0), 3) - nvl(v_discount, 0); --优惠以后的价格
        
          v_in_fund_pay  := round(medcare_balance.get_收费明细_进入统筹(t_order_list.patientid,
                                                                        t_order_list.ownerid,
                                                                        null,
                                                                        t_order_list.materialid,
                                                                        t_order_list.packageid,
                                                                        v_out_amount,
                                                                        nvl(v_price,
                                                                            0),
                                                                        nvl(v_discount,
                                                                            0),
                                                                        v_item_type),
                                  2);
          v_fee_type     := get_material_fee_type(t_order_list.materialid);
          v_unit         := get_package_name(v_min_packageid);
          v_remark       := get_material_name(t_order_list.materialid);
          v_account      := round(round(nvl(v_price, 0), 3) * v_out_amount,
                                  2);
          v_discount_fee := round(round(nvl(v_discount, 0), 3) *
                                  v_out_amount,
                                  2);
          v_self_pay     := v_account + v_discount_fee -
                            round(v_in_fund_pay, 2);
          charge.ins_item(out_charge_itemid,
                          null,
                          t_resident_info.patientid,
                          null,
                          t_resident_info.residentid,
                          t_order_list.start_workerid,
                          v_fee_type,
                          t_resident_info.deptid,
                          get_worker_in_deptid(t_order_list.start_workerid),
                          v_material_deptid,
                          'ACCOUNT',
                          t_order_list.id,
                          t_order_list.id,
                          in_this_account_seq,
                          null,
                          null,
                          v_unit,
                          v_out_amount,
                          v_price,
                          'WAIT_PAY',
                          null,
                          v_item_type,
                          v_ratio,
                          v_remark,
                          null,
                          in_materialid => t_order_list.materialid,
                          in_packageid => v_min_packageid,
                          in_purchaseid => v_purchaseid,
                          in_norm_price => get_药品基准价(null,
                                                          t_order_list.materialid,
                                                          v_min_packageid,
                                                          v_purchaseid),
                          in_in_fund_pay => v_in_fund_pay,
                          in_self_pay => v_self_pay,
                          in_discount => v_discount);
          if v_item_type = 'A'
          then
            v_a_account := v_account + v_discount_fee;
          elsif v_item_type = 'B'
          then
            v_b_account := v_account + v_discount_fee;
          else
            v_c_account := v_account + v_discount_fee;
          end if;
          if t_order_list.po_flag = '1' --t_order_list.method like '%po%'
             and t_order_list.long_flag = 'A'
          then
            prv_医嘱_药单_配_增加(t_order_list.id,
                                  t_order_list.materialid,
                                  v_min_packageid,
                                  v_purchaseid,
                                  v_cost,
                                  v_price,
                                  v_out_amount,
                                  out_charge_itemid,
                                  v_discount,
                                  out_circulation_detailid,
                                  in_order_list_account_seq,
                                  v_nurse_unit,
                                  v_groupid);
          else
            prv_医嘱_药单_领_增加(t_order_list.id,
                                  v_material_deptid,
                                  t_order_list.materialid,
                                  v_min_packageid,
                                  v_purchaseid,
                                  v_cost,
                                  v_price,
                                  v_out_amount,
                                  out_charge_itemid,
                                  v_discount,
                                  out_circulation_detailid,
                                  in_order_list_account_seq,
                                  v_nurse_unit,
                                  v_groupid);
          end if;
          update resident_patient
             set account     = nvl(account, 0) + v_account,
                 a_account   = nvl(a_account, 0) + v_a_account,
                 b_account   = nvl(b_account, 0) + v_b_account,
                 c_account   = nvl(c_account, 0) + v_c_account,
                 in_fund_pay = nvl(in_fund_pay, 0) + round(v_in_fund_pay, 2),
                 self_pay    = nvl(self_pay, 0) + v_self_pay,
                 discount    = nvl(discount, 0) + v_discount_fee
           where patientid = t_order_list.patientid
             and residentid = t_order_list.ownerid;
          out_purchaseid := v_purchaseid;
          v_order_amount := v_order_amount - v_out_amount;
          if v_order_amount <= 0
          then
            exit;
          end if;
        end loop;
        v_count := v_count + 1;
        if v_count > nvl(in_days, 0)
        then
          exit;
        end if;
        v_account_seq := v_account_seq + 1;
      end loop;
    end if;
  end prv_物资_入帐;
  ----------------------------------------------------------------------------------------------------------
  -- tiger 2006/10/25 处理：医嘱入帐一条医嘱一次入帐有多条药品信息
  --
  procedure prv_物资_入帐_取消(v_order_list in order_list%rowtype
                              ,out_del_flag out varchar2) is
    v_charge_item   charge_item%rowtype;
    v_charge_itemid charge_item.id%type;
    v_account       number := 0;
    v_discount      number := 0;
    i               number;
  begin
    out_del_flag := 'DELETE';
    begin
      select 2
        into i
        from circulation_detail
       where order_listid = v_order_list.id
         and order_list_account_seq = v_order_list.this_account_seq
         and remark like '%已退%'
         and rownum = 1;
      raise_application_error(-20001, '该医嘱已经退药,不能取消入帐.;');
    exception
      when no_data_found then
        null;
    end;
  
    begin
      select 2
        into i
        from circulation_detail
       where order_listid = v_order_list.id
         and order_list_account_seq = v_order_list.this_account_seq
         and rownum = 1;
      null;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '没有找到领药记录,请使用医嘱退药.;');
    end;
    for c in (select a.id,
                     a.type,
                     a.attribute,
                     a.sourceid,
                     b.materialid,
                     b.packageid,
                     b.purchaseid,
                     b.amount,
                     b.id circulation_detailid,
                     b.charge_itemid
                from circulation_ticket a, circulation_detail b
               where b.order_listid = v_order_list.id
                 and b.order_list_account_seq =
                     v_order_list.this_account_seq
                 and b.circulation_ticketid = a.id
                 and a.type in ('E', 'F'))
    loop
    
      if c.type not in ('E', 'F')
      then
        raise_application_error(-20001,
                                '编号为( ' || c.id ||
                                ' )的单据不是医嘱领药单,不能取消入帐.;');
      end if;
    
      if c.attribute <> 'WAIT_ACK'
      then
        raise_application_error(-20001, '领药单已经处理,不能取消入帐.;');
      end if;
    
      begin
        select *
          into v_charge_item
          from charge_item
         where residentid = v_order_list.ownerid
           and circulation_detailid = c.circulation_detailid
           and status = 'WAIT_PAY'
           and nvl(update_reason, '1') not in ('W', 'X');
      exception
        when no_data_found then
          raise_application_error(-20001,
                                  '费用记录没有找到,不能取消入帐.;');
        when too_many_rows then
          raise_application_error(-20001,
                                  '医嘱取消入帐出现非法的条件，不能取消入帐.;');
      end;
    
      s_订购_物资_取消(c.sourceid,
                       c.materialid,
                       c.packageid,
                       c.purchaseid,
                       c.amount);
    
      delete from circulation_detail where id = c.circulation_detailid;
      if trunc(v_charge_item.update_date) = trunc(sysdate)
         and v_charge_item.operator = hospital.login.get_workerid
         and v_charge_item.charge_billid is null
      then
        delete from charge_item where id = v_charge_item.id;
        insert into hospital.deleted_records_
          (schema_name, table_name, id, delete_date)
        values
          ('HOSPITAL', 'CHARGE_ITEM', v_charge_item.id, sysdate);
      else
        charge.ins_item(v_charge_itemid,
                        null,
                        v_charge_item.patientid,
                        v_charge_item.registerid,
                        v_charge_item.residentid,
                        v_charge_item.doctorid,
                        v_charge_item.fee_type,
                        v_charge_item.patient_deptid,
                        v_charge_item.write_deptid,
                        v_charge_item.execute_deptid,
                        'ACCOUNT',
                        v_charge_item.itemid,
                        v_charge_item.order_listid,
                        v_charge_item.account_seq,
                        v_charge_item.sundry_feeid,
                        v_charge_item.sundry_fee_detail_seq,
                        v_charge_item.unit,
                        -1 * v_charge_item.amount,
                        v_charge_item.price,
                        'WAIT_PAY',
                        in_update_reason => 'X',
                        in_nbmam_list_item_type => v_charge_item.nbmam_list_item_type,
                        in_ratio => v_charge_item.ratio,
                        in_remark => v_charge_item.remark,
                        in_back_charge_itemid => v_charge_item.id,
                        in_materialid => v_charge_item.materialid,
                        in_packageid => v_charge_item.packageid,
                        in_purchaseid => v_charge_item.purchaseid,
                        in_norm_price => v_charge_item.norm_price,
                        in_in_fund_pay => -1 * v_charge_item.in_fund_pay,
                        in_self_pay => -1 * v_charge_item.self_pay,
                        in_discount => -1 * v_charge_item.discount);
        update charge_item
           set circulation_detailid = v_charge_item.circulation_detailid
         where id = v_charge_itemid;
        update charge_item
           set update_reason = 'W'
         where id = v_charge_item.id;
        out_del_flag := 'INSERT';
      end if;
      v_discount := round(round(v_charge_item.discount, 3) *
                          v_charge_item.amount,
                          2);
      v_account  := round(round(v_charge_item.price, 3) *
                          v_charge_item.amount,
                          2);
      update resident_patient
         set account     = nvl(account, 0) - v_account,
             a_account   = nvl(a_account, 0) - decode(v_charge_item.nbmam_list_item_type,
                                                      'A',
                                                      v_account + v_discount,
                                                      0),
             b_account   = nvl(b_account, 0) - decode(v_charge_item.nbmam_list_item_type,
                                                      'B',
                                                      v_account + v_discount,
                                                      0),
             c_account   = nvl(c_account, 0) - decode(v_charge_item.nbmam_list_item_type,
                                                      'C',
                                                      v_account + v_discount,
                                                      0),
             in_fund_pay = nvl(in_fund_pay, 0) - v_charge_item.in_fund_pay,
             self_pay    = nvl(self_pay, 0) - v_charge_item.self_pay,
             discount    = nvl(discount, 0) - v_discount
       where patientid = v_order_list.patientid
         and residentid = v_order_list.ownerid;
    end loop;
  end prv_物资_入帐_取消;
  ---------------------------------------------------------------------------
  --  in_year 年份 =0000 表示当年 = 0001 表示下一年  年份代表实际的年份
  --  in_mmdd 月日分别为两位
  procedure prv_判断日期合法性(in_year in varchar2
                              ,in_mmdd in varchar2) is
    i      integer;
    v_date date;
  begin
    if nvl(in_year, 'x') not in ('0000', '0001')
    then
      verify_valid_number(in_year, '年份');
      i := to_number(in_year);
      if i <= 2000
         or i > 9999
      then
        raise_application_error(-20001,
                                '年份必须小于9999 且大于或等于2000.;');
      end if;
    end if;
  
    if in_mmdd = ('0229')
    then
      raise_application_error(-20001, '非法的月分或日期.;');
    end if;
  
    begin
      select to_date(in_mmdd, 'mmdd') into v_date from dual;
    exception
      when others then
        raise_application_error(-20001, '非法的月分或日期.;');
    end;
  
  end prv_判断日期合法性;
  -----------------------------------------------------------------------------------------------
  --
  --  tiger  2006/09/11  增加对 固定长期医嘱的处理
  --
  procedure prv_医嘱_医嘱_入帐_跳过处理(in_order_listid in varchar2
                                       ,in_this_days    in varchar2) as
    t_order_list order_list%rowtype;
    t_this_days  number;
  begin
    begin
      select *
        into t_order_list
        from order_list
       where id = in_order_listid
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001, '记录不存在.;');
    end;
    if t_order_list.long_flag in ('A', 'F')
    then
      null;
    elsif t_order_list.long_flag = 'B'
    then
      raise_application_error(-20001,
                              '临时医嘱不能跳过,您可以取消确认以后再删除.;');
    else
      raise_application_error(-20001, '非法状态.;');
    end if;
    if t_order_list.status = 'WAIT_ACK'
    then
      raise_application_error(-20001, '该医嘱还没有确认.;');
    elsif t_order_list.status = 'STOPPED'
    then
      raise_application_error(-20001, '该医嘱已经停止.;');
    elsif t_order_list.status = 'NORMAL'
    then
      null;
    else
      raise_application_error(-20001, '非法状态.;');
    end if;
    if t_order_list.status1 = 'WAIT_ACC'
    then
      null;
    elsif t_order_list.status1 = 'WAIT_EXEC'
    then
      raise_application_error(-20001,
                              '该医嘱已经入帐,在入帐状态才能跳过入帐.;');
    else
      raise_application_error(-20001, '非法状态.;');
    end if;
    begin
      verify_valid_number(in_this_days, '跳过天数');
      t_this_days := to_number(in_this_days);
    exception
      when others then
        verify_valid_date(in_this_days, '跳过截止日期');
        t_this_days := trunc(get_date_from_str(in_this_days)) -
                       trunc(t_order_list.start_date) -
                       nvl(t_order_list.executed_days, 0);
    end;
    if t_this_days is null
       or t_this_days < 1
    then
      raise_application_error(-20001, '跳过天数必须大于或等于一.;');
    end if;
    update order_list
       set executed_days = nvl(executed_days, 0) + t_this_days,
           skip_days     = nvl(skip_days, 0) + t_this_days
     where id = in_order_listid;
  end prv_医嘱_医嘱_入帐_跳过处理;
  --------------------------------------------------------------------------------------------
  procedure prv_医嘱_临_杂费_入帐(t_order_list    in order_list%rowtype
                                 ,t_resident_info in resident_info%rowtype
                                 ,in_bar_code     in varchar2 default null) is
    v_charge_itemid    charge_item.id%type;
    v_this_account_seq number;
  begin
    v_this_account_seq := nvl(t_order_list.this_account_seq, 0) + 1;
    if t_order_list.materialid is not null
    then
      raise_application_error(-20001, '不是杂费医嘱,不能在这里入帐.;');
    end if; 
     prv_ack_入帐('B',
                 t_order_list.long_flag,
                 t_order_list.status,
                 t_order_list.status1);
    if nvl(t_order_list.price, 0) * nvl(t_order_list.amount, 0) <> 0
    then
      prv_无明细杂费_入帐(t_order_list,
                          t_resident_info,
                          v_charge_itemid,
                          v_this_account_seq,
                          1,
                          null,
                          in_bar_code);
      -- 移动护理执行计划处理
      hospital.ol_mhc.sp_医嘱_医嘱执行计划_增加nc(t_order_list,
                                                  v_this_account_seq,
                                                  1);
    end if;
    barcd.s_产生住院条形码(t_order_list.id,
                           t_order_list.execute_deptid,
                           t_order_list.long_flag,
                           t_order_list.ownerid,
                           t_order_list.patientid);
    update order_list
       set status1          = 'WAIT_EXEC',
           account_workerid = hospital.login.get_workerid,
           account_date     = sysdate,
           this_days        = 1,
           charge_itemid    = v_charge_itemid,
           this_account_seq = v_this_account_seq
     where id = t_order_list.id;
  end prv_医嘱_临_杂费_入帐;
  ---------------------------------------------------------------------------
  procedure prv_医嘱_临_杂费_入帐_取消(in_order_listid in varchar2) is
    v_order_list       order_list%rowtype;
    v_this_account_seq number;
    v_out_flag         varchar2(10);
  begin
    begin
      select *
        into v_order_list
        from order_list
       where id = in_order_listid
         for update of id nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '编号为(' || in_order_listid ||
                                ' )的医嘱没有找到.;');
    end;
    if v_order_list.materialid is not null
    then
      raise_application_error(-20001,
                              '这不是杂费医嘱，不能在这里取消入帐.;');
    end if;
    prv_ack_入帐_取消('B',
                      v_order_list.long_flag,
                      v_order_list.status,
                      v_order_list.status1);
    if v_order_list.account_workerid <> hospital.login.get_workerid
    then
      if nvl(get_system_option('医嘱_入账取消_职员' ||
                               hospital.login.get_workerid),
             'N') <> 'Y'
      then
        raise_application_error(-20001,
                                '这是' ||
                                get_worker_name(v_order_list.account_workerid) ||
                                '作的入帐,您不能取消入帐.;');
      end if;
    end if;
  
    v_this_account_seq := nvl(v_order_list.this_account_seq, 0);
    if v_order_list.price <> 0
    then
      prv_杂费_入帐_取消(v_order_list.patientid,
                         in_order_listid,
                         v_this_account_seq,
                         v_out_flag);
      v_this_account_seq := nvl(v_order_list.this_account_seq, 0) + 1;
    
      --移动护理执行计划取消
      hospital.ol_mhc.sp_医嘱_医嘱执行计划_取消nc(v_order_list,
                                                  nvl(v_order_list.this_account_seq,
                                                      0));
    end if;
    barcd.s_取消住院条码(in_order_listid);
    update order_list
       set status1          = 'WAIT_ACC',
           account_workerid = null,
           account_date     = null,
           this_days        = 0,
           charge_itemid    = null,
           this_account_seq = v_this_account_seq
     where id = in_order_listid;
  end prv_医嘱_临_杂费_入帐_取消;
  ---------------------------------------------------------------------------
  procedure prv_医嘱_长_杂费_入帐(t_order_list    in order_list%rowtype
                                 ,t_resident_info in resident_info%rowtype
                                 ,in_this_days    in varchar2
                                 ,in_amount       in number default null) is
    v_this_days        number; --用户指定入帐天数
    v_real_this_days   number; --实际需要入帐天数
    v_next_account_seq order_list.remark%type; --非连续入帐的入帐序列
    t_sundry_fee       sundry_fee_config%rowtype;
    v_charge_itemid    charge_item.id%type;
    v_this_account_seq number; --入帐顺序号
    v_count            number := 1;
    v_hospid           hospital.hosp.id%type;
  begin
    verify_not_null(in_this_days, '入帐天数');
    begin
      verify_valid_number(in_this_days, '入帐天数');
      v_this_days := to_number(in_this_days);
    exception
      when others then
        verify_valid_date(in_this_days, '入帐截止日期');
        v_this_days := ceil(trunc(get_date_from_str(in_this_days)) -
                            t_order_list.start_date -
                            nvl(t_order_list.executed_days, 0));
    end;
    prv_ack_入帐('A',
                 t_order_list.long_flag,
                 t_order_list.status,
                 t_order_list.status1);
    if t_order_list.remark is not null
    then
      s_取得入帐参数(t_order_list.remark,
                     v_this_days,
                     v_real_this_days,
                     v_next_account_seq);
    else
      v_real_this_days := v_this_days;
    end if;
  
    if user = 'HOSPITAL'
    then
      select hospid
        into v_hospid
        from hospital.all_department
       where id = t_order_list.execute_deptid;
    else
      v_hospid := get_login_hospid;
    end if;
  
    begin
      select *
        into t_sundry_fee
        from sundry_fee_config
       where hospid = v_hospid
         and sundry_feeid = t_order_list.sundry_feeid;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '编号为( ' || t_order_list.sundry_feeid ||
                                ' )的杂费项目不存在.;');
    end;
    if t_order_list.parentid is null
       or t_order_list.parentid = t_order_list.id
    then
      if t_sundry_fee.attribute in ('A', 'C')
      then
        if trunc(t_order_list.start_date) + v_this_days +
           nvl(t_order_list.executed_days, 0) > trunc(sysdate) + 2
        then
          raise_application_error(-20001,
                                  '长期杂费不能入超过当天一天的帐.;');
        end if;
      else
        if trunc(t_order_list.start_date) + v_this_days +
           nvl(t_order_list.executed_days, 0) > trunc(sysdate) + 1
        then
          raise_application_error(-20001, '长期杂费不能入超过当天的帐.;');
        end if;
      end if;
    end if;
  
    v_this_account_seq := nvl(t_order_list.this_account_seq, 0);
    if v_real_this_days > 0
    then
      loop
        v_this_account_seq := nvl(v_this_account_seq, 0) + 1;
        prv_无明细杂费_入帐(t_order_list,
                            t_resident_info,
                            v_charge_itemid,
                            v_this_account_seq,
                            1,
                            in_amount);
        v_count := v_count + 1;
      
        -- 移动护理执行计划处理
        hospital.ol_mhc.sp_医嘱_医嘱执行计划_增加nc(t_order_list,
                                                    v_this_account_seq,
                                                    1);
        if v_count > v_real_this_days
        then
          exit;
        end if;
      end loop;
    end if;
  
    if v_this_days - v_real_this_days > 0
    then
      prv_医嘱_医嘱_入帐_跳过处理(t_order_list.id,
                                  v_this_days - v_real_this_days);
    end if;
  
    update order_list
       set status1          = 'WAIT_EXEC',
           account_workerid = hospital.login.get_workerid,
           account_date     = sysdate,
           this_days        = nvl(v_real_this_days, 0),
           charge_itemid    = v_charge_itemid,
           this_account_seq = v_this_account_seq,
           remark           = v_next_account_seq
     where id = t_order_list.id;
  
  end prv_医嘱_长_杂费_入帐;

  ---------------------------------------------------------------------------
  procedure prv_医嘱_长_杂费_入帐_取消(in_order_listid in varchar2) is
    v_order_list       order_list%rowtype;
    v_this_account_seq number;
    v_out_flag         varchar2(10);
    v_this_days        number;
  begin
    begin
      select *
        into v_order_list
        from order_list
       where id = in_order_listid
         for update of id nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '编号为(' || in_order_listid ||
                                ' )的医嘱没有找到.;');
    end;
    if v_order_list.materialid is not null
    then
      raise_application_error(-20001,
                              '这不是杂费医嘱，不能在这里取消入帐.;');
    end if;
    prv_ack_入帐_取消('A',
                      v_order_list.long_flag,
                      v_order_list.status,
                      v_order_list.status1);
    if v_order_list.remark is not null
    then
      raise_application_error(-20001, '非连续长期医嘱无法取消入帐.;');
    end if;
    if v_order_list.account_workerid <> hospital.login.get_workerid
    then
      if nvl(get_system_option('医嘱_入账取消_职员' ||
                               hospital.login.get_workerid),
             'N') <> 'Y'
      then
        raise_application_error(-20001,
                                '这是' ||
                                get_worker_name(v_order_list.account_workerid) ||
                                '作的入帐,您不能取消入帐.;');
      end if;
    end if;
    v_this_account_seq := nvl(v_order_list.this_account_seq, 0);
    v_this_days        := nvl(v_order_list.this_days, 0);
    if v_order_list.price <> 0
    then
      loop
        --长期杂费,取消本次入账的多条记录（ v_this_days代表记录条数)
        prv_杂费_入帐_取消(v_order_list.patientid,
                           in_order_listid,
                           v_this_account_seq,
                           v_out_flag);
        v_this_days        := v_this_days - 1;
        v_this_account_seq := v_this_account_seq - 1;
        --移动护理执行计划取消
        hospital.ol_mhc.sp_医嘱_医嘱执行计划_取消nc(v_order_list,
                                                    nvl(v_order_list.this_account_seq,
                                                        0));
      
        if v_this_days <= 0
        then
          exit;
        end if;
      end loop;
    end if;
    v_this_account_seq := nvl(v_order_list.this_account_seq, 0) - 1;
    update order_list
       set status1          = 'WAIT_ACC',
           this_days        = 0,
           account_workerid = null,
           account_date     = null,
           charge_itemid    = null,
           this_account_seq = v_this_account_seq
     where id = in_order_listid;
  end prv_医嘱_长_杂费_入帐_取消;

  ---------------------------------------------------------------------------
  procedure prv_医嘱_临_物资_入帐(t_order_list    in order_list%rowtype
                                 ,t_resident_info in resident_info%rowtype) is
    v_purchaseid           all_purchase.id%type;
    v_price                number;
    v_this_account_seq     number;
    v_charge_itemid        charge_item.id%type;
    v_circulation_detailid circulation_detail.id%type;
  begin
    if t_order_list.materialid is null
    then
      raise_application_error(-20001, '不是药品医嘱,不能在这里入帐.;');
    end if;
    prv_ack_入帐('B',
                 t_order_list.long_flag,
                 t_order_list.status,
                 t_order_list.status1);
    v_this_account_seq := nvl(t_order_list.this_account_seq, 0) + 1;
    prv_物资_入帐(t_order_list,
                  t_resident_info,
                  v_this_account_seq,
                  1,
                  v_charge_itemid,
                  v_circulation_detailid,
                  v_purchaseid,
                  v_price,
                  v_this_account_seq);
    -- 移动护理执行计划处理
    hospital.ol_mhc.sp_医嘱_医嘱执行计划_增加nc(t_order_list,
                                                v_this_account_seq,
                                                1);
    update order_list
       set status1              = 'WAIT_EXEC',
           account_workerid     = hospital.login.get_workerid,
           account_date         = sysdate,
           this_days            = 1,
           charge_itemid        = v_charge_itemid,
           circulation_detailid = v_circulation_detailid,
           this_account_seq     = v_this_account_seq,
           price                = v_price
     where id = t_order_list.id;
  end prv_医嘱_临_物资_入帐;
  ---------------------------------------------------------------------------
  procedure prv_医嘱_临_物资_入帐_取消(in_order_listid in varchar2) is
    v_order_list       order_list%rowtype;
    v_this_account_seq number;
    v_out_flag         varchar2(10);
  begin
    begin
      select *
        into v_order_list
        from order_list
       where id = in_order_listid
         for update of id nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '编号为(' || in_order_listid ||
                                ' )的医嘱没有找到.;');
    end;
    if v_order_list.materialid is null
    then
      raise_application_error(-20001,
                              '这不是药品医嘱，不能在这里取消入帐.;');
    end if;
    prv_ack_入帐_取消('B',
                      v_order_list.long_flag,
                      v_order_list.status,
                      v_order_list.status1);
    if v_order_list.account_workerid <> hospital.login.get_workerid
    then
      if nvl(get_system_option('医嘱_入账取消_职员' ||
                               hospital.login.get_workerid),
             'N') <> 'Y'
      then
        raise_application_error(-20001,
                                '这是' ||
                                get_worker_name(v_order_list.account_workerid) ||
                                '作的入帐,您不能取消入帐.;');
      end if;
    end if;
    v_this_account_seq := nvl(v_order_list.this_account_seq, 0);
    if v_order_list.amount <> 0
    then
      v_this_account_seq := nvl(v_order_list.this_account_seq, 0) + 1;
      prv_物资_入帐_取消(v_order_list, v_out_flag);
      --移动护理执行计划取消
      hospital.ol_mhc.sp_医嘱_医嘱执行计划_取消nc(v_order_list,
                                                  nvl(v_order_list.this_account_seq,
                                                      0));
    end if;
    update order_list
       set status1          = 'WAIT_ACC',
           account_workerid = null,
           account_date     = null,
           this_days        = 0,
           charge_itemid    = null,
           this_account_seq = v_this_account_seq
     where id = in_order_listid;
  end prv_医嘱_临_物资_入帐_取消;

  ---------------------------------------------------------------------------
  procedure prv_医嘱_长_物资_入帐(t_order_list    in order_list%rowtype
                                 ,t_resident_info in resident_info%rowtype
                                 ,in_this_days    in varchar2) is
    v_this_days            number; --用户指定入帐天数
    v_real_this_days       number; --实际需要入帐天数
    v_next_account_seq     order_list.remark%type; --非连续入帐的入帐序列
    v_this_account_seq     number; --入帐顺序号
    v_max_account_day      number;
    v_charge_itemid        charge_item.id%type;
    v_circulation_detailid circulation_detail.id%type;
    v_purchaseid           all_purchase.id%type;
    v_price                number;
  begin
    if t_order_list.materialid is null
    then
      raise_application_error(-20001, '不是药品医嘱,不能在这里入帐.;');
    end if;
    prv_ack_入帐('A',
                 t_order_list.long_flag,
                 t_order_list.status,
                 t_order_list.status1);
    verify_not_null(in_this_days, '入帐天数');
    begin
      verify_valid_number(in_this_days, '入帐天数');
      v_this_days := to_number(in_this_days);
    exception
      when others then
        verify_valid_date(in_this_days, '入帐截止日期');
        v_this_days := ceil(trunc(get_date_from_str(in_this_days)) -
                            t_order_list.start_date -
                            nvl(t_order_list.executed_days, 0));
    end;
    if v_this_days <= 0
    then
      raise_application_error(-20001, '入帐天数必须大于0');
    end if;
  
    if t_order_list.po_flag = '1'
    then
      v_max_account_day := nvl(get_system_option('长期口服药医嘱入帐天数'),
                               3);
    else
      v_max_account_day := nvl(get_system_option('长期物资医嘱入帐天数'), 3);
    end if;
    if v_max_account_day < 2
    then
      v_max_account_day := 2;
    end if;
    if t_order_list.start_date + v_this_days +
       nvl(t_order_list.executed_days, 0) >
       to_date(to_char(sysdate, 'YYYYMMDD'), 'YYYYMMDD') +
       v_max_account_day
    then
      raise_application_error(-20001,
                              '不能入超过当前' ||
                              to_char(v_max_account_day - 1) || '天的帐.;');
    end if;
    if t_order_list.remark is not null
    then
      s_取得入帐参数(t_order_list.remark,
                     v_this_days,
                     v_real_this_days,
                     v_next_account_seq);
    else
      v_real_this_days := v_this_days;
    end if;
    v_this_account_seq := nvl(t_order_list.this_account_seq, 0);
    if v_real_this_days > 0
    then
      v_this_account_seq := nvl(t_order_list.this_account_seq, 0) + 1;
      prv_物资_入帐(t_order_list,
                    t_resident_info,
                    v_this_account_seq,
                    v_real_this_days,
                    v_charge_itemid,
                    v_circulation_detailid,
                    v_purchaseid,
                    v_price,
                    v_this_account_seq);
      -- 移动护理执行计划处理
      hospital.ol_mhc.sp_医嘱_医嘱执行计划_增加nc(t_order_list,
                                                  v_this_account_seq,
                                                  v_real_this_days);
    end if;
    if v_this_days - v_real_this_days > 0
    then
      prv_医嘱_医嘱_入帐_跳过处理(t_order_list.id,
                                  v_this_days - v_real_this_days);
    end if;
    update order_list
       set status1              = 'WAIT_EXEC',
           account_workerid     = hospital.login.get_workerid,
           account_date         = sysdate,
           this_days            = v_real_this_days,
           charge_itemid        = v_charge_itemid,
           circulation_detailid = v_circulation_detailid,
           remark               = v_next_account_seq,
           this_account_seq     = v_this_account_seq,
           price                = v_price
     where id = t_order_list.id;
  
  end prv_医嘱_长_物资_入帐;
  --------------------------------------------------------------------------------------------

  procedure prv_医嘱_长_物资_入帐_取消(in_order_listid in varchar2) is
    v_order_list       order_list%rowtype;
    v_this_account_seq number;
    v_out_flag         varchar2(10);
  begin
    begin
      select *
        into v_order_list
        from order_list
       where id = in_order_listid
         for update of id nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '编号为(' || in_order_listid ||
                                ' )的医嘱没有找到.;');
    end;
    if v_order_list.materialid is null
    then
      raise_application_error(-20001,
                              '这不是药品医嘱，不能在这里取消入帐.;');
    end if;
    prv_ack_入帐_取消('A',
                      v_order_list.long_flag,
                      v_order_list.status,
                      v_order_list.status1);
    if v_order_list.remark is not null
    then
      raise_application_error(-20001, '非连续长期医嘱无法取消入帐.;');
    end if;
    if v_order_list.account_workerid <> hospital.login.get_workerid
    then
      if nvl(get_system_option('医嘱_入账取消_职员' ||
                               hospital.login.get_workerid),
             'N') <> 'Y'
      then
        raise_application_error(-20001,
                                '这是' ||
                                get_worker_name(v_order_list.account_workerid) ||
                                '作的入帐,您不能取消入帐.;');
      end if;
    end if;
  
    v_this_account_seq := nvl(v_order_list.this_account_seq, 0);
    if v_order_list.amount <> 0
    then
      v_this_account_seq := nvl(v_order_list.this_account_seq, 0) - 1;
      prv_物资_入帐_取消(v_order_list, v_out_flag);
      --移动护理执行计划取消
      hospital.ol_mhc.sp_医嘱_医嘱执行计划_取消nc(v_order_list,
                                                  nvl(v_order_list.this_account_seq,
                                                      0));
    end if;
    update order_list
       set status1          = 'WAIT_ACC',
           account_workerid = null,
           account_date     = null,
           this_days        = 0,
           charge_itemid    = null,
           this_account_seq = v_this_account_seq
     where id = in_order_listid;
  end prv_医嘱_长_物资_入帐_取消;
  ---------------------------------------------------------------------------
  -- 临时提供扫描入账功能 
  procedure prv_医嘱_医嘱_入帐处理(t_order_list    in order_list%rowtype
                                  ,t_resident_info in resident_info%rowtype
                                  ,in_this_days    in varchar2
                                  ,in_amount       in number default null
                                  ,in_bar_code     in varchar2 default null) as
    v_this_days number; --用户指定入帐天数  
  begin  
  if t_order_list.sundry_feeid is not null 
    then
      if t_order_list.price is null
      then
        return;
      end if;
    end if; 
    if t_order_list.materialid is null
       and t_order_list.sundry_feeid is null
    then
      --文本医嘱入账处理
      prv_ack_入帐(t_order_list.long_flag,
                   t_order_list.long_flag,
                   t_order_list.status,
                   t_order_list.status1);
      --入账天数
      verify_not_null(in_this_days, '入帐天数');
      begin
        verify_valid_number(in_this_days, '入帐天数');
        v_this_days := to_number(in_this_days);
      exception
        when others then
          verify_valid_date(in_this_days, '入帐截止日期');
          v_this_days := ceil(trunc(get_date_from_str(in_this_days)) -
                              t_order_list.start_date -
                              nvl(t_order_list.executed_days, 0));
      end; 
      update order_list
         set status1          = 'WAIT_EXEC',
             account_workerid = hospital.login.get_workerid,
             account_date     = sysdate,
             this_days        = v_this_days,
             charge_itemid    = null,
             this_account_seq = 0,
             remark           = null
       where id = t_order_list.id;
    else
      if t_order_list.long_flag = 'A'
      then
        if t_order_list.materialid is null
        then
          if t_order_list.attribute = 'C'
          then
            prv_医嘱_长_杂费_入帐(t_order_list,
                                  t_resident_info,
                                  in_this_days,
                                  in_amount);
          else
            prv_医嘱_长_杂费_入帐(t_order_list,
                                  t_resident_info,
                                  in_this_days);
          end if;
        else
          prv_医嘱_长_物资_入帐(t_order_list,
                                t_resident_info,
                                in_this_days);
        end if;
      elsif t_order_list.long_flag = 'B'
      then
        if t_order_list.materialid is null
        then 
          prv_医嘱_临_杂费_入帐(t_order_list, t_resident_info, in_bar_code);
        else
          prv_医嘱_临_物资_入帐(t_order_list, t_resident_info);
        end if;
      else
        raise_application_error(-20001, '补入的数据不能在这里处理.;');
      end if;
    end if;
  end prv_医嘱_医嘱_入帐处理;
  --------------------------------------------------------------------------------------------
  procedure prv_医嘱_医嘱_入帐_取消处理(in_order_listid in varchar2) as
    t_order_list order_list%rowtype;
  begin
    begin
      select *
        into t_order_list
        from order_list
       where id = in_order_listid
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001, '记录不存在.;');
    end;
    if t_order_list.sundry_feeid is not null
    then
      if t_order_list.price is null
      then
        raise_application_error(-20001,
                                '无费用医嘱不存在入帐,也没有入帐取消.;');
      end if;
    end if;
    if t_order_list.materialid is null
       and t_order_list.sundry_feeid is null
    then
      --文本医嘱入账取消处理
      prv_ack_入帐_取消(t_order_list.long_flag,
                        t_order_list.long_flag,
                        t_order_list.status,
                        t_order_list.status1);
      update order_list
         set status1          = 'WAIT_ACC',
             account_workerid = null,
             account_date     = null,
             this_days        = 0,
             charge_itemid    = null,
             this_account_seq = 0
       where id = t_order_list.id;
    else
      if t_order_list.long_flag = 'A'
      then
        if t_order_list.materialid is null
        then
          prv_医嘱_长_杂费_入帐_取消(in_order_listid);
        else
          prv_医嘱_长_物资_入帐_取消(in_order_listid);
        end if;
      elsif t_order_list.long_flag = 'B'
      then
        if t_order_list.materialid is null
        then
          prv_医嘱_临_杂费_入帐_取消(in_order_listid);
        else
          prv_医嘱_临_物资_入帐_取消(in_order_listid);
        end if;
      else
        raise_application_error(-20001, '补入的数据不能在这里处理.;');
      end if;
    end if;
  end prv_医嘱_医嘱_入帐_取消处理;
  --------------------------------------------------------------------------------------------
  procedure prv_医嘱_医嘱_入帐_跳过取消处理(in_order_listid in varchar2) as
    t_order_list order_list%rowtype;
  begin
    begin
      select *
        into t_order_list
        from order_list
       where id = in_order_listid
         for update;
    exception
      when no_data_found then
        raise_application_error(-20001, '记录不存在.;');
    end;
    if t_order_list.long_flag = 'A'
    then
      null;
    elsif t_order_list.long_flag = 'B'
    then
      raise_application_error(-20001, '临时医嘱不能跳过.;');
    else
      raise_application_error(-20001, '非法状态.;');
    end if;
    if t_order_list.status = 'WAIT_ACK'
    then
      raise_application_error(-20001, '该医嘱还没有确认.;');
    elsif t_order_list.status = 'STOPPED'
    then
      raise_application_error(-20001, '该医嘱已经停止.;');
    elsif t_order_list.status = 'NORMAL'
    then
      null;
    else
      raise_application_error(-20001, '非法状态.;');
    end if;
    if t_order_list.status1 = 'WAIT_ACC'
    then
      null;
    elsif t_order_list.status1 = 'WAIT_EXEC'
    then
      null;
    else
      raise_application_error(-20001, '非法状态.;');
    end if;
    if t_order_list.skip_days is null
       or t_order_list.skip_days < 1
    then
      raise_application_error(-20001, '该医嘱没有跳过入帐.;');
    end if;
  
    update order_list
       set executed_days = executed_days - 1,
           skip_days     = skip_days - 1,
           remark        = null
     where id = in_order_listid;
    commit;
  end prv_医嘱_医嘱_入帐_跳过取消处理;
  --------------------------------------------------------------------------------------------
  --2011/08/13 tiger 组合项目退费，即整个医嘱退费
  --2011/04/15 tiger 禁止退已经结账的明细
  --2008/01/02 tiger  增加系统选项 '医嘱退费_只允许退本科室执行的费用' DEFAULT='N'
  --2006/06/19 tiger create - 允许退临时杂费
  procedure s_医嘱_临_杂费_退帐(in_order_listid  in varchar2
                               ,in_charge_itemid in varchar2) is
    v_order_list    order_list%rowtype;
    v_charge_item   charge_item%rowtype;
    v_fee           number;
    v_charge_itemid charge_item.id%type;
    v_account       number;
    v_discount      number;
    v_sysopt        varchar2(10);
    v_total_fee     number := 0;
    v_fee_type      charge_item.fee_type%type;
    v_combo_flag    sundry_fee.combo_flag%type;
  begin
    if nvl(get_system_option('临时杂费医嘱_取消执行_判断是否已经退费审核'),
           'N') = 'Y'
    then
      raise_application_error(-20001,
                              '临时杂费医嘱退费，请使用“取消入账”功能.;');
    end if;
    lock_res.lock_ack_医嘱_操作(in_order_listid, v_order_list);
    if v_order_list.long_flag not in ('B', 'E')
    then
      raise_application_error(-20001,
                              '这里只能退临时杂费医嘱的费用,不能退临时医嘱和补入医嘱费用.;');
    end if;
    if v_order_list.sundry_feeid is null
    then
      raise_application_error(-20001,
                              '这里只能退临时杂费医嘱的费用,不能退药品医嘱费用.;');
    end if;
  
    select fee_type, combo_flag
      into v_fee_type, v_combo_flag
      from sundry_fee
     where id = v_order_list.sundry_feeid;
  
    --自动临时医嘱可能没有执行，因此先执行
    if v_order_list.long_flag = 'E'
    then
      if v_order_list.status = 'NORMAL'
         and v_order_list.status1 = 'WAIT_EXEC'
      then
        s_医嘱_固定医嘱_执行nc(v_order_list);
        v_order_list.status := 'STOPPED';
      end if;
    end if;
  
    if v_order_list.status in ('DELETED')
    then
      raise_application_error(-20001, '该医嘱已经退费或者作废.;');
    end if;
  
    if v_order_list.status not in ('STOPPED')
    then
      raise_application_error(-20001, '该医嘱还没有停止,不能退费.;');
    end if;
  
    select sum(nvl(amount, 0) * nvl(price, 0))
      into v_fee
      from hospital.charge_item
     where order_listid = in_order_listid;
  
    if v_fee <= 0
    then
      raise_application_error(-20001,
                              '该医嘱产生的费用合计已经为0元,不能退费.;');
    end if;
  
    begin
      select *
        into v_charge_item
        from hospital.charge_item
       where id = in_charge_itemid
         and order_listid = in_order_listid
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '编号为( ' || in_charge_itemid ||
                                ' )的收费明细不存在.;');
    end;
  
    for c in (select *
                from charge_item
               where residentid = v_charge_item.residentid
                 and order_listid = in_order_listid
                 and nvl(update_reason, 'x') not in ('W', 'X')
                 and status = 'WAIT_PAY')
    loop
      if nvl(c.update_reason, ' ') = 'W'
      then
        raise_application_error(-20001,
                                '编号为( ' || c.id || ' )的收费明细已退.;');
      end if;
    
      if nvl(c.amount, 0) * nvl(c.price, 0) <= 0
      then
        raise_application_error(-20001,
                                '要退的收费项目金额小于等于0,不能退费.;');
      end if;
    
      if v_fee - nvl(c.amount, 0) * nvl(c.price, 0) < 0
      then
        raise_application_error(-20001,
                                '该条收费项目退费后整个医嘱的费用将产生负值,因此禁止退该收条费.;');
      end if;
    
      v_sysopt := nvl(get_system_option('医嘱退费_杂费_必须审核'), 'N');
    
      if v_sysopt = 'Y'
      then
        if nvl(c.update_reason, ' ') <> 'A'
        then
          raise_application_error(-20001, '该项目没有允许退费.;');
        end if;
      else
        v_sysopt := nvl(get_system_option('医嘱退费_只允许退本科室执行的费用'),
                        'N');
        if v_sysopt = 'Y'
        then
          if c.execute_deptid <> hospital.login.get_deptid
          then
            raise_application_error(-20001,
                                    '不是本科室执行的医嘱，不能退费.;');
          end if;
        end if;
      end if;
    
      v_charge_itemid := hospital.get_next_charge_itemid;
      charge.ins_item(v_charge_itemid,
                      null,
                      c.patientid,
                      c.registerid,
                      c.residentid,
                      c.doctorid,
                      c.fee_type,
                      c.patient_deptid,
                      c.write_deptid,
                      c.execute_deptid,
                      'ACCOUNT',
                      c.itemid,
                      c.order_listid,
                      c.account_seq,
                      c.sundry_feeid,
                      c.sundry_fee_detail_seq,
                      c.unit,
                      -1 * c.amount,
                      c.price,
                      'WAIT_PAY',
                      'X',
                      c.nbmam_list_item_type,
                      c.ratio,
                      c.remark,
                      c.id,
                      c.materialid,
                      c.packageid,
                      c.purchaseid,
                      c.norm_price,
                      in_in_fund_pay => -1 * c.in_fund_pay,
                      in_self_pay => -1 * c.self_pay,
                      in_discount => -1 * c.discount);
    
      v_account  := round(round(c.price, 3) * c.amount, 2);
      v_discount := nvl(round(c.amount * round(c.discount, 3), 2), 0);
      update resident_patient
         set account     = nvl(account, 0) - v_account,
             a_account   = nvl(a_account, 0) - decode(c.nbmam_list_item_type,
                                                      'A',
                                                      v_account + v_discount,
                                                      0),
             b_account   = nvl(b_account, 0) - decode(c.nbmam_list_item_type,
                                                      'B',
                                                      v_account + v_discount,
                                                      0),
             c_account   = nvl(c_account, 0) - decode(c.nbmam_list_item_type,
                                                      'C',
                                                      v_account + v_discount,
                                                      0),
             in_fund_pay = nvl(in_fund_pay, 0) - c.in_fund_pay,
             self_pay    = nvl(self_pay, 0) - c.self_pay,
             discount    = nvl(discount, 0) - v_discount
       where patientid = c.patientid
         and residentid = c.residentid;
      v_total_fee := v_total_fee + c.price * c.amount;
      update charge_item set update_reason = 'W' where id = c.id;
      if v_combo_flag = 'SINGLE'
      then
        v_fee_type := c.fee_type;
      end if;
    end loop;
  
    rpt_sf.s_cancel_acc(sysdate,
                        v_order_list.sundry_feeid,
                        v_charge_item.patient_deptid,
                        v_order_list.execute_deptid,
                        v_order_list.start_workerid,
                        v_fee_type,
                        v_order_list.amount,
                        v_total_fee,
                        0,
                        0);
    update order_list set status = 'DELETED' where id = in_order_listid;
    commit;
  end s_医嘱_临_杂费_退帐;
  -----------------------------------------------------------------------------------------------
  --2011/08/30 tiger 退入账序号相同的所有项目（即组合项目，要整体退账）
  --2011/04/15 tiger 禁止退已经结账的明细
  --2008/01/02 tiger  增加系统选项 '医嘱退费_只允许退本科室执行的费用' DEFAULT='N'
  --2004/11/29 create
  procedure s_医嘱_长_杂费_退帐(in_order_listid  in varchar2
                               ,in_charge_itemid in varchar2) is
    v_order_list    order_list%rowtype;
    v_charge_item1  charge_item%rowtype;
    v_fee           number;
    v_charge_itemid charge_item.id%type;
    v_account       number;
    v_discount      number;
    v_sysopt        varchar2(10);
    v_total_fee     number := 0;
    v_fee_type      charge_item.fee_type%type;
    v_combo_flag    sundry_fee.combo_flag%type;
    i               number;
  begin
    lock_res.lock_ack_医嘱_操作(in_order_listid, v_order_list);
    if v_order_list.long_flag not in ('A', 'F')
    then
      raise_application_error(-20001,
                              '这里只能退长期杂费医嘱的费用,不能退临时医嘱和补入医嘱费用.;');
    end if;
    if v_order_list.sundry_feeid is null
    then
      raise_application_error(-20001,
                              '这里只能退长期杂费医嘱的费用,不能退药品医嘱费用.;');
    end if;
  
    select fee_type, combo_flag
      into v_fee_type, v_combo_flag
      from sundry_fee
     where id = v_order_list.sundry_feeid;
  
    if v_order_list.status <> 'STOPPED'
       and v_order_list.long_flag = 'A'
    then
      raise_application_error(-20001, '该医嘱还没有停止,不能退费.;');
    end if;
    select sum(nvl(amount, 0) * nvl(price, 0))
      into v_fee
      from hospital.charge_item
     where order_listid = in_order_listid;
    if v_fee <= 0
    then
      raise_application_error(-20001,
                              '该医嘱产生的费用合计已经为0元,不能取消退费.;');
    end if;
  
    begin
      select *
        into v_charge_item1
        from hospital.charge_item
       where id = in_charge_itemid
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '编号为( ' || in_charge_itemid ||
                                ' )的收费明细不存在.;');
    end;
  
    --判断是否可以退费（前台程序应该确保不能选择这些明细进行退费）
    --1 未结账
    if nvl(v_charge_item1.status, 'X') = 'FINISHED'
    then
      raise_application_error(-20001,
                              '编号为(' || in_charge_itemid ||
                              ')的杂费项目所在的单据已经结账,不能退费.;');
    end if;
    --2 不是退费记录
    if nvl(v_charge_item1.update_reason, '1') in ('W', 'X')
    then
      raise_application_error(-20001,
                              '编号为(' || in_charge_itemid ||
                              ')的记账明细已经退费，或者是退费记录.;');
    end if;
  
    --3 没有被其他退费记录引用
    begin
      select 2
        into i
        from hospital.charge_item_
       where residentid = v_order_list.ownerid
         and order_listid = v_order_list.id
         and back_charge_itemid = in_charge_itemid;
      raise_application_error(-20001,
                              '编号为(' || in_charge_itemid ||
                              ')的杂费项目已经退费，不能重复退费.;');
    exception
      when no_data_found then
        null;
    end;
  
    for c in (select *
                from charge_item
               where residentid = v_charge_item1.residentid
                 and order_listid = in_order_listid
                 and account_seq = v_charge_item1.account_seq
                 and nvl(update_reason, 'x') not in ('W', 'X')
                 and status = 'WAIT_PAY'
                 and sundry_feeid is not null)
    loop
      if c.status = 'FINISHED'
      then
        raise_application_error(-20001,
                                '编号为( ' || c.id ||
                                ' )的收费明细已经结账,请选择未结账的明细退费.;');
      end if;
    
      if nvl(c.update_reason, ' ') = 'W'
      then
        raise_application_error(-20001,
                                '编号为( ' || c.id || ' )的收费明细已退.;');
      end if;
    
      if nvl(c.amount, 0) * nvl(c.price, 0) <= 0
      then
        raise_application_error(-20001,
                                '要退的收费项目金额小于等于0,不能退费.;');
      end if;
    
      if v_fee - nvl(c.amount, 0) * nvl(c.price, 0) < 0
      then
        raise_application_error(-20001,
                                '该条收费项目退费后整个医嘱的费用将产生负值,因此禁止退该收条费.;');
      end if;
    
      v_sysopt := nvl(get_system_option('医嘱退费_杂费_必须审核'), 'N');
      if v_sysopt = 'Y'
      then
        if nvl(c.update_reason, ' ') <> 'A'
        then
          raise_application_error(-20001, '该项目没有允许退费.;');
        end if;
      else
        v_sysopt := nvl(get_system_option('医嘱退费_只允许退本科室执行的费用'),
                        'N');
        if v_sysopt = 'Y'
        then
          if c.execute_deptid <> get_login_deptid
          then
            raise_application_error(-20001,
                                    '不是本科室执行的医嘱，不能退费.;');
          end if;
        end if;
      end if;
    
      v_charge_itemid := hospital.get_next_charge_itemid;
      charge.ins_item(v_charge_itemid,
                      null,
                      c.patientid,
                      c.registerid,
                      c.residentid,
                      c.doctorid,
                      c.fee_type,
                      c.patient_deptid,
                      c.write_deptid,
                      c.execute_deptid,
                      'ACCOUNT',
                      c.itemid,
                      c.order_listid,
                      c.account_seq,
                      c.sundry_feeid,
                      c.sundry_fee_detail_seq,
                      c.unit,
                      -1 * c.amount,
                      c.price,
                      'WAIT_PAY',
                      'X',
                      c.nbmam_list_item_type,
                      c.ratio,
                      c.remark,
                      c.id,
                      c.materialid,
                      c.packageid,
                      c.purchaseid,
                      c.norm_price,
                      in_in_fund_pay => -1 * c.in_fund_pay,
                      in_self_pay => -1 * c.self_pay,
                      in_discount => -1 * c.discount);
      v_account  := round(round(nvl(c.price, 0), 3) * c.amount, 2);
      v_discount := round(round(nvl(c.discount, 0), 3) * c.amount, 2);
      update resident_patient
         set account     = nvl(account, 0) - v_account,
             a_account   = nvl(a_account, 0) - decode(c.nbmam_list_item_type,
                                                      'A',
                                                      v_account + v_discount,
                                                      0),
             b_account   = nvl(b_account, 0) - decode(c.nbmam_list_item_type,
                                                      'B',
                                                      v_account + v_discount,
                                                      0),
             c_account   = nvl(c_account, 0) - decode(c.nbmam_list_item_type,
                                                      'C',
                                                      v_account + v_discount,
                                                      0),
             in_fund_pay = nvl(in_fund_pay, 0) - c.in_fund_pay,
             self_pay    = nvl(self_pay, 0) - c.self_pay,
             discount    = nvl(discount, 0) - v_discount
      
       where patientid = c.patientid
         and residentid = c.residentid;
      update charge_item set update_reason = 'W' where id = c.id;
      v_total_fee := v_total_fee + c.price * c.amount;
      if v_combo_flag = 'SINGLE'
      then
        v_fee_type := c.fee_type;
      end if;
    end loop;
  
    rpt_sf.s_cancel_acc(sysdate,
                        v_order_list.sundry_feeid,
                        v_charge_item1.patient_deptid,
                        v_order_list.execute_deptid,
                        v_order_list.start_workerid,
                        v_fee_type,
                        v_order_list.amount, --理解为医嘱每天入账产生一条信息
                        v_total_fee,
                        0,
                        0);
  
    commit;
  end s_医嘱_长_杂费_退帐;
  ---------------------------------------------------------------------------
  --PUBLIC PROCEDURE IMPLEMENTATION
  --
  ------------------------------------------------------------------------------------------------
  --2007/01/04 TIGER - 设置医嘱类型为 ACCOUNT
  procedure s_医嘱_结算_补入_杂费(in_residentid     in varchar2
                                 ,in_execute_deptid in varchar2
                                 ,in_sundry_feeid   in varchar2
                                 ,in_price          in varchar2
                                 ,in_amount         in varchar2
                                 ,in_remark         in varchar2
                                 ,in_patient_deptid in varchar2
                                 ,out_order_listid  out varchar2) is
    t_order_list       order_list%rowtype;
    t_resident_info    resident_info%rowtype;
    v_charge_itemid    charge_item.id%type;
    v_this_account_seq number := 1;
    v_sequence         number;
    t_sundry_fee       sundry_fee%rowtype;
    v_total_fee        number;
    v_order_listid     order_list.id%type;
    t_resident_patient resident_patient%rowtype;
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    resident_ack.s_ack_医嘱_结算_补入(in_residentid);
    verify_department(in_execute_deptid);
    verify_department(in_patient_deptid);
    verify_sundry_fee(in_sundry_feeid);
    verify_not_null(in_amount, '数量');
    verify_valid_number(in_amount, '数量');
    select max(nvl(sequence, 0))
      into v_sequence
      from order_list
     where ownerid = in_residentid;
    begin
      select *
        into t_resident_info
        from resident_info
       where residentid = in_residentid
         and deptid = in_patient_deptid
         and rownum = 1;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                get_patient_name(t_resident_info.patientid) ||
                                '没有在' ||
                                get_dept_name(in_patient_deptid) ||
                                '住院，不能增加在该科室的费用.;');
    end;
    user_permit.s_ack_记帐权(t_resident_info.deptid);
    select * into t_sundry_fee from sundry_fee where id = in_sundry_feeid;
    if to_number(in_price) * to_number(in_amount) < 0
    then
      select sum(nvl(price, 0) * nvl(amount, 0))
        into v_total_fee
        from charge_item
       where residentid = in_residentid
         and fee_type = t_sundry_fee.fee_type;
      if nvl(v_total_fee, 0) + to_number(in_price) * to_number(in_amount) < 0
      then
        raise_application_error(-20001,
                                '不能给病人增加该项目,否则会出现' ||
                                get_field_dict_name('CHARGE_ITEM',
                                                    'FEE_TYPE',
                                                    t_sundry_fee.fee_type) ||
                                '为负值.;');
      end if;
    end if;
    v_order_listid := get_next_order_listid;
    insert into order_list
      (id,
       patientid,
       ownerid,
       sequence,
       execute_deptid,
       start_workerid,
       start_date,
       input_workerid,
       input_date,
       stop_workerid,
       stop_date,
       attribute,
       long_flag,
       sundry_feeid,
       status,
       status1,
       amount,
       price,
       executed_days,
       operator,
       update_date,
       remark,
       charge_itemid,
       this_account_seq,
       type,
       subseq)
    values
      (v_order_listid,
       t_resident_info.patientid,
       in_residentid,
       nvl(v_sequence, 0) + 1,
       in_execute_deptid,
       nvl(t_resident_info.charge_doctorid, hospital.login.get_workerid),
       sysdate,
       hospital.login.get_workerid,
       sysdate,
       hospital.login.get_workerid,
       sysdate,
       'B',
       'D',
       in_sundry_feeid,
       'NORMAL',
       'WAIT_ACC',
       to_number(in_amount),
       to_number(in_price),
       0,
       hospital.login.get_workerid,
       sysdate,
       in_remark,
       null,
       1,
       'ACCOUNT',
       1);
    select * into t_order_list from order_list where id = v_order_listid;
  
    prv_无明细杂费_入帐(t_order_list,
                        t_resident_info,
                        v_charge_itemid,
                        v_this_account_seq,
                        null,
                        1);
    if to_number(in_price) * to_number(in_amount) > 0
    then
      if upper(nvl(get_system_option('医嘱入帐_结算补入_限制费用'), 'n')) = 'Y'
      then
        s_ack_住院费用足够(t_resident_info, 0);
      end if;
    end if;
    update order_list
       set status           = 'STOPPED',
           status1          = 'NONE',
           charge_itemid    = v_charge_itemid,
           this_account_seq = v_this_account_seq
     where id = v_order_listid;
    out_order_listid := v_order_listid;
    commit;
  end s_医嘱_结算_补入_杂费;

  ---------------------------------------------------------------------------
  -- 2007/01/08  使用in_order_listid参数，禁用in_sequence
  -- 2006/09/22  in_sequence 即可以表示order_list.id 也可以维护以前sequence
  procedure s_医嘱_结算_补入_删除(in_residentid   in varchar2
                                 ,in_order_listid in varchar2) is
    t_order_list       order_list%rowtype;
    v_this_account_seq number;
    v_out_flag         varchar2(10);
  begin
    lock_res.lock_ack_医嘱_操作(in_order_listid, t_order_list);
    resident_ack.s_ack_医嘱_结算_补入(t_order_list.ownerid);
    if t_order_list.long_flag <> 'D'
    then
      raise_application_error(-20001, '这不是补入数据，不能在这里删除.;');
    end if;
    if is_same_login_dept(hospital.login.get_workerid,
                          t_order_list.input_workerid) = 0
    then
      raise_application_error(-20001,
                              '这不是' || get_dept_name(get_login_deptid) ||
                              '补入的数据，您不能删除.;');
    end if;
    if t_order_list.status = 'DELETED'
    then
      raise_application_error(-20001, '该医嘱已经被他人删除.;');
    end if;
    v_this_account_seq := t_order_list.this_account_seq;
    if t_order_list.price <> 0
    then
      prv_杂费_入帐_取消(t_order_list.patientid,
                         t_order_list.id,
                         v_this_account_seq,
                         v_out_flag);
      v_this_account_seq := nvl(t_order_list.this_account_seq, 0) + 1;
    end if;
    if v_out_flag = 'DELETE'
    then
      delete from order_list where id = t_order_list.id;
    else
      update order_list
         set status           = 'DELETED',
             this_account_seq = v_this_account_seq
       where id = t_order_list.id;
    end if;
    commit;
  end s_医嘱_结算_补入_删除;
  ------------------------------------------------------------------------
  -- 2015/12/25 
  -- 8800开头的是扫码杂费
  -- 判断是否引用 HRPIF.erp_mate_inv_collate对照表 
  function get_sundry_fee_account_type(in_sundry_feeid in varchar2)
    return number is
    v_account_type number;
  begin
    begin
      select 2
        into v_account_type
        from hospital.all_sundry_fee_
       where id = in_sundry_feeid
         and parentid = '8800'
         and rownum = 1;
    exception
      when no_data_found then
        v_account_type := 1;
    end;
    return v_account_type;
  end;
  ---------------------------------------------------------------------------
  --2012/02/04 tiger - 判断杂费的执行科室是否合法
  --2007/01/04 TIGER - 设置医嘱类型为 ACCOUNT
  procedure s_医嘱_补入_杂费(in_residentid     in varchar2
                            ,in_execute_deptid in varchar2
                            , --核算科室
                             in_sundry_feeid   in varchar2
                            ,in_price          in varchar2
                            ,in_amount         in varchar2
                            ,in_remark         in varchar2
                            ,in_bar_code       in varchar2 default null
                            ,out_order_listid  out varchar2) is
    v_sequence                number;
    t_resident_info           resident_info%rowtype;
    t_sundry_fee              sundry_fee_config%rowtype;
    t_order_list              order_list%rowtype;
    v_total_fee               number;
    i                         number;
    v_order_listid            order_list.id%type;
    v_charge_itemid           charge_item.id%type;
    v_this_account_seq        number;
    v_charge_doctorid         worker.id%type;
    v_fee_type                sundry_fee.fee_type%type;
    v_order_list_account_type varchar2(4);
  begin
    lock_res.lock_ack_医嘱_操作(in_residentid, t_resident_info);
    v_order_list_account_type := get_sundry_fee_account_type(in_sundry_feeid);
  
    verify_current_resident(in_residentid);
    verify_department(in_execute_deptid);
    verify_sundry_fee(in_sundry_feeid);
    verify_not_null(in_amount, '数量');
    verify_not_null(in_price, '价格');
    verify_valid_number(in_price, '价格');
  
    if nvl(get_system_option('医嘱补入录入负值'), 'N') = 'N'
    then
      if to_number(in_amount) < 0
      then
        raise_application_error(-20001, '不能补入负数值');
      end if;
      if to_number(in_price) < 0
      then
        raise_application_error(-20001, '价格不能为负数');
      end if;
    end if;
    select max(nvl(sequence, 0))
      into v_sequence
      from order_list
     where ownerid = in_residentid;
    user_permit.s_ack_记帐权(t_resident_info.deptid);
    select *
      into t_sundry_fee
      from sundry_fee_config
     where hospid = get_login_hospid
       and sundry_feeid = in_sundry_feeid;
  
    if substrb(t_sundry_fee.dept_flag, 1, 1) = 'A'
       and in_execute_deptid = t_sundry_fee.deptid
    then
      null;
    elsif substrb(t_sundry_fee.dept_flag, 2, 1) = 'A'
          and in_execute_deptid = get_login_deptid
    then
      null;
    elsif substrb(t_sundry_fee.dept_flag, 3, 1) = 'A'
    then
      null;
    elsif substrb(t_sundry_fee.dept_flag, 4, 1) = 'A'
          and in_execute_deptid = t_resident_info.deptid
    then
      null;
    else
      raise_application_error(-20001,
                              get_sundry_fee_name(t_sundry_fee.sundry_feeid) ||
                              '的执行科室不能是' ||
                              get_dept_name(in_execute_deptid) || '.;');
    end if;
  
    if to_number(in_price) * to_number(in_amount) < 0
    then
      begin
        select 2
          into i
          from hospital.system_option
         where id like '医嘱补入录入负值%'
           and name = hospital.login.get_workerid
           and rownum = 1;
      exception
        when no_data_found then
          raise_application_error(-20001, '你没有权利给病人减费用.');
      end;
      select fee_type
        into v_fee_type
        from sundry_fee
       where id = in_sundry_feeid;
      select sum(nvl(price, 0) * nvl(amount, 0))
        into v_total_fee
        from charge_item
       where residentid = in_residentid
         and fee_type = v_fee_type;
      if nvl(v_total_fee, 0) + to_number(in_price) * to_number(in_amount) < 0
      then
        raise_application_error(-20001,
                                '不能给病人增加该项目,否则会出现' ||
                                get_field_dict_name('CHARGE_ITEM',
                                                    'FEE_TYPE',
                                                    v_fee_type) ||
                                '为负值.;');
      end if;
    end if;
  
    if nvl(get_system_option('医嘱补入物资_开单大夫为操作员'), 'Y') = 'Y'
    then
      v_charge_doctorid := hospital.login.get_workerid;
    else
      v_charge_doctorid := nvl(t_resident_info.charge_doctorid,
                               hospital.login.get_workerid);
    end if;
  
    v_this_account_seq := 1;
    v_order_listid     := get_next_order_listid;
    insert into order_list
      (id,
       patientid,
       ownerid,
       sequence,
       execute_deptid,
       start_workerid,
       start_date,
       input_workerid,
       input_date,
       stop_workerid,
       stop_date,
       attribute,
       long_flag,
       sundry_feeid,
       status,
       status1,
       amount,
       price,
       executed_days,
       operator,
       update_date,
       remark,
       charge_itemid,
       this_account_seq,
       type,
       subseq,
       account_type)
    values
      (v_order_listid,
       t_resident_info.patientid,
       in_residentid,
       nvl(v_sequence, 0) + 1,
       in_execute_deptid,
       v_charge_doctorid,
       sysdate,
       hospital.login.get_workerid,
       sysdate,
       hospital.login.get_workerid,
       sysdate,
       'B',
       'D',
       in_sundry_feeid,
       'NORMAL',
       'WAIT_ACC',
       to_number(in_amount),
       to_number(in_price),
       0,
       hospital.login.get_workerid,
       sysdate,
       in_remark,
       v_charge_itemid,
       v_this_account_seq,
       'ACCOUNT',
       1,
       v_order_list_account_type);
    select * into t_order_list from order_list where id = v_order_listid;
    -- 如果是扫描医嘱，in_bar_code 不能为空
    if v_order_list_account_type = 2
       and (in_bar_code is null or in_bar_code = '')
    then
      raise_application_error(-20001,
                              '该医嘱是扫描入账医嘱,请使用扫描入账;');
    end if;
  
    prv_无明细杂费_入帐(t_order_list,
                        t_resident_info,
                        v_charge_itemid,
                        v_this_account_seq,
                        1,
                        null,
                        in_bar_code);
    if to_number(in_price) * to_number(in_amount) >= 0
    then
      if nvl(get_system_option('医嘱补入控制费用'), 'N') = 'Y'
      then
        s_ack_住院费用足够(t_resident_info, 0);
      end if;
    end if;
    update order_list
       set status           = 'STOPPED',
           status1          = 'NONE',
           charge_itemid    = v_charge_itemid,
           this_account_seq = v_this_account_seq
     where id = v_order_listid;
    out_order_listid := v_order_listid;
    commit;
  end s_医嘱_补入_杂费;

  ---------------------------------------------------------------------------
  --2007/01/04 TIGER - 设置医嘱类型为 ACCOUNT
  procedure s_医嘱_补入_物资(in_residentid    in varchar2
                            ,in_deptid        in varchar2
                            ,in_materialid    in varchar2
                            ,in_packageid     in varchar2
                            ,in_purchaseid    in varchar2
                            ,in_amount        in varchar2
                            ,in_remark        in varchar2
                            ,out_order_listid out varchar2) is
    v_sequence             number;
    t_resident_info        resident_info%rowtype;
    t_order_list           order_list%rowtype;
    v_charge_itemid        charge_item.id%type;
    v_circulation_detailid circulation_detail.id%type;
    v_purchaseid           all_purchase.id%type;
    v_price                number;
    v_login_deptid         all_department.id%type;
    i                      number;
    v_order_listid         order_list.id%type;
    v_this_account_seq     number;
    v_charge_doctorid      worker.id%type;
  begin
    lock_res.lock_ack_医嘱_操作(in_residentid, t_resident_info);
    verify_department(in_deptid);
    v_login_deptid := get_login_deptid;
    verify_current_resident(in_residentid);
    verify_material_package(in_materialid, in_packageid);
    verify_not_null(in_amount, '数量');
    verify_valid_number(in_amount, '数量');
    if to_number(in_amount) <= 0
    then
      raise_application_error(-20001, '数量不能为负数');
    end if;
    user_permit.s_ack_记帐权(t_resident_info.deptid);
    begin
      select 2
        into i
        from system_option
       where id like '医嘱物资部门%'
         and name = in_deptid
         and rownum = 1;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '你只能补入本部门的物资和医嘱领物部门的物资,不能补入其他部门的物资.;');
    end;
    begin
      select 2
        into i
        from system_option
       where id like '医嘱领其他部门病人物资部门%'
         and name = v_login_deptid
         and rownum = 1;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '你的部门没有权利补入其他部门病人物资的权利.;');
    end;
    --    end if;
  
    select max(nvl(sequence, 0))
      into v_sequence
      from order_list
     where ownerid = in_residentid;
    if nvl(get_system_option('医嘱补入物资_开单大夫为操作员'), 'Y') = 'Y'
    then
      v_charge_doctorid := hospital.login.get_workerid;
    else
      v_charge_doctorid := nvl(t_resident_info.charge_doctorid,
                               hospital.login.get_workerid);
    end if;
    v_order_listid := get_next_order_listid;
    insert into order_list
      (charge_itemid,
       id,
       patientid,
       ownerid,
       sequence,
       material_deptid,
       execute_deptid,
       start_workerid,
       start_date,
       input_workerid,
       input_date,
       stop_workerid,
       stop_date,
       attribute,
       long_flag,
       materialid,
       packageid,
       method,
       status,
       status1,
       amount,
       price,
       executed_days,
       operator,
       update_date,
       remark,
       type,
       subseq)
    values
      (null,
       v_order_listid,
       t_resident_info.patientid,
       in_residentid,
       nvl(v_sequence, 0) + 1,
       in_deptid,
       v_login_deptid,
       v_charge_doctorid,
       sysdate,
       hospital.login.get_workerid,
       sysdate,
       hospital.login.get_workerid,
       sysdate,
       'B',
       'D',
       in_materialid,
       in_packageid,
       null,
       'NORMAL',
       'WAIT_ACC',
       to_number(in_amount),
       0,
       0,
       hospital.login.get_workerid,
       sysdate,
       in_remark,
       'ACCOUNT',
       1);
    select * into t_order_list from order_list where id = v_order_listid;
  
    v_this_account_seq := 1;
    prv_物资_入帐(t_order_list,
                  t_resident_info,
                  v_this_account_seq,
                  1,
                  v_charge_itemid,
                  v_circulation_detailid,
                  v_purchaseid,
                  v_price,
                  v_this_account_seq);
  
    if to_number(v_price) * to_number(in_amount) >= 0
    then
      if nvl(get_system_option('医嘱补入控制费用'), 'N') = 'Y'
      then
        s_ack_住院费用足够(t_resident_info, 0);
      end if;
    end if;
  
    update order_list
       set circulation_detailid = v_circulation_detailid,
           charge_itemid        = v_charge_itemid,
           this_account_seq     = v_this_account_seq,
           price                = v_price,
           status               = 'STOPPED',
           status1              = 'NONE'
     where id = v_order_listid;
    out_order_listid := v_order_listid;
    commit;
  end s_医嘱_补入_物资;

  ---------------------------------------------------------------------------
  --  2007/03/21   增加系统选项 只能删除自己补入的医嘱 默认 N {Y/N}
  --  2007/01/08  使用in_order_listid，不使用in_sequence
  --  2006/09/22  in_sequence 即可以是order_list.id 也可以是 order_list.sequence
  --
  procedure s_医嘱_补入_删除(in_residentid   in varchar2
                            ,in_order_listid in varchar2) is
    t_order_list       order_list%rowtype;
    t_resident_info    resident_info%rowtype;
    v_this_account_seq number;
    v_out_flag         varchar2(10);
  begin
    lock_res.lock_ack_医嘱_操作(in_order_listid,
                                t_order_list,
                                t_resident_info);
    if t_order_list.status = 'DELETED'
    then
      raise_application_error(-20001, '该医嘱已经被删除.;');
    end if;
    if t_order_list.long_flag <> 'D'
    then
      raise_application_error(-20001, '这不是补入数据，不能在这里删除.;');
    end if;
    if is_same_login_dept(hospital.login.get_workerid,
                          t_order_list.input_workerid) = 0
    then
      raise_application_error(-20001,
                              '这不是' || get_dept_name(get_login_deptid) ||
                              '补入的数据，您不能删除.;');
    end if;
  
    if nvl(get_system_option('只能删除自己补入的医嘱'), 'N') = 'Y'
    then
      if t_order_list.input_workerid <> hospital.login.get_workerid
      then
        raise_application_error(-20001, '你不能删除其他人补入的医嘱.;');
      end if;
    end if;
    v_this_account_seq := nvl(t_order_list.this_account_seq, 0);
    if t_order_list.sundry_feeid is not null
    then
      prv_杂费_入帐_取消(t_order_list.patientid,
                         t_order_list.id,
                         v_this_account_seq,
                         v_out_flag);
    elsif t_order_list.materialid is not null
    then
      prv_物资_入帐_取消(t_order_list, v_out_flag);
    else
      v_out_flag := 'DELETE';
    end if;
    if v_out_flag = 'DELETE'
    then
      delete from order_list where id = t_order_list.id;
    else
      update order_list set status = 'DELETED' where id = t_order_list.id;
    end if;
    commit;
  end s_医嘱_补入_删除;

  ---------------------------------------------------------------------------
  procedure prv_医嘱_药单_退_增加_nc(in_circulation_detailid  in varchar2
                                    ,out_circulation_detailid out varchar2
                                    ,in_external_call         in varchar2 --判断是否是第三方调用
                                     ) is
    t_circulation_ticketid circulation_ticket.id%type;
    t_circulation_detailid circulation_detail.id%type;
    t_circulation_ticket   circulation_ticket%rowtype;
    t_circulation_detail   circulation_detail%rowtype;
    t_order_list           order_list%rowtype;
    t_resident_patient     resident_patient%rowtype;
    t_resident_info        resident_info%rowtype;
    new_ticket             varchar2(1);
    i                      number;
    t_charge_itemid        charge_item.id%type;
    t_find                 varchar2(1);
    t_item_type            nbmam_list.item_type%type;
    t_ratio                number;
    v_material_name        all_material.name%type;
    v_patient_attr         patient.attribute%type;
    v_in_fund_pay          number;
    v_self_pay             number;
    v_account              number;
    v_discount             number;
    v_charge_item          charge_item%rowtype;
  begin
    begin
      select id,
             circulation_ticketid,
             sequence,
             materialid,
             packageid,
             purchaseid,
             amount,
             cost,
             price,
             attribute,
             remain,
             residentid,
             bedid,
             record_no,
             order_listid,
             patientid,
             operator,
             update_date,
             remark,
             order_list_account_seq,
             discount,
             charge_itemid
        into t_circulation_detail.id,
             t_circulation_detail.circulation_ticketid,
             t_circulation_detail.sequence,
             t_circulation_detail.materialid,
             t_circulation_detail.packageid,
             t_circulation_detail.purchaseid,
             t_circulation_detail.amount,
             t_circulation_detail.cost,
             t_circulation_detail.price,
             t_circulation_detail.attribute,
             t_circulation_detail.remain,
             t_circulation_detail.residentid,
             t_circulation_detail.bedid,
             t_circulation_detail.record_no,
             t_circulation_detail.order_listid,
             t_circulation_detail.patientid,
             t_circulation_detail.operator,
             t_circulation_detail.update_date,
             t_circulation_detail.remark,
             t_circulation_detail.order_list_account_seq,
             t_circulation_detail.discount,
             t_circulation_detail.charge_itemid
        from circulation_detail
       where id = in_circulation_detailid
         for update of id nowait;
      t_find := 'Y';
    exception
      when no_data_found then
        t_find := 'N';
    end;
    if t_find = 'N'
    then
      begin
        select id,
               circulation_ticketid,
               sequence,
               materialid,
               packageid,
               purchaseid,
               amount,
               cost,
               price,
               attribute,
               remain,
               residentid,
               bedid,
               record_no,
               order_listid,
               patientid,
               operator,
               update_date,
               remark,
               order_list_account_seq,
               discount,
               charge_itemid
          into t_circulation_detail.id,
               t_circulation_detail.circulation_ticketid,
               t_circulation_detail.sequence,
               t_circulation_detail.materialid,
               t_circulation_detail.packageid,
               t_circulation_detail.purchaseid,
               t_circulation_detail.amount,
               t_circulation_detail.cost,
               t_circulation_detail.price,
               t_circulation_detail.attribute,
               t_circulation_detail.remain,
               t_circulation_detail.residentid,
               t_circulation_detail.bedid,
               t_circulation_detail.record_no,
               t_circulation_detail.order_listid,
               t_circulation_detail.patientid,
               t_circulation_detail.operator,
               t_circulation_detail.update_date,
               t_circulation_detail.remark,
               t_circulation_detail.order_list_account_seq,
               t_circulation_detail.discount,
               t_circulation_detail.charge_itemid
          from circulation_detail_a01
         where id = in_circulation_detailid
           for update of id nowait;
      exception
        when no_data_found then
          raise_application_error(-20001, '领药记录没有找到.;');
      end;
    end if;
    if t_circulation_detail.remark like '%已退%'
    then
      raise_application_error(-20001, '该药已退.;');
    end if;
  
    begin
      select a.name
        into v_material_name
        from all_material a
       where a.id = t_circulation_detail.materialid
         and substrb(a.attribute, 7, 1) = 'B'
         and rownum = 1;
      raise_application_error(-20001,
                              '处方包含的药品( ' || v_material_name ||
                              ' )是禁止退还的药品,不能退药.;');
    exception
      when no_data_found then
        null;
    end;
  
    if t_find = 'Y'
    then
      begin
        select *
          into t_circulation_ticket
          from circulation_ticket
         where id = t_circulation_detail.circulation_ticketid
           for update nowait;
      exception
        when no_data_found then
          raise_application_error(-20001, '领药单据没有找到.;');
      end;
    else
      begin
        select *
          into t_circulation_ticket
          from circulation_ticket_a01
         where id = t_circulation_detail.circulation_ticketid
           for update nowait;
      exception
        when no_data_found then
          raise_application_error(-20001, '领药单据没有找到.;');
      end;
    end if;
  
    if t_circulation_ticket.type not in ('E', 'F')
    then
      raise_application_error(-20001, '不是领药单，不能退药.;');
    end if;
  
    begin
      select *
        into t_order_list
        from order_list
       where id = t_circulation_detail.order_listid
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001, '没有找到相应的医嘱.;');
    end;
  
    if t_order_list.long_flag = 'D'
    then
      if t_circulation_ticket.out_date > trunc(sysdate, 'MM')
      then
        if t_order_list.material_deptid = get_login_deptid
        then
          raise_application_error(-20001,
                                  '本部门的医嘱补入物资不能退，请使用补入医嘱删除功能.;');
        end if;
        if is_worker_login_dept(hospital.login.get_workerid,
                                t_order_list.material_deptid) <> 0
        then
          if is_same_login_dept(hospital.login.get_workerid,
                                t_order_list.input_workerid) <> 0
          then
            raise_application_error(-20001,
                                    '本部门的医嘱补入物资不能退，请使用补入医嘱删除功能.;');
          end if;
        end if;
      end if;
    end if;
    lock_res.lock_resident_by_rid(t_order_list.ownerid,
                                  t_resident_patient,
                                  t_resident_info);
  
    select attribute
      into v_patient_attr
      from patient
     where id = t_resident_info.patientid;
    if t_resident_info.process_reason = 'OUT'
    then
      raise_application_error(-20001, '该病人已经做出院请求,不能退药');
    end if;
    if t_resident_info.process_reason = 'CHANGEDEPT'
       and t_resident_info.finish_flag <> 'FINISHED'
    then
      raise_application_error(-20001, '该病人已经转科请求,不能退药');
    end if;
  
    if (t_order_list.status <> 'STOPPED' and t_order_list.status1 <> 'NONE')
       or (t_order_list.status = 'STOPPED' and
       t_order_list.status1 = 'WAIT_ACK') -- 停止确定 限制退药
    then
      raise_application_error(-20001, '该医嘱还没有停止，不能退药.;');
    end if;
  
    if in_external_call = 'NO'
       and t_circulation_ticket.destinationid <> get_login_deptid
    then
      if is_worker_login_dept(hospital.login.get_workerid,
                              t_circulation_ticket.destinationid) <> 0
      then
        raise_application_error(-20001,
                                '你现在是以' ||
                                get_dept_name(get_login_deptid) ||
                                '的身份登录,不允许对' ||
                                get_dept_name(t_circulation_ticket.destinationid) ||
                                '病人医嘱进行处理 .;');
      else
        raise_application_error(-20001,
                                '这是' ||
                                get_dept_name(t_circulation_ticket.destinationid) ||
                                '录入的药品，您不能退.;');
      end if;
    end if;
  
    new_ticket := 'Y';
    begin
      select id
        into t_circulation_ticketid
        from circulation_ticket
       where destinationid = t_circulation_ticket.sourceid
         and sourceid = t_circulation_ticket.destinationid
         and type = 'I'
         and attribute = 'WAIT_ACK'
         and nurse_unit = login.nurse_unit
         for update nowait;
      new_ticket := 'N';
    exception
      when no_data_found then
        null;
      when too_many_rows then
        raise_application_error(-20001, '有多个未确认的病人退药单.;');
    end;
  
    if new_ticket = 'Y'
    then
      t_circulation_ticketid := get_next_circulation_ticketid;
      insert into circulation_ticket
        (id,
         type,
         attribute,
         sourceid,
         destinationid,
         input_workerid,
         input_date,
         io_type,
         nurse_unit)
      values
        (t_circulation_ticketid,
         'I',
         'WAIT_ACK',
         t_circulation_ticket.destinationid,
         t_circulation_ticket.sourceid,
         hospital.login.get_workerid,
         sysdate,
         'I',
         login.nurse_unit);
    end if;
  
    if t_find = 'Y'
    then
      update circulation_detail
         set remark = remark || ' ' || '已退'
       where id = in_circulation_detailid;
    else
      update circulation_detail_a01
         set remark = remark || ' ' || '已退'
       where id = in_circulation_detailid;
    end if;
  
    s_get_物资_医保信息(v_patient_attr,
                        t_order_list.materialid,
                        t_item_type,
                        t_ratio);
  
    begin
      select *
        into v_charge_item
        from charge_item
       where residentid = t_order_list.ownerid
         and circulation_detailid = in_circulation_detailid
         and status = 'WAIT_PAY';
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '没有找到退药的待结账收费明细记录.;住院号:=' ||
                                t_order_list.ownerid || '流通单明细编号:' ||
                                in_circulation_detailid);
    end;
  
    v_account     := round(round(nvl(v_charge_item.price, 0), 3) *
                           (v_charge_item.amount),
                           2);
    v_discount    := round(round(nvl(v_charge_item.discount, 0), 3) *
                           (v_charge_item.amount),
                           2);
    v_in_fund_pay := v_charge_item.in_fund_pay;
    v_self_pay    := v_charge_item.self_pay;
    charge.ins_item(out_id                   => t_charge_itemid,
                    in_charge_billid         => null,
                    in_patientid             => v_charge_item.patientid,
                    in_registerid            => null,
                    in_residentid            => v_charge_item.residentid,
                    in_doctorid              => v_charge_item.doctorid,
                    in_fee_type              => v_charge_item.fee_type,
                    in_patient_deptid        => v_charge_item.patient_deptid,
                    in_write_deptid          => v_charge_item.write_deptid,
                    in_execute_deptid        => v_charge_item.execute_deptid,
                    in_attribute             => v_charge_item.attribute,
                    in_itemid                => v_charge_item.itemid,
                    in_order_listid          => t_order_list.id,
                    in_account_seq           => nvl(t_order_list.this_account_seq,
                                                    1) + 1,
                    in_sundry_feeid          => t_order_list.sundry_feeid,
                    in_sundry_fee_detail_seq => null,
                    in_unit                  => v_charge_item.unit,
                    in_amount                => (-1) * v_charge_item.amount,
                    in_price                 => v_charge_item.price,
                    in_status                => 'WAIT_PAY',
                    in_update_reason         => 'X', --冲账记录
                    in_nbmam_list_item_type  => v_charge_item.nbmam_list_item_type,
                    in_ratio                 => v_charge_item.ratio,
                    in_remark                => v_charge_item.remark,
                    in_back_charge_itemid    => v_charge_item.id,
                    in_materialid            => v_charge_item.materialid,
                    in_packageid             => v_charge_item.packageid,
                    in_purchaseid            => v_charge_item.purchaseid,
                    in_norm_price            => v_charge_item.norm_price,
                    in_in_fund_pay           => -1 *
                                                v_charge_item.in_fund_pay,
                    in_self_pay              => -1 * v_charge_item.self_pay,
                    in_discount              => -1 * v_charge_item.discount);
    update charge_item
       set circulation_detailid = v_charge_item.circulation_detailid
     where id = t_charge_itemid;
    update charge_item set update_reason = 'W' where id = v_charge_item.id;
    select max(sequence)
      into i
      from circulation_detail
     where circulation_ticketid = t_circulation_ticketid;
    t_circulation_detailid := get_next_circulation_detailid;
    insert into circulation_detail
      (id,
       circulation_ticketid,
       sequence,
       materialid,
       packageid,
       purchaseid,
       amount,
       cost,
       price,
       residentid,
       order_listid,
       bedid,
       patientid,
       record_no,
       operator,
       update_date,
       remark,
       charge_itemid,
       discount)
    values
      (t_circulation_detailid,
       t_circulation_ticketid,
       nvl(i, 0) + 1,
       t_circulation_detail.materialid,
       t_circulation_detail.packageid,
       t_circulation_detail.purchaseid,
       t_circulation_detail.amount,
       t_circulation_detail.cost,
       t_circulation_detail.price,
       t_circulation_detail.residentid,
       t_circulation_detail.order_listid,
       t_circulation_detail.bedid,
       t_circulation_detail.patientid,
       t_circulation_detail.record_no,
       hospital.login.get_workerid,
       sysdate,
       rpad(t_charge_itemid, 14, ' ') || in_circulation_detailid,
       t_charge_itemid,
       v_charge_item.discount);
    if new_ticket = 'N'
    then
      update circulation_ticket
         set input_date = sysdate
       where id = t_circulation_ticketid;
    end if;
  
    update resident_patient
       set account     = nvl(account, 0) - v_account,
           a_account   = nvl(a_account, 0) - decode(t_item_type, 'A', 1, 0) *
                         (v_account + v_discount),
           b_account   = nvl(b_account, 0) - decode(t_item_type, 'B', 1, 0) *
                         (v_account + v_discount),
           c_account   = nvl(c_account, 0) - decode(t_item_type, 'C', 1, 0) *
                         (v_account + v_discount),
           in_fund_pay = nvl(in_fund_pay, 0) - v_in_fund_pay,
           self_pay    = nvl(self_pay, 0) - v_self_pay,
           discount    = nvl(discount, 0) - v_discount
     where patientid = t_order_list.patientid
       and residentid = t_order_list.ownerid;
  
    update order_list
       set skip_days = nvl(skip_days, 0) +
                       t_circulation_detail.amount / t_order_list.amount
     where id = t_circulation_detail.order_listid;
    out_circulation_detailid := t_circulation_detailid;
  end prv_医嘱_药单_退_增加_nc;

  ---------------------------------------------------------------------------
  procedure prv_医嘱_药单_退_增加_取消_nc(in_consume_detailid in varchar2
                                         ,in_cancel_detailid  in varchar2
                                         ,in_external_call    in varchar2) is
    --t_consume_detail     circulation_detail%rowtype;
    t_consume_detail_remark       circulation_detail.remark%type;
    t_consume_detail_amount       circulation_detail.amount%type;
    t_consume_detail_order_listid circulation_detail.order_listid%type;
  
    t_cancel_detail circulation_detail%rowtype;
  
    t_circulation_ticket circulation_ticket%rowtype;
    t_order_list         order_list%rowtype;
    t_resident_patient   resident_patient%rowtype;
    t_resident_info      resident_info%rowtype;
    t_skip_days          number;
    i                    number;
    t_find_consume       varchar2(1);
    t_charge_item        charge_item%rowtype;
    v_charge_itemid      charge_item.id%type;
    v_account            number;
    v_discount           number;
  begin
    begin
      select *
        into t_cancel_detail
        from circulation_detail
       where id = in_cancel_detailid
         and rownum = 1
         for update of id nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '退药记录(' || in_cancel_detailid ||
                                ')没有找到.;');
    end;
    if length(t_cancel_detail.remark) <> 24
    then
      raise_application_error(-20001, '该药品不能退还.;');
    end if;
    begin
      select remark, amount, order_listid
        into t_consume_detail_remark,
             t_consume_detail_amount,
             t_consume_detail_order_listid
        from circulation_detail
       where id = substrb(t_cancel_detail.remark, 15, 10)
         and rownum = 1
         for update of id nowait;
      t_find_consume := 'Y';
    exception
      when no_data_found then
        t_find_consume := 'N';
    end;
  
    if t_find_consume = 'N'
    then
      begin
        select remark, amount, order_listid
          into t_consume_detail_remark,
               t_consume_detail_amount,
               t_consume_detail_order_listid
          from circulation_detail_a01
         where id = substrb(t_cancel_detail.remark, 15, 10)
           and rownum = 1
           for update of id nowait;
      exception
        when no_data_found then
          raise_application_error(-20001,
                                  '消耗记录(' ||
                                  substrb(t_cancel_detail.remark, 15, 10) ||
                                  ')没有找到.;');
      end;
    end if;
  
    if t_consume_detail_remark is null
       or t_consume_detail_remark not like '%已退%'
    then
      raise_application_error(-20001, '还没有退药,不能取消退摇.;');
    end if;
    if t_cancel_detail.order_listid <> t_consume_detail_order_listid
    then
      raise_application_error(-20001, '不是同一条医嘱的药品.;');
    end if;
    begin
      select *
        into t_charge_item
        from charge_item
       where residentid = t_cancel_detail.residentid
         and id = t_cancel_detail.charge_itemid;
    exception
      when no_data_found then
        raise_application_error(-20001, '没有找到退费记录.;');
    end;
  
    --判断是否可以退费（桥台程序应该确保不能选择这些明细进行退费）
    --1 未结账
    if nvl(t_charge_item.status, 'X') not in ('WAIT_PAY')
    then
      raise_application_error(-20001,
                              '编号为(' || t_charge_item.id ||
                              ')的记账明细状态为(' || t_charge_item.status ||
                              '),不能撤销退费.;');
    end if;
  
    begin
      select *
        into t_circulation_ticket
        from circulation_ticket
       where id = t_cancel_detail.circulation_ticketid
         and rownum = 1
         for update of id nowait;
    exception
      when no_data_found then
        raise_application_error(-20001, '退药单据没有找到.;');
    end;
  
    if t_circulation_ticket.type <> 'I'
    then
      raise_application_error(-20001, '不是退药单据.;');
    end if;
    if t_circulation_ticket.attribute <> 'WAIT_ACK'
    then
      raise_application_error(-20001, '单据已经确认,不能取消退药.;');
    end if;
    if in_external_call = 'NO'
       and t_circulation_ticket.sourceid <> get_login_deptid
    then
      if is_worker_login_dept(hospital.login.get_workerid,
                              t_circulation_ticket.sourceid) <> 0
      then
        raise_application_error(-20001,
                                '你现在是以' ||
                                get_dept_name(get_login_deptid) ||
                                '的身份登录,不允许对' ||
                                get_dept_name(t_circulation_ticket.sourceid) ||
                                '病人医嘱进行处理 .;');
      else
        raise_application_error(-20001,
                                get_dept_name(t_circulation_ticket.sourceid) ||
                                '的退药记录，您不能取消.;');
      end if;
    end if;
    begin
      select *
        into t_order_list
        from order_list
       where id = t_cancel_detail.order_listid
         and rownum = 1;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '没有找到医嘱记录(' ||
                                t_cancel_detail.order_listid || ').;');
    end;
    lock_res.lock_resident_by_rid(t_order_list.ownerid,
                                  t_resident_patient,
                                  t_resident_info);
  
    t_skip_days := nvl(t_order_list.skip_days, 0) -
                   t_consume_detail_amount / t_order_list.amount;
    if t_skip_days < 0
    then
      t_skip_days := 0;
    end if;
    delete from circulation_detail where id = in_cancel_detailid;
    if t_find_consume = 'Y'
    then
      update circulation_detail
         set remark = replace(remark, '已退', null)
       where id = substrb(t_cancel_detail.remark, 15, 10);
    else
      update circulation_detail_a01
         set remark = replace(remark, '已退', null)
       where id = substrb(t_cancel_detail.remark, 15, 10);
    end if;
    begin
      select 2
        into i
        from circulation_detail
       where circulation_ticketid = t_cancel_detail.circulation_ticketid
         and rownum = 1;
    exception
      when no_data_found then
        delete from circulation_ticket
         where id = t_cancel_detail.circulation_ticketid;
    end;
  
    if t_charge_item.update_date > trunc(sysdate)
       and t_charge_item.update_date < trunc(sysdate + 1)
       and t_charge_item.charge_billid is null
    then
      update charge_item
         set update_reason = null
       where id = t_charge_item.back_charge_itemid;
      delete from charge_item where id = t_charge_item.id;
      insert into hospital.deleted_records_
        (schema_name, table_name, id, delete_date)
      values
        ('HOSPITAL', 'CHARGE_ITEM', t_charge_item.id, sysdate);
    else
      charge.ins_item(out_id                   => v_charge_itemid,
                      in_charge_billid         => t_charge_item.charge_billid,
                      in_patientid             => t_charge_item.patientid,
                      in_registerid            => t_charge_item.registerid,
                      in_residentid            => t_charge_item.residentid,
                      in_doctorid              => t_charge_item.doctorid,
                      in_fee_type              => t_charge_item.fee_type,
                      in_patient_deptid        => t_charge_item.patient_deptid,
                      in_write_deptid          => t_charge_item.write_deptid,
                      in_execute_deptid        => t_charge_item.execute_deptid,
                      in_attribute             => t_charge_item.attribute,
                      in_itemid                => t_charge_item.itemid,
                      in_order_listid          => t_charge_item.order_listid,
                      in_account_seq           => t_charge_item.account_seq,
                      in_sundry_feeid          => t_charge_item.sundry_feeid,
                      in_sundry_fee_detail_seq => t_charge_item.sundry_fee_detail_seq,
                      in_unit                  => t_charge_item.unit,
                      in_amount                => -1 * t_charge_item.amount,
                      in_price                 => t_charge_item.price,
                      in_status                => 'WAIT_PAY',
                      in_update_reason         => null,
                      in_nbmam_list_item_type  => t_charge_item.nbmam_list_item_type,
                      in_ratio                 => t_charge_item.ratio,
                      in_remark                => t_charge_item.remark,
                      in_back_charge_itemid    => null,
                      in_materialid            => t_charge_item.materialid,
                      in_packageid             => t_charge_item.packageid,
                      in_purchaseid            => t_charge_item.purchaseid,
                      in_norm_price            => t_charge_item.norm_price,
                      in_in_fund_pay           => -1 *
                                                  t_charge_item.in_fund_pay,
                      in_self_pay              => -1 *
                                                  t_charge_item.self_pay,
                      in_discount              => -1 *
                                                  t_charge_item.discount);
      update charge_item
         set circulation_detailid = t_charge_item.circulation_detailid
       where id = v_charge_itemid;
      if t_find_consume = 'Y'
      then
        update circulation_detail
           set charge_itemid = v_charge_itemid
         where id = substrb(t_cancel_detail.remark, 15, 10);
      else
        update circulation_detail_a01
           set charge_itemid = v_charge_itemid
         where id = substrb(t_cancel_detail.remark, 15, 10);
      end if;
    end if;
    v_account  := round(round(nvl(t_charge_item.price, 0), 3) *
                        nvl(t_charge_item.amount, 0),
                        2);
    v_discount := round(round(nvl(t_charge_item.discount, 0), 3) *
                        nvl(t_charge_item.amount, 0),
                        2);
    update resident_patient
       set account     = nvl(account, 0) - v_account,
           a_account   = nvl(a_account, 0) -
                         decode(t_charge_item.nbmam_list_item_type,
                                'A',
                                1,
                                0) * (v_account + v_discount),
           b_account   = nvl(b_account, 0) -
                         decode(t_charge_item.nbmam_list_item_type,
                                'B',
                                1,
                                0) * (v_account + v_discount),
           c_account   = nvl(c_account, 0) -
                         decode(t_charge_item.nbmam_list_item_type,
                                'C',
                                1,
                                0) * (v_account + v_discount),
           in_fund_pay = nvl(in_fund_pay, 0) -
                         nvl(t_charge_item.in_fund_pay, 0),
           self_pay    = nvl(self_pay, 0) - nvl(t_charge_item.self_pay, 0),
           discount    = nvl(discount, 0) - v_discount
     where patientid = t_charge_item.patientid
       and residentid = t_charge_item.residentid;
  
    update order_list
       set skip_days = t_skip_days
     where id = t_order_list.id;
    --prv_ack_住院费用足够(t_order_list, t_resident_info);
  
  end prv_医嘱_药单_退_增加_取消_nc;
  ---------------------------------------------------------------------------
  procedure s_医嘱_药单_退_增加(in_circulation_detailid  in varchar2
                               ,out_circulation_detailid out varchar2) is
  begin
    prv_医嘱_药单_退_增加_nc(in_circulation_detailid,
                             out_circulation_detailid,
                             'NO');
    commit;
  end s_医嘱_药单_退_增加;
  ---------------------------------------------------------------------------
  procedure s_医嘱_药单_退_增加_取消(in_consume_detailid in varchar2
                                    ,in_cancel_detailid  in varchar2) is
  begin
    prv_医嘱_药单_退_增加_取消_nc(in_consume_detailid,
                                  in_cancel_detailid,
                                  'NO');
    commit;
  end s_医嘱_药单_退_增加_取消;
  ---------------------------------------------------------------------------
  procedure s_医嘱_药单_退_增加_ex(in_circulation_detailid  in varchar2
                                  ,out_circulation_detailid out varchar2) is
  begin
    prv_医嘱_药单_退_增加_nc(in_circulation_detailid,
                             out_circulation_detailid,
                             'YES');
    commit;
  end s_医嘱_药单_退_增加_ex;
  ---------------------------------------------------------------------------
  procedure s_医嘱_药单_退_增加_取消_ex(in_consume_detailid in varchar2
                                       ,in_cancel_detailid  in varchar2) is
  begin
    prv_医嘱_药单_退_增加_取消_nc(in_consume_detailid,
                                  in_cancel_detailid,
                                  'YES');
    commit;
  end s_医嘱_药单_退_增加_取消_ex;
  ---------------------------------------------------------------------------
  --rem
  --rem   tiger 2006/07/31 - create
  --rem
  procedure s_固定医嘱_设置(in_op_type           in varchar2
                           ,in_long_flag         in varchar2
                           ,in_sundry_feeid      in varchar2
                           ,in_price             in varchar2
                           ,in_amount            in varchar2
                           ,in_execute_dept_flag in varchar2
                           ,in_execute_deptid    in varchar2
                           ,in_from_year         in varchar2
                           ,in_from_mmdd         in varchar2
                           ,in_to_year           in varchar2
                           ,in_to_mmdd           in varchar2
                           ,in_patient_dept_flag in varchar2 default null
                           ,in_patient_deptid    in varchar2 default null) is
    t_rowid rowid;
  begin
    if in_op_type not in ('I', 'U', 'D', 'ENABLE', 'DISABLE')
    then
      raise_application_error(-20001,
                              '非法的操作标志( ' || in_op_type || ' ).;');
    end if;
  
    verify_sundry_fee(in_sundry_feeid);
    if nvl(in_long_flag, ' ') not in ('E', 'F')
    then
      raise_application_error(-20001,
                              '非法的医嘱标志( ' || in_long_flag || ' ).;');
    end if;
  
    verify_not_null(in_price, '单价');
    verify_not_null(in_amount, '次数');
    verify_positive_number(in_price, '单价');
    verify_positive_number(in_amount, '次数');
  
    if nvl(in_execute_dept_flag, ' ') not in ('STATIC', 'PATIENT_DEPT')
    then
      raise_application_error(-20001,
                              '非法的执行科室标志( ' ||
                              in_execute_dept_flag || ' ).;');
    end if;
    if in_execute_dept_flag = 'STATIC'
    then
      verify_department(in_execute_deptid);
    else
      if in_execute_deptid is not null
      then
        raise_application_error(-20001, '执行科室必须为空.;');
      end if;
    end if;
  
    if nvl(in_patient_dept_flag, ' ') not in ('STATIC', 'PATIENT_DEPT')
    then
      raise_application_error(-20001,
                              '非法的病人科室标志( ' ||
                              in_patient_dept_flag || ' ).;');
    end if;
    if in_patient_dept_flag = 'STATIC'
    then
      verify_department(in_patient_deptid);
    else
      if in_patient_deptid is not null
      then
        raise_application_error(-20001, '病人科室必须为空.;');
      end if;
    end if;
  
    verify_not_null(in_from_year, '开始年份');
    verify_not_null(in_from_mmdd, '开始月份');
    verify_positive_number(in_to_year, '结束年份');
    verify_positive_number(in_to_mmdd, '结束月份');
  
    prv_判断日期合法性(in_from_year, in_from_mmdd);
    prv_判断日期合法性(in_to_year, in_to_mmdd);
  
    if in_op_type = 'DISABLE'
    then
      update order_list_auto_item
         set status           = 'DISABLE',
             disable_operator = hospital.login.get_workerid,
             disable_date     = sysdate
       where sundry_feeid = in_sundry_feeid
         and long_flag = in_long_flag
         and status = 'ENABLE';
    elsif in_op_type = 'ENABLE'
    then
      update order_list_auto_item
         set status          = 'ENABLE',
             enable_operator = hospital.login.get_workerid,
             enable_date     = sysdate
       where sundry_feeid = in_sundry_feeid
         and long_flag = in_long_flag
         and status = 'EDIT';
    elsif in_op_type = 'D'
    then
      delete from order_list_auto_item
       where sundry_feeid = in_sundry_feeid
         and long_flag = in_long_flag
         and status = 'EDIT';
    else
      begin
        select rowid
          into t_rowid
          from order_list_auto_item
         where sundry_feeid = in_sundry_feeid
           and long_flag = in_long_flag
           and status = 'EDIT'
           for update nowait;
        update order_list_auto_item
           set amount            = in_amount,
               price             = in_price,
               from_year         = in_from_year,
               from_mmdd         = in_from_mmdd,
               to_year           = in_to_year,
               to_mmdd           = in_to_mmdd,
               execute_dept_flag = in_execute_dept_flag,
               execute_deptid    = in_execute_deptid,
               operator          = hospital.login.get_workerid,
               update_date       = sysdate,
               patient_dept_flag = in_patient_dept_flag,
               patient_deptid    = in_patient_deptid
         where rowid = t_rowid;
      exception
        when no_data_found then
          insert into order_list_auto_item
            (sundry_feeid,
             long_flag,
             execute_dept_flag,
             execute_deptid,
             from_year,
             from_mmdd,
             to_year,
             to_mmdd,
             amount,
             price,
             status,
             operator,
             update_date,
             patient_dept_flag,
             patient_deptid)
          values
            (in_sundry_feeid,
             in_long_flag,
             in_execute_dept_flag,
             in_execute_deptid,
             in_from_year,
             in_from_mmdd,
             in_to_year,
             in_to_mmdd,
             in_amount,
             in_price,
             'EDIT',
             hospital.login.get_workerid,
             sysdate,
             in_patient_dept_flag,
             in_patient_deptid);
      end;
    end if;
    commit;
  end s_固定医嘱_设置;
  ----------------------------------------------------------------------------------
  procedure s_医嘱_退费审核(in_charge_itemid in varchar2
                           ,in_order_listid  in varchar2
                           ,in_action        in varchar2) is
    v_charge_item charge_item_%rowtype;
    v_order_list  order_list%rowtype;
  begin
    --in_action = 'A' 允许退费 = 'C' 已检查
    lock_res.lock_ack_医嘱_操作(in_order_listid, v_order_list);
    if in_action not in ('A', 'C')
    then
      raise_application_error(-20001,
                              '非法的标志( ' || in_action || ' ).;');
    end if;
    begin
      select *
        into v_charge_item
        from charge_item
       where id = in_charge_itemid
         and order_listid = in_order_listid
         for update of update_reason nowait;
    exception
      when no_data_found then
        raise_application_error(-20001, '要审核的收费明细不存在.;');
      when others then
        raise_application_error(-20001, '其他人正在操作,请稍后重试.;');
    end;
    update charge_item
       set update_reason           = decode(in_action, 'A', 'A', 'C'),
           withdraw_audit_workerid = hospital.login.get_workerid,
           withdraw_audit_date     = sysdate
     where residentid = v_charge_item.residentid
       and account_seq = v_charge_item.account_seq
       and nvl(update_reason, '1') not in ('W', 'X')
       and order_listid = v_charge_item.order_listid
       and price * amount >= 0;
    commit;
  end s_医嘱_退费审核;
  -----------------------------------------------------------------------------------------
  procedure s_医嘱_固定医嘱_录入nc(out_order_listid  out varchar2
                                  ,in_long_flag      in varchar2
                                  ,in_start_workerid in varchar2
                                  ,in_residentid     in varchar2
                                  ,in_execute_deptid in varchar2
                                  , --核算科室
                                   in_sundry_feeid   in varchar2
                                  ,in_price          in varchar2
                                  ,in_amount         in varchar2
                                  ,in_remark         in varchar2) as
    t_order_listid   order_list.id%type;
    t_start_workerid order_list.start_workerid%type;
    v_patientid      patient.id%type;
    v_sequence       number;
  begin
    -- E 临时固定医嘱（只入帐一次）
    -- F 长期固定医嘱 (从病人入院到病人出院记录N次)
    if in_long_flag not in ('E', 'F')
    then
      raise_application_error(-20001,
                              '非法的医嘱标志 (' || in_long_flag || ' ).;');
    end if;
    t_start_workerid := nvl(in_start_workerid, hospital.login.get_workerid);
    select max(nvl(sequence, 0))
      into v_sequence
      from order_list
     where ownerid = in_residentid;
  
    select b.patientid
      into v_patientid
      from resident_patient b
     where b.residentid = in_residentid;
  
    t_order_listid := get_next_order_listid;
    insert into order_list
      (id,
       patientid,
       ownerid,
       sequence,
       execute_deptid,
       start_workerid,
       start_date,
       input_workerid,
       input_date,
       attribute,
       long_flag,
       sundry_feeid,
       status,
       status1,
       amount,
       price,
       executed_days,
       operator,
       update_date,
       remark,
       type,
       subseq)
    values
      (t_order_listid,
       v_patientid,
       in_residentid,
       nvl(v_sequence, 0) + 1,
       in_execute_deptid,
       t_start_workerid,
       sysdate,
       hospital.login.get_workerid,
       sysdate,
       'B',
       in_long_flag, --自动医嘱
       in_sundry_feeid,
       'NORMAL',
       'WAIT_ACC',
       to_number(in_amount),
       nvl(to_number(in_price), 0),
       0,
       hospital.login.get_workerid,
       sysdate,
       in_remark,
       'AUTOFEE',
       1);
    out_order_listid := t_order_listid;
  end s_医嘱_固定医嘱_录入nc;
  -----------------------------------------------------------------------------------------
  procedure s_医嘱_固定医嘱_入帐nc(t_order_list    in order_list%rowtype
                                  ,t_resident_info in resident_info%rowtype) is
    v_this_days        number;
    v_real_this_days   number;
    v_next_account_seq order_list.remark%type;
    t_sundry_fee       sundry_fee%rowtype;
    v_this_account_seq number;
    v_charge_itemid    charge_item.id%type;
  begin
  
    prv_ack_入帐(t_order_list.long_flag,
                 t_order_list.long_flag,
                 t_order_list.status,
                 t_order_list.status1);
  
    --取得入帐参数
    if t_order_list.long_flag = 'E'
    then
      v_this_days      := 1;
      v_real_this_days := 1;
    else
      if t_order_list.remark is not null
      then
        s_取得入帐参数(t_order_list.remark,
                       v_this_days,
                       v_real_this_days,
                       v_next_account_seq);
      else
        v_this_days      := trunc(sysdate + 1) -
                            trunc(t_order_list.start_date) -
                            nvl(t_order_list.executed_days, 0);
        v_real_this_days := v_this_days;
      end if;
    end if;
    --
    begin
      select *
        into t_sundry_fee
        from sundry_fee
       where id = t_order_list.sundry_feeid;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '编号为( ' || t_order_list.sundry_feeid ||
                                ' )的杂费项目不存在.;');
    end;
  
    v_this_account_seq := nvl(t_order_list.this_account_seq, 0);
    if v_real_this_days > 0
    then
      v_this_account_seq := nvl(t_order_list.this_account_seq, 0) + 1;
      prv_无明细杂费_入帐(t_order_list,
                          t_resident_info,
                          v_charge_itemid,
                          v_this_account_seq,
                          v_real_this_days);
    end if;
  
    if v_this_days - v_real_this_days > 0
       and t_order_list.long_flag = 'F'
    then
      prv_医嘱_医嘱_入帐_跳过处理(t_order_list.id,
                                  v_this_days - v_real_this_days);
    end if;
  
    update order_list
       set status1          = 'WAIT_EXEC',
           account_workerid = hospital.login.get_workerid,
           account_date     = sysdate,
           this_days        = v_real_this_days,
           charge_itemid    = v_charge_itemid,
           this_account_seq = v_this_account_seq,
           remark           = v_next_account_seq
     where id = t_order_list.id;
  
  end s_医嘱_固定医嘱_入帐nc;
  -----------------------------------------------------------------------------------------
  procedure s_医嘱_固定医嘱_执行nc(t_order_list in order_list%rowtype) as
  begin
    if t_order_list.long_flag not in ('E', 'F')
    then
      raise_application_error(-20001, '这不是固定医嘱，不能在这里处理.;');
    end if;
    if t_order_list.materialid is not null
    then
      raise_application_error(-20001, '这不是杂费医嘱，不能在这里处理.;');
    end if;
    if t_order_list.status = 'WAIT_ACK'
    then
      raise_application_error(-20001, '该医嘱还没有确认.;');
    elsif t_order_list.status = 'STOPPED'
    then
      raise_application_error(-20001, '该医嘱已经停止.;');
    elsif t_order_list.status = 'NORMAL'
    then
      null;
    else
      raise_application_error(-20001,
                              '不正常状态(status=' || t_order_list.status ||
                              ',status1=' || t_order_list.status1 || ').;');
    end if;
    if t_order_list.status1 = 'WAIT_ACC'
    then
      raise_application_error(-20001, '该医嘱还没有入帐.;');
    elsif t_order_list.status1 like 'WAIT_EXEC'
    then
      null;
    else
      raise_application_error(-20001,
                              '不正常状态(status=' || t_order_list.status ||
                              ',status1=' || t_order_list.status1 || ').;');
    end if;
    if t_order_list.long_flag = 'E'
    then
      update order_list
         set status           = 'STOPPED',
             status1          = 'NONE',
             stop_workerid    = hospital.login.get_workerid,
             stop_date        = sysdate,
             execute_workerid = hospital.login.get_workerid,
             execute_date     = sysdate,
             executed_days    = 1,
             this_days        = 0
       where id = t_order_list.id;
    else
      update order_list
         set status           = 'NORMAL',
             status1          = 'WAIT_ACC',
             execute_workerid = hospital.login.get_workerid,
             execute_date     = sysdate,
             this_days        = 0,
             executed_days    = nvl(executed_days, 0) + nvl(this_days, 0)
       where id = t_order_list.id;
    end if;
  end s_医嘱_固定医嘱_执行nc;
  -----------------------------------------------------------------------------------------
  procedure s_医嘱_固定医嘱_停止nc(in_order_listid in varchar2) as
    t_order_list    order_list%rowtype;
    t_resident_info resident_info%rowtype;
  begin
    begin
      select *
        into t_order_list
        from order_list
       where id = in_order_listid;
    exception
      when no_data_found then
        raise_application_error(-20001, '记录不存在.;');
    end;
    if t_order_list.long_flag not in ('E', 'F')
    then
      raise_application_error(-20001, '这不是固定医嘱，不能在这里处理.;');
    end if;
    if t_order_list.materialid is not null
    then
      raise_application_error(-20001, '这不是杂费医嘱，不能在这里处理.;');
    end if;
    if t_order_list.status = 'WAIT_ACK'
    then
      raise_application_error(-20001, '该医嘱还没有确认.;');
    elsif t_order_list.status = 'STOPPED'
    then
      raise_application_error(-20001, '该医嘱已经停止.;');
    elsif t_order_list.status = 'NORMAL'
    then
      null;
    else
      raise_application_error(-20001, '非法状态.;');
    end if;
    if t_order_list.status1 = 'WAIT_ACC'
    then
      null;
    elsif t_order_list.status1 = 'WAIT_EXEC'
    then
      raise_application_error(-20001, '请执行后停止.;');
    else
      raise_application_error(-20001, '非法状态.;');
    end if;
  
    begin
      select a.*
        into t_resident_info
        from resident_info a, resident_patient b
       where a.residentid = t_order_list.ownerid
         and a.record_no = b.record_no;
    exception
      when no_data_found then
        raise_application_error(-20001, '没有找到住院信息.;');
    end;
  
    update order_list
       set status        = 'STOPPED',
           status1       = 'NONE',
           stop_workerid = hospital.login.get_workerid,
           stop_date     = sysdate
     where id = in_order_listid;
  end s_医嘱_固定医嘱_停止nc;
  ------------------------------------------------------------------------
  -- account_type 1 正常医嘱  
  --              2 扫码医嘱
  function get_order_list_account_type(in_order_listid in varchar2)
    return number is
    v_account_type number;
  begin
    begin
      select nvl(account_type, 1)
        into v_account_type
        from hospital.order_list_
       where id = in_order_listid
         and account_type = 2
         and rownum = 1;
    exception
      when no_data_found then
        v_account_type := 1;
    end;
    return v_account_type;
  end;
  ------------------------------------------------------------------------
  --  tiger  2009/09/22 - 根据系统选项 "医嘱入账_执行科室自己入账%" 判断入账合法性
  --  tiger  2005/04/12 - 根据系统选择项目 “长期杂费自动入帐” 判断是否可以对长期杂费医嘱进行自动入帐
  --  tiger  2004/11/28 - 对于长期杂费医嘱不入帐，直接返回
  --  tiger  2002/09/16 - 判断是否可以入帐修改到入帐前判断和入帐后复查，只对整条医嘱判断。
  --  tiger  2001/10/14 - 增加职员的登录部门、门诊核算部门和住院核算部门管理
  --  tiger  2001/09/13 - 对于临床科室人员入账，只处理自己科室录入的医嘱，
  --                      其他科室录入的医嘱，直接跳过，不作处理
  --                      对于非临床科室人员入账，可以处理自己科室录入的医嘱和非临床科室录入的医嘱。
  --  lym    2016/08/16   检索申请单预约(状态为 已缴费)
  procedure prv_医嘱_医嘱_入帐nc(in_order_listid in varchar2
                                ,in_this_days    in varchar2
                                ,in_bar_code     in varchar2 default null) as
    t_order_list          order_list%rowtype;
    t_resident_info       resident_info%rowtype;
    t_find                varchar2(1);
    t_order_list_parentid order_list.parentid%type;
    v_worker_deptid       all_department.id%type;
    exam_apply_id         hospital.in_examination_application_.id%type;
    i                     integer;
    v_account_type        number;
  begin
  
    begin
      select *
        into t_order_list
        from order_list
       where id = in_order_listid;
    exception
      when no_data_found then
        raise_application_error(-20001, '记录不存在.;');
    end; 
    if t_order_list.parentid is not null
       and t_order_list.id <> t_order_list.parentid
    then
      begin
        select *
          into t_order_list
          from order_list
         where id = t_order_list.parentid;
      exception
        when no_data_found then
          raise_application_error(-20001, '父医嘱不存在.;');
      end;
    end if;
  
    -- 如果是扫描医嘱，in_bar_code 不能为空
    v_account_type := get_order_list_account_type(in_order_listid);
    if v_account_type = 2
       and (in_bar_code is null or in_bar_code = '')
    then
      raise_application_error(-20001,
                              '该医嘱是扫描入账医嘱,请使用扫描入账;');
    end if;
  
    if t_order_list.sundry_feeid is not null
       and t_order_list.long_flag = 'A'
    then
      begin
        select 2
          into i
          from order_list
         where parentid = t_order_list.id
           and materialid is not null
           and long_flag = 'A'
           and rownum = 1;
        null;
      exception
        when no_data_found then
          if (nvl(get_system_option('长期杂费自动入帐'), 'Y') = 'Y' or
             nvl(get_system_option('长期杂费自动入帐'), 'Y') = 'X')
             and t_order_list.sundry_feeid like '1109%'
             and t_order_list.execute_deptid = hospital.login.get_deptid
          then
            return; --对于长期杂费医嘱不入帐，直接返回;床位费在手动、自动模式入账时，固定为自动入账
          end if;
      end;
    end if; 
    if t_order_list.attribute = 'C'
    then
      raise_application_error(-20001, '手工计费医嘱，不能在这里入账.;'); /*手工入账医嘱*/
    end if; 
    begin
      select b.*
        into t_resident_info
        from resident_patient a, resident_info b
       where a.patientid = t_order_list.patientid
         and b.residentid = t_order_list.ownerid
         and a.record_no = b.record_no
         and rownum = 1;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                get_patient_name(t_order_list.patientid) ||
                                '没有住院.;');
    end;
    user_permit.s_ack_记帐权(t_resident_info.deptid);
    v_worker_deptid := get_login_deptid;
  
    --如果指定医嘱入账_执行科室自己入账,则，执行科室入账规则
  
    begin
      select 2
        into i
        from system_option
       where id like '医嘱入账_执行科室自己入账%'
         and name = t_order_list.execute_deptid;
      if v_worker_deptid <> t_order_list.execute_deptid
      then
        raise_application_error(-20001,
                                '你不能对( ' ||
                                get_dept_name(t_order_list.execute_deptid) ||
                                ' )执行的医嘱入账.;');
      end if;
    exception
      when no_data_found then
      
        --对于本部门录入的医嘱，可以入账；其他部门录入的医嘱，不用入账；
        -- if 以临床科室人员登录
        --    if 非本科室录入录入医嘱；则不处理
        -- else
        --   if 可以作为本科室登录人员 -〉提示以正确的身份登录
        --   else
        --     if 录入员科室和操作员不是同一科室，禁止入账
        --     else 可以入账
        --   end if 
        -- end if
      
        if v_worker_deptid = t_resident_info.deptid
        then
          if is_same_login_dept(t_order_list.input_workerid,
                                hospital.login.get_workerid) = 0
          then
            null;
          end if;
        else
          if is_worker_login_dept(hospital.login.get_workerid,
                                  t_resident_info.deptid) <> 0
          then
            raise_application_error(-20001,
                                    '你现在是以' ||
                                    get_dept_name(v_worker_deptid) ||
                                    '的身份登录,不允许对' ||
                                    get_dept_name(t_resident_info.deptid) ||
                                    '病人医嘱进行处理 .;');
          end if;
          if is_same_login_dept(t_order_list.input_workerid,
                                v_worker_deptid) <> 0
          then
            raise_application_error(-20001,
                                    '临床科室录入的医嘱，你不能入账。');
          end if;
        end if;
    end;
  
    if t_order_list.status in ('WAIT_ACK', 'WAIT_AUDIT')
    then
      raise_application_error(-20001, '该医嘱还没有确认.;');
    elsif t_order_list.status = 'STOPPED'
    then
      raise_application_error(-20001, '该医嘱已经停止.;');
    elsif t_order_list.status = 'NORMAL'
    then
      null;
    else
      raise_application_error(-20001, '非法状态.;');
    end if;
    if t_order_list.status1 = 'WAIT_ACC'
    then
      null;
    elsif t_order_list.status1 = 'WAIT_EXEC'
    then
      raise_application_error(-20001, '该医嘱本次已经入帐.请执行后再入帐;');
    else
      raise_application_error(-20001, '非法状态.;');
    end if;
    t_find := 'N';
  
    if t_order_list.long_flag = 'A'
    then
      if t_order_list.materialid is not null
      then
        if nvl(get_system_option('医嘱入帐_长期物资_限制费用'), 'Y') = 'Y'
        then
          s_ack_住院费用足够(t_resident_info, 0);
        end if;
      elsif t_order_list.sundry_feeid is not null
      then
        if nvl(get_system_option('医嘱入帐_长期杂费_限制费用'), 'N') = 'Y'
        then
          s_ack_住院费用足够(t_resident_info, 0);
        end if;
      end if;
    elsif t_order_list.long_flag = 'B'
    then
      if t_order_list.materialid is not null
      then
        if t_order_list.type not in ('OP1', 'OP2')
        then
          if nvl(get_system_option('医嘱入帐_临时物资_限制费用'), 'Y') = 'Y'
          then
            s_ack_住院费用足够(t_resident_info, 0);
          end if;
        else
          if nvl(get_system_option('医嘱入帐_手术临时物资_限制费用'), 'Y') = 'Y'
          then
            s_ack_住院费用足够(t_resident_info, 0);
          end if;
        end if;
      elsif t_order_list.sundry_feeid is not null
      then
        if t_order_list.type not in ('OP1', 'OP2')
        then
          if nvl(get_system_option('医嘱入帐_临时杂费_限制费用'), 'N') = 'Y'
          then
            s_ack_住院费用足够(t_resident_info, 0);
          end if;
        else
          if nvl(get_system_option('医嘱入帐_手术临时杂费_限制费用'), 'Y') = 'Y'
          then
            s_ack_住院费用足够(t_resident_info, 0);
          end if;
        end if;
      end if;
    end if;
  
    if t_order_list.status = 'NORMAL'
       and t_order_list.status1 = 'WAIT_ACC'
    then 
      prv_医嘱_医嘱_入帐处理(t_order_list,
                             t_resident_info,
                             in_this_days, 
                             '',
                             in_bar_code);  
      t_find := 'Y';
    end if;
  
    if t_order_list.parentid is null
    then
      t_order_list_parentid := t_order_list.id;
    else
      t_order_list_parentid := t_order_list.parentid;
    end if;
  
    for c in (select *
                from order_list
               where parentid = t_order_list_parentid
                 and id <> t_order_list.id
                 and status = 'NORMAL'
                 and status1 = 'WAIT_ACC')
    loop 
      prv_医嘱_医嘱_入帐处理(c, t_resident_info, in_this_days);
      t_find := 'Y';
    end loop;
  
    if t_order_list.long_flag = 'A'
    then
      if t_order_list.materialid is not null
      then
        if nvl(get_system_option('医嘱入帐_长期物资_限制费用'), 'Y') = 'Y'
        then
          s_ack_住院费用足够(t_resident_info, 0);
        end if;
      elsif t_order_list.sundry_feeid is not null
      then
        if nvl(get_system_option('医嘱入帐_长期杂费_限制费用'), 'N') = 'Y'
        then
          s_ack_住院费用足够(t_resident_info, 0);
        end if;
      end if;
    elsif t_order_list.long_flag = 'B'
    then
      if t_order_list.materialid is not null
      then
        if t_order_list.type not in ('OP1', 'OP2')
        then
          if nvl(get_system_option('医嘱入帐_临时物资_限制费用'), 'Y') = 'Y'
          then
            s_ack_住院费用足够(t_resident_info, 0);
          end if;
        else
          if nvl(get_system_option('医嘱入帐_手术临时物资_限制费用'), 'Y') = 'Y'
          then
            s_ack_住院费用足够(t_resident_info, 0);
          end if;
        end if;
      elsif t_order_list.sundry_feeid is not null
      then
        if t_order_list.type not in ('OP1', 'OP2')
        then
          if nvl(get_system_option('医嘱入帐_临时杂费_限制费用'), 'N') = 'Y'
          then
            s_ack_住院费用足够(t_resident_info, 0);
          end if;
        else
          if nvl(get_system_option('医嘱入帐_手术临时杂费_限制费用'), 'Y') = 'Y'
          then
            s_ack_住院费用足够(t_resident_info, 0);
          end if;
        end if;
      end if;
    end if;
  
    if t_find = 'N'
    then
      raise_application_error(-20001, '这一组里没有待入帐的医嘱.;');
    else
      ol_input.s_护士处理医嘱(t_resident_info.residentid);
    end if;
  
    --预约检查申请单
    begin
      select id
        into exam_apply_id
        from hospital.in_examination_application_
       where order_listid = in_order_listid;
      hospital.exam_apply.s_检查申请单_入账nc(in_order_listid);
    exception
      when no_data_found then
        null;
    end;
  end prv_医嘱_医嘱_入帐nc;
  -- 2015/12/25 bar_code 新增云康扫描记账
  procedure s_医嘱_医嘱_入帐(in_order_listid in varchar2
                            ,in_this_days    in varchar2
                            ,in_bar_code     in varchar2 default null) is
  begin
    prv_医嘱_医嘱_入帐nc(in_order_listid, in_this_days, in_bar_code);
    commit;
    rabbitmq.publish_ol_message(in_event        => events.ol_account,
                                in_order_listid => in_order_listid);
  end s_医嘱_医嘱_入帐;
  -------------------------------------------------------------------------------
  --
  --    tiger    2001/10/15 - 增加职员的登录部门、门诊核算部门和住院核算部门管理
  --    tiger    2001/09/13 - 只能取消本部门如的帐
  --    lym      2016/08/16 - 检查申请单预约取消
  procedure s_医嘱_医嘱_入帐_取消(in_order_listid in varchar2) as
    t_order_list          order_list%rowtype;
    t_find                varchar2(1);
    t_order_list_parentid order_list.parentid%type;
    t_resident_info       resident_info%rowtype;
    v_login_deptid        all_department.id%type;
    exam_apply_id         hospital.in_examination_application_.id%type;
  begin
    lock_res.lock_ack_医嘱_操作(in_order_listid,
                                t_order_list,
                                t_resident_info);
    user_permit.s_ack_记帐权(t_resident_info.deptid);
    if v_login_deptid <> t_resident_info.deptid
    then
      if is_worker_login_dept(hospital.login.get_workerid,
                              t_resident_info.deptid) <> 0
      then
        raise_application_error(-20001,
                                '你现在是以' ||
                                get_dept_name(v_login_deptid) ||
                                '的身份登录,不允许对' ||
                                get_dept_name(t_resident_info.deptid) ||
                                '病人医嘱进行处理 .;');
      end if;
    end if;
    if is_same_login_dept(hospital.login.get_workerid,
                          t_order_list.account_workerid) = 0
    then
      raise_application_error(-20001, '不是本部门入的帐，你不能取消入账.');
    end if;
  
    t_find := 'N';
    if t_order_list.parentid is null
    then
      t_order_list_parentid := in_order_listid;
      if t_order_list.status = 'NORMAL'
         and t_order_list.status1 in ('WAIT_EXEC', 'EXECUTING')
      then
        prv_医嘱_医嘱_入帐_取消处理(in_order_listid);
        t_find := 'Y';
      end if;
    else
      t_order_list_parentid := t_order_list.parentid;
    end if;
    for c in (select id
                from order_list
               where parentid = t_order_list_parentid)
    loop
      prv_医嘱_医嘱_入帐_取消处理(c.id);
      t_find := 'Y';
    end loop;
    if t_find = 'N'
    then
      raise_application_error(-20001, '这一组里没有可以取消入帐的医嘱.;');
    end if;
  
    --检查申请单预约取消
    begin
      select id
        into exam_apply_id
        from hospital.in_examination_application_
       where order_listid = in_order_listid;
      hospital.exam_apply.s_检查申请单_入账取消nc(in_order_listid);
    exception
      when no_data_found then
        null;
    end;
    commit;
    /*--移动护理：医嘱取消入账，取消医嘱执行
    ol_mhc.sp_order_list_exec_plan_nc(in_order_listid);
    rabbitmq.publish_ol_message(in_event        => events.ol_account_cancel,
                                in_order_listid => in_order_listid);*/
  end s_医嘱_医嘱_入帐_取消;
  --------------------------------------------------------------------------
  procedure s_医嘱_医嘱_入帐_跳过(in_order_listid in varchar2
                                 ,in_this_days    in varchar2) as
    t_order_list order_list%rowtype;
    t_find       varchar2(1);
    t_skip_days  number;
  begin
    lock_res.lock_ack_医嘱_操作(in_order_listid, t_order_list);
    verify_not_null(in_this_days, '跳过天数');
    begin
      verify_valid_number(in_this_days, '入帐天数');
      t_skip_days := to_number(in_this_days);
    exception
      when others then
        verify_valid_date(in_this_days, '入帐截止日期');
        t_skip_days := ceil(to_date(to_char(get_date_from_str(in_this_days),
                                            'YYYYMMDD') || '000000',
                                    'YYYYMMDDHH24MISS') -
                            t_order_list.start_date -
                            nvl(t_order_list.executed_days, 0));
    end;
    verify_positive_number(t_skip_days, '跳过天数');
    if t_order_list.long_flag = 'A'
    then
      null;
    elsif t_order_list.long_flag = 'B'
    then
      raise_application_error(-20001,
                              '临时医嘱不能跳过,您可以取消确认以后再删除.;');
    else
      raise_application_error(-20001, '非法状态.;');
    end if;
    if t_order_list.status = 'WAIT_ACK'
    then
      raise_application_error(-20001, '该医嘱还没有确认.;');
    elsif t_order_list.status = 'STOPPED'
    then
      raise_application_error(-20001, '该医嘱已经停止.;');
    elsif t_order_list.status = 'NORMAL'
    then
      null;
    else
      raise_application_error(-20001, '非法状态.;');
    end if;
    if t_order_list.status1 = 'WAIT_ACC'
    then
      null;
    elsif t_order_list.status1 = 'WAIT_EXEC'
    then
      raise_application_error(-20001, '该医嘱已经入帐.;');
    else
      raise_application_error(-20001, '非法状态.;');
    end if;
    if t_order_list.parentid is null
    then
      prv_医嘱_医嘱_入帐_跳过处理(in_order_listid, t_skip_days);
    else
      t_find := 'N';
      for c in (select id
                  from order_list
                 where parentid = t_order_list.parentid
                   and status1 = 'WAIT_ACC')
      loop
        prv_医嘱_医嘱_入帐_跳过处理(c.id, t_skip_days);
        t_find := 'Y';
      end loop;
      if t_find = 'N'
      then
        raise_application_error(-20001, '这一组里没有可以入帐跳过的医嘱.;');
      end if;
    end if;
    commit;
  end s_医嘱_医嘱_入帐_跳过;
  --------------------------------------------------------------------------------
  procedure s_医嘱_医嘱_入帐_跳过取消(in_order_listid in varchar2
                                     ,in_this_days    in varchar2) as
    t_order_list order_list%rowtype;
    t_find       varchar2(1);
    v_remark     hospital.order_list_.remark%type;
  begin
    lock_res.lock_ack_医嘱_操作(in_order_listid, t_order_list);
    if t_order_list.long_flag = 'A'
    then
      null;
    elsif t_order_list.long_flag = 'B'
    then
      raise_application_error(-20001,
                              '临时医嘱不能跳过,您可以取消确认以后再删除.;');
    else
      raise_application_error(-20001, '非法状态.;');
    end if;
    if t_order_list.status = 'WAIT_ACK'
    then
      raise_application_error(-20001, '该医嘱还没有确认.;');
    elsif t_order_list.status = 'STOPPED'
    then
      raise_application_error(-20001, '该医嘱已经停止.;');
    elsif t_order_list.status = 'NORMAL'
    then
      null;
    else
      raise_application_error(-20001, '非法状态.;');
    end if;
    if t_order_list.status1 = 'WAIT_ACC'
    then
      null;
    elsif t_order_list.status1 = 'WAIT_EXEC'
    then
      raise_application_error(-20001, '该医嘱已经入帐.;');
    else
      raise_application_error(-20001, '非法状态.;');
    end if;
    begin
      select remark
        into v_remark
        from hospital.order_list_
       where id = in_order_listid
         and remark like 'Q%'
         and length(remark) > 7;
    exception
      when no_data_found then
        null;
    end;
    if v_remark is not null
    then
      raise_application_error(-20001, '非连续入帐的医嘱不能取消停药.;');
    end if;
    if t_order_list.parentid is null
    then
      prv_医嘱_医嘱_入帐_跳过取消处理(in_order_listid);
    else
      t_find := 'N';
      for c in (select id
                  from order_list
                 where parentid = t_order_list.parentid
                   and status1 = 'WAIT_ACC')
      loop
        prv_医嘱_医嘱_入帐_跳过取消处理(c.id);
        t_find := 'Y';
      end loop;
      if t_find = 'N'
      then
        raise_application_error(-20001, '这一组里没有可以入帐跳过的医嘱.;');
      end if;
    end if;
    commit;
  end s_医嘱_医嘱_入帐_跳过取消;
  -------------------------------------------------------------------
  procedure s_医嘱_文本医嘱_入帐_按病人(in_patientid  in varchar2
                                       ,in_residentid in varchar2
                                       ,in_this_days  in varchar2) is
    t_my_deptid     all_department.id%type;
    t_resident_info resident_info%rowtype;
    t_end_date      date;
    t_method        varchar2(1);
  begin
    begin
      select b.*
        into t_resident_info
        from resident_patient a, resident_info b
       where a.patientid = in_patientid
         and a.residentid = in_residentid
         and a.record_no = b.record_no
         and rownum = 1;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                get_patient_name(in_patientid) ||
                                '没有住院.;');
    end;
    user_permit.s_ack_记帐权(t_resident_info.deptid);
    t_my_deptid := get_login_deptid;
    if t_resident_info.deptid <> t_my_deptid
    then
      if is_worker_login_dept(hospital.login.get_workerid,
                              t_resident_info.deptid) <> 0
      then
        raise_application_error(-20001,
                                '你现在是以' || get_dept_name(t_my_deptid) ||
                                '的身份登录,不允许对' ||
                                get_dept_name(t_resident_info.deptid) ||
                                '病人医嘱进行处理 .;');
      else
        raise_application_error(-20001,
                                get_patient_name(in_patientid) || '是' ||
                                get_dept_name(t_resident_info.deptid) ||
                                '病人，您不能入帐.;');
      end if;
    end if;
    begin
      verify_valid_number(in_this_days, '');
      t_method := 'N';
    exception
      when others then
        t_method := 'D';
    end;
    if t_method = 'N'
    then
      for c in (select *
                  from order_list
                 where ownerid = t_resident_info.residentid
                   and long_flag in ('A', 'B')
                   and status = 'NORMAL'
                   and status1 = 'WAIT_ACC'
                   and materialid is null
                   and sundry_feeid is null
                   and text is not null
                   and (parentid is null or id = parentid)
                   and type not in ('OP2'))
      loop
        prv_医嘱_医嘱_入帐nc(c.id, in_this_days);
      end loop;
    else
      verify_valid_date(in_this_days, '入帐截止日期');
      select to_date(to_char(get_date_from_str(in_this_days), 'YYYYMMDD') ||
                     '000000',
                     'YYYYMMDDHH24MISS')
        into t_end_date
        from dual;
      if t_end_date < sysdate
      then
        raise_application_error(-20001, '入帐截止日期必须大于今天.;');
      end if;
      for c in (select *
                  from order_list
                 where ownerid = t_resident_info.residentid
                   and long_flag in ('A', 'B')
                   and status = 'NORMAL'
                   and status1 = 'WAIT_ACC'
                   and materialid is null
                   and sundry_feeid is null
                   and text is not null
                   and (parentid is null or id = parentid)
                   and (start_date + nvl(executed_days, 0) < t_end_date)
                   and type not in ('OP2'))
      loop
        prv_医嘱_医嘱_入帐nc(c.id,
                             ceil(t_end_date - c.start_date -
                                  c.executed_days));
      end loop;
    end if;
    commit;
  end s_医嘱_文本医嘱_入帐_按病人;

  -------------------------------------------------------------------
  --     tiger    2009/02/14 - 排除处理术中医嘱
  --     tiger      2001/10/16 -  增加职员的登录部门、门诊核算部门和住院核算部门管理
  procedure s_医嘱_医嘱_入帐_按病人(in_patientid  in varchar2
                                   ,in_residentid in varchar2
                                   ,in_this_days  in varchar2) as
    t_find           varchar2(1);
    t_patient_deptid all_department.id%type;
    t_my_deptid      all_department.id%type;
    t_residentid     resident_info.residentid%type;
    v_whole_commit   varchar2(10);
    v_sql_errm       varchar2(4000);
  begin
    begin
      select b.deptid, b.residentid
        into t_patient_deptid, t_residentid
        from resident_patient_ a, resident_info_ b
       where a.patientid = in_patientid
         and a.residentid = in_residentid
         and a.record_no = b.record_no
         and rownum = 1;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                get_patient_name(in_patientid) ||
                                '没有住院.;');
    end;
    t_my_deptid := get_login_deptid;
    if t_patient_deptid <> t_my_deptid
    then
      if is_worker_login_dept(hospital.login.get_workerid, t_patient_deptid) <> 0
      then
        raise_application_error(-20001,
                                '你现在是以' || get_dept_name(t_my_deptid) ||
                                '的身份登录,不允许对' ||
                                get_dept_name(t_patient_deptid) ||
                                '的医嘱进行处理.;');
      else
        raise_application_error(-20001,
                                get_patient_name(in_patientid) || '是' ||
                                get_dept_name(t_patient_deptid) ||
                                '病人，您不能入帐.;');
      end if;
    end if;
  
    v_whole_commit := nvl(get_system_option('医嘱入账_按病人_整体入账'),
                          'Y');
  
    t_find := 'N';
    for c in (select id
                from order_list
               where ownerid = t_residentid
                 and status = 'NORMAL'
                 and status1 = 'WAIT_ACC'
                 and (parentid is null or parentid = id)
                 and execute_deptid not in
                     (select name
                        from system_option
                       where id like '医嘱入账_执行科室自己入账%')
                    
                 and type not in ('OP2')
                 and attribute not in ('C') /*非手工入账医嘱*/
              )
    loop
      if v_whole_commit = 'Y'
      then
        prv_医嘱_医嘱_入帐nc(c.id, in_this_days);
      else
        savepoint save_1;
        begin
          prv_医嘱_医嘱_入帐nc(c.id, in_this_days);
          commit;
        exception
          when others then
            rollback to savepoint save_1;
            v_sql_errm := v_sql_errm || sqlerrm;
        end;
      end if;
      t_find := 'Y';
    end loop;
    if t_find = 'N'
    then
      raise_application_error(-20001,
                              get_patient_name(in_patientid) ||
                              '没有待入帐的医嘱.;');
    end if;
    commit;
    if v_sql_errm is not null
    then
      raise_application_error(-20001, v_sql_errm);
    end if;
  end s_医嘱_医嘱_入帐_按病人;
  -------------------------------------------------------------------
  --     tiger    2009/02/14 - create
  procedure s_医嘱_术中医嘱_入帐_按病人(in_patientid  in varchar2
                                       ,in_residentid in varchar2
                                       ,in_this_days  in varchar2) as
    t_patient_deptid all_department.id%type;
    t_my_deptid      all_department.id%type;
    t_residentid     resident_info.residentid%type;
    v_whole_commit   varchar2(10);
    v_sql_errm       varchar2(4000);
  begin
    begin
      select b.deptid, b.residentid
        into t_patient_deptid, t_residentid
        from resident_patient_ a, resident_info_ b
       where a.patientid = in_patientid
         and a.residentid = in_residentid
         and a.record_no = b.record_no
         and rownum = 1;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                get_patient_name(in_patientid) ||
                                '没有住院.;');
    end;
    t_my_deptid := get_login_deptid;
    if t_patient_deptid = t_my_deptid
    then
      raise_application_error(-20001,
                              '你现在是以' || get_dept_name(t_my_deptid) ||
                              '的身份登录,不允许对术中医嘱进行处理.;');
    end if;
  
    v_whole_commit := nvl(get_system_option('医嘱入账_按病人_整体入账'),
                          'Y');
  
    for c in (select id
                from order_list
               where ownerid = t_residentid
                 and status = 'NORMAL'
                 and status1 = 'WAIT_ACC'
                 and (parentid is null or parentid = id)
                 and type in ('OP2'))
    loop
      if v_whole_commit = 'Y'
      then
        prv_医嘱_医嘱_入帐nc(c.id, in_this_days);
      else
        savepoint save_1;
        begin
          prv_医嘱_医嘱_入帐nc(c.id, in_this_days);
          commit;
        exception
          when others then
            rollback to save_1;
            v_sql_errm := v_sql_errm || sqlerrm;
        end;
      end if;
    end loop;
    commit;
    if v_sql_errm is not null
    then
      raise_application_error(-20001, v_sql_errm);
    end if;
  end s_医嘱_术中医嘱_入帐_按病人;
  ---------------------------------------------------------------------
  --     tiger    2009/02/14 - 排除处理术中医嘱
  -- tiger 2006 / 05 / 30 - 按照病人入帐，出现错误，继续进行下一条入帐 
  -- tiger 2001 / 10 / 16 - 增加职员的登录部门、门诊核算部门和住院核算部门管理
  procedure s_医嘱_医嘱_入帐_临_按病人(in_patientid  in varchar2
                                      ,in_residentid in varchar2) as
    t_patient_deptid all_department.id%type;
    t_my_deptid      all_department.id%type;
    t_residentid     resident_info.residentid%type;
    v_whole_commit   varchar2(10);
    v_sql_errm       varchar2(4000);
    v_account_type   number;
  begin
    begin
      select b.deptid, b.residentid
        into t_patient_deptid, t_residentid
        from resident_patient a, resident_info b
       where a.patientid = in_patientid
         and a.residentid = in_residentid
         and a.record_no = b.record_no
         and rownum = 1;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                get_patient_name(in_patientid) ||
                                '没有住院.;');
    end;
    t_my_deptid := get_login_deptid;
    if t_patient_deptid <> t_my_deptid
    then
      if is_worker_login_dept(hospital.login.get_workerid, t_patient_deptid) <> 0
      then
        raise_application_error(-20001,
                                '你现在是以' || get_dept_name(t_my_deptid) ||
                                '的身份登录,不允许对' ||
                                get_dept_name(t_patient_deptid) ||
                                '的医嘱进行处理.;');
      else
        raise_application_error(-20001,
                                get_patient_name(in_patientid) || '是' ||
                                get_dept_name(t_patient_deptid) ||
                                '病人，您不能入帐.;');
      end if;
    end if;
  
    v_whole_commit := nvl(get_system_option('医嘱入账_按病人_整体入账'),
                          'Y');
  
    for c in (select id
                from order_list
               where ownerid = t_residentid
                 and long_flag = 'B'
                 and status = 'NORMAL'
                 and status1 = 'WAIT_ACC'
                 and (parentid is null or parentid = id)
                 and execute_deptid not in
                     (select name
                        from system_option
                       where id like '医嘱入账_执行科室自己入账%')
                 and type not in ('OP2'))
    loop
      -- 如果是扫描医嘱，in_bar_code 不能为空
      v_account_type := get_order_list_account_type(c.id);
      if v_account_type = 2
      then
        null;
      else
        if v_whole_commit = 'Y'
        then
          prv_医嘱_医嘱_入帐nc(c.id, 1);
        else
          savepoint save1;
          begin
            prv_医嘱_医嘱_入帐nc(c.id, 1);
            commit;
          exception
            when others then
              rollback to save1;
              v_sql_errm := v_sql_errm || sqlerrm;
          end;
        end if;
      end if;
    end loop;
    commit;
    if v_sql_errm is not null
    then
      raise_application_error(-20001, v_sql_errm);
    end if;
  end s_医嘱_医嘱_入帐_临_按病人;
  ---------------------------------------------------------------------
  --     tiger    2009/02/14 - 排除处理术中医嘱
  -- tiger 2007/01/08 - create
  procedure s_医嘱_临非口_入帐_按病人(in_patientid  in varchar2
                                     ,in_residentid in varchar2) as
    t_patient_deptid all_department.id%type;
    t_my_deptid      all_department.id%type;
    t_residentid     resident_info.residentid%type;
    v_whole_commit   varchar2(10);
    v_sql_errm       varchar2(4000);
  begin
    begin
      select b.deptid, b.residentid
        into t_patient_deptid, t_residentid
        from resident_patient a, resident_info b
       where a.patientid = in_patientid
         and a.residentid = in_residentid
         and a.record_no = b.record_no
         and rownum = 1;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                get_patient_name(in_patientid) ||
                                '没有住院.;');
    end;
    t_my_deptid := get_login_deptid;
    if t_patient_deptid <> t_my_deptid
    then
      if is_worker_login_dept(hospital.login.get_workerid, t_patient_deptid) <> 0
      then
        raise_application_error(-20001,
                                '你现在是以' || get_dept_name(t_my_deptid) ||
                                '的身份登录,不允许对' ||
                                get_dept_name(t_patient_deptid) ||
                                '的医嘱进行处理.;');
      else
        raise_application_error(-20001,
                                get_patient_name(in_patientid) || '是' ||
                                get_dept_name(t_patient_deptid) ||
                                '病人，您不能入帐.;');
      end if;
    end if;
  
    v_whole_commit := nvl(get_system_option('医嘱入账_按病人_整体入账'),
                          'Y');
  
    for c in (select id
                from order_list
               where ownerid = t_residentid
                 and long_flag = 'B'
                 and status = 'NORMAL'
                 and status1 = 'WAIT_ACC'
                 and nvl(po_flag, '0') <> '1'
                 and (parentid is null or parentid = id)
                 and execute_deptid not in
                     (select name
                        from system_option
                       where id like '医嘱入账_执行科室自己入账%')
                    
                 and type not in ('OP2'))
    loop
      if v_whole_commit = 'Y'
      then
        prv_医嘱_医嘱_入帐nc(c.id, 1);
      else
        savepoint save1;
        begin
          prv_医嘱_医嘱_入帐nc(c.id, 1);
          commit;
        exception
          when others then
            rollback to save1;
            v_sql_errm := v_sql_errm || sqlerrm;
        end;
      end if;
    end loop;
    commit;
    if v_sql_errm is not null
    then
      raise_application_error(-20001, v_sql_errm);
    end if;
  end s_医嘱_临非口_入帐_按病人;
  ---------------------------------------------------------------------
  --     tiger    2009/02/14 - 排除处理术中医嘱
  -- tiger 2007/01/08 - create
  procedure s_医嘱_临口_入帐_按病人(in_patientid  in varchar2
                                   ,in_residentid in varchar2) as
    t_patient_deptid all_department.id%type;
    t_my_deptid      all_department.id%type;
    t_residentid     resident_info.residentid%type;
    v_whole_commit   varchar2(10);
    v_sql_errm       varchar2(4000);
  begin
    begin
      select b.deptid, b.residentid
        into t_patient_deptid, t_residentid
        from resident_patient a, resident_info b
       where a.patientid = in_patientid
         and a.residentid = in_residentid
         and a.record_no = b.record_no
         and rownum = 1;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                get_patient_name(in_patientid) ||
                                '没有住院.;');
    end;
    t_my_deptid := get_login_deptid;
    if t_patient_deptid <> t_my_deptid
    then
      if is_worker_login_dept(hospital.login.get_workerid, t_patient_deptid) <> 0
      then
        raise_application_error(-20001,
                                '你现在是以' || get_dept_name(t_my_deptid) ||
                                '的身份登录,不允许对' ||
                                get_dept_name(t_patient_deptid) ||
                                '的医嘱进行处理.;');
      else
        raise_application_error(-20001,
                                get_patient_name(in_patientid) || '是' ||
                                get_dept_name(t_patient_deptid) ||
                                '病人，您不能入帐.;');
      end if;
    end if;
  
    v_whole_commit := nvl(get_system_option('医嘱入账_按病人_整体入账'),
                          'Y');
  
    for c in (select id
                from order_list
               where ownerid = t_residentid
                 and long_flag = 'B'
                 and status = 'NORMAL'
                 and status1 = 'WAIT_ACC'
                 and nvl(po_flag, '0') = '1'
                 and materialid is not null
                 and (parentid is null or parentid = id)
                 and execute_deptid not in
                     (select name
                        from system_option
                       where id like '医嘱入账_执行科室自己入账%')
                 and type not in ('OP2'))
    loop
      if v_whole_commit = 'Y'
      then
        prv_医嘱_医嘱_入帐nc(c.id, 1);
      else
        savepoint save1;
        begin
          prv_医嘱_医嘱_入帐nc(c.id, 1);
          commit;
        exception
          when others then
            rollback to save1;
            v_sql_errm := v_sql_errm || sqlerrm;
        end;
      end if;
    end loop;
    commit;
    if v_sql_errm is not null
    then
      raise_application_error(-20001, v_sql_errm);
    end if;
  end s_医嘱_临口_入帐_按病人;
  -----------------------------------------------------------------------
  -- 
  -- $header: S_医嘱_长非口_入帐_按病人.sql , v 1.0   $ 
  --   
  --  copyright (c) 2000 by holly source corporation 
  --    name
  --      S_医嘱_长非口_入帐_按病人.sql - <one-line expansion of the name>
  --    description
  --      <short description of component this file declares/defines>
  --    returns
  -- 
  --    notes
  --      <other useful comments, qualifications, etc.>
  --    modified   (yyyy/mm/dd)   reason
  --     tiger      2009/02/14 - 排除处理术中医嘱
  --     tiger      2001/10/15 - 增加职员的登录部门、门诊核算部门和住院核算部门管理
  --     tiger      2000/07/02 -  实现对所有可以入帐的医嘱先入帐，然后提示错误.

  procedure s_医嘱_长非口_入帐_按病人(in_patientid      in varchar2
                                     ,in_residentid     in varchar2
                                     ,in_this_days      in varchar2
                                     ,in_new_order_list in varchar2) as
    t_my_deptid     all_department.id%type;
    t_resident_info resident_info%rowtype;
    t_end_date      date;
    i               number;
    t_method        varchar2(1);
    v_whole_commit  varchar2(10);
    v_sql_errm      varchar2(4000);
  begin
    begin
      select b.*
        into t_resident_info
        from resident_patient a, resident_info b
       where a.patientid = in_patientid
         and a.residentid = in_residentid
         and a.record_no = b.record_no
         and rownum = 1;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                get_patient_name(in_patientid) ||
                                '没有住院.;');
    end;
    user_permit.s_ack_记帐权(t_resident_info.deptid);
    t_my_deptid := get_login_deptid;
    if t_resident_info.deptid <> t_my_deptid
    then
      if is_worker_login_dept(hospital.login.get_workerid,
                              t_resident_info.deptid) <> 0
      then
        raise_application_error(-20001,
                                '你现在是以' || get_dept_name(t_my_deptid) ||
                                '的身份登录,不允许对' ||
                                get_dept_name(t_resident_info.deptid) ||
                                '病人医嘱进行处理 .;');
      else
        raise_application_error(-20001,
                                get_patient_name(in_patientid) || '是' ||
                                get_dept_name(t_resident_info.deptid) ||
                                '病人，您不能入帐.;');
      end if;
    end if;
  
    begin
      verify_valid_number(in_this_days, '');
      t_method := 'N';
    exception
      when others then
        t_method := 'D';
    end;
  
    v_whole_commit := nvl(get_system_option('医嘱入账_按病人_整体入账'),
                          'Y');
  
    if t_method = 'N'
    then
      for c in (select *
                  from order_list
                 where ownerid = t_resident_info.residentid
                   and long_flag = 'A'
                   and status = 'NORMAL'
                   and status1 = 'WAIT_ACC'
                   and materialid is not null
                   and (parentid is null or id = parentid)
                   and (method is null or po_flag <> '1')
                   and execute_deptid not in
                       (select name
                          from system_option
                         where id like '医嘱入账_执行科室自己入账%')
                   and (in_new_order_list = '1' and
                       nvl(executed_days, 0) - nvl(skip_days, 0) +
                       nvl(this_days, 0) = 0 or in_new_order_list = '0')
                   and type not in ('OP2'))
      loop
        if v_whole_commit = 'Y'
        then
          prv_医嘱_医嘱_入帐nc(c.id, in_this_days);
        else
          savepoint save1;
          begin
            prv_医嘱_医嘱_入帐nc(c.id, in_this_days);
          exception
            when others then
              rollback to save1;
              v_sql_errm := v_sql_errm || sqlerrm;
          end;
          commit;
        end if;
      end loop;
    else
      verify_valid_date(in_this_days, '入帐截止日期');
      select to_date(to_char(get_date_from_str(in_this_days), 'YYYYMMDD') ||
                     '000000',
                     'YYYYMMDDHH24MISS')
        into t_end_date
        from dual;
      if t_end_date < sysdate
      then
        raise_application_error(-20001, '入帐截止日期必须大于今天.;');
      end if;
      begin
        select 2
          into i
          from order_list
         where ownerid = t_resident_info.residentid
           and long_flag = 'A'
           and status = 'NORMAL'
           and status1 = 'WAIT_EXEC'
           and materialid is not null
           and (parentid is null or id = parentid)
           and (method is null or po_flag <> '1')
           and (start_date + nvl(executed_days, 0) + nvl(this_days, 0) <
               t_end_date)
           and (in_new_order_list = '1' and
               nvl(executed_days, 0) - nvl(skip_days, 0) +
               nvl(this_days, 0) = 0 or in_new_order_list = '0')
           and type not in ('OP2')
           and rownum = 1;
        raise_application_error(-20001,
                                get_patient_name(in_patientid) ||
                                '还有待执行的长期针剂医嘱，请执行医嘱以后再入帐.;');
      exception
        when no_data_found then
          null;
      end;
      for c in (select *
                  from order_list
                 where ownerid = t_resident_info.residentid
                   and long_flag = 'A'
                   and status = 'NORMAL'
                   and status1 = 'WAIT_ACC'
                   and materialid is not null
                   and (parentid is null or id = parentid)
                   and (method is null or po_flag <> '1')
                   and (start_date + nvl(executed_days, 0) < t_end_date)
                   and (in_new_order_list = '1' and
                       nvl(executed_days, 0) - nvl(skip_days, 0) +
                       nvl(this_days, 0) = 0 or in_new_order_list = '0')
                   and type not in ('OP2'))
      loop
        if v_whole_commit = 'Y'
        then
          prv_医嘱_医嘱_入帐nc(c.id,
                               ceil(t_end_date - c.start_date -
                                    c.executed_days));
        else
          savepoint save1;
          begin
            prv_医嘱_医嘱_入帐nc(c.id, in_this_days);
            commit;
          exception
            when others then
              rollback to savepoint save1;
              v_sql_errm := v_sql_errm || sqlerrm;
          end;
        end if;
      end loop;
    end if;
    commit;
    if v_sql_errm is not null
    then
      raise_application_error(-20001, v_sql_errm);
    end if;
  end s_医嘱_长非口_入帐_按病人;
  --------------------------------------------------------------------------------
  --     tiger    2009/02/14 - 排除处理术中医嘱
  --     tiger    2006/05/30 - 按照病人入帐，出现错误，继续进行下一条入帐
  --     tiger    2002/09/16 - 调用 S_医嘱_医嘱_入帐
  --     tiger    2001/10/15 - 增加职员的登录部门、门诊核算部门和住院核算部门管理
  procedure s_医嘱_长口_入帐_按病人(in_patientid      in varchar2
                                   ,in_residentid     in varchar2
                                   ,in_this_days      in varchar2
                                   ,in_new_order_list in varchar2) as
    t_my_deptid     all_department.id%type;
    t_resident_info resident_info%rowtype;
    t_end_date      date;
    i               number;
    t_method        varchar2(1);
    v_whole_commit  varchar2(10);
    v_sql_errm      varchar2(4000);
  begin
    begin
      select b.*
        into t_resident_info
        from resident_patient a, resident_info b
       where a.patientid = in_patientid
         and a.residentid = in_residentid
         and a.record_no = b.record_no
         and rownum = 1;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                get_patient_name(in_patientid) ||
                                '没有住院.;');
    end;
    user_permit.s_ack_记帐权(t_resident_info.deptid);
    t_my_deptid := get_login_deptid;
    if t_resident_info.deptid <> t_my_deptid
    then
      if is_worker_login_dept(hospital.login.get_workerid, t_my_deptid) <> 0
      then
        raise_application_error(-20001,
                                '你现在是以' || get_dept_name(t_my_deptid) ||
                                '的身份登录,不允许对' ||
                                get_dept_name(t_resident_info.deptid) ||
                                '病人医嘱进行处理 .;');
      else
        raise_application_error(-20001,
                                get_patient_name(in_patientid) || '是' ||
                                get_dept_name(t_resident_info.deptid) ||
                                '病人，您不能入帐.;');
      end if;
    end if;
    begin
      verify_valid_number(in_this_days, '');
      t_method := 'N';
    exception
      when others then
        t_method := 'D';
    end;
    v_whole_commit := nvl(get_system_option('医嘱入账_按病人_整体入账'),
                          'Y');
    if t_method = 'N'
    then
      for c in (select *
                  from order_list
                 where ownerid = t_resident_info.residentid
                   and long_flag = 'A'
                   and status = 'NORMAL'
                   and status1 = 'WAIT_ACC'
                   and materialid is not null
                   and (parentid is null or id = parentid)
                   and po_flag = '1'
                   and (in_new_order_list = '1' and
                       nvl(executed_days, 0) - nvl(skip_days, 0) +
                       nvl(this_days, 0) = 0 or in_new_order_list = '0')
                   and execute_deptid not in
                       (select name
                          from system_option
                         where id like '医嘱入账_执行科室自己入账%')
                      
                   and type not in ('OP2'))
      loop
        if v_whole_commit = 'Y'
        then
          prv_医嘱_医嘱_入帐nc(c.id, in_this_days);
        else
          savepoint save1;
          begin
            prv_医嘱_医嘱_入帐nc(c.id, in_this_days);
            commit;
          exception
            when others then
              rollback to savepoint save1;
              v_sql_errm := v_sql_errm || sqlerrm;
          end;
        end if;
      end loop;
    else
      verify_valid_date(in_this_days, '入帐截止日期');
      select to_date(to_char(get_date_from_str(in_this_days), 'YYYYMMDD') ||
                     '000000',
                     'YYYYMMDDHH24MISS')
        into t_end_date
        from dual;
      if t_end_date < sysdate
      then
        raise_application_error(-20001, '入帐截止日期必须大于今天.;');
      end if;
      begin
        select 2
          into i
          from order_list
         where ownerid = t_resident_info.residentid
           and long_flag = 'A'
           and status = 'NORMAL'
           and status1 = 'WAIT_EXEC'
           and materialid is not null
           and po_flag = '1'
           and (in_new_order_list = '1' and
               nvl(executed_days, 0) - nvl(skip_days, 0) +
               nvl(this_days, 0) = 0 or in_new_order_list = '0')
           and (start_date + nvl(executed_days, 0) + nvl(this_days, 0) <
               t_end_date)
           and type not in ('OP2')
           and rownum = 1;
        raise_application_error(-20001,
                                get_patient_name(in_patientid) ||
                                '还有待执行的长期口服药医嘱，请执行医嘱以后再入帐.;');
      exception
        when no_data_found then
          null;
      end;
      for c in (select *
                  from order_list
                 where ownerid = t_resident_info.residentid
                   and long_flag = 'A'
                   and status = 'NORMAL'
                   and status1 = 'WAIT_ACC'
                   and materialid is not null
                   and (parentid is null or id = parentid)
                   and po_flag = '1'
                   and (in_new_order_list = '1' and
                       nvl(executed_days, 0) - nvl(skip_days, 0) +
                       nvl(this_days, 0) = 0 or in_new_order_list = '0')
                   and (start_date + nvl(executed_days, 0) < t_end_date)
                   and type not in ('OP2'))
      loop
        if v_whole_commit = 'Y'
        then
          prv_医嘱_医嘱_入帐nc(c.id,
                               ceil(t_end_date - c.start_date -
                                    c.executed_days));
        else
          savepoint save1;
          begin
            prv_医嘱_医嘱_入帐nc(c.id,
                                 ceil(t_end_date - c.start_date -
                                      c.executed_days));
            commit;
          exception
            when others then
              rollback to savepoint save1;
              v_sql_errm := v_sql_errm || sqlerrm;
          end;
        end if;
      end loop;
    end if;
    commit;
    if v_sql_errm is not null
    then
      raise_application_error(-20001, v_sql_errm);
    end if;
  end s_医嘱_长口_入帐_按病人;
  --------------------------------------------------------------------------------
  --     tiger    2013/11/06 -  手工计价长期杂费医嘱，从这里排除。
  --     tiger    2009/02/14 - 排除处理术中医嘱
  --     tiger    2001/10/15 - 增加职员的登录部门、门诊核算部门和住院核算部门管理
  procedure s_医嘱_长杂费_入帐_按病人(in_patientid      in varchar2
                                     ,in_residentid     in varchar2
                                     ,in_this_days      in varchar2
                                     ,in_new_order_list in varchar2) as
    t_my_deptid     all_department.id%type;
    t_resident_info resident_info%rowtype;
    t_end_date      date;
    i               number;
    t_method        varchar2(1);
    v_whole_commit  varchar2(10);
    v_sql_errm      varchar2(4000);
  begin
    begin
      select b.*
        into t_resident_info
        from resident_patient a, resident_info b
       where a.patientid = in_patientid
         and a.residentid = in_residentid
         and a.record_no = b.record_no
         and rownum = 1;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                get_patient_name(in_patientid) ||
                                '没有住院.;');
    end;
    t_my_deptid := get_login_deptid;
    if t_resident_info.deptid <> t_my_deptid
    then
      if is_worker_login_dept(hospital.login.get_workerid, t_my_deptid) <> 0
      then
        raise_application_error(-20001,
                                '你现在是以' || get_dept_name(t_my_deptid) ||
                                '的身份登录,不允许对' ||
                                get_dept_name(t_resident_info.deptid) ||
                                '病人医嘱进行处理 .;');
      else
        raise_application_error(-20001,
                                get_patient_name(in_patientid) || '是' ||
                                get_dept_name(t_resident_info.deptid) ||
                                '病人，您不能入帐.;');
      end if;
    end if;
  
    begin
      verify_valid_number(in_this_days, '');
      t_method := 'N';
    exception
      when others then
        t_method := 'D';
    end;
  
    v_whole_commit := nvl(get_system_option('医嘱入账_按病人_整体入账'),
                          'Y');
  
    if t_method = 'N'
    then
      for c in (select *
                  from order_list
                 where ownerid = t_resident_info.residentid
                   and long_flag = 'A'
                   and status = 'NORMAL'
                   and status1 = 'WAIT_ACC'
                   and sundry_feeid is not null
                   and (parentid is null or id = parentid)
                   and (in_new_order_list = '1' and
                       nvl(executed_days, 0) - nvl(skip_days, 0) +
                       nvl(this_days, 0) = 0 or in_new_order_list = '0')
                   and execute_deptid not in
                       (select name
                          from system_option
                         where id like '医嘱入账_执行科室自己入账%')
                   and type not in ('OP2')
                   and attribute not in ('C') /*非手工入账医嘱*/
                )
      loop
        if v_whole_commit = 'Y'
        then
          prv_医嘱_医嘱_入帐nc(c.id, in_this_days);
        else
          savepoint save1;
          begin
            prv_医嘱_医嘱_入帐nc(c.id, in_this_days);
            commit;
          exception
            when others then
              rollback to savepoint save1;
              v_sql_errm := v_sql_errm || sqlerrm;
          end;
        end if;
      end loop;
    else
      verify_valid_date(in_this_days, '入帐截止日期');
      select to_date(to_char(get_date_from_str(in_this_days), 'YYYYMMDD') ||
                     '000000',
                     'YYYYMMDDHH24MISS')
        into t_end_date
        from dual;
      if t_end_date < sysdate
      then
        raise_application_error(-20001, '入帐截止日期必须大于今天.;');
      end if;
      begin
        select 2
          into i
          from order_list
         where ownerid = t_resident_info.residentid
           and long_flag = 'A'
           and status = 'NORMAL'
           and status1 = 'WAIT_EXEC'
           and sundry_feeid is not null
           and (in_new_order_list = '1' and
               nvl(executed_days, 0) - nvl(skip_days, 0) +
               nvl(this_days, 0) = 0 or in_new_order_list = '0')
           and (start_date + nvl(executed_days, 0) + nvl(this_days, 0) <
               t_end_date and execute_deptid = t_my_deptid and
               (parentid is null or parentid = id))
           and type not in ('OP2')
           and attribute not in ('C') /*非手工入账医嘱*/
           and rownum = 1;
        raise_application_error(-20001,
                                get_patient_name(in_patientid) ||
                                '还有待执行的长期杂费，请执行医嘱以后再入帐.;');
      exception
        when no_data_found then
          null;
      end;
      for c in (select *
                  from order_list
                 where ownerid = t_resident_info.residentid
                   and long_flag = 'A'
                   and status = 'NORMAL'
                   and status1 = 'WAIT_ACC'
                   and sundry_feeid is not null
                   and (parentid is null or id = parentid)
                   and (in_new_order_list = '1' and
                       nvl(executed_days, 0) - nvl(skip_days, 0) +
                       nvl(this_days, 0) = 0 or in_new_order_list = '0')
                   and (start_date + nvl(executed_days, 0) < t_end_date)
                   and type not in ('OP2')
                   and attribute not in ('C') /*非手工入账医嘱*/
                )
      loop
        if v_whole_commit = 'Y'
        then
          prv_医嘱_医嘱_入帐nc(c.id,
                               ceil(t_end_date - c.start_date -
                                    c.executed_days));
        else
          savepoint save1;
          begin
            prv_医嘱_医嘱_入帐nc(c.id,
                                 ceil(t_end_date - c.start_date -
                                      c.executed_days));
            commit;
          exception
            when others then
              rollback to savepoint save1;
              v_sql_errm := v_sql_errm || sqlerrm;
          end;
        end if;
      end loop;
    end if;
    commit;
    if v_sql_errm is not null
    then
      raise_application_error(-20001, v_sql_errm);
    end if;
  end;
  --------------------------------------------------------------------------------
  procedure prv_护士处理医嘱(in_residentid in varchar2) is
    v_deptid             varchar2(10);
    v_patientid          varchar2(10);
    v_dr_order_list_info dr_order_list_info%rowtype;
    v_status             dr_order_list_info.status%type;
  begin
    begin
      select a.deptid, a.patientid
        into v_deptid, v_patientid
        from resident_info a, resident_patient b
       where a.residentid = in_residentid
         and b.residentid = in_residentid
         and a.record_no = b.record_no
         and rownum = 1
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001, '不是当前住院病人.;');
      when others then
        raise_application_error(-20001, '其他人正在操作,请稍候处理.;');
    end;
    v_status := ol_input.get_护士判断医嘱处理状态(in_residentid);
    --修改状态信息
    begin
      select *
        into v_dr_order_list_info
        from dr_order_list_info
       where residentid = in_residentid
         for update nowait;
      update dr_order_list_info
         set status      = v_status,
             update_date = sysdate,
             patientid   = v_patientid,
             deptid      = v_deptid
       where residentid = in_residentid;
    exception
      when no_data_found then
        insert into dr_order_list_info
          (workerid, residentid, status, update_date, patientid, deptid)
        values
          (hospital.login.get_workerid,
           in_residentid,
           v_status,
           sysdate,
           v_patientid,
           v_deptid);
    end;
  end prv_护士处理医嘱;
  --------------------------------------------------------------------------------  
  procedure s_医嘱_长_杂费_入帐nc(t_order_list    in order_list%rowtype
                                 ,t_resident_info in resident_info%rowtype
                                 ,in_this_days    in varchar2) is
    t_order_list_parentid order_list.id%type;
  begin
    if t_order_list.status = 'NORMAL'
       and t_order_list.status1 = 'WAIT_ACC'
       and t_order_list.execute_deptid = t_resident_info.deptid
    then
      prv_医嘱_医嘱_入帐处理(t_order_list, t_resident_info, in_this_days);
    end if;
  
    if t_order_list.parentid is null
    then
      t_order_list_parentid := t_order_list.id;
    else
      t_order_list_parentid := t_order_list.parentid;
    end if;
    if t_order_list.execute_deptid = t_resident_info.deptid
    then
      for c in (select *
                  from order_list
                 where parentid = t_order_list_parentid
                   and id <> t_order_list.id
                   and status = 'NORMAL'
                   and status1 = 'WAIT_ACC')
      loop
        prv_医嘱_医嘱_入帐处理(c, t_resident_info, in_this_days);
      end loop;
    end if;
    if (t_order_list.status in ('NORMAL') and
       t_order_list.status1 = 'WAIT_ACC' and
       t_order_list.this_account_seq is null and
       (t_order_list.skip_days is null or t_order_list.skip_days = 0) or
       t_order_list.status = 'WAIT_CHECK')
       and (t_order_list.parentid is null or
       t_order_list.parentid = t_order_list.id)
    then
      prv_护士处理医嘱(t_resident_info.residentid);
    end if;
  end s_医嘱_长_杂费_入帐nc;
  --------------------------------------------------------------------------------
  procedure s_医嘱_临_杂费_入帐nc(t_order_list    in order_list%rowtype
                                 ,t_resident_info in resident_info%rowtype) is
    t_order_list_parentid order_list.id%type;
  begin
    if t_order_list.status = 'NORMAL'
       and t_order_list.status1 = 'WAIT_ACC'
    then
      prv_医嘱_医嘱_入帐处理(t_order_list, t_resident_info, 1);
    end if;
  
    if t_order_list.parentid is null
    then
      t_order_list_parentid := t_order_list.id;
    else
      t_order_list_parentid := t_order_list.parentid;
    end if;
  
    for c in (select *
                from order_list
               where parentid = t_order_list_parentid
                 and id <> t_order_list.id
                 and status = 'NORMAL'
                 and status1 = 'WAIT_ACC')
    loop
      prv_医嘱_医嘱_入帐处理(c, t_resident_info, 1);
    end loop;
  end s_医嘱_临_杂费_入帐nc;
  --------------------------------------------------------------------------------
  --  in_this_day 入账天数
  --  in_amount  总入账次数
  procedure s_医嘱_手工计费_入账(in_order_listid in varchar2
                                ,in_this_days    in varchar2
                                ,in_amount       in varchar2) is
    t_order_list          order_list%rowtype;
    t_resident_info       resident_info%rowtype;
    t_resident_patient    resident_patient%rowtype;
    t_find                varchar2(1);
    t_order_list_parentid order_list.parentid%type;
    v_worker_deptid       all_department.id%type;
  begin
  
    lock_res.lock_ack_医嘱_操作(in_order_listid,
                                t_order_list,
                                t_resident_info);
    if t_order_list.parentid is not null
       and t_order_list.id <> t_order_list.parentid
    then
      lock_res.lock_order_list(t_order_list.parentid, t_order_list);
    end if;
    if t_order_list.attribute <> 'C'
    then
      raise_application_error(-20001, '不是手工计费医嘱，不能再这里入账.;');
    end if;
    if not (t_order_list.sundry_feeid is not null and
        t_order_list.long_flag = 'A')
    then
      raise_application_error(-20001, '不是长期杂费医嘱，不能在这里入账.;');
    end if;
  
    lock_res.lock_resident_by_rid(t_order_list.ownerid,
                                  t_resident_patient,
                                  t_resident_info);
    user_permit.s_ack_记帐权(t_resident_info.deptid);
    v_worker_deptid := get_login_deptid;
  
    --如果指定医嘱入账_执行科室自己入账,则，执行科室入账规则
  
    ol_login_dept.s_ack_医嘱_入账(v_worker_deptid,
                                  t_resident_info.deptid,
                                  t_order_list);
    ol_status.s_ack_医嘱_入账(t_order_list);
  
    t_find := 'N';
    prv_ack_住院费用足够(t_order_list, t_resident_info);
  
    if t_order_list.status = 'NORMAL'
       and t_order_list.status1 = 'WAIT_ACC'
    then
      prv_医嘱_医嘱_入帐处理(t_order_list,
                             t_resident_info,
                             in_this_days,
                             in_amount);
      t_find := 'Y';
    end if;
  
    if t_order_list.parentid is null
    then
      t_order_list_parentid := t_order_list.id;
    else
      t_order_list_parentid := t_order_list.parentid;
    end if;
  
    for c in (select *
                from order_list
               where parentid = t_order_list_parentid
                 and id <> t_order_list.id
                 and status = 'NORMAL'
                 and status1 = 'WAIT_ACC')
    loop
      prv_医嘱_医嘱_入帐处理(c, t_resident_info, in_this_days, in_amount);
      t_find := 'Y';
    end loop;
  
    prv_ack_住院费用足够(t_order_list, t_resident_info);
  
    if t_find = 'N'
    then
      raise_application_error(-20001, '这一组里没有待入帐的医嘱.;');
    else
      ol_input.s_护士处理医嘱(t_resident_info.residentid);
    end if;
    commit;
    rabbitmq.publish_ol_message(in_event        => events.ol_account,
                                in_order_listid => in_order_listid);
  end s_医嘱_手工计费_入账;
  -------------------------------------------------------------------------------
end ol_acc;
/
