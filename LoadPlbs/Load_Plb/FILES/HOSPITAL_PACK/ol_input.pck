create or replace package ol_input is

  -- Author  : ADMINISTRATOR
  -- Created : 2006/12/06 9:30:18
  -- Purpose : 医嘱录入过程处理
  --           把以前医嘱录入相关的过程，组织进该包
  procedure s_医嘱_医嘱_增加_取消(in_order_listid in varchar2);
  procedure s_医嘱_子医嘱_拷贝_医嘱组(in_residentid         in varchar2
                                     ,in_order_list_groupid in varchar2
                                     ,in_start_date         in varchar2
                                     ,in_start_workerid     in varchar2
                                     ,in_type               in varchar2
                                     ,in_check_point        in varchar2 default null
                                     ,out_order_listid      out varchar2);
  procedure s_医嘱_子医嘱_拷贝_医嘱组(in_residentid              in varchar2
                                     ,in_order_list_groupid      in varchar2
                                     ,in_order_list_group_itemid in varchar2
                                     ,in_start_date              in varchar2
                                     ,in_start_workerid          in varchar2
                                     ,in_type                    in varchar2
                                     ,in_check_point             in varchar2 default null
                                     ,out_order_listid           out varchar2);
  procedure s_医嘱_粘贴(in_residentid     in varchar2
                       ,in_order_listid   in varchar2
                       ,in_start_date     in varchar2
                       ,in_start_workerid in varchar2
                       ,in_type           in varchar2
                       ,in_check_point    in varchar2 default null
                       ,out_order_listid  out varchar2);
  procedure s_医嘱_子医嘱_物资_增加(in_parent_order_listid in varchar2
                                   ,in_long_flag           in varchar2
                                   ,in_start_date          in varchar2
                                   ,in_start_workerid      in varchar2
                                   ,in_residentid          in varchar2
                                   ,in_deptid              in varchar2
                                   ,in_materialid          in varchar2
                                   ,in_packageid           in varchar2
                                   ,in_method              in varchar2
                                   ,in_medicament          in varchar2
                                   ,in_use_method          in varchar2
                                   ,in_frequence           in varchar2
                                   ,in_amount              in varchar2
                                   ,in_type                in varchar2
                                   , -- 医嘱类型(护士医嘱、医师医嘱、手术医嘱、出院带药)
                                    in_add_supply          in varchar2
                                   ,in_drop_speed          in varchar2
                                   ,in_drop_speed_unit     in varchar2
                                   ,out_order_listid       out varchar2);
  --带有医嘱类型的医嘱增加
  procedure s_医嘱_子医嘱_杂费_增加(in_parent_order_listid in varchar2
                                   ,in_long_flag           in varchar2
                                   ,in_start_date          in varchar2
                                   ,in_start_workerid      in varchar2
                                   ,in_residentid          in varchar2
                                   ,in_deptid              in varchar2
                                   , --核算科室
                                    in_sundry_feeid        in varchar2
                                   ,in_price               in varchar2
                                   ,in_amount              in varchar2
                                   ,in_type                in varchar2
                                   , -- 医嘱类型(护士医嘱、医师医嘱、手术医嘱、出院带药)
                                    in_add_supply          in varchar2
                                   ,out_order_listid       out varchar2
                                   ,in_method              in varchar2 default null
                                   ,in_hospid              in varchar2 default null
                                   ,in_check_point         in varchar2 default null);
  procedure s_医嘱_子医嘱_杂费_增加_nc(in_parent_order_listid in varchar2
                                      ,in_long_flag           in varchar2
                                      ,in_start_date          in varchar2
                                      ,in_start_workerid      in varchar2
                                      ,in_residentid          in varchar2
                                      ,in_deptid              in varchar2
                                      , --核算科室
                                       in_sundry_feeid        in varchar2
                                      ,in_price               in varchar2
                                      ,in_amount              in varchar2
                                      ,in_type                in varchar2
                                      , -- 医嘱类型(护士医嘱、医师医嘱、手术医嘱、出院带药)
                                       out_add_supply         out varchar2
                                      ,out_order_listid       out varchar2
                                      ,in_method              in varchar2 default null
                                      ,in_hospid              in varchar2 default null
                                      ,in_check_point         in varchar2 default null);
  procedure s_医嘱_子医嘱_文本_增加(in_parent_order_listid in varchar2
                                   ,in_long_flag           in varchar2
                                   ,in_start_date          in varchar2
                                   ,in_start_workerid      in varchar2
                                   ,in_residentid          in varchar2
                                   ,in_type                in varchar2
                                   , -- 医嘱类型(护士医嘱、医师医嘱、手术医嘱、出院带药)
                                    in_text                in varchar2
                                   ,out_order_listid       out varchar2);
  procedure s_医嘱_批注(in_order_listid in varchar2
                       ,in_text         in varchar2);
  procedure s_医嘱_医嘱_确认(in_order_listid in varchar2
                            ,in_type         in varchar2);
  procedure s_医嘱_医嘱_审核(in_order_listid in varchar2);
  procedure s_医嘱_医嘱_确认_nc(in_order_listid in varchar2
                               ,in_type         in varchar2);
  procedure s_医嘱_医嘱_确认_取消(in_order_listid in varchar2
                                 ,in_type         in varchar2);
  procedure s_医嘱_医嘱_确认_取消nc(in_order_listid in varchar2
                                   ,in_type         in varchar2);
  procedure s_医嘱_判断护理级别(in_residentid in varchar2);
  procedure s_护士处理医嘱(in_residentid in varchar2);
  --设置病人病情
  procedure s_设置病情(in_residentid     in varchar2
                      ,in_illness_status in varchar2);
  --判断护理级别
  procedure s_设置护理级别(in_residentid in varchar2);
  function get_医生判断医嘱处理状态(in_residentid in varchar2)
    return varchar2;
  function get_护士判断医嘱处理状态(in_residentid in varchar2)
    return varchar2;
  procedure s_医嘱_子医嘱_物资_增加_nc(in_parent_order_listid in varchar2
                                      ,in_long_flag           in varchar2
                                      ,in_start_date          in varchar2
                                      ,in_start_workerid      in varchar2
                                      ,in_residentid          in varchar2
                                      ,in_deptid              in varchar2
                                      ,in_materialid          in varchar2
                                      ,in_packageid           in varchar2
                                      ,in_method              in varchar2
                                      ,in_medicament          in varchar2
                                      ,in_use_method          in varchar2
                                      ,in_frequence           in varchar2
                                      ,in_amount              in varchar2
                                      ,in_type                in varchar2 -- 医嘱类型(护士医嘱、医师医嘱、手术医嘱、出院带药)
                                      ,in_add_supply          in varchar2
                                      ,in_text                in varchar2 default null
                                      ,in_drop_speed          in varchar2
                                      ,in_drop_speed_unit     in varchar2
                                      ,out_order_listid       out varchar2);
  procedure s_医嘱_子医嘱_文本_增加_nc(in_parent_order_listid in varchar2
                                      ,in_long_flag           in varchar2
                                      ,in_start_date          in varchar2
                                      ,in_start_workerid      in varchar2
                                      ,in_residentid          in varchar2
                                      ,in_type                in varchar2
                                      , -- 医嘱类型(护士医嘱、医师医嘱、手术医嘱、出院带药)
                                       in_text                in varchar2
                                      ,out_order_listid       out varchar2);
  procedure s_医嘱_医嘱_增加_取消_nc(in_order_listid in varchar2);
  --医嘱核对
  procedure s_医嘱_核对(in_order_listid in varchar2);
  procedure s_医嘱_核对_取消(in_order_listid in varchar2);
  --医嘱选择、
  procedure s_医嘱_选择(in_id           in varchar2
                       ,in_order_listid in varchar2
                       ,out_id          out varchar2);
  procedure s_医嘱_选择_删除(in_id in varchar2);
  procedure s_医嘱_修改医嘱长期标志(in_order_listid in varchar2
                                   ,in_long_flag    in varchar2);

  function get_医嘱_出院日期(in_residentid in varchar2) return date;
  procedure s_医生处理医嘱nc(in_residentid in varchar2);
  procedure s_医生确认处理医嘱nc(in_residentid in varchar2);

  procedure s_医嘱_皮试签名(in_order_listid     in varchar2
                           ,in_skin_test_result in varchar2
                           ,in_sign_workerid    in varchar2
                           ,in_sign_date        in varchar2);

  procedure s_医嘱_皮试双签名(in_order_listid     in varchar2
                             ,in_skin_test_result in varchar2
                             ,in_sign_workerid    in varchar2
                             ,in_sign_date        in varchar2);
  procedure s_修改医嘱警示灯标识(in_order_listid in varchar2
                                ,in_light_flag   in varchar2);
  function get_next_skintest_compare_id return varchar2;
  procedure s_皮试药品对照(in_materialid         in varchar2
                          ,in_compare_materialid in varchar2
                          ,in_remark             in varchar2
                          ,out_id                out varchar2);
  procedure s_皮试药品取消对照(in_id in varchar2);

end ol_input;
/
create or replace package body hospital.ol_input is

  /***************************************************/
  /* 私有过程定义                                    */
  /***************************************************/
  ack_status  varchar2(10);
  ack_status1 varchar2(10);
  procedure prv_医嘱_长_物资_增加(out_order_listid   out varchar2
                                 ,in_start_workerid  in varchar2
                                 ,in_start_date      in varchar2
                                 ,in_residentid      in varchar2
                                 ,in_material_deptid in varchar2
                                 ,in_materialid      in varchar2
                                 ,in_packageid       in varchar2
                                 ,in_medicament      in varchar2
                                 ,in_use_method      in varchar2
                                 ,in_frequence       in varchar2
                                 ,in_amount          in varchar2
                                 ,in_remark          in varchar2
                                 ,in_type            in varchar2
                                 ,in_po_flag         in varchar2
                                 ,in_drop_speed      in varchar2
                                 ,in_drop_speed_unit in varchar2);

  procedure prv_医嘱_长_物资_增加处理(out_order_listid   out varchar2
                                     ,in_start_workerid  in varchar2
                                     ,in_start_date      in varchar2
                                     ,in_residentid      in varchar2
                                     ,in_material_deptid in varchar2
                                     ,in_materialid      in varchar2
                                     ,in_packageid       in varchar2
                                     ,in_medicament      in varchar2
                                     ,in_use_method      in varchar2
                                     ,in_frequence       in varchar2
                                     ,in_amount          in varchar2
                                     ,in_remark          in varchar2
                                     ,in_type            in varchar2
                                     ,in_po_flag         in varchar2
                                     ,in_drop_speed      in varchar2
                                     ,in_drop_speed_unit in varchar2);

  procedure prv_医嘱_长_杂费_增加(out_order_listid  out varchar2
                                 ,in_start_workerid in varchar2
                                 ,in_start_date     in varchar2
                                 ,in_residentid     in varchar2
                                 ,in_execute_deptid in varchar2
                                 , --核算科室
                                  in_sundry_feeid   in varchar2
                                 ,in_price          in varchar2
                                 ,in_amount         in varchar2
                                 ,in_remark         in varchar2
                                 ,in_type           in varchar2
                                 ,in_method         in varchar2
                                 ,in_hospid         in varchar2
                                 ,in_check_point    in varchar2);

  procedure prv_医嘱_临_物资_增加(out_order_listid   out varchar2
                                 ,in_start_workerid  in varchar2
                                 ,in_start_date      in varchar2
                                 ,in_residentid      in varchar2
                                 ,in_material_deptid in varchar2
                                 ,in_materialid      in varchar2
                                 ,in_packageid       in varchar2
                                 ,in_method          in varchar2
                                 ,in_medicament      in varchar2
                                 ,in_use_method      in varchar2
                                 ,in_frequence       in varchar2
                                 ,in_amount          in varchar2
                                 ,in_remark          in varchar2
                                 ,in_type            in varchar2
                                 ,in_po_flag         in varchar2
                                 ,in_drop_speed      in varchar2
                                 ,in_drop_speed_unit in varchar2);
  procedure prv_医嘱_临_杂费_增加(out_order_listid  out varchar2
                                 ,in_start_workerid in varchar2
                                 ,in_start_date     in varchar2
                                 ,in_residentid     in varchar2
                                 ,in_execute_deptid in varchar2
                                 , --核算科室
                                  in_sundry_feeid   in varchar2
                                 ,in_price          in varchar2
                                 ,in_amount         in varchar2
                                 ,in_remark         in varchar2
                                 ,in_type           in varchar2
                                 ,in_method         in varchar2
                                 ,in_hospid         in varchar2
                                 ,in_check_point    in varchar2
                                 ,in_account_type   in varchar2 default null);
  procedure prv_医嘱_医嘱_物资_增加(out_order_listid   out varchar2
                                   ,in_long_flag       in varchar2
                                   ,in_start_date      in varchar2
                                   ,in_start_workerid  in varchar2
                                   ,in_residentid      in varchar2
                                   ,in_deptid          in varchar2
                                   ,in_materialid      in varchar2
                                   ,in_packageid       in varchar2
                                   ,in_method          in varchar2
                                   ,in_medicament      in varchar2
                                   ,in_use_method      in varchar2
                                   ,in_frequence       in varchar2
                                   ,in_amount          in varchar2
                                   ,in_remark          in varchar2
                                   ,in_type            in varchar2
                                   ,in_po_flag         in varchar2
                                   ,in_drop_speed      in varchar2
                                   ,in_drop_speed_unit in varchar2);
  procedure prv_医嘱_医嘱_杂费_增加(out_order_listid  out varchar2
                                   ,in_long_flag      in varchar2
                                   ,in_start_date     in varchar2
                                   ,in_start_workerid in varchar2
                                   ,in_residentid     in varchar2
                                   ,in_deptid         in varchar2
                                   , --核算科室
                                    in_sundry_feeid   in varchar2
                                   ,in_price          in varchar2
                                   ,in_amount         in varchar2
                                   ,in_remark         in varchar2
                                   ,in_type           in varchar2
                                   ,in_method         in varchar2
                                   ,in_hospid         in varchar2
                                   ,in_check_point    in varchar2
                                   ,in_account_type   in varchar2 default null);
  procedure prv_医嘱_医嘱_文本_增加(out_order_listid  out varchar2
                                   ,in_long_flag      in varchar2
                                   ,in_start_date     in varchar2
                                   ,in_start_workerid in varchar2
                                   ,in_residentid     in varchar2
                                   ,in_type           in varchar2
                                   ,in_text           in varchar2);
  procedure prv_医嘱_医嘱_增加_取消处理(in_order_listid in varchar2);
  procedure prv_医嘱_医嘱_增加_取消标记(in_order_listid in varchar2);

  procedure prv_医嘱_用药方法_杂费_增加(out_order_listid  out varchar2
                                       ,in_long_flag      in varchar2
                                       ,in_start_date     in varchar2
                                       ,in_start_workerid in varchar2
                                       ,in_residentid     in varchar2
                                       ,in_deptid         in varchar2
                                       , --核算科室
                                        in_sundry_feeid   in varchar2
                                       ,in_price          in varchar2
                                       ,in_amount         in varchar2
                                       ,in_remark         in varchar2
                                       ,in_type           in varchar2
                                       ,in_check_point    in varchar2);
  procedure prv_医嘱_用药方法_物资_增加(out_order_listid   out varchar2
                                       ,in_start_workerid  in varchar2
                                       ,in_residentid      in varchar2
                                       ,in_material_deptid in varchar2
                                       ,in_materialid      in varchar2
                                       ,in_packageid       in varchar2
                                       ,in_long_flag       in varchar2
                                       ,in_method          in varchar2
                                       ,in_amount          in varchar2
                                       ,in_remark          in varchar2
                                       ,in_type            in varchar2
                                       ,in_drop_speed      in varchar2
                                       ,in_drop_speed_unit in varchar2);
  procedure prv_医嘱_子医嘱_设置(in_parent_order_listid in varchar2
                                ,in_child_order_listid  in varchar2
                                ,in_order_list_type     in varchar2 default null);
  procedure prv_医嘱_医嘱_确认_处理(in_order_listid in varchar2);

  procedure prv_医嘱_医嘱_确认_取消处理(in_order_listid in varchar2);
  procedure prv_护士处理医嘱(in_residentid in varchar2);
  procedure prv_判断护理级别(in_residentid in varchar2);
  procedure prv_记录医嘱组_录入错误(in_residentid         in varchar2
                                   ,in_order_list_groupid in varchar2
                                   ,in_error_message      in varchar2);
  /***************************************************/
  /* 公有过程实现                                    */
  /***************************************************/
  ----------------------------------------------------------------------------
  --
  --     tiger      2006/11/28 - 拷贝医嘱出错后，调过出错的医嘱继续下一条
  --     tiger      2006/03/08 - 子医嘱为杂费时，参数输入错误。
  --     tiger      2005/08/30 - 对于'AUTO_COPY'拷贝医嘱失败后继续以后的拷贝，忽略任何错误
  --                           - 对于'COPY'拷贝医嘱失败完全回退
  --     tiger      2004/12/11 - 拷贝医嘱失败后继续以后的拷贝，忽略任何错误
  --     tiger      2001/10/16 - 增加职员的登录部门、门诊核算部门和住院核算部门管理
  --
  procedure s_医嘱_子医嘱_拷贝_医嘱组(in_residentid         in varchar2
                                     ,in_order_list_groupid in varchar2
                                     ,in_start_date         in varchar2
                                     ,in_start_workerid     in varchar2
                                     ,in_type               in varchar2
                                     ,in_check_point        in varchar2 default null
                                     ,out_order_listid      out varchar2) as
    t_order_listid        order_list.id%type;
    t_parent_order_listid order_list.id%type;
    t_order_list_group    order_list_group%rowtype;
    t_execute_deptid      all_department.id%type;
    t_frequence           varchar2(30);
    t_resident_info       resident_info%rowtype;
    t_skip                varchar2(10);
    t_error               varchar2(4000);
  begin
    lock_res.lock_ack_医嘱_操作(in_residentid, t_resident_info);
    if nvl(get_system_option('临床路径_患者禁止使用HIS录入医嘱'), 'N') = 'Y'
       and in_type = 'DOCTOR'
    then
      if hospital.get_是否路径病人(in_residentid) = 'Y'
      then
        raise_application_error(-20001, '请使用临床路径系统录入医嘱.;');
      end if;
    end if;
    begin
      select *
        into t_order_list_group
        from order_list_group
       where id = in_order_list_groupid
         and rownum = 1
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '编号为' || in_order_list_groupid ||
                                '的医嘱不存在.;');
      when others then
        raise_application_error(-20001, '其他人正在操作，请稍候重试.;');
    end;
    if t_order_list_group.status = 'EDITING'
    then
      raise_application_error(-20001, '该医嘱组正在编辑状态,不能插入.;');
    end if;
    if t_order_list_group.type <> 'GROUP'
    then
      raise_application_error(-20001,
                              '不支持的医嘱组' || t_order_list_group.type ||
                              '录入功能.;');
    end if;
    if t_order_list_group.generate_mode not in ('COPY', 'AUTO_COPY')
    then
      raise_application_error(-20001,
                              '不支持的医嘱组' ||
                              t_order_list_group.generate_mode ||
                              '录入方式.;');
    end if;
    for c_parent in (select *
                       from order_list_group_item
                      where groupid = in_order_list_groupid
                        and (parentid is null or
                            parentid is not null and id = parentid)
                      order by sequence)
    loop
      if c_parent.materialid is not null
      then
        if c_parent.method is not null
        then
          t_frequence := substrb(c_parent.method,
                                 instrb(c_parent.method, ' ', -1) + 1);
        else
          t_frequence := 1;
        end if;
        t_skip := 'N';
        begin
          s_医嘱_子医嘱_物资_增加(null,
                                  c_parent.long_flag,
                                  in_start_date,
                                  nvl(in_start_workerid,
                                      t_resident_info.charge_doctorid),
                                  in_residentid,
                                  c_parent.material_deptid,
                                  c_parent.materialid,
                                  c_parent.packageid,
                                  c_parent.method,
                                  to_char(c_parent.medicament),
                                  c_parent.use_method,
                                  t_frequence,
                                  to_char(c_parent.amount),
                                  in_type,
                                  'NO',
                                  c_parent.drop_speed,
                                  c_parent.drop_speed_unit,
                                  t_parent_order_listid);
        exception
          when others then
            raise_application_error(-20001, '医嘱录入错误:' || sqlerrm);
            t_error := substrb(t_error || sqlerrm || chr(10), 1, 4000);
            t_skip  := 'Y';
        end;
      elsif c_parent.sundry_feeid is not null
      then
        if c_parent.execute_dept_flag = 'PATIENT_DEPT'
        then
          t_execute_deptid := t_resident_info.deptid;
        elsif c_parent.execute_dept_flag = 'INPUT_DEPT'
        then
          t_execute_deptid := get_login_deptid;
        elsif c_parent.execute_dept_flag = 'STATIC'
        then
          t_execute_deptid := c_parent.execute_deptid;
        else
          raise_application_error(-20001,
                                  '不支持的执行部门标志' ||
                                  c_parent.execute_dept_flag || '.;');
        end if;
        t_skip := 'N';
        --begin
        s_医嘱_子医嘱_杂费_增加(null,
                                c_parent.long_flag,
                                in_start_date,
                                t_resident_info.charge_doctorid,
                                in_residentid,
                                t_execute_deptid,
                                c_parent.sundry_feeid,
                                c_parent.price,
                                c_parent.amount,
                                in_type,
                                'NO',
                                t_parent_order_listid,
                                null,
                                null,
                                in_check_point);
        --exception
        --  when others then
        --    t_error := substrb(t_error || sqlerrm || chr(10), 1, 4000);
        --    t_skip  := 'Y';
        --end;
      else
        --文本医嘱
        s_医嘱_子医嘱_文本_增加(null,
                                c_parent.long_flag,
                                in_start_date,
                                t_resident_info.charge_doctorid,
                                in_residentid,
                                in_type,
                                c_parent.text,
                                out_order_listid);
      end if;
      out_order_listid := t_parent_order_listid;
      if t_skip = 'N'
      then
        for c_child in (select *
                          from order_list_group_item
                         where groupid = in_order_list_groupid
                           and parentid = c_parent.id
                           and id <> c_parent.id
                         order by update_date)
        loop
          if c_child.materialid is not null
          then
            begin
              s_医嘱_子医嘱_物资_增加(t_parent_order_listid,
                                      c_child.long_flag,
                                      in_start_date,
                                      t_resident_info.charge_doctorid,
                                      in_residentid,
                                      c_child.material_deptid,
                                      c_child.materialid,
                                      c_child.packageid,
                                      c_child.method,
                                      to_char(c_child.medicament),
                                      c_child.use_method,
                                      t_frequence,
                                      to_char(c_child.amount),
                                      in_type,
                                      'NO',
                                      c_child.drop_speed,
                                      c_child.drop_speed_unit,
                                      t_order_listid);
            exception
              when others then
                t_error := substrb(t_error || sqlerrm || chr(10), 1, 4000);
            end;
          elsif c_child.sundry_feeid is not null
          then
            if c_child.execute_dept_flag = 'PATIENT_DEPT'
            then
              t_execute_deptid := t_resident_info.deptid;
            elsif c_child.execute_dept_flag = 'INPUT_DEPT'
            then
              t_execute_deptid := get_login_deptid;
            elsif c_child.execute_dept_flag = 'STATIC'
            then
              t_execute_deptid := c_child.execute_deptid;
            else
              raise_application_error(-20001,
                                      '不支持的执行部门标志' ||
                                      c_parent.execute_dept_flag || '.;');
            end if;
            begin
              s_医嘱_子医嘱_杂费_增加(t_parent_order_listid,
                                      c_parent.long_flag,
                                      in_start_date,
                                      t_resident_info.charge_doctorid,
                                      in_residentid,
                                      t_execute_deptid,
                                      c_child.sundry_feeid,
                                      c_child.price,
                                      c_child.amount,
                                      in_type,
                                      'NO',
                                      t_order_listid,
                                      null,
                                      null,
                                      in_check_point);
            exception
              when others then
                t_error := substrb(t_error || sqlerrm || chr(10), 1, 4000);
            end;
          else
            --文本医嘱
            s_医嘱_子医嘱_文本_增加(null,
                                    c_parent.long_flag,
                                    in_start_date,
                                    t_resident_info.charge_doctorid,
                                    in_residentid,
                                    in_type,
                                    c_child.text,
                                    out_order_listid);
          end if;
          out_order_listid := t_order_listid;
        end loop;
      end if;
    end loop;
    commit;
    if t_error is not null
    then
      prv_记录医嘱组_录入错误(in_residentid,
                              in_order_list_groupid,
                              t_error);
      commit;
      raise_application_error(-20001, t_error);
    end if;
  end;
  ----------------------------------------------------------------------------
  --     tahuiping  2016/11/23 - 增加医嘱明细id，循环调用
  --     tiger      2006/11/28 - 拷贝医嘱出错后，调过出错的医嘱继续下一条
  --     tiger      2006/03/08 - 子医嘱为杂费时，参数输入错误。
  --     tiger      2005/08/30 - 对于'AUTO_COPY'拷贝医嘱失败后继续以后的拷贝，忽略任何错误
  --                           - 对于'COPY'拷贝医嘱失败完全回退
  --     tiger      2004/12/11 - 拷贝医嘱失败后继续以后的拷贝，忽略任何错误
  --     tiger      2001/10/16 - 增加职员的登录部门、门诊核算部门和住院核算部门管理
  --
  procedure s_医嘱_子医嘱_拷贝_医嘱组(in_residentid              in varchar2
                                     ,in_order_list_groupid      in varchar2
                                     ,in_order_list_group_itemid in varchar2
                                     ,in_start_date              in varchar2
                                     ,in_start_workerid          in varchar2
                                     ,in_type                    in varchar2
                                     ,in_check_point             in varchar2 default null
                                     ,out_order_listid           out varchar2) as
    t_order_listid          order_list.id%type;
    t_parent_order_listid   order_list.id%type;
    t_order_list_group      order_list_group%rowtype;
    t_order_list_group_item order_list_group_item%rowtype;
    v_parentid              order_list_group_item.parentid%type;
    t_execute_deptid        all_department.id%type;
    t_frequence             varchar2(30);
    t_resident_info         resident_info%rowtype;
    t_skip                  varchar2(10);
    t_error                 varchar2(4000);
  begin
    lock_res.lock_ack_医嘱_操作(in_residentid, t_resident_info);
    if nvl(get_system_option('临床路径_患者禁止使用HIS录入医嘱'), 'N') = 'Y'
       and in_type = 'DOCTOR'
    then
      if hospital.get_是否路径病人(in_residentid) = 'Y'
      then
        raise_application_error(-20001, '请使用临床路径系统录入医嘱.;');
      end if;
    end if;
    begin
      select *
        into t_order_list_group
        from order_list_group
       where id = in_order_list_groupid
         and rownum = 1
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '编号为' || in_order_list_groupid ||
                                '的医嘱不存在.;');
      when others then
        raise_application_error(-20001, '其他人正在操作，请稍候重试.;');
    end;
    if t_order_list_group.status = 'EDITING'
    then
      raise_application_error(-20001, '该医嘱组正在编辑状态,不能插入.;');
    end if;
    if t_order_list_group.type <> 'GROUP'
    then
      raise_application_error(-20001,
                              '不支持的医嘱组' || t_order_list_group.type ||
                              '录入功能.;');
    end if;
    if t_order_list_group.generate_mode not in ('COPY', 'AUTO_COPY')
    then
      raise_application_error(-20001,
                              '不支持的医嘱组' ||
                              t_order_list_group.generate_mode ||
                              '录入方式.;');
    end if;
    begin
      select parentid
        into v_parentid
        from order_list_group_item
       where id = in_order_list_group_itemid
         and groupid = in_order_list_groupid
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '编号为' || in_order_list_group_itemid ||
                                '的医嘱不存在！');
    end;
    if v_parentid is null
    then
      begin
        select *
          into t_order_list_group_item
          from order_list_group_item
         where id = in_order_list_group_itemid
           and groupid = in_order_list_groupid
           and parentid is null;
      exception
        when no_data_found then
          null;
      end;
    
      if t_order_list_group_item.materialid is not null
      then
        if t_order_list_group_item.method is not null
        then
          t_frequence := substrb(t_order_list_group_item.method,
                                 instrb(t_order_list_group_item.method,
                                        ' ',
                                        -1) + 1);
        else
          t_frequence := 1;
        end if;
        s_医嘱_子医嘱_物资_增加(null,
                                t_order_list_group_item.long_flag,
                                in_start_date,
                                nvl(in_start_workerid,
                                    t_resident_info.charge_doctorid),
                                in_residentid,
                                t_order_list_group_item.material_deptid,
                                t_order_list_group_item.materialid,
                                t_order_list_group_item.packageid,
                                t_order_list_group_item.method,
                                to_char(t_order_list_group_item.medicament),
                                t_order_list_group_item.use_method,
                                t_frequence,
                                to_char(t_order_list_group_item.amount),
                                in_type,
                                'NO',
                                t_order_list_group_item.drop_speed,
                                t_order_list_group_item.drop_speed_unit,
                                t_parent_order_listid);
      elsif t_order_list_group_item.sundry_feeid is not null
      then
        if t_order_list_group_item.execute_dept_flag = 'PATIENT_DEPT'
        then
          t_execute_deptid := t_resident_info.deptid;
        elsif t_order_list_group_item.execute_dept_flag = 'INPUT_DEPT'
        then
          t_execute_deptid := get_login_deptid;
        elsif t_order_list_group_item.execute_dept_flag = 'STATIC'
        then
          t_execute_deptid := t_order_list_group_item.execute_deptid;
        else
          raise_application_error(-20001,
                                  '不支持的执行部门标志' ||
                                  t_order_list_group_item.execute_dept_flag || '.;');
        end if;
        s_医嘱_子医嘱_杂费_增加(null,
                                t_order_list_group_item.long_flag,
                                in_start_date,
                                nvl(in_start_workerid,
                                    t_resident_info.charge_doctorid),
                                in_residentid,
                                t_execute_deptid,
                                t_order_list_group_item.sundry_feeid,
                                t_order_list_group_item.price,
                                t_order_list_group_item.amount,
                                in_type,
                                'NO',
                                t_parent_order_listid,
                                null,
                                null,
                                in_check_point);
      else
        s_医嘱_子医嘱_文本_增加(null,
                                t_order_list_group_item.long_flag,
                                in_start_date,
                                nvl(in_start_workerid,
                                    t_resident_info.charge_doctorid),
                                in_residentid,
                                in_type,
                                t_order_list_group_item.text,
                                out_order_listid);
      end if;
      out_order_listid := t_parent_order_listid;
    else
      for c_parent in (select *
                         from order_list_group_item
                        where groupid = in_order_list_groupid
                          and id = in_order_list_group_itemid
                          and (parentid is not null and id = parentid)
                        order by sequence)
      loop
        if c_parent.materialid is not null
        then
          if c_parent.method is not null
          then
            t_frequence := substrb(c_parent.method,
                                   instrb(c_parent.method, ' ', -1) + 1);
          else
            t_frequence := null;
          end if;
          t_skip := 'N';
        
          s_医嘱_子医嘱_物资_增加(null,
                                  c_parent.long_flag,
                                  in_start_date,
                                  nvl(in_start_workerid,
                                      t_resident_info.charge_doctorid),
                                  in_residentid,
                                  c_parent.material_deptid,
                                  c_parent.materialid,
                                  c_parent.packageid,
                                  c_parent.method,
                                  to_char(c_parent.medicament),
                                  c_parent.use_method,
                                  t_frequence,
                                  to_char(c_parent.amount),
                                  in_type,
                                  'NO',
                                  c_parent.drop_speed,
                                  c_parent.drop_speed_unit,
                                  t_parent_order_listid);
        elsif c_parent.sundry_feeid is not null
        then
          if c_parent.execute_dept_flag = 'PATIENT_DEPT'
          then
            t_execute_deptid := t_resident_info.deptid;
          elsif c_parent.execute_dept_flag = 'INPUT_DEPT'
          then
            t_execute_deptid := get_login_deptid;
          elsif c_parent.execute_dept_flag = 'STATIC'
          then
            t_execute_deptid := c_parent.execute_deptid;
          else
            raise_application_error(-20001,
                                    '不支持的执行部门标志' ||
                                    c_parent.execute_dept_flag || '.;');
          end if;
          t_skip := 'N';
          s_医嘱_子医嘱_杂费_增加(null,
                                  c_parent.long_flag,
                                  in_start_date,
                                  nvl(in_start_workerid,
                                    t_resident_info.charge_doctorid),
                                  in_residentid,
                                  t_execute_deptid,
                                  c_parent.sundry_feeid,
                                  c_parent.price,
                                  c_parent.amount,
                                  in_type,
                                  'NO',
                                  t_parent_order_listid,
                                  null,
                                  null,
                                  in_check_point);
        else
          --文本医嘱
          s_医嘱_子医嘱_文本_增加(null,
                                  c_parent.long_flag,
                                  in_start_date,
                                  nvl(in_start_workerid,
                                    t_resident_info.charge_doctorid),
                                  in_residentid,
                                  in_type,
                                  c_parent.text,
                                  out_order_listid);
        end if;
        out_order_listid := t_parent_order_listid;
        if t_skip = 'N'
        then
          for c_child in (select *
                            from order_list_group_item
                           where groupid = in_order_list_groupid
                             and parentid = c_parent.id
                             and id <> c_parent.id
                           order by update_date)
          loop
            if c_child.materialid is not null
            then
              begin
                s_医嘱_子医嘱_物资_增加(t_parent_order_listid,
                                        c_child.long_flag,
                                        in_start_date,
                                        nvl(in_start_workerid,
                                        t_resident_info.charge_doctorid),
                                        in_residentid,
                                        c_child.material_deptid,
                                        c_child.materialid,
                                        c_child.packageid,
                                        c_child.method,
                                        to_char(c_child.medicament),
                                        c_child.use_method,
                                        t_frequence,
                                        to_char(c_child.amount),
                                        in_type,
                                        'NO',
                                        c_child.drop_speed,
                                        c_child.drop_speed_unit,
                                        t_order_listid);
              exception
                when others then
                  t_error := substrb(t_error || sqlerrm || chr(10), 1, 4000);
              end;
            elsif c_child.sundry_feeid is not null
            then
              if c_child.execute_dept_flag = 'PATIENT_DEPT'
              then
                t_execute_deptid := t_resident_info.deptid;
              elsif c_child.execute_dept_flag = 'INPUT_DEPT'
              then
                t_execute_deptid := get_login_deptid;
              elsif c_child.execute_dept_flag = 'STATIC'
              then
                t_execute_deptid := c_child.execute_deptid;
              else
                raise_application_error(-20001,
                                        '不支持的执行部门标志' ||
                                        c_parent.execute_dept_flag || '.;');
              end if;
              s_医嘱_子医嘱_杂费_增加(t_parent_order_listid,
                                      c_parent.long_flag,
                                      in_start_date,
                                      nvl(in_start_workerid,
                                       t_resident_info.charge_doctorid),
                                      in_residentid,
                                      t_execute_deptid,
                                      c_child.sundry_feeid,
                                      c_child.price,
                                      c_child.amount,
                                      in_type,
                                      'NO',
                                      t_order_listid,
                                      null,
                                      null,
                                      in_check_point);
            else
              --文本医嘱
              s_医嘱_子医嘱_文本_增加(null,
                                      c_parent.long_flag,
                                      in_start_date,
                                      nvl(in_start_workerid,
                                       t_resident_info.charge_doctorid),
                                      in_residentid,
                                      in_type,
                                      c_child.text,
                                      out_order_listid);
            end if;
            out_order_listid := t_parent_order_listid;
          end loop;
        end if;
      end loop;
    end if;
    commit;
  end;
  ----------------------------------------------------------------------------
  --
  --     tiger      2013/08/08
  --     in_order_lisid 要黏贴的医嘱编号，如果为空值，代表粘贴整个剪贴版内容
  --
  procedure s_医嘱_粘贴(in_residentid     in varchar2
                       ,in_order_listid   in varchar2
                       ,in_start_date     in varchar2
                       ,in_start_workerid in varchar2
                       ,in_type           in varchar2
                       ,in_check_point    in varchar2 default null
                       ,out_order_listid  out varchar2) as
    t_order_listid        order_list.id%type;
    t_parent_order_listid order_list.id%type;
    t_frequence           varchar2(30);
    t_resident_info       resident_info%rowtype;
    t_skip                varchar2(10);
    t_error               varchar2(4000);
  begin
    lock_res.lock_ack_医嘱_操作(in_residentid, t_resident_info);
    if nvl(get_system_option('临床路径_患者禁止使用HIS录入医嘱'), 'N') = 'Y'
       and in_type = 'DOCTOR'
    then
      if hospital.get_是否路径病人(in_residentid) = 'Y'
      then
        raise_application_error(-20001, '请使用临床路径系统录入医嘱.;');
      end if;
    end if;
  
    begin
      select a.*
        into t_resident_info
        from resident_info a, resident_patient b
       where a.residentid = in_residentid
         and a.record_no = b.record_no
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '找不到住院号为' || in_residentid ||
                                '的病人的住院信息.;');
      when others then
        raise_application_error(-20001, '其他人正在操作，请稍候重试.;');
    end;
  
    for c_parent in (select *
                       from order_list_clipboard
                      where workerid = hospital.login.get_workerid
                        and (id = in_order_listid or
                            (in_order_listid is null and
                            (parentid is null or
                            parentid is not null and parentid = id)))
                      order by sequence, subseq)
    loop
      if c_parent.materialid is not null
      then
        if c_parent.method is not null
        then
          t_frequence := substrb(c_parent.method,
                                 instrb(c_parent.method, ' ', -1) + 1);
        else
          t_frequence := null;
        end if;
        t_skip := 'N';
        begin
          s_医嘱_子医嘱_物资_增加(null,
                                  c_parent.long_flag,
                                  in_start_date,
                                  nvl(in_start_workerid,
                                      t_resident_info.charge_doctorid),
                                  in_residentid,
                                  c_parent.material_deptid,
                                  c_parent.materialid,
                                  c_parent.packageid,
                                  c_parent.method,
                                  to_char(c_parent.medicament),
                                  c_parent.use_method,
                                  t_frequence,
                                  to_char(c_parent.amount),
                                  in_type,
                                  'NO',
                                  c_parent.drop_speed,
                                  c_parent.drop_speed_unit,
                                  t_parent_order_listid);
        exception
          when others then
            raise_application_error(-20001, '医嘱录入错误:' || sqlerrm);
            t_error := substrb(t_error || sqlerrm || chr(10), 1, 4000);
            t_skip  := 'Y';
        end;
      elsif c_parent.sundry_feeid is not null
      then
        t_skip := 'N';
        begin
          s_医嘱_子医嘱_杂费_增加(null,
                                  c_parent.long_flag,
                                  in_start_date,
                                  t_resident_info.charge_doctorid,
                                  in_residentid,
                                  c_parent.execute_deptid,
                                  c_parent.sundry_feeid,
                                  c_parent.price,
                                  c_parent.amount,
                                  in_type,
                                  'NO',
                                  t_parent_order_listid,
                                  null,
                                  null,
                                  in_check_point);
        exception
          when others then
            t_error := substrb(t_error || sqlerrm || chr(10), 1, 4000);
            t_skip  := 'Y';
        end;
      else
        --文本医嘱
        s_医嘱_子医嘱_文本_增加(null,
                                c_parent.long_flag,
                                in_start_date,
                                t_resident_info.charge_doctorid,
                                in_residentid,
                                in_type,
                                c_parent.text,
                                t_parent_order_listid);
      end if;
      out_order_listid := t_parent_order_listid;
      if t_skip = 'N'
      then
        for c_child in (select *
                          from order_list_clipboard
                         where workerid = hospital.login.get_workerid
                           and parentid = c_parent.id
                           and id <> c_parent.id
                         order by subseq)
        loop
          if c_child.materialid is not null
          then
            s_医嘱_子医嘱_物资_增加(t_parent_order_listid,
                                    c_child.long_flag,
                                    in_start_date,
                                    t_resident_info.charge_doctorid,
                                    in_residentid,
                                    c_child.material_deptid,
                                    c_child.materialid,
                                    c_child.packageid,
                                    c_child.method,
                                    to_char(c_child.medicament),
                                    c_child.use_method,
                                    t_frequence,
                                    to_char(c_child.amount),
                                    in_type,
                                    'NO',
                                    c_child.drop_speed,
                                    c_child.drop_speed_unit,
                                    t_order_listid);
          elsif c_child.sundry_feeid is not null
          then
            s_医嘱_子医嘱_杂费_增加(t_parent_order_listid,
                                    c_parent.long_flag,
                                    in_start_date,
                                    t_resident_info.charge_doctorid,
                                    in_residentid,
                                    c_child.execute_deptid,
                                    c_child.sundry_feeid,
                                    c_child.price,
                                    c_child.amount,
                                    in_type,
                                    'NO',
                                    t_order_listid,
                                    null,
                                    null,
                                    in_check_point);
          else
            --文本医嘱
          
            s_医嘱_子医嘱_文本_增加(null,
                                    c_parent.long_flag,
                                    in_start_date,
                                    t_resident_info.charge_doctorid,
                                    in_residentid,
                                    in_type,
                                    c_child.text,
                                    t_order_listid);
          end if;
          out_order_listid := t_order_listid;
        end loop;
      end if;
    end loop;
    commit;
  end s_医嘱_粘贴;
  ----------------------------------------------------------------------------
  -- 
  -- $header: S_医嘱_子医嘱_杂费_增加.sql , v 1.0   $ 
  --   
  --  copyright (c) 2000 by holly source corporation 
  --    name
  --      S_医嘱_子医嘱_杂费_增加.sql - <one-line expansion of the name>
  --    description
  --      <short description of component this file declares/defines>
  --    returns
  -- 
  --    notes
  --      <other useful comments, qualifications, etc.>
  --    modified   (yyyy/mm/dd)   reason
  --     tiger      2007/09/15 -  对杂费医嘱增加用法 
  --     tiger      2005/08/30 -  引入参数 IN_ADD_SUPPLY 指定是否可以支持增加补充子医嘱
  --     tiger      2001/10/15 -  增加职员的登录部门、门诊核算部门和住院核算部门管理
  --     tiger      2001/06/09 -  判断入帐序列方法修改为查看是否包括SEQ序列
  --     tiger      2001/05/14 -  禁止使用 order_list_tempulate  
  --     tiger      2000/12/04 -  价格和数量不许小于0
  --     tiger      2000/08/19 -  修改错误:补充医嘱病人部门选择，返回多个值
  --     tiger      2000/08/11 -  增加对部门级药品用法补充医嘱自动增加
  --
  ----------------------------------------------------------------------------
  --带有医嘱类型的医嘱增加                                    
  procedure s_医嘱_子医嘱_杂费_增加(in_parent_order_listid in varchar2
                                   ,in_long_flag           in varchar2
                                   ,in_start_date          in varchar2
                                   ,in_start_workerid      in varchar2
                                   ,in_residentid          in varchar2
                                   ,in_deptid              in varchar2
                                   , --核算科室
                                    in_sundry_feeid        in varchar2
                                   ,in_price               in varchar2
                                   ,in_amount              in varchar2
                                   ,in_type                in varchar2
                                   , -- 医嘱类型(护士医嘱、医师医嘱、手术医嘱、出院带药)
                                    in_add_supply          in varchar2
                                   ,out_order_listid       out varchar2
                                   ,in_method              in varchar2 default null
                                   ,in_hospid              in varchar2 default null
                                   ,in_check_point         in varchar2 default null) is
    t_order_listid     order_list.id%type;
    t_sub_order_listid order_list.id%type;
    t_amount           order_list.remark%type;
    t_seq              order_list.remark%type;
    t_field_dict       field_dict%rowtype;
    t_add_supply       varchar2(10);
    t_execute_deptid   all_department.id%type;
    t_price            number;
    t_sundry_fee       sundry_fee_config%rowtype;
    t_patient_deptid   all_department.id%type;
    i                  number;
    v_hospid           varchar2(10);
    t_resident_info    resident_info%rowtype;
  begin
    lock_res.lock_ack_医嘱_操作(in_residentid, t_resident_info);
    if in_hospid is null
    then
      v_hospid := get_login_hospid;
    else
      v_hospid := in_hospid;
    end if;
    user_permit.s_ack_医嘱确认权;
    if nvl(get_system_option('临床路径_患者禁止使用HIS录入医嘱'), 'N') = 'Y'
       and in_type = 'DOCTOR'
    then
      if hospital.get_是否路径病人(in_residentid) = 'Y'
      then
        raise_application_error(-20001, '请使用临床路径系统录入医嘱.;');
      end if;
    end if;
  
    verify_not_null(in_price,
                    '杂费(' || in_sundry_feeid || ')单价不能为空');
    s_医嘱_子医嘱_杂费_增加_nc(in_parent_order_listid,
                               in_long_flag,
                               in_start_date,
                               in_start_workerid,
                               in_residentid,
                               in_deptid,
                               in_sundry_feeid,
                               in_price,
                               in_amount,
                               in_type,
                               t_add_supply,
                               out_order_listid,
                               in_method,
                               v_hospid,
                               in_check_point);
    commit;
    t_order_listid := out_order_listid;
    begin
      verify_valid_number(in_amount, '数量');
      if to_number(in_amount) < 0
      then
        raise_application_error(-20001, '数量不能小于0');
      end if;
      t_amount := in_amount;
      t_seq    := null;
    exception
      when others then
        begin
          select *
            into t_field_dict
            from field_dict
           where table_name = 'ORDER_LIST'
             and field_name = 'FREQUENCE'
             and field_value = upper(in_amount);
          if instr(t_field_dict.remark, 'SEQ') > 0
          then
            verify_valid_account_seq(t_field_dict.remark);
            t_amount := '1';
            t_seq    := t_field_dict.remark;
          else
            verify_valid_number(t_field_dict.remark, '数量');
            t_amount := t_field_dict.remark;
            t_seq    := null;
          end if;
        exception
          when no_data_found then
            raise_application_error(-20001,
                                    '非法的数量(' || in_amount || ').;');
          when too_many_rows then
            raise_application_error(-20001,
                                    '使用频率(' || in_amount || '有多个.;');
        end;
    end;
  
    if t_add_supply = 'YES'
       and in_add_supply = 'YES'
    then
      begin
        select deptid
          into t_patient_deptid
          from resident_info a, resident_patient b
         where a.residentid = in_residentid
           and a.record_no = b.record_no
           for update nowait;
      exception
        when no_data_found then
          raise_application_error(-20001, '没有找到住院病人的住院科室.;');
        when others then
          raise_application_error(-20001, '其他人正在操作，请稍后重试.;');
      end;
      for c in (select a.generate_mode, b.*
                  from order_list_group a, order_list_group_item b
                 where a.patient_deptid = t_patient_deptid
                   and a.name = in_sundry_feeid
                   and a.status = 'ENABLED'
                   and a.type = 'SUNDRY_FEE'
                   and a.generate_mode in ('COPY_ONCE', 'COPY_ALL')
                   and b.groupid = a.id)
      loop
        if c.generate_mode = 'COPY_ONCE'
        then
          if c.sundry_feeid is not null
          then
            begin
              select 2
                into i
                from order_list
               where ownerid = in_residentid
                 and sundry_feeid = c.sundry_feeid
                 and status in ('WAIT_ACK', 'NORMAL')
                 and (parentid is null or id = parentid)
                 and rownum = 1;
            exception
              when no_data_found then
                --如果是固定价格，采用SUNDRY_FEE的价格
                --否则采用医嘱模板的价格
                begin
                  select *
                    into t_sundry_fee
                    from sundry_fee_config
                   where hospid = v_hospid
                     and sundry_feeid = c.sundry_feeid;
                exception
                  when no_data_found then
                    raise_application_error(-20001,
                                            '没有找到' ||
                                            get_sundry_fee_name(c.sundry_feeid) ||
                                            '的杂费项目' || c.sundry_feeid ||
                                            '请通知系统管理员.;');
                  when too_many_rows then
                    raise_application_error(-20001, '找到多条杂费项目.;');
                end;
                if t_sundry_fee.fee_flag = 'UPDATABLE'
                then
                  t_price := c.price;
                else
                  t_price := t_sundry_fee.price;
                end if;
                if c.execute_dept_flag = 'INPUT_DEPT'
                then
                  t_execute_deptid := get_login_deptid;
                elsif c.execute_dept_flag = 'PATIENT_DEPT'
                then
                  t_execute_deptid := t_patient_deptid;
                elsif c.execute_dept_flag = 'STATIC'
                then
                  t_execute_deptid := c.execute_deptid;
                  verify_department(t_execute_deptid);
                else
                  raise_application_error(-20001,
                                          '不支持的执行部门标志' ||
                                          c.execute_dept_flag || '.;');
                end if;
              
                t_amount := to_char(to_number(t_amount) *
                                    to_number(c.amount));
              
                prv_医嘱_用药方法_杂费_增加(t_sub_order_listid,
                                            in_long_flag,
                                            in_start_date,
                                            in_start_workerid,
                                            in_residentid,
                                            t_execute_deptid,
                                            c.sundry_feeid,
                                            t_price,
                                            t_amount,
                                            t_seq,
                                            'AUTOFEE',
                                            in_check_point);
                prv_医嘱_子医嘱_设置(in_parent_order_listid,
                                     t_order_listid,
                                     'AUTOFEE');
            end;
          else
            begin
              select 2
                into i
                from order_list
               where ownerid = in_residentid
                 and materialid = c.materialid
                 and packageid = c.packageid
                 and status in ('WAIT_ACK', 'NORMAL')
                 and (parentid is null or id = parentid)
                 and rownum = 1;
            exception
              when no_data_found then
                prv_医嘱_用药方法_物资_增加(t_sub_order_listid,
                                            in_start_workerid,
                                            in_residentid,
                                            c.material_deptid,
                                            c.materialid,
                                            c.packageid,
                                            in_long_flag,
                                            null,
                                            to_char(to_number(t_amount) *
                                                    to_number(c.amount)),
                                            t_seq,
                                            'AUTOFEE',
                                            c.drop_speed,
                                            c.drop_speed_unit);
                prv_医嘱_子医嘱_设置(in_parent_order_listid,
                                     t_order_listid,
                                     'AUTOFEE');
            end;
          end if;
        elsif c.generate_mode = 'COPY_ALL'
        then
          if c.sundry_feeid is not null
          then
            --如果是固定价格，采用SUNDRY_FEE的价格
            --否则采用医嘱模板的价格
            begin
              select *
                into t_sundry_fee
                from sundry_fee_config
               where hospid = v_hospid
                 and sundry_feeid = c.sundry_feeid;
            exception
              when no_data_found then
                raise_application_error(-20001,
                                        '没有找到' ||
                                        get_sundry_fee_name(c.sundry_feeid) ||
                                        '的杂费项目' || c.sundry_feeid ||
                                        '请通知系统管理员.;');
              when too_many_rows then
                raise_application_error(-20001, '找到多条杂费项目.;');
            end;
            if t_sundry_fee.fee_flag = 'UPDATABLE'
            then
              t_price := c.price;
            else
              t_price := t_sundry_fee.price;
            end if;
            if c.execute_dept_flag = 'INPUT_DEPT'
            then
              t_execute_deptid := get_login_deptid;
            elsif c.execute_dept_flag = 'PATIENT_DEPT'
            then
              t_execute_deptid := t_patient_deptid;
            elsif c.execute_dept_flag = 'STATIC'
            then
              t_execute_deptid := c.execute_deptid;
              verify_department(t_execute_deptid);
            else
              raise_application_error(-20001,
                                      '不支持的执行部门标志' ||
                                      c.execute_dept_flag || '.;');
            end if;
            prv_医嘱_用药方法_杂费_增加(t_sub_order_listid,
                                        in_long_flag,
                                        in_start_date,
                                        in_start_workerid,
                                        in_residentid,
                                        t_execute_deptid,
                                        c.sundry_feeid,
                                        t_price,
                                        to_char(to_number(t_amount) *
                                                to_number(c.amount)),
                                        t_seq,
                                        'AUTOFEE',
                                        in_check_point);
            prv_医嘱_子医嘱_设置(t_order_listid,
                                 t_sub_order_listid,
                                 'AUTOFEE');
          else
            prv_医嘱_用药方法_物资_增加(t_sub_order_listid,
                                        in_start_workerid,
                                        in_residentid,
                                        c.material_deptid,
                                        c.materialid,
                                        c.packageid,
                                        in_long_flag,
                                        null,
                                        to_char(to_number(t_amount) *
                                                to_number(c.amount)),
                                        t_seq,
                                        'AUTOFEE',
                                        c.drop_speed,
                                        c.drop_speed_unit);
            prv_医嘱_子医嘱_设置(t_order_listid,
                                 t_sub_order_listid,
                                 'AUTOFEE');
          end if;
        else
          raise_application_error(-20001,
                                  '不支持的补充医嘱录入方式' ||
                                  c.generate_mode || '.;');
        end if;
      end loop;
      commit;
    end if;
    rabbitmq.publish_ol_message(in_event        => events.ol_insert,
                                in_deptid       => in_deptid,
                                in_patientid    => t_resident_info.patientid,
                                in_residentid   => in_residentid,
                                in_order_listid => t_order_listid);
  end s_医嘱_子医嘱_杂费_增加;
  ------------------------------------------------------------------------
  --  8800开头的是扫码杂费
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
  ----------------------------------------------------------------------------
  --  tiger 2008/10/21 - 实现"s_医嘱_子医嘱_杂费_增加",的功能，不提交
  --
  procedure s_医嘱_子医嘱_杂费_增加_nc(in_parent_order_listid in varchar2
                                      ,in_long_flag           in varchar2
                                      ,in_start_date          in varchar2
                                      ,in_start_workerid      in varchar2
                                      ,in_residentid          in varchar2
                                      ,in_deptid              in varchar2
                                      , --核算科室
                                       in_sundry_feeid        in varchar2
                                      ,in_price               in varchar2
                                      ,in_amount              in varchar2
                                      ,in_type                in varchar2
                                      , -- 医嘱类型(护士医嘱、医师医嘱、手术医嘱、出院带药)
                                       out_add_supply         out varchar2
                                      ,out_order_listid       out varchar2
                                      ,in_method              in varchar2 default null
                                      ,in_hospid              in varchar2 default null
                                      ,in_check_point         in varchar2 default null) is
    t_order_listid            order_list.id%type;
    t_parent_order_list       order_list%rowtype;
    t_amount                  order_list.remark%type;
    t_seq                     order_list.remark%type;
    t_field_dict              field_dict%rowtype;
    v_hospid                  varchar2(10);
    t_resident_info           resident_info%rowtype;
    v_sundry_fee_account_type varchar2(2);
  begin
    lock_res.lock_ack_医嘱_操作(in_residentid, t_resident_info);
    if in_hospid is null
    then
      v_hospid := get_login_hospid;
    else
      v_hospid := in_hospid;
    end if;
    v_sundry_fee_account_type := get_sundry_fee_account_type(in_sundry_feeid);
    -- 高值耗材8800开始的杂费 医嘱类型只能是： long_flag in('B','D') 
    if v_sundry_fee_account_type = 2
       and in_long_flag not in ('B', 'D')
    then
      raise_application_error(-20001, '高值耗材,医嘱类型不能为长期医嘱;');
    end if;
  
    out_add_supply := 'NO';
    user_permit.s_ack_医嘱确认权;
    verify_valid_number(in_price, '价格');
    if to_number(in_price) < 0
    then
      raise_application_error(-20001, '价格不能小于0');
    end if;
    begin
      verify_valid_number(in_amount, '数量');
      if to_number(in_amount) < 0
      then
        raise_application_error(-20001, '数量不能小于0');
      end if;
      t_amount := in_amount;
      t_seq    := null;
    exception
      when others then
        begin
          select *
            into t_field_dict
            from field_dict
           where table_name = 'ORDER_LIST'
             and field_name = 'FREQUENCE'
             and field_value = upper(in_amount);
          if instr(t_field_dict.remark, 'SEQ') > 0
          then
            verify_valid_account_seq(t_field_dict.remark);
            t_amount := '1';
            t_seq    := t_field_dict.remark;
          else
            verify_valid_number(t_field_dict.remark, '数量');
            t_amount := t_field_dict.remark;
            t_seq    := null;
          end if;
        exception
          when no_data_found then
            raise_application_error(-20001,
                                    '非法的数量(' || in_amount || ').;');
          when too_many_rows then
            raise_application_error(-20001,
                                    '使用频率(' || in_amount || '有多个.;');
        end;
    end;
  
    if in_parent_order_listid is not null
    then
      begin
        select *
          into t_parent_order_list
          from order_list
         where id = in_parent_order_listid
           and rownum = 1
           for update of id nowait;
      exception
        when no_data_found then
          raise_application_error(-20001, '父医嘱没有找到.;');
        when others then
          raise_application_error(-20001, '其他人正在操作,请稍候再试.;');
      end;
      if t_parent_order_list.materialid is not null
      then
        prv_医嘱_医嘱_杂费_增加(t_order_listid,
                                t_parent_order_list.long_flag,
                                to_char(t_parent_order_list.start_date,
                                        'yyyy/mm/dd hh24:mi:ss'),
                                t_parent_order_list.start_workerid,
                                t_parent_order_list.ownerid,
                                in_deptid,
                                in_sundry_feeid,
                                in_price,
                                t_amount,
                                t_seq,
                                in_type,
                                in_method,
                                v_hospid,
                                in_check_point,
                                v_sundry_fee_account_type);
        prv_医嘱_子医嘱_设置(in_parent_order_listid, t_order_listid, null);
      else
        if t_parent_order_list.sundry_feeid is not null
        then
          prv_医嘱_医嘱_杂费_增加(t_order_listid,
                                  in_long_flag,
                                  in_start_date,
                                  in_start_workerid,
                                  in_residentid,
                                  in_deptid,
                                  in_sundry_feeid,
                                  in_price,
                                  t_amount,
                                  t_seq,
                                  in_type,
                                  in_method,
                                  v_hospid,
                                  in_check_point,
                                  v_sundry_fee_account_type);
          if (nvl(get_system_option('医嘱录入_杂费允许开子医嘱'), 'Y') = 'Y')
          then
            prv_医嘱_子医嘱_设置(in_parent_order_listid,
                                 t_order_listid,
                                 null);
          else
            prv_医嘱_子医嘱_设置(t_order_listid, t_order_listid, in_type);
          end if;
        end if;
      end if;
    else
      prv_医嘱_医嘱_杂费_增加(t_order_listid,
                              in_long_flag,
                              in_start_date,
                              in_start_workerid,
                              in_residentid,
                              in_deptid,
                              in_sundry_feeid,
                              in_price,
                              t_amount,
                              t_seq,
                              in_type,
                              in_method,
                              v_hospid,
                              in_check_point,
                              v_sundry_fee_account_type);
      prv_医嘱_子医嘱_设置(t_order_listid, t_order_listid, in_type);
      out_add_supply := 'YES';
    end if;
    --如果是医生下医嘱、则修改dr_order_list_info
    if in_type in ('DOCTOR', 'OP1')
    then
      s_医生处理医嘱nc(in_residentid);
    end if;
  
    out_order_listid := t_order_listid;
  end s_医嘱_子医嘱_杂费_增加_nc;
  ----------------------------------------------------------------------------
  --  tiger 2007/01/01 - 医生删除医嘱后，如果该病人没有待确认的处方，则修改dr_order_list_info
  --  tiger 2005/02/25 - 调用 S_医嘱_医嘱_增加_取消标记 参数错误
  --  tiger 2004/11/25 - 修改删除规则:
  --                     1 临时医嘱:判断状态如果可以删除
  --                     2 长期医嘱:判断状态、入帐天数、执行天数和跳过天数决定是否可以删除
  --                     3 如果根据条件 1,2判断可以删除,则根据整个医嘱组是否产生过费用判断删除还是标记
  --                     4 如果要删除的医嘱为标记取消，则标记整个医嘱组
  --                       如果要删除的医嘱为直接删除，输入的为父医嘱，则删除整个医嘱组，输入的为子医嘱则删除该子医嘱 
  --  tiger 2001/10/09 - 对已经产生费用的医嘱删除采用标记删除，不直接删除
  --
  procedure s_医嘱_医嘱_增加_取消(in_order_listid in varchar2) as
    v_residentid varchar2(20);
    v_patientid  varchar2(20);
    v_deptid     varchar2(20);
  begin
    select a.ownerid, a.patientid, b.deptid
      into v_residentid, v_patientid, v_deptid
      from hospital.order_list_ a, hospital.resident_info_ b
     where a.ownerid = b.residentid
       and b.process_reason in ('IN', 'NEW')
       and a.id = in_order_listid;
    s_医嘱_医嘱_增加_取消_nc(in_order_listid);
    commit;
    rabbitmq.publish_ol_message(in_event        => events.ol_delete,
                                in_deptid       => v_deptid,
                                in_patientid    => v_patientid,
                                in_residentid   => v_residentid,
                                in_order_listid => in_order_listid);
  end s_医嘱_医嘱_增加_取消;
  ----------------------------------------------------------------------------
  -- 
  -- $header: S_医嘱_子医嘱_物资_增加.sql , v 1.0   $ 
  --   
  --  copyright (c) 2000 by holly source corporation 
  --    name
  --      S_医嘱_子医嘱_物资_增加.sql - <one-line expansion of the name>
  --    description
  --      <short description of component this file declares/defines>
  --    returns
  -- 
  --    notes
  --      <other useful comments, qualifications, etc.>
  --    modified   (yyyy/mm/dd)   reason
  --     tiger      2009/06/03 -  对只跟踪一次的静脉输液，特殊处理，用量不乘以医嘱的每天用量
  --     tiger      2006/12/31  - 医生录入医嘱，修改dr_order_list.info为录入医嘱状态
  --     tiger      2006/12/06  - 把医嘱分为护士医嘱、医师医嘱、手术医嘱、出院带药等
  --     tiger      2005/08/30 -  引入参数 IN_ADD_SUPPLY 指定是否可以支持增加补充子医嘱
  --     tiger      2001/12/18 -  设置系统选项  长期口服药_药房摆药 DEFAULT = 'N' ,如果设置，则长期医嘱数量为0，并增加一条临时医嘱负责领药。
  --     tiger      2001/10/14 -  增加职员的登录部门、门诊核算部门和住院核算部门管理
  --     tiger      2001/09/13 -  允许执行部门录入自己部门的临时杂费医嘱。
  --     tiger      2001/06/09 -  判断入帐序列方法修改为查看是否包括SEQ序列
  --     tiger      2001/05/14 -  取消order_list_tempulate   
  --     tiger      2000/12/04 -  判断数量不能<0
  --     tiger      2000/12/04 -  判断数量不能<=0
  --     tiger      2000/12/02 -  增加医嘱_用药方法_物资增加中的用法
  --     tiger      2000/08/19 -  修改错误:补充医嘱病人部门选择，返回多个值
  --     tiger      2000/08/11    增加对部门级药品用法补充医嘱自动增加
  procedure s_医嘱_子医嘱_物资_增加(in_parent_order_listid in varchar2
                                   ,in_long_flag           in varchar2
                                   ,in_start_date          in varchar2
                                   ,in_start_workerid      in varchar2
                                   ,in_residentid          in varchar2
                                   ,in_deptid              in varchar2
                                   ,in_materialid          in varchar2
                                   ,in_packageid           in varchar2
                                   ,in_method              in varchar2
                                   ,in_medicament          in varchar2
                                   ,in_use_method          in varchar2
                                   ,in_frequence           in varchar2
                                   ,in_amount              in varchar2
                                   ,in_type                in varchar2
                                   , -- 医嘱类型(护士医嘱、医师医嘱、手术医嘱、出院带药)
                                    in_add_supply          in varchar2
                                   ,in_drop_speed          in varchar2
                                   ,in_drop_speed_unit     in varchar2
                                   ,out_order_listid       out varchar2) is
    v_patientid  hospital.resident_patient_.patientid%type;
    v_order_flag hospital.material_config_.order_flag%type;
  begin
    begin
      select m.order_flag
        into v_order_flag
        from hospital.material_config_ m
       where m.materialid = in_materialid
         and rownum = 1;
      if v_order_flag = 0
      then
        raise_application_error(-20001, '医嘱禁止使用此药;');
      end if;
    end;
    select a.patientid
      into v_patientid
      from resident_patient a
     where a.residentid = in_residentid;
    if nvl(get_system_option('临床路径_患者禁止使用HIS录入医嘱'), 'N') = 'Y'
       and in_type = 'DOCTOR'
    then
      if hospital.get_是否路径病人(in_residentid) = 'Y'
      then
        raise_application_error(-20001, '请使用临床路径系统录入医嘱.;');
      end if;
    end if;
    s_医嘱_子医嘱_物资_增加_nc(in_parent_order_listid,
                               in_long_flag,
                               in_start_date,
                               in_start_workerid,
                               in_residentid,
                               in_deptid,
                               in_materialid,
                               in_packageid,
                               in_method,
                               in_medicament,
                               in_use_method,
                               in_frequence,
                               in_amount,
                               in_type,
                               in_add_supply,
                               null,
                               in_drop_speed,
                               in_drop_speed_unit,
                               out_order_listid);
    commit;
    rabbitmq.publish_ol_message(in_event        => events.ol_insert,
                                in_deptid       => in_deptid,
                                in_patientid    => v_patientid,
                                in_residentid   => in_residentid,
                                in_order_listid => out_order_listid);
  end s_医嘱_子医嘱_物资_增加;
  /*                                   
    t_order_listid      order_list.id%type;
    t_parent_order_list order_list%rowtype;
    t_add_supply        varchar2(10);
    t_sub_order_listid  order_list.id%type;
    t_frequence         number;
    t_price             number;
    t_execute_deptid    all_department.id%type;
    t_seq               order_list.remark%type;
    t_field_dict        field_dict%rowtype;
    t_sundry_fee        sundry_fee_config%rowtype;
    i                   number;
    t_patient_deptid    all_department.id%type;
    t_method            order_list.method%type;
    v_input_deptid      all_department.id%type;
    v_patient_deptid    all_department.id%type;
    t_amount            varchar2(80);
    v_skip              varchar2(10);
    t_resident_info     resident_info%rowtype;
    v_po_flag           order_list.po_flag%type;
  begin
    lock_res.lock_ack_医嘱_操作(in_residentid, t_resident_info);
    if nvl(get_system_option('临床路径_患者禁止使用HIS录入医嘱'), 'N') = 'Y'
       and in_type = 'DOCTOR'
    then
      if hospital.get_是否路径病人(in_residentid) = 'Y'
      then
        raise_application_error(-20001, '请使用临床路径系统录入医嘱.;');
      end if;
    end if;
    hospital.verify_drop_speed(in_drop_speed);
    hospital.verify_length(in_drop_speed_unit, 30, '滴速单位');
    user_permit.s_ack_医嘱确认权;
    t_add_supply := 'NO';
    verify_valid_number(in_amount, '数量');
    if to_number(in_amount) < 0
    then
      raise_application_error(-20001, '数量必须大于=0');
    end if;
    begin
      select *
        into t_field_dict
        from field_dict
       where table_name = 'ORDER_LIST'
         and field_name = 'FREQUENCE'
         and field_value = upper(in_frequence);
      if instr(t_field_dict.remark, 'SEQ') > 0
      then
        t_seq := t_field_dict.remark;
      else
        t_seq := null;
      end if;
    exception
      when no_data_found then
        null;
      when too_many_rows then
        raise_application_error(-20001,
                                '使用频率' || in_amount || '出现多次.;');
    end;
  
    --判断如果录入员不是本部门的工作人员，禁止录入
    v_input_deptid := get_login_deptid;
    select deptid
      into v_patient_deptid
      from resident_info a, resident_patient b
     where a.residentid = in_residentid
       and a.record_no = b.record_no
       and rownum = 1;
    if v_input_deptid <> v_patient_deptid
    then
      if is_worker_login_dept(hospital.login.get_workerid, v_patient_deptid) <> 0
      then
        raise_application_error(-20001,
                                '你现在是以' ||
                                get_dept_name(v_input_deptid) ||
                                '的身份登录,不允许对' ||
                                get_dept_name(v_patient_deptid) ||
                                '病人医嘱进行处理 .;');
      else
        if in_type in ('OP1', 'OP2')
        then
          null;
        else
          raise_application_error(-20001, '非临床科室不能录入物资医嘱.;');
        end if;
      end if;
    end if;
  
    if in_type = 'NURSE'
       and nvl(get_system_option('护理医嘱_禁止录入药品医嘱'), 'Y') = 'Y'
    then
      raise_application_error(-20001, '护理医嘱禁止录入药品医嘱.;');
    end if;
  
    t_amount := in_amount;
  
    --判断是不是口服药
    -- 1  口服药
    -- 0 非口服药
    begin
      select '1'
        into v_po_flag
        from hospital.po_use_method_
       where id = upper(in_use_method)
         and status = 'ENABLED'
         and rownum = 1;
    exception
      when no_data_found then
        v_po_flag := '0';
    end;
  
    if in_parent_order_listid is not null
    then
      --增加子医嘱
      begin
        select *
          into t_parent_order_list
          from order_list
         where id = in_parent_order_listid
           and rownum = 1
           for update of id nowait;
      exception
        when no_data_found then
          raise_application_error(-20001, '父医嘱没有找到.;');
        when others then
          raise_application_error(-20001, '其他人正在操作,请稍候再试.;');
      end;
      if t_parent_order_list.long_flag = 'A'
         and v_po_flag = '1'
      then
        begin
          select 2
            into i
            from system_option
           where id like '长期口服药摆药部门%'
             and name = v_patient_deptid;
        exception
          when no_data_found then
            t_amount := '0';
            prv_医嘱_医嘱_物资_增加(t_order_listid,
                                    'B',
                                    in_start_date,
                                    in_start_workerid,
                                    in_residentid,
                                    in_deptid,
                                    in_materialid,
                                    in_packageid,
                                    in_method,
                                    in_medicament,
                                    null, --in_use_method,
                                    in_frequence,
                                    in_amount,
                                    t_seq,
                                    in_type,
                                    v_po_flag,
                                    in_drop_speed,
                                    in_drop_speed_unit);
            prv_医嘱_子医嘱_设置(t_order_listid, t_order_listid, null);
        end;
      end if;
    
      prv_医嘱_医嘱_物资_增加(t_order_listid,
                              t_parent_order_list.long_flag,
                              null, --t_parent_order_list.start_date,
                              t_parent_order_list.start_workerid,
                              t_parent_order_list.ownerid,
                              in_deptid,
                              in_materialid,
                              in_packageid,
                              in_method,
                              in_medicament,
                              in_use_method,
                              in_frequence,
                              t_amount,
                              t_seq,
                              in_type,
                              v_po_flag,
                              in_drop_speed,
                              in_drop_speed_unit);
      prv_医嘱_子医嘱_设置(in_parent_order_listid, t_order_listid, null);
    else
      --增加父医嘱
      if in_long_flag = 'A'
         and v_po_flag = '1'
      then
        begin
          select 2
            into i
            from system_option
           where id like '长期口服药摆药部门%'
             and name = v_patient_deptid;
        exception
          when no_data_found then
            t_amount := '0';
            prv_医嘱_医嘱_物资_增加(t_order_listid,
                                    'B',
                                    in_start_date,
                                    in_start_workerid,
                                    in_residentid,
                                    in_deptid,
                                    in_materialid,
                                    in_packageid,
                                    in_method,
                                    in_medicament,
                                    in_use_method,
                                    in_frequence,
                                    in_amount,
                                    t_seq,
                                    in_type,
                                    v_po_flag,
                                    in_drop_speed,
                                    in_drop_speed_unit);
            prv_医嘱_子医嘱_设置(t_order_listid, t_order_listid, in_type);
        end;
      end if;
      prv_医嘱_医嘱_物资_增加(t_order_listid,
                              in_long_flag,
                              in_start_date,
                              in_start_workerid,
                              in_residentid,
                              in_deptid,
                              in_materialid,
                              in_packageid,
                              in_method,
                              in_medicament,
                              in_use_method,
                              in_frequence,
                              t_amount,
                              t_seq,
                              in_type,
                              v_po_flag,
                              in_drop_speed,
                              in_drop_speed_unit);
      prv_医嘱_子医嘱_设置(t_order_listid, t_order_listid, in_type);
      t_add_supply := 'YES';
      --如果是医生下医嘱、则修改dr_order_list_info
      if in_type in ('DOCTOR', 'OP1')
      then
        s_医生处理医嘱nc(in_residentid);
      end if;
    
    end if;
    out_order_listid := t_order_listid;
    commit;
  
    --补充医嘱
    if t_add_supply = 'YES'
       and in_add_supply = 'YES'
    then
      begin
        select to_number(remark)
          into t_frequence
          from field_dict
         where table_name = 'ORDER_LIST'
           and field_name = 'FREQUENCE'
           and field_value = upper(in_frequence);
      exception
        when no_data_found then
          t_frequence := 1;
        when too_many_rows then
          raise_application_error(-20001, '找到多条相同的使用频率.;');
        when others then
          t_frequence := 1;
      end;
      begin
        select deptid
          into t_patient_deptid
          from resident_info a, resident_patient b
         where a.residentid = in_residentid
           and a.record_no = b.record_no;
      exception
        when no_data_found then
          raise_application_error(-20001, '没有找到住院病人的住院科室.;');
      end;
    
      --i == 2 代表固定科室； i==1 代表住院科室
      begin
        select 2
          into i
          from hospital.order_list_group a
         where a.patient_deptid = t_patient_deptid
           and a.name = upper(in_use_method)
           and a.status = 'ENABLED'
           and a.type = 'USE_METHOD'
           and rownum = 1;
      exception
        when no_data_found then
          i := 1;
      end;
    
      for c in (select a.generate_mode, a.name, b.*
                  from order_list_group a, order_list_group_item b
                 where a.patient_deptid = t_patient_deptid
                   and a.name = upper(in_use_method)
                   and a.type = 'USE_METHOD'
                   and a.status = 'ENABLED'
                   and b.groupid = a.id
                   and i = 2
                union all
                select a.generate_mode, a.name, b.*
                  from order_list_group a, order_list_group_item b
                 where a.patient_deptid is null
                   and a.name = upper(in_use_method)
                   and a.type = 'USE_METHOD'
                   and a.status = 'ENABLED'
                   and b.groupid = a.id
                   and i = 1)
      loop
        if c.generate_mode = 'COPY_ONCE'
        then
          --只增加一次
          if c.sundry_feeid is not null
          then
            begin
              select 2
                into i
                from order_list
               where ownerid = in_residentid
                 and sundry_feeid = c.sundry_feeid
                 and status in ('WAIT_ACK', 'NORMAL')
                 and (parentid is null or id = parentid)
                 and rownum = 1;
            exception
              when no_data_found then
                --如果是固定价格，采用SUNDRY_FEE的价格
                --否则采用医嘱模板的价格
                begin
                  select *
                    into t_sundry_fee
                    from sundry_fee_config
                   where hospid = get_login_hospid
                     and sundry_feeid = c.sundry_feeid;
                exception
                  when no_data_found then
                    raise_application_error(-20001,
                                            '没有找到' ||
                                            get_sundry_fee_name(c.sundry_feeid) ||
                                            '的杂费项目' || c.sundry_feeid ||
                                            '请通知系统管理员.;');
                  when too_many_rows then
                    raise_application_error(-20001, '找到多条杂费项目.;');
                end;
                if t_sundry_fee.fee_flag = 'UPDATABLE'
                then
                  t_price := c.price;
                else
                  t_price := t_sundry_fee.price;
                end if;
                if c.execute_dept_flag = 'INPUT_DEPT'
                then
                  t_execute_deptid := get_login_deptid;
                elsif c.execute_dept_flag = 'PATIENT_DEPT'
                then
                  t_execute_deptid := t_patient_deptid;
                elsif c.execute_dept_flag = 'STATIC'
                then
                  t_execute_deptid := c.execute_deptid;
                  verify_department(t_execute_deptid);
                else
                  raise_application_error(-20001,
                                          '不支持的执行部门标志' ||
                                          c.execute_dept_flag || '.;');
                end if;
              
                --静脉输液，数量根据模板数量走，不乘以使用医嘱的每天用量,并且增加的是长期医嘱，
                if t_sundry_fee.sundry_feeid = '120400006a'
                   or t_sundry_fee.sundry_feeid = '120400006A'
                then
                  t_frequence := c.amount;
                else
                  t_frequence := t_frequence * c.amount;
                end if;
              
                prv_医嘱_用药方法_杂费_增加(t_sub_order_listid,
                                            'A', --in_long_flag,
                                            in_start_date,
                                            in_start_workerid,
                                            in_residentid,
                                            t_execute_deptid,
                                            c.sundry_feeid,
                                            t_price,
                                            t_frequence,
                                            t_seq,
                                            'AUTOFEE');
            end;
          else
            begin
              select 2
                into i
                from order_list
               where ownerid = in_residentid
                 and materialid = c.materialid
                 and packageid = c.packageid
                 and status in ('WAIT_ACK', 'NORMAL')
                 and (parentid is null or id = parentid)
                 and rownum = 1;
            exception
              when no_data_found then
                select ltrim(rtrim(to_char(c.medicament))) ||
                       nvl(content_unit, name) || ' ' ||
                       lower(ltrim(rtrim(in_use_method))) || ' ' ||
                       lower(ltrim(rtrim(in_frequence)))
                  into t_method
                  from all_package
                 where id = c.packageid;
                prv_医嘱_用药方法_物资_增加(t_sub_order_listid,
                                            in_start_workerid,
                                            in_residentid,
                                            c.material_deptid,
                                            c.materialid,
                                            c.packageid,
                                            in_long_flag,
                                            t_method,
                                            t_frequence * c.amount,
                                            t_seq,
                                            'AUTOFEE',
                                            c.drop_speed,
                                            c.drop_speed_unit);
            end;
          end if;
        elsif c.generate_mode = 'COPY_ALL'
        then
          v_skip := 'N';
          if c.sundry_feeid is not null
          then
            --如果是  静脉输液(超过一组）加收 ；皮下输液(超过一组）加收 ；小儿头皮静脉输液(超过一组）加收
            --    用法是 ivgtt
            if (nvl(get_system_option('静脉输液医嘱_第一组不跟静脉输液加收'),
                    'N') = 'Y')
            then
              if c.sundry_feeid in
                 ('120400005B', '120400006B', '120400007B')
                 and c.name in ('IVGTT')
              then
                v_skip := 'Y';
                for ol in (select id, frequence
                             from hospital.order_list_
                            where ownerid = in_residentid
                              and status not in ('STOPPED', 'FINISHED')
                              and (parentid is null or
                                  parentid is not null and
                                  parentid <> t_order_listid)
                              and use_method = lower(c.name))
                loop
                  begin
                    select 2
                      into i
                      from hospital.order_list_
                     where ownerid = in_residentid
                       and parentid = ol.id
                       and sundry_feeid = c.sundry_feeid
                       and frequence = ol.frequence - 1
                       and rownum = 1;
                  exception
                    when no_data_found then
                      v_skip := 'N';
                      exit;
                  end;
                end loop;
              end if;
            
              --如果是固定价格，采用SUNDRY_FEE的价格
              --否则采用医嘱模板的价格
            
              if v_skip = 'Y'
              then
                t_frequence := t_frequence - 1;
              end if;
            end if;
          
            begin
              select *
                into t_sundry_fee
                from sundry_fee_config
               where hospid = get_login_hospid
                 and sundry_feeid = c.sundry_feeid;
            exception
              when no_data_found then
                raise_application_error(-20001,
                                        '没有找到' ||
                                        get_sundry_fee_name(c.sundry_feeid) ||
                                        '的杂费项目' || c.sundry_feeid ||
                                        '请通知系统管理员.;');
              when too_many_rows then
                raise_application_error(-20001, '找到多条杂费项目.;');
            end;
            if t_sundry_fee.fee_flag = 'UPDATABLE'
            then
              t_price := c.price;
            else
              t_price := t_sundry_fee.price;
            end if;
            if c.execute_dept_flag = 'INPUT_DEPT'
            then
              t_execute_deptid := get_login_deptid;
            elsif c.execute_dept_flag = 'PATIENT_DEPT'
            then
              t_execute_deptid := t_patient_deptid;
            elsif c.execute_dept_flag = 'STATIC'
            then
              t_execute_deptid := c.execute_deptid;
              verify_department(t_execute_deptid);
            else
              raise_application_error(-20001,
                                      '不支持的执行部门标志' ||
                                      c.execute_dept_flag || '.;');
            end if;
            prv_医嘱_用药方法_杂费_增加(t_sub_order_listid,
                                        in_long_flag,
                                        in_start_date,
                                        in_start_workerid,
                                        in_residentid,
                                        t_execute_deptid,
                                        c.sundry_feeid,
                                        t_price,
                                        t_frequence * c.amount,
                                        t_seq,
                                        'AUTOFEE');
            prv_医嘱_子医嘱_设置(t_order_listid,
                                 t_sub_order_listid,
                                 'AUTOFEE');
          
          else
            select ltrim(rtrim(to_char(c.medicament))) ||
                   nvl(content_unit, name) || ' ' ||
                   lower(ltrim(rtrim(in_use_method))) || ' ' ||
                   lower(ltrim(rtrim(in_frequence)))
              into t_method
              from all_package
             where id = c.packageid;
            prv_医嘱_用药方法_物资_增加(t_sub_order_listid,
                                        in_start_workerid,
                                        in_residentid,
                                        c.material_deptid,
                                        c.materialid,
                                        c.packageid,
                                        in_long_flag,
                                        t_method,
                                        t_frequence * c.amount,
                                        t_seq,
                                        'AUTOFEE',
                                        c.drop_speed,
                                        c.drop_speed_unit);
            prv_医嘱_子医嘱_设置(t_order_listid,
                                 t_sub_order_listid,
                                 'AUTOFEE');
          end if;
        else
          raise_application_error(-20001,
                                  '不支持的补充医嘱录入方式' ||
                                  c.generate_mode || '.;');
        end if;
      end loop;
      commit;
    end if;
  end s_医嘱_子医嘱_物资_增加;
  */
  ----------------------------------------------------------------------------
  --  tiger  2008/10/11 -增加文本医嘱功能
  procedure s_医嘱_子医嘱_文本_增加(in_parent_order_listid in varchar2
                                   ,in_long_flag           in varchar2
                                   ,in_start_date          in varchar2
                                   ,in_start_workerid      in varchar2
                                   ,in_residentid          in varchar2
                                   ,in_type                in varchar2
                                   , -- 医嘱类型(护士医嘱、医师医嘱、手术医嘱、出院带药)
                                    in_text                in varchar2
                                   ,out_order_listid       out varchar2) is
  begin
    if nvl(get_system_option('临床路径_患者禁止使用HIS录入医嘱'), 'N') = 'Y'
       and in_type = 'DOCTOR'
    then
      if hospital.get_是否路径病人(in_residentid) = 'Y'
      then
        raise_application_error(-20001, '请使用临床路径系统录入医嘱.;');
      end if;
    end if;
    s_医嘱_子医嘱_文本_增加_nc(in_parent_order_listid,
                               in_long_flag,
                               in_start_date,
                               in_start_workerid,
                               in_residentid,
                               in_type,
                               in_text,
                               out_order_listid);
    commit;
    rabbitmq.publish_ol_message(in_event        => events.ol_insert,
                                in_order_listid => out_order_listid);
  end s_医嘱_子医嘱_文本_增加;
  ----------------------------------------------------------------------------
  procedure s_医嘱_批注(in_order_listid in varchar2
                       ,in_text         in varchar2) is
    t_order_list order_list%rowtype;
    i            number;
  begin
    lock_res.lock_ack_医嘱_操作(in_order_listid, t_order_list);
    verify_length(in_text, 200, '文本医嘱');
  
    if t_order_list.materialid is not null
       and t_order_list.long_flag = 'B'
       and t_order_list.use_method in ('皮试', '点试', 'h', 'ih')
       or t_order_list.materialid is null
       and t_order_list.sundry_feeid is null
       and instr(t_order_list.text, '过敏试验') > 0
       and in_text in ('(-)', '(+)')
    then
      null; --皮试医嘱，可以在任何状态下批注
    else
      if t_order_list.long_flag = 'B'
         and trim(in_text) in ('退药', '作废')
      then
        null;
      elsif (t_order_list.status <> 'WAIT_ACK' and
            t_order_list.long_flag = 'A')
      then
        raise_application_error(-20001, '该医嘱已经确认，不能修改.;');
      else
        if (t_order_list.status1 in ('WAIT_EXEC', 'STOPPED') and
           t_order_list.long_flag = 'B')
        then
          raise_application_error(-20001,
                                  '该医嘱已经' ||
                                  hospital.get_field_dict_name('ORDER_LIST',
                                                               'STATUS1',
                                                               t_order_list.status1) ||
                                  '，不能修改.;');
        end if;
      end if;
    end if;
  
    if trim(replace(in_text, ' ', null)) in ('今日出院', '明日出院')
    then
      begin
        select 2
          into i
          from hospital.order_list
         where ownerid = t_order_list.ownerid
           and materialid is null
           and sundry_feeid is null
           and text = trim(replace(in_text, ' ', null))
           and rownum = 1;
        raise_application_error(-20001,
                                in_text || '医嘱已经录入，不能重复录入.;');
      exception
        when no_data_found then
          null;
      end;
    
      if t_order_list.long_flag <> 'B'
      then
        raise_application_error(-20001, in_text || '只能是下临时医嘱.;');
      end if;
    end if;
    if (t_order_list.materialid is not null or
       t_order_list.sundry_feeid is not null)
    then
      update order_list
         set comment_text = in_text
       where id = in_order_listid;
    else
      if (t_order_list.status = 'WAIT_ACK' and
         t_order_list.status1 = 'NONE')
      then
        update order_list set text = in_text where id = in_order_listid;
      else
        raise_application_error(-20001,
                                '该医嘱已经' ||
                                hospital.get_field_dict_name('ORDER_LIST',
                                                             'STATUS1',
                                                             t_order_list.status1) ||
                                '，不能修改.;');
      end if;
    end if;
    commit;
  end s_医嘱_批注;
  ----------------------------------------------------------------------------
  --  tiger  2009/02/24 - 再  s_医嘱_医嘱_确认_nc  中实现
  --  tiger  2007/01/01 - 医嘱确认后，判断病人的护理级别变化,记录在resident_patient表
  --  tiger  2006/12/31 - 医师确认医嘱后，修改dr_order_list_info
  --  tiger  2006/12/06 - 医师医嘱只能由录入者本人确认
  --                      其他医嘱，同以前的程序
  --  tiger  2002/01/03 - 确认属于和自己具有相同登录部门的人员录入的医嘱。
  --  tiger  2001/09/13 - 只能确认自己录入的医嘱
  --  lym    2016/08/16 - 生成检查申请单
  procedure s_医嘱_医嘱_确认(in_order_listid in varchar2
                            ,in_type         in varchar2) as
  begin
    s_医嘱_医嘱_确认_nc(in_order_listid, in_type);
    commit;
    rabbitmq.publish_ol_message(in_event        => events.ol_ack,
                                in_order_listid => in_order_listid);
  end s_医嘱_医嘱_确认;
  ----------------------------------------------------------------------------
  procedure s_医嘱_医嘱_确认_nc(in_order_listid in varchar2
                               ,in_type         in varchar2) as
    i               number;
    t_order_list    order_list%rowtype;
    t_resident_info resident_info%rowtype;
    v_pivas_flag    varchar2(30);
  begin
    lock_res.lock_ack_医嘱_操作(in_order_listid,
                                t_order_list,
                                t_resident_info);
    user_permit.s_ack_医嘱确认权;
    begin
      select 2
        into i
        from order_list
       where ownerid = t_order_list.ownerid
         and status = 'WAIT_ACK'
         and (type = in_type or
             type in ('OP1', 'AUTOFEE') and in_type in ('NURSE', 'DOCTOR') or
             in_type = 'OP' and type in ('OP1', 'OP2', 'AUTOFEE'))
         and (parentid is null or parentid = id)
         and rownum = 1;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '住院号为(' || t_order_list.ownerid ||
                                ')的病人(' ||
                                get_patient_name(t_order_list.patientid) ||
                                ')没有未确认的医嘱.;');
    end;
    for c in (select input_workerid, id order_listid
                from order_list
               where ownerid = t_order_list.ownerid
                 and status = 'WAIT_ACK'
                 and (type = in_type or
                     in_type = 'OP' and type in ('AUTOFEE', 'OP2', 'OP1') or
                     in_type in ('NURSE', 'DOCTOR') and
                     type in ('OP1', 'AUTOFEE'))
                 and (parentid is null or parentid = id))
    loop
      --raise_application_error(-20001,c.order_listid);
      if in_type in ('DOCTOR', 'OP')
      --医生医嘱和手术医嘱，必须本人确认
      then
        if c.input_workerid = hospital.login.get_workerid
        then
          prv_医嘱_医嘱_确认_处理(c.order_listid);
        end if;
      else
        --护理医嘱本科的任何人可以确认
        if is_same_login_dept(c.input_workerid, hospital.login.get_workerid) <> 0
        then
          prv_医嘱_医嘱_确认_处理(c.order_listid);
        end if;
      end if;
    end loop;
  
    if in_type in ('DOCTOR', 'OP')
    then
      s_医生确认处理医嘱nc(t_order_list.ownerid);
    end if;
  
    prv_判断护理级别(t_order_list.ownerid);
  
    --处理静脉配置中心配药的药品，直接修改科室为静脉配置中心药房
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
    if nvl(get_system_option('静脉配置中心配药科室' ||
                             t_resident_info.deptid),
           'N') = 'Y'
    then
      v_pivas_flag := '开通科室'; --需要处理静脉配置中心入账处理
    else
      v_pivas_flag := '未开通科室'; --忽略静脉配置中心入账处理
    end if;
  
    if v_pivas_flag = '开通科室'
    then
      for c in (select a.id, a.parentid, b.deptid
                  from hospital.order_list      a,
                       hospital.t静配中心配药表 b,
                       hospital.system_option   c
                 where a.ownerid = t_order_list.ownerid
                   and a.status = 'WAIT_ACK'
                   and (a.type = in_type or
                       in_type = 'OP' and
                       a.type in ('AUTOFEE', 'OP2', 'OP1') or
                       in_type in ('NURSE', 'DOCTOR') and
                       a.type in ('OP1', 'AUTOFEE'))
                   and (a.parentid is null or a.parentid = a.id)
                   and a.materialid = b.materialid
                   and a.packageid = b.packageid
                   and b.hospid = get_login_hospid
                   and get_system_option('药房' || a.material_deptid ||
                                         '静脉配置中心药房编码') = b.deptid
                   and c.id like '静脉配置中心药品用法%'
                   and a.use_method = c.remark
                 group by a.id, a.parentid, b.deptid)
      loop
        update order_list
           set material_deptid = c.deptid
         where ownerid = t_order_list.ownerid
           and id = c.id
            or parentid = c.parentid
           and material_deptid is not null;
      end loop;
    end if;
  end s_医嘱_医嘱_确认_nc;
  ----------------------------------------------------------------------------
  procedure s_医嘱_医嘱_审核(in_order_listid in varchar2) is
    i            number;
    t_order_list order_list%rowtype;
  begin
    user_permit.s_ack_医嘱确认权;
    lock_res.lock_ack_医嘱_操作(in_order_listid, t_order_list);
    if t_order_list.status = 'WAIT_AUDIT'
    then
      null;
    else
      raise_application_error(-20001, '请选择待审核的医嘱进行此操作.;');
    end if;
    begin
      select 2
        into i
        from order_list a, all_material b, all_worker c
       where (a.id = in_order_listid or a.parentid = in_order_listid)
         and a.materialid = b.id
         and c.id = hospital.login.get_workerid
         and nvl(substrb(b.attribute, 12, 1), 'C') >
             nvl(c.material_order_list_level, 'C')
         and rownum = 1;
      raise_application_error(-20001, '该医嘱包括了你不能审核的药品.;');
    exception
      when no_data_found then
        null;
    end;
    update order_list
       set status       = 'NORMAL',
           status1      = 'WAIT_ACC',
           ack_workerid = hospital.login.get_workerid,
           ack_date     = sysdate
     where (id = in_order_listid or
           parentid = nvl(t_order_list.parentid, t_order_list.id));
  end s_医嘱_医嘱_审核;
  ----------------------------------------------------------------------------
  procedure s_医嘱_医嘱_确认_取消(in_order_listid in varchar2
                                 ,in_type         in varchar2) as
  begin
    s_医嘱_医嘱_确认_取消nc(in_order_listid, in_type);
    commit;
    rabbitmq.publish_ol_message(in_event        => events.ol_ack_cancel,
                                in_order_listid => in_order_listid);
  end s_医嘱_医嘱_确认_取消;
  ----------------------------------------------------------------------------
  procedure s_医嘱_医嘱_确认_取消nc(in_order_listid in varchar2
                                   ,in_type         in varchar2) as
    t_order_list          order_list%rowtype;
    t_find                varchar2(1);
    t_parent_order_listid order_list.parentid%type;
    exam_apply_id         hospital.in_examination_application_.id%type;
  begin
    lock_res.lock_ack_医嘱_操作(in_order_listid, t_order_list);
    if t_order_list.parentid is not null
       and t_order_list.id <> t_order_list.parentid
    then
      lock_res.lock_order_list(t_order_list.parentid, t_order_list);
    end if;
  
    if in_type in ('DOCTOR', 'OP1', 'OP2')
    then
      if t_order_list.input_workerid <> hospital.login.get_workerid
      then
        raise_application_error(-20001,
                                '不是本人录入的医嘱，不能取消确认.;');
      end if;
    else
      if is_same_login_dept(t_order_list.input_workerid,
                            hospital.login.get_workerid) = 0
      then
        raise_application_error(-20001,
                                '不是本科室录入的医嘱，不能取消确认.;');
      end if;
    end if;
  
    t_find := 'N';
    if t_order_list.parentid is null
    then
      t_parent_order_listid := in_order_listid;
      if t_order_list.status in ('NORMAL', 'WAIT_AUDIT', 'WAIT_CHECK')
      then
        prv_医嘱_医嘱_确认_取消处理(in_order_listid);
        t_find := 'Y';
      end if;
    else
      t_parent_order_listid := t_order_list.parentid;
    end if;
    for c in (select id
                from order_list
               where parentid = t_parent_order_listid
                 and status in ('NORMAL', 'WAIT_AUDIT', 'WAIT_CHECK'))
    loop
      prv_医嘱_医嘱_确认_取消处理(c.id);
      t_find := 'Y';
    end loop;
    if t_find = 'N'
    then
      raise_application_error(-20001, '这一组里没有可以取消确认的医嘱.;');
    else
      if t_order_list.type in ('DOCTOR', 'OP1')
         and t_order_list.input_workerid = hospital.login.get_workerid
      then
        s_医生处理医嘱nc(t_order_list.ownerid);
      end if;
    end if;
    prv_判断护理级别(t_order_list.ownerid);
  
    --删除检查申请单
    begin
      select id
        into exam_apply_id
        from hospital.in_examination_application_
       where order_listid = in_order_listid;
      hospital.exam_apply.s_检查申请单_删除nc(exam_apply_id);
    exception
      when no_data_found then
        null;
    end;
  
  end s_医嘱_医嘱_确认_取消nc;
  ----------------------------------------------------------------------------
  procedure s_医嘱_判断护理级别(in_residentid in varchar2) is
  begin
    prv_判断护理级别(in_residentid);
  end s_医嘱_判断护理级别;
  procedure s_设置病情(in_residentid     in varchar2
                      ,in_illness_status in varchar2) is
    v_rowid rowid;
  begin
    lock_res.lock_resident_patient_by_rid(in_residentid);
    if in_illness_status not in ('0', '1', '2')
    then
      raise_application_error(-20001,
                              '非法的病情标志(' || in_illness_status ||
                              ').;');
    end if;
    begin
      select rowid
        into v_rowid
        from resident_patient
       where residentid = in_residentid
         for update nowait;
      update resident_patient
         set illness_status = in_illness_status
       where rowid = v_rowid;
      commit;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '住院号为(' || in_residentid ||
                                ')的病人不是当前住院病人.;');
    end;
  end s_设置病情;
  ----------------------------------------------------------------------------
  procedure s_护士处理医嘱(in_residentid in varchar2) is
  begin
    lock_res.lock_resident_patient_by_rid(in_residentid);
    prv_护士处理医嘱(in_residentid);
  end s_护士处理医嘱;
  ----------------------------------------------------------------------------
  procedure s_设置护理级别(in_residentid in varchar2) is
  begin
    lock_res.lock_resident_patient_by_rid(in_residentid);
    prv_判断护理级别(in_residentid);
  end s_设置护理级别;
  /***************************************************/
  /* 私有过程实现                                    */
  /***************************************************/
  ----------------------------------------------------------------------------
  --REM
  --REM   TIGER 2000/03/16  取消补充医嘱录入
  --REM
  procedure prv_医嘱_长_物资_增加(out_order_listid   out varchar2
                                 ,in_start_workerid  in varchar2
                                 ,in_start_date      in varchar2
                                 ,in_residentid      in varchar2
                                 ,in_material_deptid in varchar2
                                 ,in_materialid      in varchar2
                                 ,in_packageid       in varchar2
                                 ,in_medicament      in varchar2
                                 ,in_use_method      in varchar2
                                 ,in_frequence       in varchar2
                                 ,in_amount          in varchar2
                                 ,in_remark          in varchar2
                                 ,in_type            in varchar2
                                 ,in_po_flag         in varchar2
                                 ,in_drop_speed      in varchar2
                                 ,in_drop_speed_unit in varchar2) as
    t_order_listid      order_list.id%type;
    t_frequence         order_list.frequence%type;
    t_method            order_list.method%type;
    i                   number;
    v_account_subjectid account_subject.id%type;
  begin
    verify_material_package(in_materialid, in_packageid);
    select account_subjectid
      into v_account_subjectid
      from hospital.material
     where id = in_materialid;
    if v_account_subjectid not in ('12101', '12102')
       and in_medicament is null
       and in_use_method is null
       and in_frequence is null
    then
      null;
    else
      verify_not_null(in_medicament, '剂量');
      verify_not_null(in_use_method, '用法');
      verify_not_null(in_frequence, '频率');
      verify_valid_number(in_medicament, '剂量');
      verify_field_dict('ORDER_LIST',
                        'USE_METHOD',
                        upper(in_use_method),
                        '使用方法');
      verify_field_dict('ORDER_LIST',
                        'FREQUENCE',
                        upper(in_frequence),
                        '频率');
      if in_use_method in ('皮试', 'PS', 'ps', '点试')
      then
        raise_application_error(-20001, '皮试医嘱不能开长医嘱.;');
      end if;
      if in_remark is null
      then
        begin
          select to_number(remark)
            into t_frequence
            from field_dict
           where table_name = 'ORDER_LIST'
             and field_name = 'FREQUENCE'
             and field_value = upper(in_frequence)
             and rownum = 1;
        exception
          when others then
            raise_application_error(-20001,
                                    '系统参数表设置错误,请通知系统管理员.;');
        end;
      else
        verify_valid_account_seq(in_remark);
        --t_frequence := 1;
      end if;
    end if;
    begin
      select 2
        into i
        from hospital.limited_material a
       where deptid = in_material_deptid
         and materialid = in_materialid
         and packageid = hospital.get_min_packageid(in_packageid)
         and type in ('2', '3')
         and rownum = 1;
      raise_application_error(-20001,
                              '药品( ' || get_material_name(in_materialid) ||
                              ' )是限制使用药品。');
    exception
      when no_data_found then
        null;
    end;
  
    select ltrim(rtrim(to_char(to_number(in_medicament)))) ||
           nvl(content_unit, name) || ' ' ||
           lower(ltrim(rtrim(in_use_method))) || ' ' ||
           lower(ltrim(rtrim(in_frequence)))
      into t_method
      from all_package
     where id = in_packageid;
    prv_医嘱_长_物资_增加处理(t_order_listid,
                              in_start_workerid,
                              in_start_date,
                              in_residentid,
                              in_material_deptid,
                              in_materialid,
                              in_packageid,
                              in_medicament,
                              in_use_method,
                              in_frequence,
                              in_amount,
                              in_remark,
                              in_type,
                              in_po_flag,
                              in_drop_speed,
                              in_drop_speed_unit);
    out_order_listid := t_order_listid;
  end prv_医嘱_长_物资_增加;
  ----------------------------------------------------------------------------
  procedure prv_医嘱_长_物资_增加处理(out_order_listid   out varchar2
                                     ,in_start_workerid  in varchar2
                                     ,in_start_date      in varchar2
                                     ,in_residentid      in varchar2
                                     ,in_material_deptid in varchar2
                                     ,in_materialid      in varchar2
                                     ,in_packageid       in varchar2
                                     ,in_medicament      in varchar2
                                     ,in_use_method      in varchar2
                                     ,in_frequence       in varchar2
                                     ,in_amount          in varchar2
                                     ,in_remark          in varchar2
                                     ,in_type            in varchar2
                                     ,in_po_flag         in varchar2
                                     ,in_drop_speed      in varchar2
                                     ,in_drop_speed_unit in varchar2) as
    t_order_list       order_list%rowtype;
    t_order_listid     order_list.id%type;
    i                  number;
    v_start_workerid   worker.id%type;
    t_purchaseid       all_purchase.id%type;
    t_resident_info    resident_info%rowtype;
    t_frequence        order_list.frequence%type;
    t_use_method       order_list.use_method%type;
    t_medicament       order_list.medicament%type;
    t_method           order_list.method%type;
    v_patient_deptid   all_department.id%type;
    v_input_deptid     all_department.id%type;
    v_start_date       date default sysdate;
    v_perform_schedule order_list.perform_schedule%type;
    t_input_workerid   order_list.input_workerid%type;
    v_medicament       varchar2(30);
  begin
    verify_material_package(in_materialid, in_packageid);
    --verify_not_null(in_medicament, '剂量');
    --verify_not_null(in_use_method, '用法');
    --verify_not_null(in_frequence, '频率');
    --verify_valid_number(in_medicament, '剂量');
    /*
    verify_field_dict('ORDER_LIST',
                      'USE_METHOD',
                      upper(in_use_method),
                      '使用方法');
    verify_field_dict('ORDER_LIST',
                      'FREQUENCE',
                      upper(in_frequence),
                      '频率');
                      */
    verify_not_null(in_amount, '数量');
    verify_valid_number(in_amount, '数量');
    if to_number(in_amount) < 0
    then
      raise_application_error(-20001, '数量不能小于0');
    end if;
    t_medicament := to_number(in_medicament);
    t_use_method := lower(in_use_method);
    if in_frequence is not null
    then
      if in_remark is null
      then
        begin
          select to_number(remark)
            into t_frequence
            from field_dict
           where table_name = 'ORDER_LIST'
             and field_name = 'FREQUENCE'
             and field_value = upper(in_frequence)
             and rownum = 1;
        exception
          when others then
            raise_application_error(-20001,
                                    '系统参数表设置错误,请通知系统管理员.;');
        end;
      else
        verify_valid_account_seq(in_remark);
        t_frequence := 1;
      end if;
    else
      t_frequence := 1;
    end if;
    v_medicament := in_medicament;
    if v_medicament like '.%'
    then
      v_medicament := to_char(v_medicament, 'FM99990.9999');
    end if;
    select ltrim(rtrim(v_medicament)) || nvl(content_unit, name) || ' ' ||
           lower(ltrim(rtrim(in_use_method))) || ' ' ||
           lower(ltrim(rtrim(in_frequence)))
      into t_method
      from all_package
     where id = in_packageid;
    verify_current_resident(in_residentid);
    select b.*
      into t_resident_info
      from resident_patient a, resident_info b
     where b.residentid = in_residentid
       and a.record_no = b.record_no;
    verify_department(in_material_deptid);
    v_start_workerid := nvl(in_start_workerid, hospital.login.get_workerid);
    if in_start_date is not null
    then
      verify_valid_date(in_start_date, '医嘱开始时间');
      v_start_date := get_date_from_str(in_start_date);
      if v_start_date > sysdate
      then
        raise_application_error(-20001, '开始时间不能大于当前时间.;');
      end if;
    else
      v_start_date := sysdate;
    end if;
    if in_type not in ('NURSE')
    then
      user_permit.s_ack_处方权(v_start_workerid);
    end if;
    v_input_deptid := get_login_deptid;
    select deptid
      into v_patient_deptid
      from resident_info a, resident_patient b
     where a.residentid = in_residentid
       and a.record_no = b.record_no
       and rownum = 1;
    if nvl(v_patient_deptid, '2') <> nvl(v_input_deptid, '1')
    then
      if is_worker_login_dept(hospital.login.get_workerid, v_patient_deptid) <> 0
      then
        raise_application_error(-20001,
                                '你现在是以' ||
                                get_dept_name(v_input_deptid) ||
                                '的身份登录,不允许对' ||
                                get_dept_name(v_patient_deptid) ||
                                '病人医嘱进行处理 .;');
      else
        raise_application_error(-20001,
                                '非临床科室和辅助科室不能录入医嘱。');
      end if;
    end if;
    if in_type not in ('OP1', 'OP2')
    then
      s_ack_住院病人医生同科室(in_residentid,
                               v_start_workerid,
                               '不能给该病人下医嘱');
    end if;
    begin
      select 2
        into i
        from material_storage a, all_purchase b
       where a.deptid = in_material_deptid
         and a.materialid = in_materialid
         and b.materialid = in_materialid
         and b.packageid = get_min_packageid(in_packageid)
         and a.amount > 0
         and a.purchaseid = b.id
         and rownum = 1;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                get_dept_name(in_material_deptid) || '没有' ||
                                get_package_description(in_packageid) || '的' ||
                                get_material_name(in_materialid) || '.;');
    end;
    select a.id
      into t_purchaseid
      from all_purchase a, material_storage b
     where a.materialid = in_materialid
       and a.packageid = get_min_packageid(in_packageid)
       and b.deptid = in_material_deptid
       and a.id = b.purchaseid
       and rownum = 1;
    select max(nvl(sequence, 0))
      into t_order_list.sequence
      from order_list
     where ownerid = in_residentid
       and start_date <= v_start_date;
  
    update order_list
       set sequence = sequence + 1
     where ownerid = in_residentid
       and sequence >= nvl(t_order_list.sequence, 0) + 1;
  
    select b.patientid
      into t_order_list.patientid
      from resident_info a, resident_patient b
     where a.residentid = in_residentid
       and a.record_no = b.record_no;
    t_order_listid := get_next_order_listid;
    begin
      select field_mean
        into v_perform_schedule
        from field_dict
       where table_name = 'ORDER_LIST'
         and field_name = 'PERFORM_SCHEDULE'
         and field_value = upper(in_frequence)
         and rownum = 1;
    exception
      when no_data_found then
        null;
    end;
    --护理医嘱录入者是主治医生 
    if (in_type = 'NURSE' and
       nvl(get_system_option('护理医嘱_录入者是主治医生'), 'N') = 'Y')
    then
      select a.resident_info_charge_doctorid
        into t_input_workerid
        from hospital.resident_patient a
       where a.residentid = in_residentid
         and a.patientid = t_resident_info.patientid
         and rownum = 1;
    else
      t_input_workerid := hospital.login.get_workerid;
    end if;
    insert into order_list
      (id,
       patientid,
       ownerid,
       sequence,
       material_deptid,
       execute_deptid,
       start_workerid,
       start_date,
       input_workerid,
       input_date,
       attribute,
       long_flag,
       materialid,
       packageid,
       medicament,
       use_method,
       frequence,
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
       subseq,
       perform_schedule,
       po_flag,
       drop_speed,
       drop_speed_unit)
    values
      (t_order_listid,
       t_order_list.patientid,
       in_residentid,
       nvl(t_order_list.sequence, 0) + 1,
       in_material_deptid,
       t_resident_info.deptid,
       v_start_workerid,
       v_start_date,
       t_input_workerid,
       sysdate,
       'B',
       'A',
       in_materialid,
       in_packageid,
       t_medicament,
       t_use_method,
       t_frequence,
       t_method,
       'WAIT_ACK',
       'NONE',
       to_number(in_amount),
       get_药品零售价(in_material_deptid,
                      in_materialid,
                      in_packageid,
                      t_purchaseid),
       0,
       hospital.login.get_workerid,
       sysdate,
       in_remark,
       in_type,
       1,
       v_perform_schedule,
       in_po_flag,
       in_drop_speed,
       in_drop_speed_unit);
    out_order_listid := t_order_listid;
  end prv_医嘱_长_物资_增加处理;
  ----------------------------------------------------------------------------
  --
  --     tiger 2006/09/21 - 增加限价处理
  --     tiger 2000/05/04 - 判断不能增加两条以上的床位费
  --
  procedure prv_医嘱_长_杂费_增加(out_order_listid  out varchar2
                                 ,in_start_workerid in varchar2
                                 ,in_start_date     in varchar2
                                 ,in_residentid     in varchar2
                                 ,in_execute_deptid in varchar2
                                 , --核算科室
                                  in_sundry_feeid   in varchar2
                                 ,in_price          in varchar2
                                 ,in_amount         in varchar2
                                 ,in_remark         in varchar2
                                 ,in_type           in varchar2
                                 ,in_method         in varchar2
                                 ,in_hospid         in varchar2
                                 ,in_check_point    in varchar2) as
    t_order_listid    order_list.id%type;
    t_order_list      order_list%rowtype;
    t_sundry_fee      sundry_fee_config%rowtype;
    t_start_workerid  order_list.start_workerid%type;
    i                 number;
    v_patient_deptid  all_department.id%type;
    v_input_deptid    all_department.id%type;
    v_start_date      date;
    v_order_list_attr order_list.attribute%type;
    t_input_workerid  order_list.input_workerid%type;
  begin
    t_start_workerid := nvl(in_start_workerid, hospital.login.get_workerid);
    if in_start_date is not null
    then
      verify_valid_date(in_start_date, '医嘱开始时间');
      v_start_date := get_date_from_str(in_start_date);
      if v_start_date > sysdate
      then
        raise_application_error(-20001, '开始时间不能大于当前时间.;');
      end if;
    else
      v_start_date := sysdate;
    end if;
    verify_department(in_execute_deptid);
    verify_current_resident(in_residentid);
    v_input_deptid := get_login_deptid;
    select deptid
      into v_patient_deptid
      from resident_info a, resident_patient b
     where a.residentid = in_residentid
       and a.record_no = b.record_no
       and rownum = 1;
    if nvl(get_system_option('禁止录入非病人科室长期杂费医嘱'), 'Y') = 'Y'
    then
      if nvl(v_patient_deptid, '2') <> nvl(in_execute_deptid, '1')
      then
        raise_application_error(-20001,
                                '长期杂费医嘱执行科室必须是病人住院科室.;');
      end if;
      if nvl(v_patient_deptid, '2') <> nvl(v_input_deptid, '1')
      then
        if is_worker_login_dept(hospital.login.get_workerid,
                                v_patient_deptid) <> 0
        then
          raise_application_error(-20001,
                                  '你现在是以' ||
                                  get_dept_name(v_input_deptid) ||
                                  '的身份登录,不允许对' ||
                                  get_dept_name(v_patient_deptid) ||
                                  '病人医嘱进行处理 .;');
        else
          raise_application_error(-20001,
                                  '非临床科室和辅助科室不能录入医嘱。');
        end if;
      end if;
    end if;
    if in_type not in ('OP1', 'OP2', 'AUTOFEE')
    then
      s_ack_住院病人医生同科室(in_residentid,
                               t_start_workerid,
                               '不能给该病人下医嘱');
    end if;
    verify_not_null(in_amount, '数量');
    verify_valid_number(in_amount, '数量');
    if to_number(in_amount) < 0
    then
      raise_application_error(-20001, '数量不能小于0.;');
    end if;
    begin
      select *
        into t_sundry_fee
        from sundry_fee_config
       where hospid = in_hospid
         and sundry_feeid = in_sundry_feeid
         and rownum = 1;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '编号为' || in_sundry_feeid ||
                                '的杂费项目不存在.;');
    end;
  
    --杂费 attribute 为C 代表用户自行入账医嘱
    if t_sundry_fee.attribute = 'C'
    then
      v_order_list_attr := 'C';
    else
      v_order_list_attr := 'B';
    end if;
  
    if get_sundry_fee_name(t_sundry_fee.sundry_feeid) = '床位费'
    then
      begin
        select 2
          into i
          from order_list
         where ownerid = in_residentid
           and long_flag = 'A'
           and sundry_feeid = in_sundry_feeid
           and status in ('WAIT_ACK', 'NORMAL')
           and rownum = 1;
        raise_application_error(-20001,
                                '该病人已经有床位费,不能增加两条。');
      exception
        when no_data_found then
          null;
      end;
    end if;
  
    if t_sundry_fee.sundry_feeid in
       ('120100002', '120100003', '120100004', '120100005')
    then
      begin
        select 2
          into i
          from order_list
         where ownerid = in_residentid
           and long_flag = 'A'
           and sundry_feeid in
               ('120100002', '120100003', '120100004', '120100005')
           and status in ('WAIT_ACK', 'WAIT_CHECK', 'NORMAL')
           and rownum = 1;
        raise_application_error(-20001,
                                '该病人已经有护理级别,不能增加两条。');
      exception
        when no_data_found then
          null;
      end;
    end if;
  
    if t_sundry_fee.max_price is not null
    then
      if to_number(in_price) > t_sundry_fee.max_price
      then
        raise_application_error(-20001,
                                hospital.get_sundry_fee_name(t_sundry_fee.sundry_feeid) ||
                                '单价不能大于最高限价(' ||
                                t_sundry_fee.max_price || ' ).;');
      end if;
    end if;
  
    if t_sundry_fee.min_price is not null
    then
      if to_number(in_price) < t_sundry_fee.min_price
      then
        raise_application_error(-20001,
                                hospital.get_sundry_fee_name(t_sundry_fee.sundry_feeid) ||
                                '单价不能大于最高限价(' ||
                                t_sundry_fee.max_price || ' ).;');
      end if;
    end if;
  
    select max(nvl(sequence, 0))
      into t_order_list.sequence
      from order_list
     where ownerid = in_residentid
       and start_date <= v_start_date;
  
    --移动医嘱  
    update order_list
       set sequence = sequence + 1
     where ownerid = in_residentid
       and sequence >= nvl(t_order_list.sequence, 0) + 1;
  
    select b.patientid
      into t_order_list.patientid
      from resident_info a, resident_patient b
     where a.residentid = in_residentid
       and a.record_no = b.record_no;
    --护理医嘱录入者是主治医生  
    begin
      if (in_type = 'NURSE' and
         nvl(get_system_option('护理医嘱_录入者是主治医生'), 'Y') = 'Y')
      then
        select a.resident_info_charge_doctorid
          into t_input_workerid
          from hospital.resident_patient a
         where a.residentid = in_residentid
           and rownum = 1;
      else
        t_input_workerid := hospital.login.get_workerid;
      end if;
    end;
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
       method,
       subseq,
       check_point)
    values
      (t_order_listid,
       t_order_list.patientid,
       in_residentid,
       nvl(t_order_list.sequence, 0) + 1,
       in_execute_deptid,
       t_start_workerid,
       v_start_date,
       t_input_workerid,
       sysdate,
       v_order_list_attr,
       'A',
       in_sundry_feeid,
       'WAIT_ACK',
       'NONE',
       to_number(in_amount),
       to_number(in_price),
       0,
       hospital.login.get_workerid,
       sysdate,
       in_remark,
       in_type,
       substrb(in_method, 1, 60),
       1,
       decode(in_check_point, null, null, '(' || in_check_point || ')'));
    out_order_listid := t_order_listid;
  end prv_医嘱_长_杂费_增加;
  ----------------------------------------------------------------------------
  --
  --     tiger    2001/10/15 - 增加职员的登录部门、门诊核算部门和住院核算部门管理
  --  tiger  2001/09/13  - 允许执行部门录入自己部门的临时医嘱。
  --

  procedure prv_医嘱_临_物资_增加(out_order_listid   out varchar2
                                 ,in_start_workerid  in varchar2
                                 ,in_start_date      in varchar2
                                 ,in_residentid      in varchar2
                                 ,in_material_deptid in varchar2
                                 ,in_materialid      in varchar2
                                 ,in_packageid       in varchar2
                                 ,in_method          in varchar2
                                 ,in_medicament      in varchar2
                                 ,in_use_method      in varchar2
                                 ,in_frequence       in varchar2
                                 ,in_amount          in varchar2
                                 ,in_remark          in varchar2
                                 ,in_type            in varchar2
                                 ,in_po_flag         in varchar2
                                 ,in_drop_speed      in varchar2
                                 ,in_drop_speed_unit in varchar2) as
    t_order_listid        order_list.id%type;
    i                     number;
    t_start_worker        worker%rowtype;
    t_purchaseid          all_purchase.id%type;
    t_resident_info       resident_info%rowtype;
    t_order_list_sequence number;
    v_input_deptid        all_department.id%type;
    v_execute_deptid      all_department.id%type;
    t_frequence           order_list.frequence%type;
    t_use_method          order_list.use_method%type;
    t_medicament          order_list.medicament%type;
    t_method              order_list.method%type;
    pos                   number;
    pos1                  number;
    v_start_date          date;
    t_input_workerid      order_list.input_workerid%type;
    s_start_date          date;
  begin
    verify_department(in_material_deptid);
    verify_not_null(in_amount, '数量');
    verify_valid_number(in_amount, '数量');
    if to_number(in_amount) < 0
    then
      raise_application_error(-20001, '数量不能小于0.;');
    end if;
  
    t_start_worker.id := nvl(in_start_workerid, hospital.login.get_workerid);
    if in_type not in ('NURSE')
    then
      user_permit.s_ack_处方权(t_start_worker.id);
    end if;
    if in_type not in ('OP1', 'OP2')
    then
      s_ack_住院病人医生同科室(in_residentid,
                               in_start_workerid,
                               '不能给该病人下医嘱');
    end if;
    verify_current_resident(in_residentid);
    if in_start_date is not null
    then
      verify_valid_date(in_start_date, '医嘱开始时间');
      v_start_date := get_date_from_str(in_start_date);
      select a.in_date
        into s_start_date
        from hospital.resident_info_ a
       where a.residentid = in_residentid
         and rownum = 1;
      if (v_start_date > sysdate or v_start_date < s_start_date)
      then
        raise_application_error(-20001,
                                '开始时间不能大于当前时间或者开始时间小于入院时间.;');
      end if;
    else
      v_start_date := sysdate;
    end if;
  
    begin
      select 2
        into i
        from hospital.limited_material a
       where deptid = in_material_deptid
         and materialid = in_materialid
         and packageid = hospital.get_min_packageid(in_packageid)
         and type in ('2', '3')
         and rownum = 1;
      raise_application_error(-20001,
                              '药品( ' || get_material_name(in_materialid) ||
                              ' )是限制使用药品。');
    exception
      when no_data_found then
        null;
    end;
    select b.*
      into t_resident_info
      from resident_patient a, resident_info b
     where a.record_no = b.record_no
       and b.residentid = in_residentid;
    verify_department(in_material_deptid);
    verify_material_package(in_materialid, in_packageid);
    v_input_deptid := get_login_deptid;
    if t_resident_info.deptid = v_input_deptid
    then
      v_execute_deptid := t_resident_info.deptid;
    else
      if is_worker_login_dept(hospital.login.get_workerid,
                              t_resident_info.deptid) <> 0
      then
        raise_application_error(-20001,
                                '你现在是以' ||
                                get_dept_name(v_input_deptid) ||
                                '的身份登录,不允许对' ||
                                get_dept_name(t_resident_info.deptid) ||
                                '病人医嘱进行处理 .;');
      end if;
      begin
        select 2
          into i
          from system_option
         where id like '医嘱录入_执行部门%'
           and name = v_input_deptid
           and rownum = 1;
        null;
        --        if in_material_deptid <> v_input_deptid
        --        then
        --          raise_application_error(-20001,
        --                                  '非临床科室录入医嘱只能消耗本科室的物资.;');
        --        end if;
        v_execute_deptid := v_input_deptid;
      exception
        when no_data_found then
          raise_application_error(-20001,
                                  '非临床科室和辅助科室不能录入医嘱。');
      end;
    end if;
    begin
      select b.id
        into t_purchaseid
        from material_storage a, all_purchase b
       where a.deptid = in_material_deptid
         and a.materialid = in_materialid
         and b.materialid = in_materialid
         and b.packageid = get_min_packageid(in_packageid)
         and a.amount > 0
         and a.purchaseid = b.id
         and rownum = 1;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                get_dept_name(in_material_deptid) || '没有' ||
                                get_package_description(in_packageid) || '的' ||
                                get_material_name(in_materialid) || '.;');
    end;
    select max(nvl(sequence, 0))
      into t_order_list_sequence
      from order_list
     where ownerid = in_residentid
       and start_date <= v_start_date;
    t_order_listid := get_next_order_listid;
  
    if in_medicament is not null
    then
      t_medicament := to_number(in_medicament);
      t_use_method := lower(in_use_method);
      t_frequence  := 1;
    
      select ltrim(rtrim(in_medicament)) || nvl(content_unit, name) || ' ' ||
             lower(ltrim(rtrim(in_use_method))) || ' ' ||
             lower(ltrim(rtrim(in_frequence)))
        into t_method
        from all_package
       where id = in_packageid;
    elsif in_method is not null
    then
      t_method := lower(in_method);
      pos      := instr(t_method, ' ', 1, 1);
      pos1     := instr(t_method, ' ', 1, 2);
      if pos > 0
         and pos1 > 0
      then
        t_use_method := substr(t_method, pos + 1, pos1 - pos - 1);
        t_frequence  := 1;
        t_method     := lower(in_method);
      end if;
    end if;
  
    if nvl(get_system_option('医嘱录入_临时用药医嘱_使用录入用法'), 'N') = 'Y'
    then
      t_method := in_method;
    end if;
    if in_method in ('h st', '皮试 st', 'ih st', '点试 st')
    then
      t_method := in_method;
      if in_amount > 1
      then
        raise_application_error(-20001, '皮试用法，只能开1支药');
      end if;
    end if;
    if in_frequence is not null
    then
      if in_remark is null
      then
        begin
          select to_number(remark)
            into t_frequence
            from field_dict
           where table_name = 'ORDER_LIST'
             and field_name = 'FREQUENCE'
             and field_value = upper(in_frequence)
             and rownum = 1;
        exception
          when no_data_found then
            t_frequence := 1;
          when others then
            raise_application_error(-20001,
                                    '系统参数表设置错误,请通知系统管理员.;');
        end;
      else
        verify_valid_account_seq(in_remark);
        t_frequence := 1;
      end if;
    else
      t_frequence := 1;
    end if;
    update order_list
       set sequence = sequence + 1
     where ownerid = in_residentid
       and sequence >= nvl(t_order_list_sequence, 0) + 1;
    --护理医嘱录入员是主治医生
    if (in_type = 'NURSE' and
       nvl(get_system_option('护理医嘱_录入者是主治医生'), 'Y') = 'Y')
    then
      select a.resident_info_charge_doctorid
        into t_input_workerid
        from hospital.resident_patient a
       where a.residentid = in_residentid
         and a.patientid = t_resident_info.patientid
         and rownum = 1;
    else
      t_input_workerid := hospital.login.get_workerid;
    end if;
    insert into order_list
      (id,
       patientid,
       ownerid,
       sequence,
       material_deptid,
       execute_deptid,
       start_workerid,
       start_date,
       input_workerid,
       input_date,
       attribute,
       long_flag,
       materialid,
       packageid,
       method,
       medicament,
       use_method,
       frequence,
       status,
       status1,
       amount,
       price,
       executed_days,
       operator,
       update_date,
       remark,
       type,
       subseq,
       po_flag,
       drop_speed,
       drop_speed_unit)
    values
      (t_order_listid,
       t_resident_info.patientid,
       in_residentid,
       nvl(t_order_list_sequence, 0) + 1,
       in_material_deptid,
       v_execute_deptid,
       t_start_worker.id,
       v_start_date,
       t_input_workerid,
       sysdate,
       'B',
       'B',
       in_materialid,
       in_packageid,
       t_method,
       t_medicament,
       t_use_method,
       t_frequence,
       'WAIT_ACK',
       'NONE',
       to_number(in_amount),
       get_药品零售价(in_material_deptid,
                      in_materialid,
                      in_packageid,
                      t_purchaseid),
       0,
       hospital.login.get_workerid,
       sysdate,
       in_remark,
       in_type,
       1,
       in_po_flag,
       in_drop_speed,
       in_drop_speed_unit);
    out_order_listid := t_order_listid;
  end prv_医嘱_临_物资_增加;
  ----------------------------------------------------------------------------
  --
  --     tiger    2006/09/21 - 增加限价处理
  --     tiger    2002/01/03 - 取消限制：非临床科室只能录入执行科室自己的医嘱，原因医嘱模版中确实存在一些伴随医嘱属于临床科室执行。
  --     tiger    2001/10/15 - 增加职员的登录部门、门诊核算部门和住院核算部门管理
  --     tiger    2001/09/13 - 允许执行部门录入自己部门的临时医嘱。
  --
  procedure prv_医嘱_临_杂费_增加(out_order_listid  out varchar2
                                 ,in_start_workerid in varchar2
                                 ,in_start_date     in varchar2
                                 ,in_residentid     in varchar2
                                 ,in_execute_deptid in varchar2
                                 , --核算科室
                                  in_sundry_feeid   in varchar2
                                 ,in_price          in varchar2
                                 ,in_amount         in varchar2
                                 ,in_remark         in varchar2
                                 ,in_type           in varchar2
                                 ,in_method         in varchar2
                                 ,in_hospid         in varchar2
                                 ,in_check_point    in varchar2
                                 ,in_account_type   in varchar2 default null) as
    t_order_list     order_list%rowtype;
    t_order_listid   order_list.id%type;
    t_start_workerid order_list.start_workerid%type;
    v_patient_deptid all_department.id%type;
    v_input_deptid   all_department.id%type;
    t_sundry_fee     sundry_fee_config%rowtype;
    i                number;
    v_start_date     date;
    t_input_workerid order_list.input_workerid%type;
    s_start_date     date;
  begin
    t_start_workerid := nvl(in_start_workerid, hospital.login.get_workerid);
    verify_department(in_execute_deptid);
    verify_current_resident(in_residentid);
    verify_sundry_fee(in_sundry_feeid);
    verify_not_null(in_amount, '数量');
    verify_valid_number(in_amount, '数量');
    if to_number(in_amount) < 0
    then
      raise_application_error(-20001, '数量不能小于0.;');
    end if;
    if in_start_date is not null
    then
      verify_valid_date(in_start_date, '医嘱开始时间');
      v_start_date := get_date_from_str(in_start_date);
      select a.in_date
        into s_start_date
        from hospital.resident_info_ a
       where a.residentid = in_residentid
         and rownum = 1;
      if (v_start_date > sysdate or v_start_date < s_start_date)
      then
        raise_application_error(-20001,
                                '开始时间不能大于当前时间或者开始时间小于入院时间.;');
      end if;
    else
      v_start_date := sysdate;
    end if;
  
    select max(nvl(sequence, 0))
      into t_order_list.sequence
      from order_list
     where ownerid = in_residentid
       and start_date <= v_start_date;
    select b.patientid
      into t_order_list.patientid
      from resident_info a, resident_patient b
     where a.residentid = in_residentid
       and a.record_no = b.record_no;
    v_input_deptid := get_login_deptid;
    select deptid
      into v_patient_deptid
      from resident_info a, resident_patient b
     where a.residentid = in_residentid
       and a.record_no = b.record_no
       and rownum = 1;
    if nvl(v_patient_deptid, '2') <> nvl(v_input_deptid, '1')
    then
      if is_worker_login_dept(hospital.login.get_workerid, v_patient_deptid) <> 0
      then
        raise_application_error(-20001,
                                '你现在是以' ||
                                get_dept_name(v_input_deptid) ||
                                '的身份登录,不允许对' ||
                                get_dept_name(v_patient_deptid) ||
                                '病人医嘱进行处理 .;');
      end if;
      begin
        select 2
          into i
          from system_option
         where id like '医嘱录入_执行部门%'
           and name = v_input_deptid
           and rownum = 1;
        /*
               if in_execute_deptid <> v_input_deptid then
                 raise_application_error(-20001,'非临床科室只能录入本科室执行的医嘱,'||
                        '不能录入执行科室为'||get_dept_name(in_execute_deptid)||'.;');
               end if;
        */
      exception
        when no_data_found then
          raise_application_error(-20001,
                                  '非临床科室和辅助科室不能录入医嘱。');
      end;
    end if;
  
    begin
      select *
        into t_sundry_fee
        from sundry_fee_config
       where hospid = in_hospid
         and sundry_feeid = in_sundry_feeid;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '编号为(' || in_sundry_feeid ||
                                ')的杂费项目不存在.;');
    end;
  
    if t_sundry_fee.max_price is not null
    then
      if to_number(in_price) > t_sundry_fee.max_price
      then
        raise_application_error(-20001,
                                get_sundry_fee_name(t_sundry_fee.sundry_feeid) ||
                                '单价不能大于最高限价(' ||
                                t_sundry_fee.max_price || ' ).;');
      end if;
    end if;
  
    if t_sundry_fee.min_price is not null
    then
      if to_number(in_price) < t_sundry_fee.min_price
      then
        raise_application_error(-20001,
                                get_sundry_fee_name(t_sundry_fee.sundry_feeid) ||
                                '单价不能大于最高限价(' ||
                                t_sundry_fee.max_price || ' ).;');
      end if;
    end if;
  
    update order_list
       set sequence = sequence + 1
     where ownerid = in_residentid
       and sequence >= nvl(t_order_list.sequence, 0) + 1;
    if (in_type = 'NURSE' and
       nvl(get_system_option('护理医嘱_录入者是主治医生'), 'Y') = 'Y')
    then
      select a.resident_info_charge_doctorid
        into t_input_workerid
        from hospital.resident_patient a
       where a.residentid = in_residentid
         and rownum = 1;
    else
      t_input_workerid := hospital.login.get_workerid;
    end if;
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
       method,
       subseq,
       check_point,
       account_type)
    values
      (t_order_listid,
       t_order_list.patientid,
       in_residentid,
       nvl(t_order_list.sequence, 0) + 1,
       in_execute_deptid,
       t_start_workerid,
       v_start_date,
       t_input_workerid,
       sysdate,
       'B',
       'B',
       in_sundry_feeid,
       'WAIT_ACK',
       'NONE',
       to_number(in_amount),
       nvl(to_number(in_price), 0),
       0,
       hospital.login.get_workerid,
       sysdate,
       in_remark,
       in_type,
       in_method,
       1,
       decode(in_check_point, null, null, in_check_point),
       in_account_type);
    out_order_listid := t_order_listid;
  end prv_医嘱_临_杂费_增加;
  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
  --     tiger 2002/09/16 - 取消医嘱录入时的费用控制
  --     tiger 2001/10/16 - 增加职员的登录部门、门诊核算部门和住院核算部门管理

  procedure prv_医嘱_医嘱_杂费_增加(out_order_listid  out varchar2
                                   ,in_long_flag      in varchar2
                                   ,in_start_date     in varchar2
                                   ,in_start_workerid in varchar2
                                   ,in_residentid     in varchar2
                                   ,in_deptid         in varchar2
                                   , --核算科室
                                    in_sundry_feeid   in varchar2
                                   ,in_price          in varchar2
                                   ,in_amount         in varchar2
                                   ,in_remark         in varchar2
                                   ,in_type           in varchar2
                                   ,in_method         in varchar2
                                   ,in_hospid         in varchar2
                                   ,in_check_point    in varchar2
                                   ,in_account_type   in varchar2 default null) as
    --i                  number;
    t_sundry_fee       sundry_fee_config%rowtype;
    t_resident_info    resident_info%rowtype;
    t_order_listid     order_list.id%type;
    t_resident_patient resident_patient%rowtype;
    t_long_flag        order_list.long_flag%type;
  begin
    t_long_flag := in_long_flag;
    begin
      select a.*
        into t_resident_patient
        from resident_patient a, resident_info b
       where b.residentid = in_residentid
         and a.record_no = b.record_no;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '该住院号(' || in_residentid ||
                                ')的记录没有找到.;');
    end;
    if t_resident_patient.status = 'NORMAL'
    then
      null;
    elsif t_resident_patient.status = 'WAIT_BED'
    then
      raise_application_error(-20001, '请先安排床位,再下医嘱.;');
    elsif t_resident_patient.status = 'WAIT_OUT'
    then
      raise_application_error(-20001,
                              '该病人已经请求出院,不能再录入医嘱,您可以对该病人取消请求出院,再录入医嘱.;');
    elsif t_resident_patient.status = 'WAIT_PRE'
    then
      raise_application_error(-20001, '该病人需要先交押金,再录入医嘱.;');
    elsif t_resident_patient.status = 'WAIT_ACC'
    then
      raise_application_error(-20001, '该病人需要先结算,再录入医嘱.;');
    else
      raise_application_error(-20001,
                              '不能识别的病人状态(' ||
                              t_resident_patient.status ||
                              '),请通知系统管理员.;');
    end if;
    verify_department(in_deptid);
    verify_sundry_fee(in_sundry_feeid);
    verify_current_resident(in_residentid);
    select *
      into t_sundry_fee
      from sundry_fee_config
     where hospid = in_hospid
       and sundry_feeid = in_sundry_feeid;
    select a.*
      into t_resident_info
      from resident_info a, resident_patient b
     where a.residentid = in_residentid
       and a.record_no = b.record_no;
    if t_sundry_fee.fee_flag = 'STATIC'
       and to_number(in_price) <> t_sundry_fee.price
    then
      raise_application_error(-20001,
                              '杂费项目(' || t_sundry_fee.sundry_feeid || ')' ||
                              get_sundry_fee_name(t_sundry_fee.sundry_feeid) ||
                              '的价格是' || to_char(t_sundry_fee.price) ||
                              '，这个价格不允许修改.;');
    end if;
    if t_sundry_fee.order_list_flag in ('LONG', 'IN_LONG')
    then
      if t_long_flag = 'B'
      then
        raise_application_error(-20001,
                                '杂费项目(' || t_sundry_fee.sundry_feeid ||
                                ')只能用于长期医嘱.;');
      end if;
    elsif t_sundry_fee.order_list_flag in ('TEMP', 'IN_TEMP')
    then
      if t_long_flag = 'A'
      then
        /*        raise_application_error(-20001,
        '杂费项目(' || t_sundry_fee.sundry_feeid ||
        ')只能用于临时医嘱.;');*/
        t_long_flag := 'B';
      end if;
    elsif t_sundry_fee.order_list_flag = 'CLASS'
    then
      raise_application_error(-20001,
                              '杂费项目(' || t_sundry_fee.sundry_feeid ||
                              ')是分类，不能作为医嘱插入。');
    elsif t_sundry_fee.order_list_flag = 'OUT'
    then
      raise_application_error(-20001,
                              '杂费项目(' || t_sundry_fee.sundry_feeid ||
                              ')是专门用于门诊费用，不能作为医嘱插入。');
    end if;
    if substrb(t_sundry_fee.dept_flag, 1, 1) = 'A'
       and in_deptid = t_sundry_fee.deptid
    then
      null;
    elsif substrb(t_sundry_fee.dept_flag, 2, 1) = 'A'
          and in_deptid = get_login_deptid
    then
      null;
    elsif substrb(t_sundry_fee.dept_flag, 3, 1) = 'A'
    then
      null;
    elsif substrb(t_sundry_fee.dept_flag, 4, 1) = 'A'
          and in_deptid = t_resident_info.deptid
    then
      null;
    else
      raise_application_error(-20001,
                              get_sundry_fee_name(t_sundry_fee.sundry_feeid) ||
                              '的执行科室不能是' ||
                              get_dept_name(in_deptid) || '.;');
    end if;
    if t_long_flag = 'A'
    then
      prv_医嘱_长_杂费_增加(t_order_listid,
                            in_start_workerid,
                            in_start_date,
                            in_residentid,
                            in_deptid,
                            in_sundry_feeid,
                            in_price,
                            in_amount,
                            in_remark,
                            in_type,
                            in_method,
                            in_hospid,
                            in_check_point);
    elsif t_long_flag = 'B'
    then
      prv_医嘱_临_杂费_增加(t_order_listid,
                            in_start_workerid,
                            in_start_date,
                            in_residentid,
                            in_deptid,
                            in_sundry_feeid,
                            in_price,
                            in_amount,
                            in_remark,
                            in_type,
                            in_method,
                            in_hospid,
                            in_check_point,
                            in_account_type);
    else
      raise_application_error(-20001,
                              '不能处理的医嘱标志(' || in_long_flag ||
                              ').;');
    end if;
    out_order_listid := t_order_listid;
  end prv_医嘱_医嘱_杂费_增加;
  -----------------------------------------------------------------
  procedure prv_医嘱_医嘱_物资_增加(out_order_listid   out varchar2
                                   ,in_long_flag       in varchar2
                                   ,in_start_date      in varchar2
                                   ,in_start_workerid  in varchar2
                                   ,in_residentid      in varchar2
                                   ,in_deptid          in varchar2
                                   ,in_materialid      in varchar2
                                   ,in_packageid       in varchar2
                                   ,in_method          in varchar2
                                   ,in_medicament      in varchar2
                                   ,in_use_method      in varchar2
                                   ,in_frequence       in varchar2
                                   ,in_amount          in varchar2
                                   ,in_remark          in varchar2
                                   ,in_type            in varchar2
                                   ,in_po_flag         in varchar2
                                   ,in_drop_speed      in varchar2
                                   ,in_drop_speed_unit in varchar2) as
    t_order_listid       order_list.id%type;
    t_resident_patient   resident_patient%rowtype;
    i                    number;
    t_material_attribute material.attribute%type;
    v_skin_test_result   order_list.skin_test_result%type;
    t_skin_test_result   order_list.skin_test_result%type;
    s_skin_test_result   prescription.skin_test_result%type;
    v_hour               number;
    t_compare_materialid skintest_compare.compare_materialid%type;
  begin
    begin
      select a.*
        into t_resident_patient
        from resident_patient a, resident_info b
       where b.residentid = in_residentid
         and a.record_no = b.record_no;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '该住院号(' || in_residentid ||
                                ')的记录没有找到.;');
      when too_many_rows then
        raise_application_error(-20001,
                                '该住院号(' || in_residentid ||
                                ')的记录找到多条.;');
    end;
    if t_resident_patient.status = 'NORMAL'
    then
      null;
    elsif t_resident_patient.status = 'WAIT_BED'
    then
      raise_application_error(-20001, '请先安排床位,再下医嘱.;');
    elsif t_resident_patient.status = 'WAIT_OUT'
    then
      raise_application_error(-20001,
                              '该病人已经请求出院,不能再录入医嘱,您可以对该病人取消请求出院,再录入医嘱.;');
    elsif t_resident_patient.status = 'WAIT_PRE'
    then
      raise_application_error(-20001, '该病人需要先交押金,再录入医嘱.;');
    else
      raise_application_error(-20001,
                              '不能识别的病人状态(' ||
                              t_resident_patient.status ||
                              '),请通知系统管理员.;');
    end if;
  
    select attribute
      into t_material_attribute
      from material
     where id = in_materialid;
    if substrb(t_material_attribute, 2, 1) = 'B'
    then
      verify_worker(in_start_workerid, '开单医师');
      pre_ack.ack_麻醉处方权(hospital.login.get_workerid);
    end if;
  
    if lic.get_软件注册合法性验证('住院抗菌药物三级管理系统') >= 0
    then
      if nvl(get_system_option('抗菌药物三级用药录入限制'), 'N') = 'Y'
      then
        verify_worker(in_start_workerid, '开单医师');
        begin
          select 2
            into i
            from material_config b, all_worker c
           where b.materialid = in_materialid
             and c.id = in_start_workerid
             and nvl(substrb(b.attribute, 12, 1), 'C') >
                 nvl(c.material_order_list_level, 'C')
             and rownum = 1;
          raise_application_error(-20001,
                                  '医师( ' ||
                                  hospital.get_worker_name(in_start_workerid) ||
                                  ') 无权限使用药品( ' ||
                                  hospital.get_material_name(in_materialid) ||
                                  ').;');
        exception
          when no_data_found then
            null;
        end;
      end if;
    end if;
  
    begin
      select 2
        into i
        from hospital.t医保患者禁止用药表 a, hospital.field_dict b
       where a.hospid = get_login_hospid
         and a.materialid = in_materialid
         and a.packageid = hospital.get_min_packageid(in_packageid)
         and b.table_name = 'RESIDENT_PATIENT'
         and b.field_name = 'ACCOUNT_TYPE'
         and b.field_value = t_resident_patient.account_type
         and a.patient_type = b.remark
         and rownum = 1;
      raise_application_error(-20001,
                              hospital.get_field_dict_name('RESIDENT_PATIENT',
                                                           'ACCOUNT_TYPE',
                                                           t_resident_patient.account_type) ||
                              '患者禁止使用药品： ' ||
                              hospital.get_material_name(in_materialid) ||
                              hospital.get_package_description(in_packageid));
    exception
      when no_data_found then
        null;
    end;
  
    --皮试药品
    begin
      select 2
        into i
        from hospital.all_material_ t
       where t.attribute like '____________B_'
         and t.id = in_materialid;
    
      --使用皮试药品开医嘱，判断是否已皮试
      if (in_use_method not in ('皮试', '点试', 'h', 'ih', 'ps') and
         in_frequence not in ('续', 'X'))
      then
        begin
          select skin_test_result
            into v_skin_test_result
            from (select skin_test_result
                    from hospital.order_list_ a
                   where a.ownerid = in_residentid
                     and a.materialid = in_materialid
                     and a.skin_test_sign1_workerid is not null
                     and a.skin_test_sign2_workerid is not null
                     and status <> 'DELETED'
                   order by a.input_date desc)
           where rownum = 1;
        exception
          when no_data_found then
            begin
              select trunc((sysdate - birthday) * 24)
                into v_hour
                from hospital.patient_
               where id = (select patientid
                             from hospital.resident_info_
                            where residentid = in_residentid
                              and process_reason = 'NEW');
              if v_hour <= nvl(get_system_option('新生儿出生特定时间内皮试药品可不皮试时间'),
                               24)
              then
                null;
              else
                raise_application_error(-20001,
                                        '[' ||
                                        hospital.get_material_name(in_materialid) ||
                                        ']为皮试药品,' ||
                                        '请皮试后在使用！');
              end if;
            exception
              when no_data_found then
                begin
                  select p.skin_test_result
                    into s_skin_test_result
                    from hospital.prescription        p,
                         hospital.prescription_detail a,
                         hospital.all_material_       m
                   where a.materialid = in_materialid
                     and p.patientid = t_resident_patient.patientid
                     and a.materialid = m.id
                     and p.id = a.prescriptionid
                     and trunc(sysdate) - trunc(p.input_date) <=
                         nvl(get_system_option('特定时间内皮试药品可不皮试时间'),
                             1)
                     and rownum = 1;
                  if s_skin_test_result is null
                  then
                    raise_application_error(-20001,
                                            '[' ||
                                            hospital.get_material_name(in_materialid) ||
                                            ']为皮试药品,' ||
                                            '请皮试后在使用！');
                  end if;
                  --皮试结果为阳性
                  if s_skin_test_result = '皮试阳性'
                  then
                    raise_application_error(-20001,
                                            '[' ||
                                            hospital.get_material_name(in_materialid) ||
                                            ']门诊处方皮试结果为阳性,' ||
                                            '不能使用该药品！');
                  end if;
                exception
                  when no_data_found then
                    begin
                      select b.skin_test_result, a.compare_materialid
                        into t_skin_test_result, t_compare_materialid
                        from hospital.order_list_ b,
                             (select a.compare_materialid
                                from hospital.skintest_compare_ a
                               where a.materialid = in_materialid) a
                       where b.ownerid = in_residentid
                         and b.skin_test_result = '1'
                         and b.materialid = a.compare_materialid
                         and rownum = 1;
                    exception
                      when no_data_found then
                        raise_application_error(-20001,
                                                '[' ||
                                                hospital.get_material_name(in_materialid) ||
                                                ']为皮试药品,' ||
                                                '请皮试后在使用！');
                    end;
                end;
            end;
        end;
        --皮试结果为阳性
        if v_skin_test_result = '2'
        then
          raise_application_error(-20001,
                                  '[' ||
                                  hospital.get_material_name(in_materialid) ||
                                  ']皮试结果为阳性,' || '不能使用该药品！');
        end if;
      end if;
    exception
      when no_data_found then
        null;
    end;
    if (in_frequence in ('st', '续', 'X') and in_long_flag = 'A')
    then
      raise_application_error(-20001,
                              '[' || in_frequence ||
                              ']只能录临时医嘱，不能录为长期医嘱！');
    end if;
    if in_long_flag = 'A'
    then
      prv_医嘱_长_物资_增加(t_order_listid,
                            in_start_workerid,
                            in_start_date,
                            in_residentid,
                            in_deptid,
                            in_materialid,
                            in_packageid,
                            in_medicament,
                            in_use_method,
                            in_frequence,
                            in_amount,
                            in_remark,
                            in_type,
                            in_po_flag,
                            in_drop_speed,
                            in_drop_speed_unit);
    elsif in_long_flag = 'B'
    then
      prv_医嘱_临_物资_增加(t_order_listid,
                            in_start_workerid,
                            in_start_date,
                            in_residentid,
                            in_deptid,
                            in_materialid,
                            in_packageid,
                            in_method,
                            in_medicament,
                            in_use_method,
                            in_frequence,
                            in_amount,
                            in_remark,
                            in_type,
                            in_po_flag,
                            in_drop_speed,
                            in_drop_speed_unit);
    else
      raise_application_error(-20001,
                              '不能处理的医嘱标志(' || in_long_flag ||
                              ').;');
    end if;
    out_order_listid := t_order_listid;
  end prv_医嘱_医嘱_物资_增加;
  ----------------------------------------------------------------------------
  --
  --     tiger 2006/09/21 - 增加限价处理
  --     tiger 2000/05/04 - 判断不能增加两条以上的床位费
  --
  procedure prv_医嘱_医嘱_文本_增加(out_order_listid  out varchar2
                                   ,in_long_flag      in varchar2
                                   ,in_start_date     in varchar2
                                   ,in_start_workerid in varchar2
                                   ,in_residentid     in varchar2
                                   ,in_type           in varchar2
                                   ,in_text           in varchar2) as
    t_order_listid   order_list.id%type;
    t_order_list     order_list%rowtype;
    t_start_workerid order_list.start_workerid%type;
    v_patient_deptid all_department.id%type;
    v_input_deptid   all_department.id%type;
    v_start_date     date;
    t_input_workerid order_list.input_workerid%type;
  begin
    t_start_workerid := nvl(in_start_workerid, hospital.login.get_workerid);
    if in_start_date is not null
    then
      verify_valid_date(in_start_date, '医嘱开始时间');
      v_start_date := get_date_from_str(in_start_date);
    else
      v_start_date := sysdate;
    end if;
    verify_current_resident(in_residentid);
    v_input_deptid := get_login_deptid;
    select deptid
      into v_patient_deptid
      from resident_info a, resident_patient b
     where a.residentid = in_residentid
       and a.record_no = b.record_no
       and rownum = 1;
    if nvl(v_patient_deptid, '2') <> nvl(v_input_deptid, '1')
    then
      if is_worker_login_dept(hospital.login.get_workerid, v_patient_deptid) <> 0
      then
        raise_application_error(-20001,
                                '你现在是以' ||
                                get_dept_name(v_input_deptid) ||
                                '的身份登录,不允许对' ||
                                get_dept_name(v_patient_deptid) ||
                                '病人医嘱进行处理 .;');
      else
        if in_type in ('OP1', 'OP2')
        then
          null;
        else
          raise_application_error(-20001,
                                  '非临床科室和辅助科室不能录入医嘱。');
        end if;
      end if;
    end if;
    if in_type not in ('OP1', 'OP2')
    then
      s_ack_住院病人医生同科室(in_residentid,
                               t_start_workerid,
                               '不能给该病人下医嘱');
    end if;
    select max(nvl(sequence, 0))
      into t_order_list.sequence
      from order_list
     where ownerid = in_residentid
       and start_date <= v_start_date;
  
    select b.patientid
      into t_order_list.patientid
      from resident_info a, resident_patient b
     where a.residentid = in_residentid
       and a.record_no = b.record_no;
    t_order_listid := get_next_order_listid;
  
    --移动医嘱  
    update order_list
       set sequence = sequence + 1
     where ownerid = in_residentid
       and sequence >= nvl(t_order_list.sequence, 0) + 1;
    --护理医嘱录入员是主治医生
    if (in_type = 'NURSE' and
       nvl(get_system_option('护理医嘱_录入者是主治医生'), 'Y') = 'Y')
    then
      select a.resident_info_charge_doctorid
        into t_input_workerid
        from hospital.resident_patient a
       where a.residentid = in_residentid
         and a.patientid = t_order_list.patientid
         and rownum = 1;
    else
      t_input_workerid := hospital.login.get_workerid;
    end if;
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
       method,
       text,
       subseq)
    values
      (t_order_listid,
       t_order_list.patientid,
       in_residentid,
       nvl(t_order_list.sequence, 0) + 1,
       null, --in_execute_deptid,
       t_start_workerid,
       v_start_date,
       t_input_workerid,
       sysdate,
       'B',
       in_long_flag,
       null,
       'WAIT_ACK',
       'NONE',
       0, --amount
       0, --price
       0,
       hospital.login.get_workerid,
       sysdate,
       null,
       in_type,
       null,
       in_text,
       1);
    out_order_listid := t_order_listid;
  end prv_医嘱_医嘱_文本_增加;
  ----------------------------------------------------------------------------
  --     tiger      2004/12/14 -  取消commit
  --     tiger      2001/10/16 -  增加职员的登录部门、门诊核算部门和住院核算部门管理
  procedure prv_医嘱_医嘱_增加_取消处理(in_order_listid in varchar2) as
    --i            number;
    t_order_list order_list%rowtype;
    t_str        varchar2(255);
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
    if t_order_list.attribute in ('C', 'D', 'E')
    then
      delete from order_list where id = in_order_listid;
      insert into hospital.deleted_records_
        (schema_name, table_name, id, delete_date)
      values
        ('HOSPITAL', 'ORDER_LIST', in_order_listid, sysdate);
      return;
    end if;
    if t_order_list.long_flag not in ('A', 'B')
    then
      raise_application_error(-20001, '在这里只能删除长期医嘱和临时医嘱.;');
    end if;
    if t_order_list.materialid is null
    then
      t_str := get_sundry_fee_name(t_order_list.sundry_feeid);
    else
      t_str := get_material_name(t_order_list.materialid);
    end if;
    if t_order_list.status = 'NORMAL'
    then
      raise_application_error(-20001,
                              '该医嘱(' || t_str || ')已经确认，不能删除.;');
    elsif t_order_list.status = 'STOPPED'
    then
      raise_application_error(-20001,
                              '该医嘱(' || t_str || ')已经停止，不能删除.;');
    elsif t_order_list.status = 'WAIT_ACK'
    then
      null;
    else
      raise_application_error(-20001, '不能识别的标志.;');
    end if;
    if is_same_login_dept(hospital.login.get_workerid,
                          t_order_list.input_workerid) = 0
    then
      raise_application_error(-20001,
                              '这是' ||
                              get_worker_name(t_order_list.input_workerid) ||
                              '录入的医嘱，您与他(她)不在同一个科室，不能删除.;');
    end if;
    delete from order_list where id = in_order_listid;
    insert into hospital.deleted_records_
      (schema_name, table_name, id, delete_date)
    values
      ('HOSPITAL', 'ORDER_LIST', in_order_listid, sysdate);
  
  end prv_医嘱_医嘱_增加_取消处理;
  -----------------------------------------------------------------
  --
  --     tiger      2004/12/14 -  取消commit
  --     tiger      2001/10/15 - 增加职员的登录部门、门诊核算部门和住院核算部门管理
  --     tiger      2001/09/11 - create 
  --
  procedure prv_医嘱_医嘱_增加_取消标记(in_order_listid in varchar2) as
    t_order_list order_list%rowtype;
    t_str        varchar2(255);
  begin
    lock_res.lock_order_list(in_order_listid, t_order_list);
    if t_order_list.long_flag not in ('A', 'B')
    then
      raise_application_error(-20001,
                              '在这里只能标记长期医嘱和临时医嘱删除.;');
    end if;
    if t_order_list.materialid is null
    then
      t_str := get_sundry_fee_name(t_order_list.sundry_feeid);
    else
      t_str := get_material_name(t_order_list.materialid);
    end if;
    if t_order_list.status = 'NORMAL'
    then
      raise_application_error(-20001,
                              '该医嘱(' || t_str || ')已经确认，不能删除.;');
    elsif t_order_list.status = 'STOPPED'
    then
      raise_application_error(-20001,
                              '该医嘱(' || t_str || ')已经停止，不能删除.;');
    elsif t_order_list.status = 'WAIT_ACK'
    then
      null;
    elsif t_order_list.status = 'DELETED'
    then
      raise_application_error(-20001, '该医嘱(' || t_str || ')已经删除.;');
    else
      raise_application_error(-20001, '不能识别的标志.;');
    end if;
    if is_same_login_dept(hospital.login.get_workerid,
                          t_order_list.input_workerid) = 0
    then
      raise_application_error(-20001,
                              '这是' ||
                              get_worker_name(t_order_list.input_workerid) ||
                              '录入的医嘱，您与他(她)不在同一个科室，不能删除.;');
    end if;
    update order_list
       set status      = 'DELETED',
           operator    = hospital.login.get_workerid,
           update_date = sysdate
     where id = in_order_listid;
  end prv_医嘱_医嘱_增加_取消标记;
  -----------------------------------------------------------------
  procedure prv_医嘱_用药方法_杂费_增加(out_order_listid  out varchar2
                                       ,in_long_flag      in varchar2
                                       ,in_start_date     in varchar2
                                       ,in_start_workerid in varchar2
                                       ,in_residentid     in varchar2
                                       ,in_deptid         in varchar2
                                       , --核算科室
                                        in_sundry_feeid   in varchar2
                                       ,in_price          in varchar2
                                       ,in_amount         in varchar2
                                       ,in_remark         in varchar2
                                       ,in_type           in varchar2
                                       ,in_check_point    in varchar2) as
  begin
    prv_医嘱_医嘱_杂费_增加(out_order_listid,
                            in_long_flag,
                            in_start_date,
                            in_start_workerid,
                            in_residentid,
                            in_deptid,
                            in_sundry_feeid,
                            in_price,
                            in_amount,
                            in_remark,
                            in_type,
                            null,
                            get_login_hospid,
                            in_check_point);
  end prv_医嘱_用药方法_杂费_增加;
  -----------------------------------------------------------------
  procedure prv_医嘱_用药方法_物资_增加(out_order_listid   out varchar2
                                       ,in_start_workerid  in varchar2
                                       ,in_residentid      in varchar2
                                       ,in_material_deptid in varchar2
                                       ,in_materialid      in varchar2
                                       ,in_packageid       in varchar2
                                       ,in_long_flag       in varchar2
                                       ,in_method          in varchar2
                                       ,in_amount          in varchar2
                                       ,in_remark          in varchar2
                                       ,in_type            in varchar2
                                       ,in_drop_speed      in varchar2
                                       ,in_drop_speed_unit in varchar2) as
    t_order_listid        order_list.id%type;
    v_start_workerid      worker.id%type;
    t_purchaseid          all_purchase.id%type;
    t_resident_info       resident_info%rowtype;
    t_order_list_sequence number;
    t_input_workerid      order_list.input_workerid%type;
  begin
    verify_department(in_material_deptid);
    v_start_workerid := nvl(in_start_workerid, hospital.login.get_workerid);
    user_permit.s_ack_处方权(v_start_workerid);
    if in_type not in ('OP1', 'OP2', 'AUTOFEE')
    then
      s_ack_住院病人医生同科室(in_residentid,
                               hospital.login.get_workerid,
                               '不能给该病人录入医嘱');
      s_ack_住院病人医生同科室(in_residentid,
                               v_start_workerid,
                               '不能给该病人下医嘱');
    end if;
    verify_current_resident(in_residentid);
    begin
      select b.*
        into t_resident_info
        from resident_patient a, resident_info b
       where a.record_no = b.record_no
         and b.residentid = in_residentid
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001, '没有找到记录.;');
      when others then
        raise_application_error(-20001, '其他人正在操作，请稍候重试.;');
    end;
    if in_material_deptid is not null
    then
      verify_department(in_material_deptid);
    end if;
    verify_material_package(in_materialid, in_packageid);
    verify_not_null(in_amount, '数量');
    verify_valid_number(in_amount, '数量');
    begin
      select b.id
        into t_purchaseid
        from material_storage a, all_purchase b
       where a.deptid = in_material_deptid
         and a.materialid = in_materialid
         and b.materialid = in_materialid
         and b.packageid = in_packageid
         and a.amount > 0
         and a.purchaseid = b.id
         and rownum = 1;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                get_dept_name(in_material_deptid) || '没有' ||
                                get_package_description(in_packageid) || '的' ||
                                get_material_name(in_materialid) || '.;');
    end;
    --护理医嘱录入者是主治医生     
    if (in_type = 'NURSE')
    then
      select a.resident_info_charge_doctorid
        into t_input_workerid
        from hospital.resident_patient a
       where a.residentid = in_residentid
         and a.patientid = t_resident_info.patientid
         and rownum = 1;
    else
      t_input_workerid := hospital.login.get_workerid;
    end if;
    select max(nvl(sequence, 0))
      into t_order_list_sequence
      from order_list
     where ownerid = in_residentid;
    t_order_listid := get_next_order_listid;
    insert into order_list
      (id,
       patientid,
       ownerid,
       sequence,
       material_deptid,
       execute_deptid,
       start_workerid,
       start_date,
       input_workerid,
       input_date,
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
       subseq,
       drop_speed,
       drop_speed_unit)
    values
      (t_order_listid,
       t_resident_info.patientid,
       in_residentid,
       nvl(t_order_list_sequence, 0) + 1,
       in_material_deptid,
       t_resident_info.deptid,
       v_start_workerid,
       sysdate,
       t_input_workerid,
       sysdate,
       'B',
       in_long_flag,
       in_materialid,
       in_packageid,
       lower(in_method),
       'WAIT_ACK',
       'NONE',
       to_number(in_amount),
       get_药品零售价(in_material_deptid,
                      in_materialid,
                      in_packageid,
                      t_purchaseid),
       0,
       hospital.login.get_workerid,
       sysdate,
       in_remark,
       in_type,
       1,
       in_drop_speed,
       in_drop_speed_unit);
    out_order_listid := t_order_listid;
  end prv_医嘱_用药方法_物资_增加;
  -----------------------------------------------------------------
  --   2013/11/06  tiger  - 手工计费医嘱，不能设置子医嘱
  --   2006/12/06  tiger  - 增加医嘱类型
  --   2006/06/19  tiger  - 子医嘱和父医嘱录入者必须是同一个人
  --   2004/11/26  tiger  - 长期杂费医嘱不能作为物资医嘱的父医嘱
  --   2004/11/25  tiger  - 设置子医嘱的开始时间=父医嘱的开始时间 
  --
  procedure prv_医嘱_子医嘱_设置(in_parent_order_listid in varchar2
                                ,in_child_order_listid  in varchar2
                                ,in_order_list_type     in varchar2 default null) as
    t_parent_order_list order_list%rowtype;
    t_child_order_list  order_list%rowtype;
    v_subseq            number;
  begin
    lock_res.lock_order_list(in_parent_order_listid, t_parent_order_list);
    lock_res.lock_order_list(in_child_order_listid, t_child_order_list);
    if t_parent_order_list.attribute = 'C'
       and in_parent_order_listid <> in_child_order_listid
       and t_parent_order_list.long_flag = 'A'
    then
      raise_application_error(-20001, '手工计费医嘱，不支持子医嘱.;');
    end if;
    if t_parent_order_list.ownerid <> t_child_order_list.ownerid
    then
      raise_application_error(-20001,
                              '这不是同一个住院号的医嘱，不能设置.;');
    end if;
    if t_parent_order_list.parentid is null
    then
      null;
    elsif t_parent_order_list.parentid <> t_parent_order_list.id
    then
      begin
        select *
          into t_parent_order_list
          from order_list
         where id = t_parent_order_list.parentid;
      exception
        when no_data_found then
          raise_application_error(-20001, '父医嘱记录不存在.;');
      end;
      if t_parent_order_list.parentid <> t_parent_order_list.id
      then
        raise_application_error(-20001, '子医嘱设置错误.;');
      end if;
    end if;
    if t_parent_order_list.status = 'WAIT_ACK'
    then
      null;
    elsif t_parent_order_list.status = 'NORMAL'
    then
      raise_application_error(-20001, '父医嘱已经确认，不能设置.;');
    elsif t_parent_order_list.status = 'STOPPED'
    then
      raise_application_error(-20001, '父医嘱已经停止，不能设置.;');
    else
      raise_application_error(-20001, '不能识别的标志.;');
    end if;
    if t_child_order_list.status = 'WAIT_ACK'
    then
      null;
    elsif t_child_order_list.status = 'NORMAL'
    then
      raise_application_error(-20001, '子医嘱已经确认，不能设置.;');
    elsif t_child_order_list.status = 'STOPPED'
    then
      raise_application_error(-20001, '父医嘱已经停止，不能设置.;');
    else
      raise_application_error(-20001, '不能识别的标志.;');
    end if;
    if t_child_order_list.parentid is null
    then
      null;
    elsif t_child_order_list.parentid = t_child_order_list.id
    then
      raise_application_error(-20001, '子医嘱不能嵌套.;');
    elsif t_child_order_list.parentid <> t_child_order_list.id
    then
      raise_application_error(-20001, '已经是子医嘱.;');
    end if;
    if t_parent_order_list.long_flag <> t_child_order_list.long_flag
    then
      raise_application_error(-20001,
                              '子医嘱与父医嘱应该同时为长期医嘱或同时为临时医嘱.;');
    end if;
    if t_parent_order_list.long_flag = 'A'
       and t_parent_order_list.sundry_feeid is not null
    then
      if t_child_order_list.materialid is not null
      then
        raise_application_error(-20001,
                                '物资医嘱不能作为长期杂费医嘱的子医嘱.;');
      end if;
    end if;
  
    if (t_parent_order_list.input_workerid <>
       t_child_order_list.input_workerid and
       in_order_list_type != 'AUTOFEE')
    then
      raise_application_error(-20001,
                              '父医嘱和医嘱不是同一个人录入的,不能插入子医嘱.;');
    end if;
  
    if t_parent_order_list.materialid is null
       and t_parent_order_list.sundry_feeid is null
       and t_parent_order_list.id <> t_child_order_list.id
    then
      raise_application_error(-20001, '文本医嘱不能插入子医嘱.;');
    end if;
    select nvl(max(subseq), 1) + 1
      into v_subseq
      from order_list
     where parentid = t_parent_order_list.id;
    update order_list
       set parentid       = t_parent_order_list.id,
           sequence       = t_parent_order_list.sequence,
           start_date     = t_parent_order_list.start_date,
           start_workerid = t_parent_order_list.start_workerid,
           type           = t_parent_order_list.type,
           subseq         = v_subseq,
           input_workerid = t_parent_order_list.input_workerid
     where id = in_child_order_listid;
    if t_parent_order_list.parentid is null
    then
      update order_list
         set parentid = t_parent_order_list.id,
             type     = in_order_list_type
       where id = t_parent_order_list.id;
    end if;
  end prv_医嘱_子医嘱_设置;
  -----------------------------------------------------------------
  --  2013/09/09  优化医嘱确认流程;只能确认自己录入的医嘱
  --  2013/09/11  医嘱确认后，进入带核对状态WAIT_CHECK
  --  2011/11/27  增加药品三级管理制度：如果医生的用药级别 < 药品级别，医嘱确认状态为 WAIT_AUDIT
  --  2011/11/27  tiger 取消  医嘱确认_计算静点费用 功能
  --  2001/06/11  tiger - 设置 医嘱确认_计算静点费用 = N
  --
  procedure prv_医嘱_医嘱_确认_处理(in_order_listid in varchar2) as
    i             number;
    t_order_list  order_list%rowtype;
    exam_apply_id hospital.in_examination_application_.id%type;
  begin
    user_permit.s_ack_医嘱确认权;
    lock_res.lock_order_list(in_order_listid, t_order_list);
    ol_status.s_ack_医嘱确认(t_order_list);
  
    if t_order_list.type in ('OP2')
    then
      update order_list
         set status       = 'NORMAL',
             status1      = 'WAIT_ACC',
             ack_workerid = hospital.login.get_workerid,
             ack_date     = sysdate
       where id = in_order_listid;
    else
      ack_status  := 'NORMAL';
      ack_status1 := 'WAIT_ACC';
      if nvl(get_system_option('医嘱处理流程必须核收'), 'N') = 'Y'
      then
        ack_status  := 'WAIT_CHECK';
        ack_status1 := 'NONE';
      end if;
    
      update order_list
         set status       = ack_status,
             status1      = ack_status1,
             ack_workerid = hospital.login.get_workerid,
             ack_date     = sysdate
       where id = in_order_listid;
    end if;
  
    ack_status  := 'NORMAL';
    ack_status1 := 'WAIT_ACC';
    if nvl(get_system_option('医嘱处理流程必须核收'), 'N') = 'Y'
    then
      ack_status  := 'WAIT_CHECK';
      ack_status1 := 'NONE';
    end if;
  
    for c in (select *
                from order_list
               where parentid = in_order_listid
                 and status = 'WAIT_ACK')
    loop
      lock_res.lock_order_list(c.id, t_order_list);
      ol_status.s_ack_医嘱确认(t_order_list);
    
      update order_list
         set status       = ack_status,
             status1      = ack_status1,
             ack_workerid = hospital.login.get_workerid,
             ack_date     = sysdate
       where id = c.id;
    end loop;
  
    if lic.get_软件注册合法性验证('住院抗菌药物三级管理系统') >= 0
    then
      if nvl(get_system_option('抗菌药物三级用药录入限制'), 'N') = 'N'
         and nvl(get_system_option('处方用药分级管理'), 'N') = 'Y'
      then
        begin
          select 2
            into i
            from order_list a, material_config b, all_worker c
           where (a.id = in_order_listid or a.parentid = in_order_listid)
             and a.materialid = b.materialid
             and c.id = hospital.login.get_workerid
             and nvl(substrb(b.attribute, 12, 1), 'C') >
                 nvl(c.material_order_list_level, 'C')
             and rownum = 1;
        
          update order_list
             set status = 'WAIT_AUDIT'
           where (id = in_order_listid or parentid = in_order_listid);
        exception
          when no_data_found then
            null;
        end;
      end if;
    end if;
    --新建检查申请单
    hospital.exam_apply.s_检查申请单_新建nc(in_order_listid, exam_apply_id);
    --对于抗菌要我，直接指定到静脉配置中心药房
  
  end prv_医嘱_医嘱_确认_处理;
  -----------------------------------------------------------------
  --     tiger      2013/09/11 - 优化取消确认流程
  --     tiger      2006/12/07 - 医师医嘱只能由确认者本人或者医师本人取消确认 
  --     tiger      2001/10/16 - 增加职员的登录部门、门诊核算部门和住院核算部门管理
  procedure prv_医嘱_医嘱_确认_取消处理(in_order_listid in varchar2) as
    t_order_list order_list%rowtype;
  begin
    lock_res.lock_order_list(in_order_listid, t_order_list);
  
    if t_order_list.type = 'DOCTOR'
    then
      if t_order_list.ack_workerid <> hospital.login.get_workerid
         and t_order_list.start_workerid <> hospital.login.get_workerid
      then
        raise_application_error(-20001,
                                '医师医嘱只能由确认者本人或者医师本人取消确认.;');
      end if;
    else
      if is_same_login_dept(hospital.login.get_workerid,
                            t_order_list.ack_workerid) = 0
      then
        raise_application_error(-20001,
                                '这是' ||
                                get_worker_name(t_order_list.ack_workerid) ||
                                '确认的医嘱，与您不在同一个科室，您不能取消确认.;');
      end if;
    end if;
  
    ol_status.s_ack_医嘱确认取消(t_order_list);
  
    if t_order_list.long_flag not in ('A', 'B')
    then
      raise_application_error(-20001, '不是长期或者临时医嘱，不能取消确认');
    end if;
  
    if nvl(t_order_list.executed_days, 0) - nvl(t_order_list.skip_days, 0) > 0
       or nvl(t_order_list.this_days, 0) > 0
    then
      raise_application_error(-20001, '该医嘱已经入帐,不能取消确认');
    end if;
  
    update order_list
       set status       = 'WAIT_ACK',
           status1      = 'NONE',
           ack_workerid = null,
           ack_date     = null,
           skip_days    = null
     where id = in_order_listid;
  
  end prv_医嘱_医嘱_确认_取消处理;
  -----------------------------------------------------------------
  function get_医生判断医嘱处理状态(in_residentid in varchar2)
    return varchar2 is
    v_status        dr_order_list_info.status%type;
    v_pre_status    dr_order_list_info.status%type;
    v_result_status dr_order_list_info.status%type;
    i               integer;
  begin
    begin
      select 2
        into i
        from prescription
       where residentid = in_residentid
         and status = 'WAIT_ACK'
         and input_workerid = hospital.login.get_workerid
         and rownum = 1;
      v_pre_status := 'LOCKED';
    exception
      when no_data_found then
        begin
          select 2
            into i
            from prescription
           where residentid = in_residentid
             and status = 'WAIT_PAY'
             and input_workerid = hospital.login.get_workerid
             and rownum = 1;
          v_pre_status := 'UNLOCKED';
        exception
          when no_data_found then
            v_pre_status := 'FINISHED';
        end;
    end;
  
    begin
      select 2
        into i
        from order_list
       where ownerid = in_residentid
         and status = 'WAIT_ACK'
         and type in ('DOCTOR', 'OP1')
         and input_workerid = hospital.login.get_workerid
         and (parentid is null or parentid = id)
         and nvl(execute_deptid, '1') not in
             (select name
                from system_option
               where id like '医嘱入账_执行科室自己入账%')
         and rownum = 1;
    
      v_status := 'LOCKED';
    exception
      when no_data_found then
        begin
          select 2
            into i
            from order_list
           where ownerid = in_residentid
             and type in ('DOCTOR', 'OP1')
             and (status in ('NORMAL') and status1 = 'WAIT_ACC' and
                 this_account_seq is null and
                 (skip_days is null or skip_days = 0) or
                 status = 'WAIT_CHECK')
             and (parentid is null or parentid = id)
             and nvl(execute_deptid, '1') not in
                 (select name
                    from system_option
                   where id like '医嘱入账_执行科室自己入账%')
             and rownum = 1;
        
          v_status := 'UNLOCKED';
        exception
          when no_data_found then
            begin
              select 2
                into i
                from hospital.order_list
               where ownerid = in_residentid
                 and status = 'STOPPED'
                 and status1 = 'WAIT_ACK'
                 and (parentid is null or parentid = id)
                 and nvl(execute_deptid, '1') not in
                     (select name
                        from system_option
                       where id like '医嘱入账_执行科室自己入账%')
                 and rownum = 1;
            
              v_status := 'UNLOCKED';
            exception
              when no_data_found then
                v_status := 'FINISHED';
            end;
        end;
    end;
  
    if v_pre_status = 'LOCKED'
       or v_status = 'LOCKED'
    then
      v_result_status := 'LOCKED';
    else
      if v_pre_status = 'UNLOCKED'
         or v_status = 'UNLOCKED'
      then
        v_result_status := 'UNLOCKED';
      else
        v_result_status := 'FINISHED';
      end if;
    end if;
    return v_result_status;
  end get_医生判断医嘱处理状态;
  -----------------------------------------------------------------
  function get_护士判断医嘱处理状态(in_residentid in varchar2)
    return varchar2 is
    v_status     dr_order_list_info.status%type;
    v_pre_status dr_order_list_info.status%type;
    i            integer;
  begin
    begin
      select 2
        into i
        from prescription
       where residentid = in_residentid
         and status = 'WAIT_ACK'
         and input_workerid = hospital.login.get_workerid
         and rownum = 1;
      v_pre_status := 'LOCKED';
    exception
      when no_data_found then
        begin
          select 2
            into i
            from prescription
           where residentid = in_residentid
             and status = 'WAIT_PAY'
             and rownum = 1;
          v_pre_status := 'UNLOCKED';
        exception
          when no_data_found then
            v_pre_status := 'FINISHED';
        end;
    end;
  
    begin
      select 2
        into i
        from order_list
       where ownerid = in_residentid
         and status = 'WAIT_ACK'
         and type in ('DOCTOR', 'OP1')
         and (parentid is null or parentid = id)
         and nvl(execute_deptid, '1') not in
             (select name
                from system_option
               where id like '医嘱入账_执行科室自己入账%')
         and rownum = 1;
      v_status := 'LOCKED';
    exception
      when no_data_found then
        begin
          if nvl(get_system_option('医嘱处理流程必须核收'), 'N') = 'Y'
          then
            select 2
              into i
              from order_list
             where ownerid = in_residentid
               and type in ('DOCTOR', 'OP1')
               and (status in ('NORMAL') and status1 <> 'WAIT_ACC' and
                   this_account_seq is null and
                   (skip_days is null or skip_days = 0) or
                   status = 'WAIT_CHECK')
               and (parentid is null or parentid = id)
               and nvl(execute_deptid, '1') not in
                   (select name
                      from system_option
                     where id like '医嘱入账_执行科室自己入账%')
                  
               and rownum = 1;
            v_status := 'UNLOCKED';
          else
            select 2
              into i
              from order_list
             where ownerid = in_residentid
               and type in ('DOCTOR', 'OP1')
               and (status in ('NORMAL') and status1 = 'WAIT_ACC' and
                   this_account_seq is null and
                   (skip_days is null or skip_days = 0) or
                   status = 'WAIT_CHECK')
               and (parentid is null or parentid = id)
               and nvl(execute_deptid, '1') not in
                   (select name
                      from system_option
                     where id like '医嘱入账_执行科室自己入账%')
                  
               and rownum = 1;
            v_status := 'UNLOCKED';
          end if;
        exception
          when no_data_found then
            begin
              select 2
                into i
                from hospital.order_list
               where ownerid = in_residentid
                 and status = 'STOPPED'
                 and status1 = 'WAIT_ACK'
                 and (parentid is null or parentid = id)
                 and nvl(execute_deptid, '1') not in
                     (select name
                        from system_option
                       where id like '医嘱入账_执行科室自己入账%')
                    
                 and rownum = 1;
              v_status := 'UNLOCKED';
            exception
              when no_data_found then
                v_status := 'FINISHED';
            end;
        end;
    end;
  
    if v_pre_status = 'LOCKED'
       or v_status = 'LOCKED'
    then
      v_status := 'LOCKED';
    elsif v_pre_status = 'UNLOCKED'
          or v_status = 'UNLOCKED'
    then
      v_status := 'UNLOCKED';
    else
      v_status := 'FINISHED';
    end if;
  
    return v_status;
  end get_护士判断医嘱处理状态;
  -----------------------------------------------------------------
  -- 记录医生开始处理医嘱，在dr_order_list_info中记录信息
  --     tiger      2006/12/31 - create
  procedure s_医生处理医嘱nc(in_residentid in varchar2) is
    v_dr_order_list_info dr_order_list_info%rowtype;
    v_deptid             varchar2(10);
    v_patientid          varchar2(10);
    v_status             dr_order_list_info.status%type;
  begin
    --锁定病人信息
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
    --判断其他医生是否在操作
    begin
      select *
        into v_dr_order_list_info
        from dr_order_list_info
       where residentid = in_residentid
         for update nowait;
      if v_dr_order_list_info.status = 'LOCKED'
      then
        if v_dr_order_list_info.workerid <> hospital.login.get_workerid
        then
          raise_application_error(-20001,
                                  '工号为(' ||
                                  v_dr_order_list_info.workerid ||
                                  ')的医生正在处理医嘱，请稍后处理.;');
        end if;
      end if;
    exception
      when no_data_found then
        null;
    end;
    --判断处理医嘱状态
  
    v_status := get_医生判断医嘱处理状态(in_residentid);
  
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
             deptid      = v_deptid,
             workerid    = hospital.login.get_workerid
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
  end s_医生处理医嘱nc;
  -----------------------------------------------------------------
  -- 记录医生结束处理医嘱，在dr_order_list_info中记录信息
  --     tiger      2006/12/31 - create
  procedure s_医生确认处理医嘱nc(in_residentid in varchar2) is
    v_dr_order_list_info dr_order_list_info%rowtype;
    v_deptid             varchar2(10);
    v_patientid          varchar2(10);
    v_status             dr_order_list_info.status%type;
  begin
    --锁定病人信息
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
  
    --判断其他医生是否在操作
    begin
      select *
        into v_dr_order_list_info
        from dr_order_list_info
       where residentid = in_residentid
         for update nowait;
      if v_dr_order_list_info.status = 'LOCKED'
      then
        if v_dr_order_list_info.workerid <> hospital.login.get_workerid
        then
          raise_application_error(-20001,
                                  '工号为(' ||
                                  v_dr_order_list_info.workerid ||
                                  ')的医生正在处理医嘱，请稍后处理.;');
        end if;
      end if;
    exception
      when no_data_found then
        null;
    end;
    --判断处理医嘱状态
    v_status := get_医生判断医嘱处理状态(in_residentid);
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
             deptid      = v_deptid,
             workerid    = hospital.login.get_workerid
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
  end s_医生确认处理医嘱nc;
  ----------------------------------------------------------
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
    v_status := get_护士判断医嘱处理状态(in_residentid);
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
  ----------------------------------------------------------
  procedure prv_判断护理级别(in_residentid in varchar2) is
    v_sundry_feeid all_sundry_fee.id%type;
    v_nurse_level  number := 4; --默认没有护理级别
  begin
    begin
      select sundry_feeid
        into v_sundry_feeid
        from (select sundry_feeid
                from order_list
               where ownerid = in_residentid
                 and status = 'NORMAL'
                 and sundry_feeid in
                     ('120100002', '120100003', '120100004', '120100005')
                 and long_flag = 'A'
               order by sundry_feeid)
       where rownum <= 1;
      v_nurse_level := to_number(v_sundry_feeid) - 120100002;
    exception
      when no_data_found then
        null;
    end;
    update resident_patient
       set nurse_level = v_nurse_level
     where residentid = in_residentid;
  end prv_判断护理级别;
  ----------------------------------------------------------------------------  
  procedure prv_记录医嘱组_录入错误(in_residentid         in varchar2
                                   ,in_order_list_groupid in varchar2
                                   ,in_error_message      in varchar2) is
  begin
    insert into hospital.order_list_group_item_error
      (order_list_groupid,
       residentid,
       error_message,
       update_date,
       operator)
    values
      (in_order_list_groupid,
       in_residentid,
       in_error_message,
       sysdate,
       hospital.login.get_workerid);
  end prv_记录医嘱组_录入错误;
  ----------------------------------------------------------------------------
  procedure s_医嘱_子医嘱_物资_增加_nc(in_parent_order_listid in varchar2
                                      ,in_long_flag           in varchar2
                                      ,in_start_date          in varchar2
                                      ,in_start_workerid      in varchar2
                                      ,in_residentid          in varchar2
                                      ,in_deptid              in varchar2
                                      ,in_materialid          in varchar2
                                      ,in_packageid           in varchar2
                                      ,in_method              in varchar2
                                      ,in_medicament          in varchar2
                                      ,in_use_method          in varchar2
                                      ,in_frequence           in varchar2
                                      ,in_amount              in varchar2
                                      ,in_type                in varchar2
                                      , -- 医嘱类型(护士医嘱、医师医嘱、手术医嘱、出院带药)
                                       in_add_supply          in varchar2
                                      ,in_text                in varchar2 default null
                                      ,in_drop_speed          in varchar2
                                      ,in_drop_speed_unit     in varchar2
                                      ,out_order_listid       out varchar2) is
    t_order_listid      order_list.id%type;
    t_parent_order_list order_list%rowtype;
    t_add_supply        varchar2(10);
    t_sub_order_listid  order_list.id%type;
    t_frequence         number;
    t_price             number;
    t_execute_deptid    all_department.id%type;
    t_seq               order_list.remark%type;
    t_field_dict        field_dict%rowtype;
    t_sundry_fee        sundry_fee_config%rowtype;
    i                   number;
    t_patient_deptid    all_department.id%type;
    t_method            order_list.method%type;
    v_input_deptid      all_department.id%type;
    v_patient_deptid    all_department.id%type;
    t_amount            varchar2(80);
    v_skip              varchar2(10);
    t_resident_info     resident_info%rowtype;
    v_po_flag           order_list.po_flag%type;
    v_long_flag         order_list.long_flag%type;
  begin
    lock_res.lock_ack_医嘱_操作(in_residentid, t_resident_info);
    hospital.verify_drop_speed(in_drop_speed);
    hospital.verify_length(in_drop_speed_unit, 30, '滴速单位');
    user_permit.s_ack_医嘱确认权;
    t_add_supply := 'NO';
    verify_valid_number(in_amount, '数量');
    hospital.verify_drop_speed(in_drop_speed);
    hospital.verify_length(in_drop_speed, 30, '滴速');
    if to_number(in_amount) < 0
    then
      raise_application_error(-20001, '数量必须大于=0');
    end if;
    begin
      select *
        into t_field_dict
        from field_dict
       where table_name = 'ORDER_LIST'
         and field_name = 'FREQUENCE'
         and field_value = upper(in_frequence);
      if instr(t_field_dict.remark, 'SEQ') > 0
      then
        t_seq := t_field_dict.remark;
      else
        t_seq := null;
      end if;
    exception
      when no_data_found then
        null;
      when too_many_rows then
        raise_application_error(-20001,
                                '使用频率' || in_amount || '出现多次.;');
    end;
  
    --判断如果录入员不是本部门的工作人员，禁止录入
    v_input_deptid := get_login_deptid;
    select deptid
      into v_patient_deptid
      from resident_info a, resident_patient b
     where a.residentid = in_residentid
       and a.record_no = b.record_no
       and rownum = 1;
    if v_input_deptid <> v_patient_deptid
    then
      if is_worker_login_dept(hospital.login.get_workerid, v_patient_deptid) <> 0
      then
        raise_application_error(-20001,
                                '你现在是以' ||
                                get_dept_name(v_input_deptid) ||
                                '的身份登录,不允许对' ||
                                get_dept_name(v_patient_deptid) ||
                                '病人医嘱进行处理 .;');
      else
        if in_type in ('OP1', 'OP2')
        then
          null;
        else
          raise_application_error(-20001, '非临床科室不能录入物资医嘱.;');
        end if;
      end if;
    end if;
  
    if in_type = 'NURSE'
       and nvl(get_system_option('护理医嘱_禁止录入药品医嘱'), 'Y') = 'Y'
    then
      begin
        select 2
          into i
          from hospital.all_material
         where id = in_materialid
           and account_subjectid like '123%'
           and nvl(get_system_option('护理医嘱_允许录入二级库房材料医嘱'),
                   'Y') = 'Y'
           and rownum = 1;
        null;
      exception
        when no_data_found then
          if (nvl(get_system_option('护理医嘱_允许录入二级库房材料医嘱'),
                  'Y') = 'Y')
          then
            raise_application_error(-20001, '护理医嘱禁止药品医嘱.;');
          else
            raise_application_error(-20001,
                                    '护理医嘱禁止录入药品或二级库房材料医嘱.;');
          end if;
      end;
    end if;
  
    t_amount := in_amount;
    --判断是不是口服药用法
    -- 1  口服药
    -- 0 非口服药
    begin
      select '1'
        into v_po_flag
        from hospital.po_use_method_
       where id = upper(in_use_method)
         and status = 'ENABLED'
         and rownum = 1;
    exception
      when no_data_found then
        v_po_flag := '0';
    end;
  
    if in_parent_order_listid is not null
    then
      --增加子医嘱
      begin
        select *
          into t_parent_order_list
          from order_list
         where id = in_parent_order_listid
           and rownum = 1
           for update of id nowait;
      exception
        when no_data_found then
          raise_application_error(-20001, '父医嘱没有找到.;');
        when others then
          raise_application_error(-20001, '其他人正在操作,请稍候再试.;');
      end;
      if t_parent_order_list.parentid is not null
         and t_parent_order_list.parentid <> t_parent_order_list.id
      then
        begin
          select *
            into t_parent_order_list
            from order_list
           where id = t_parent_order_list.parentid
             and rownum = 1
             for update of id nowait;
        exception
          when no_data_found then
            raise_application_error(-20001, '父医嘱没有找到.;');
          when others then
            raise_application_error(-20001, '其他人正在操作,请稍候再试.;');
        end;
      end if;
      if t_parent_order_list.materialid is null
         and in_materialid is not null
      then
        raise_application_error(-20001, '杂费医嘱不能录入药品子医嘱.;');
      end if;
      if t_parent_order_list.long_flag = 'A'
         and v_po_flag = '1'
      then
        begin
          select 2
            into i
            from system_option
           where id like '长期口服药摆药部门%'
             and name = v_patient_deptid;
        exception
          when no_data_found then
            t_amount := '0';
            prv_医嘱_医嘱_物资_增加(t_order_listid,
                                    'B',
                                    in_start_date,
                                    in_start_workerid,
                                    in_residentid,
                                    in_deptid,
                                    in_materialid,
                                    in_packageid,
                                    in_method,
                                    in_medicament,
                                    null, --in_use_method,
                                    in_frequence,
                                    in_amount,
                                    t_seq,
                                    in_type,
                                    v_po_flag,
                                    in_drop_speed,
                                    in_drop_speed_unit);
            prv_医嘱_子医嘱_设置(t_order_listid, t_order_listid, null);
        end;
      end if;
    
      prv_医嘱_医嘱_物资_增加(t_order_listid,
                              t_parent_order_list.long_flag,
                              null, --t_parent_order_list.start_date,
                              t_parent_order_list.start_workerid,
                              t_parent_order_list.ownerid,
                              in_deptid,
                              in_materialid,
                              in_packageid,
                              in_method,
                              in_medicament,
                              in_use_method,
                              in_frequence,
                              t_amount,
                              t_seq,
                              in_type,
                              v_po_flag,
                              in_drop_speed,
                              in_drop_speed_unit);
      prv_医嘱_子医嘱_设置(in_parent_order_listid, t_order_listid, null);
    else
      --增加父医嘱
      if in_long_flag = 'A'
         and v_po_flag = '1'
      then
        begin
          select 2
            into i
            from system_option
           where id like '长期口服药摆药部门%'
             and name = v_patient_deptid;
        exception
          when no_data_found then
            t_amount := '0';
            prv_医嘱_医嘱_物资_增加(t_order_listid,
                                    'B',
                                    in_start_date,
                                    in_start_workerid,
                                    in_residentid,
                                    in_deptid,
                                    in_materialid,
                                    in_packageid,
                                    in_method,
                                    in_medicament,
                                    in_use_method,
                                    in_frequence,
                                    in_amount,
                                    t_seq,
                                    in_type,
                                    v_po_flag,
                                    in_drop_speed,
                                    in_drop_speed_unit);
            prv_医嘱_子医嘱_设置(t_order_listid, t_order_listid, in_type);
        end;
      end if;
      prv_医嘱_医嘱_物资_增加(t_order_listid,
                              in_long_flag,
                              in_start_date,
                              in_start_workerid,
                              in_residentid,
                              in_deptid,
                              in_materialid,
                              in_packageid,
                              in_method,
                              in_medicament,
                              in_use_method,
                              in_frequence,
                              t_amount,
                              t_seq,
                              in_type,
                              v_po_flag,
                              in_drop_speed,
                              in_drop_speed_unit);
      prv_医嘱_子医嘱_设置(t_order_listid, t_order_listid, in_type);
      t_add_supply := 'YES';
      --如果是医生下医嘱、则修改dr_order_list_info
      if in_type in ('DOCTOR', 'OP1')
      then
        s_医生处理医嘱nc(in_residentid);
      end if;
    
    end if;
    out_order_listid := t_order_listid;
    if in_text is not null
    then
      update order_list set text = in_text where id = t_order_listid;
    end if;
  
    --补充医嘱
    if t_add_supply = 'YES'
       and in_add_supply = 'YES'
    then
      begin
        select to_number(remark)
          into t_frequence
          from field_dict
         where table_name = 'ORDER_LIST'
           and field_name = 'FREQUENCE'
           and field_value = upper(in_frequence);
      exception
        when no_data_found then
          if in_long_flag = 'A'
          then
            begin
              select 2
                into i
                from hospital.all_material
               where id = in_materialid
                 and account_subjectid like '121%';
              raise_application_error(-20001,
                                      '没有找到使用频率' || in_frequence ||
                                      '请通知系统管理员.;');
            exception
              when no_data_found then
                null;
            end;
          else
            t_frequence := 1;
          end if;
        when too_many_rows then
          raise_application_error(-20001, '找到多条相同的使用频率.;');
        when others then
          t_frequence := 1;
      end;
      begin
        select deptid
          into t_patient_deptid
          from resident_info a, resident_patient b
         where a.residentid = in_residentid
           and a.record_no = b.record_no;
      exception
        when no_data_found then
          raise_application_error(-20001, '没有找到住院病人的住院科室.;');
      end;
    
      --i == 2 代表固定科室； i==1 代表住院科室
      begin
        select 2
          into i
          from hospital.order_list_group a
         where a.patient_deptid = t_patient_deptid
           and a.name = upper(in_use_method)
           and a.status = 'ENABLED'
           and a.type = 'USE_METHOD'
           and rownum = 1;
      exception
        when no_data_found then
          i := 1;
      end;
    
      for c in (select a.generate_mode, a.name, b.*
                  from order_list_group a, order_list_group_item b
                 where a.patient_deptid = t_patient_deptid
                   and a.name = upper(in_use_method)
                   and a.type = 'USE_METHOD'
                   and a.status = 'ENABLED'
                   and b.groupid = a.id
                   and i = 2
                union all
                select a.generate_mode, a.name, b.*
                  from order_list_group a, order_list_group_item b
                 where a.patient_deptid is null
                   and a.name = upper(in_use_method)
                   and a.type = 'USE_METHOD'
                   and a.status = 'ENABLED'
                   and b.groupid = a.id
                   and i = 1)
      loop
        if c.generate_mode = 'COPY_ONCE'
        then
          --只增加一次
          if c.sundry_feeid is not null
          then
            begin
              select 2
                into i
                from order_list
               where ownerid = in_residentid
                 and sundry_feeid = c.sundry_feeid
                 and status in ('WAIT_ACK', 'NORMAL')
                 and (parentid is null or id = parentid)
                 and rownum = 1;
            exception
              when no_data_found then
                --如果是固定价格，采用SUNDRY_FEE的价格
                --否则采用医嘱模板的价格
                begin
                  select *
                    into t_sundry_fee
                    from sundry_fee_config
                   where hospid = get_login_hospid
                     and sundry_feeid = c.sundry_feeid;
                exception
                  when no_data_found then
                    raise_application_error(-20001,
                                            '没有找到' ||
                                            get_sundry_fee_name(c.sundry_feeid) ||
                                            '的杂费项目' || c.sundry_feeid ||
                                            '请通知系统管理员.;');
                  when too_many_rows then
                    raise_application_error(-20001, '找到多条杂费项目.;');
                end;
                if t_sundry_fee.fee_flag = 'UPDATABLE'
                then
                  t_price := c.price;
                else
                  t_price := t_sundry_fee.price;
                end if;
                if c.execute_dept_flag = 'INPUT_DEPT'
                then
                  t_execute_deptid := get_login_deptid;
                elsif c.execute_dept_flag = 'PATIENT_DEPT'
                then
                  t_execute_deptid := t_patient_deptid;
                elsif c.execute_dept_flag = 'STATIC'
                then
                  t_execute_deptid := c.execute_deptid;
                  verify_department(t_execute_deptid);
                else
                  raise_application_error(-20001,
                                          '不支持的执行部门标志' ||
                                          c.execute_dept_flag || '.;');
                end if;
              
                --静脉输液，数量根据模板数量走，不乘以使用医嘱的每天用量
                if t_sundry_fee.sundry_feeid = '120400006a'
                   or t_sundry_fee.sundry_feeid = '120400006A'
                then
                  t_frequence := c.amount;
                  v_long_flag := 'A'; --筋脉输液，自动跟踪长期医嘱
                else
                  t_frequence := t_frequence * c.amount;
                  v_long_flag := in_long_flag;
                end if;
                prv_医嘱_用药方法_杂费_增加(t_sub_order_listid,
                                            v_long_flag,
                                            in_start_date,
                                            in_start_workerid,
                                            in_residentid,
                                            t_execute_deptid,
                                            c.sundry_feeid,
                                            t_price,
                                            t_frequence,
                                            t_seq,
                                            'AUTOFEE',
                                            null);
            end;
          else
            begin
              select 2
                into i
                from order_list
               where ownerid = in_residentid
                 and materialid = c.materialid
                 and packageid = c.packageid
                 and status in ('WAIT_ACK', 'NORMAL')
                 and (parentid is null or id = parentid)
                 and rownum = 1;
            exception
              when no_data_found then
                select ltrim(rtrim(to_char(c.medicament))) ||
                       nvl(content_unit, name) || ' ' ||
                       lower(ltrim(rtrim(in_use_method))) || ' ' ||
                       lower(ltrim(rtrim(in_frequence)))
                  into t_method
                  from all_package
                 where id = c.packageid;
                prv_医嘱_用药方法_物资_增加(t_sub_order_listid,
                                            in_start_workerid,
                                            in_residentid,
                                            c.material_deptid,
                                            c.materialid,
                                            c.packageid,
                                            in_long_flag,
                                            t_method,
                                            t_frequence * c.amount,
                                            t_seq,
                                            'AUTOFEE',
                                            c.drop_speed,
                                            c.drop_speed_unit);
            end;
          end if;
        elsif c.generate_mode = 'COPY_ALL'
        then
          v_skip := 'N';
          if c.sundry_feeid is not null
          then
            --如果是  静脉输液(超过一组）加收 ；皮下输液(超过一组）加收 ；小儿头皮静脉输液(超过一组）加收
            --    用法是 ivgtt
            if (nvl(get_system_option('静脉输液医嘱_第一组不跟静脉输液加收'),
                    'N') = 'Y')
            then
              if c.sundry_feeid in
                 ('120400005B', '120400006B', '120400007B')
                 and c.name in ('IVGTT')
              then
                v_skip := 'Y';
                for ol in (select id, frequence
                             from hospital.order_list_
                            where ownerid = in_residentid
                              and status not in ('STOPPED', 'FINISHED')
                              and (parentid is null or
                                  parentid is not null and
                                  parentid <> t_order_listid)
                              and use_method = lower(c.name))
                loop
                  begin
                    select 2
                      into i
                      from hospital.order_list_
                     where ownerid = in_residentid
                       and parentid = ol.id
                       and sundry_feeid = c.sundry_feeid
                       and frequence = ol.frequence - 1
                       and rownum = 1;
                  exception
                    when no_data_found then
                      v_skip := 'N';
                      exit;
                  end;
                end loop;
              end if;
            
              --如果是固定价格，采用SUNDRY_FEE的价格
              --否则采用医嘱模板的价格
            
              if v_skip = 'Y'
              then
                t_frequence := t_frequence - 1;
              end if;
            end if;
          
            begin
              select *
                into t_sundry_fee
                from sundry_fee_config
               where hospid = get_login_hospid
                 and sundry_feeid = c.sundry_feeid;
            exception
              when no_data_found then
                raise_application_error(-20001,
                                        '没有找到' ||
                                        get_sundry_fee_name(c.sundry_feeid) ||
                                        '的杂费项目' || c.sundry_feeid ||
                                        '请通知系统管理员.;');
              when too_many_rows then
                raise_application_error(-20001, '找到多条杂费项目.;');
            end;
            if t_sundry_fee.fee_flag = 'UPDATABLE'
            then
              t_price := c.price;
            else
              t_price := t_sundry_fee.price;
            end if;
            if c.execute_dept_flag = 'INPUT_DEPT'
            then
              t_execute_deptid := get_login_deptid;
            elsif c.execute_dept_flag = 'PATIENT_DEPT'
            then
              t_execute_deptid := t_patient_deptid;
            elsif c.execute_dept_flag = 'STATIC'
            then
              t_execute_deptid := c.execute_deptid;
              verify_department(t_execute_deptid);
            else
              raise_application_error(-20001,
                                      '不支持的执行部门标志' ||
                                      c.execute_dept_flag || '.;');
            end if;
            prv_医嘱_用药方法_杂费_增加(t_sub_order_listid,
                                        in_long_flag,
                                        in_start_date,
                                        in_start_workerid,
                                        in_residentid,
                                        t_execute_deptid,
                                        c.sundry_feeid,
                                        t_price,
                                        t_frequence * c.amount,
                                        t_seq,
                                        'AUTOFEE',
                                        null);
            prv_医嘱_子医嘱_设置(t_order_listid,
                                 t_sub_order_listid,
                                 'AUTOFEE');
          else
            select ltrim(rtrim(to_char(c.medicament))) ||
                   nvl(content_unit, name) || ' ' ||
                   lower(ltrim(rtrim(in_use_method))) || ' ' ||
                   lower(ltrim(rtrim(in_frequence)))
              into t_method
              from all_package
             where id = c.packageid;
            prv_医嘱_用药方法_物资_增加(t_sub_order_listid,
                                        in_start_workerid,
                                        in_residentid,
                                        c.material_deptid,
                                        c.materialid,
                                        c.packageid,
                                        in_long_flag,
                                        t_method,
                                        t_frequence * c.amount,
                                        t_seq,
                                        'AUTOFEE',
                                        c.drop_speed,
                                        c.drop_speed_unit);
            prv_医嘱_子医嘱_设置(t_order_listid,
                                 t_sub_order_listid,
                                 'AUTOFEE');
          end if;
        else
          raise_application_error(-20001,
                                  '不支持的补充医嘱录入方式' ||
                                  c.generate_mode || '.;');
        end if;
      end loop;
    end if;
  end s_医嘱_子医嘱_物资_增加_nc;
  ----------------------------------------------------------------------------
  procedure s_医嘱_子医嘱_文本_增加_nc(in_parent_order_listid in varchar2
                                      ,in_long_flag           in varchar2
                                      ,in_start_date          in varchar2
                                      ,in_start_workerid      in varchar2
                                      ,in_residentid          in varchar2
                                      ,in_type                in varchar2
                                      , -- 医嘱类型(护士医嘱、医师医嘱、手术医嘱、出院带药)
                                       in_text                in varchar2
                                      ,out_order_listid       out varchar2) is
    t_order_listid      order_list.id%type;
    t_parent_order_list order_list%rowtype;
    i                   number;
    t_resident_info     resident_info%rowtype;
  begin
    lock_res.lock_ack_医嘱_操作(in_residentid, t_resident_info);
    user_permit.s_ack_医嘱确认权;
    verify_length(in_text, 200, '文本医嘱');
  
    if trim(replace(in_text, ' ', null)) in ('今日出院', '明日出院')
    then
      begin
        select 2
          into i
          from hospital.order_list
         where ownerid = in_residentid
           and materialid is null
           and sundry_feeid is null
           and text = trim(replace(in_text, ' ', null))
           and rownum = 1;
        raise_application_error(-20001,
                                in_text || '医嘱已经录入，不能重复录入.;');
      exception
        when no_data_found then
          null;
      end;
    
      if in_long_flag <> 'B'
      then
        raise_application_error(-20001, in_text || '只能是下临时医嘱.;');
      end if;
    end if;
  
    if in_parent_order_listid is not null
    then
      begin
        select *
          into t_parent_order_list
          from order_list
         where id = in_parent_order_listid
           and rownum = 1
           for update of id nowait;
      exception
        when no_data_found then
          raise_application_error(-20001, '父医嘱没有找到.;');
        when others then
          raise_application_error(-20001, '其他人正在操作,请稍候再试.;');
      end;
      prv_医嘱_医嘱_文本_增加(t_order_listid,
                              t_parent_order_list.long_flag,
                              null, --t_parent_order_list.start_date,
                              t_parent_order_list.start_workerid,
                              t_parent_order_list.ownerid,
                              in_type,
                              in_text);
      prv_医嘱_子医嘱_设置(in_parent_order_listid, t_order_listid, null);
    else
      prv_医嘱_医嘱_文本_增加(t_order_listid,
                              in_long_flag,
                              in_start_date,
                              in_start_workerid,
                              in_residentid,
                              in_type,
                              in_text);
      prv_医嘱_子医嘱_设置(t_order_listid, t_order_listid, in_type);
    end if;
    out_order_listid := t_order_listid;
    --如果是医生下医嘱、则修改dr_order_list_info
    if in_type in ('DOCTOR', 'OP1')
    then
      s_医生处理医嘱nc(in_residentid);
    end if;
  end s_医嘱_子医嘱_文本_增加_nc;
  ---------------------------------------------------------------
  procedure s_医嘱_医嘱_增加_取消_nc(in_order_listid in varchar2) as
    t_order_list order_list%rowtype;
    i            number;
  begin
    lock_res.lock_ack_医嘱_操作(in_order_listid, t_order_list);
    ol_status.s_ack_医嘱_录入_取消(t_order_list);
    begin
      select 2
        into i
        from charge_item a, order_list b
       where (b.id = t_order_list.id or b.parentid = t_order_list.parentid)
         and a.order_listid = b.id
         and rownum = 1;
      for c in (select id
                  from order_list
                 where id = t_order_list.id
                    or parentid = t_order_list.parentid
                 group by id)
      loop
        prv_医嘱_医嘱_增加_取消标记(c.id);
      end loop;
    exception
      when no_data_found then
        if t_order_list.parentid is null
           or t_order_list.id = t_order_list.parentid
        then
          for c in (select id
                      from order_list
                     where id = t_order_list.id
                        or parentid = t_order_list.parentid
                     group by id)
          loop
            prv_医嘱_医嘱_增加_取消处理(c.id);
          end loop;
        else
          prv_医嘱_医嘱_增加_取消处理(in_order_listid);
        end if;
    end;
    --如果该病人是医生删除医嘱，并且
    if t_order_list.type in ('DOCTOR', 'OP1', 'OP2', 'AUTOFEE')
    then
      begin
        select 2
          into i
          from order_list
         where ownerid = t_order_list.ownerid
           and type = t_order_list.type
           and input_workerid = hospital.login.get_workerid
           and status = 'WAIT_ACK'
           and rownum = 1;
      exception
        when no_data_found then
          s_医生确认处理医嘱nc(t_order_list.ownerid);
      end;
    end if;
  
  end s_医嘱_医嘱_增加_取消_nc;
  ---------------------------------------------------------------
  procedure s_医嘱_核对(in_order_listid in varchar2) is
    t_order_list order_list%rowtype;
  begin
    lock_res.lock_ack_医嘱_操作(in_order_listid, t_order_list);
    ol_status.s_ack_医嘱核对(t_order_list);
    update order_list
       set status         = 'NORMAL',
           status1        = 'WAIT_ACC',
           check_workerid = hospital.login.get_workerid,
           check_date     = sysdate,
           this_days      = 0
     where (id = in_order_listid or parentid = in_order_listid);
    s_护士处理医嘱(t_order_list.ownerid);
    commit;
    rabbitmq.publish_ol_message(in_event        => events.ol_check,
                                in_order_listid => in_order_listid);
  end s_医嘱_核对;
  ---------------------------------------------------------------
  procedure s_医嘱_核对_取消(in_order_listid in varchar2) is
    t_order_list order_list%rowtype;
    i            number;
  begin
    lock_res.lock_ack_医嘱_操作(in_order_listid, t_order_list);
    ol_status.s_ack_医嘱核对取消(t_order_list);
    if t_order_list.check_workerid <> hospital.login.get_workerid
    then
      begin
        select 2
          into i
          from hospital.worker
         where id = hospital.login.get_workerid
           and nvl(substrb(attribute, 16, 1), 'B') = 'A'
           and rownum = 1;
      exception
        when no_data_found then
          raise_application_error(-20001,
                                  '不是自己核对的医嘱,不能取消核对.;');
      end;
    end if;
  
    if nvl(t_order_list.executed_days, 0) - nvl(t_order_list.skip_days, 0) > 0
       or nvl(t_order_list.this_days, 0) > 0
    then
      raise_application_error(-20001, '该医嘱已经入帐,不能取消核对');
    end if;
  
    update order_list
       set status         = 'WAIT_CHECK',
           status1        = 'NONE',
           check_workerid = null,
           check_date     = null,
           this_days      = null
     where (id = in_order_listid or parentid = in_order_listid);
    commit;
    rabbitmq.publish_ol_message(in_event        => events.ol_check_cancel,
                                in_order_listid => in_order_listid);
  end s_医嘱_核对_取消;
  --------------------------------------------------------------- 
  procedure s_医嘱_选择(in_id           in varchar2
                       ,in_order_listid in varchar2
                       ,out_id          out varchar2) is
    v_id order_list_select.id%type;
  begin
    if in_id is null
    then
      v_id := get_next_order_listid;
    else
      v_id := in_id;
    end if;
    insert into order_list_select
      (id, order_listid, operator, update_date)
    values
      (v_id, in_order_listid, hospital.login.get_workerid, sysdate);
    out_id := v_id;
    commit;
  end s_医嘱_选择;
  --------------------------------------------------------------- 
  --  医嘱选择后，删除指定的选择，同时删除2小时以前的选择
  --
  procedure s_医嘱_选择_删除(in_id in varchar2) is
  begin
    delete from order_list_select where id = in_id;
    delete from order_list_select where update_date < sysdate - 2 / 24;
    commit;
  end s_医嘱_选择_删除;
  --------------------------------------------------------------- 
  procedure s_医嘱_修改医嘱长期标志(in_order_listid in varchar2
                                   ,in_long_flag    in varchar2) is
    t_order_list   order_list%rowtype;
    v_sundry_feeid hospital.all_sundry_fee_.id%type;
    t_deptid     hospital.resident_info_.deptid%type;
    i              integer;
  begin
    lock_res.lock_ack_医嘱_操作(in_order_listid, t_order_list);
    if t_order_list.long_flag = in_long_flag
    then
      return;
    end if;
  
    if in_long_flag not in ('A', 'B')
    then
      raise_application_error(-20001,
                              '输入参数in_long_flag值错误，请输入A或者B.;');
    end if;
    begin
      select 2
        into i
        from hospital.order_list_ a
       where a.id = in_order_listid
         and a.start_date < a.input_date
         and a.long_flag = 'B';
      raise_application_error(-20001, '补录医嘱不允许修改医嘱标志');
    exception
      when no_data_found then
        null;
    end;
    begin
      select sundry_feeid
        into v_sundry_feeid
        from order_list
       where id = in_order_listid
         and sundry_feeid in
             ('120100002', '120100003', '120100004', '120100005')
         and status in ('WAIT_ACK', 'WAIT_CHECK', 'NORMAL')
         and in_long_flag = 'A';
      raise_application_error(-20001,
                              '该病人已经有长期护理医嘱,不能修改长期、临时标志');
    exception
      when no_data_found then
        null;
    end;
    if t_order_list.parentid is not null
       and t_order_list.id <> t_order_list.parentid
    then
      lock_res.lock_order_list(t_order_list.parentid, t_order_list);
    end if;
  
    if t_order_list.status not in ('WAIT_ACK', 'WAIT_CHECK')
    then
      raise_application_error(-20001,
                              '医嘱已经确定，不能修改长期、临时标志.;');
    end if;
  
    if t_order_list.input_workerid <> hospital.login.get_workerid
    then
      raise_application_error(-20001,
                              '这是(' ||
                              get_worker_name(t_order_list.input_workerid) ||
                              ' ）录入的医嘱,您不能不能修改长期、临时标志.;');
    end if;
  
    if t_order_list.long_flag not in ('A', 'B')
    then
      raise_application_error(-20001,
                              '不是长期或者临时医嘱，不能修改长期、临时标志.;');
    end if;
    begin
      select a.deptid
        into t_deptid
        from hospital.resident_info a
       where a.residentid = t_order_list.ownerid
         and rownum = 1;
    
      if (t_order_list.execute_deptid <>t_deptid and
         t_order_list.sundry_feeid is not null)
      then
        if nvl(get_system_option('允许修改其他科室执行杂费医嘱标志'), 'N') = 'Y'
        then
          raise_application_error(-20001,
                                  '不允许修改非病人科室执行医嘱的医嘱标志;');
        end if;
      end if;
    end;
  
    update order_list
       set long_flag = in_long_flag
     where parentid = t_order_list.id;
  
    update order_list
       set long_flag = in_long_flag
     where id = t_order_list.id;
    commit;
  end s_医嘱_修改医嘱长期标志;
  --------------------------------------------------------------- 
  function get_医嘱_出院日期(in_residentid in varchar2) return date is
    v_out_date date;
  begin
    select max(start_date)
      into v_out_date
      from hospital.order_list
     where ownerid = in_residentid
       and text = '今日出院';
  
    if v_out_date is null
    then
      select max(start_date)
        into v_out_date
        from hospital.order_list
       where ownerid = in_residentid
         and text = '明日出院';
      v_out_date := v_out_date + 1;
    end if;
  
    if v_out_date is null
    then
      select max(start_date)
        into v_out_date
        from hospital.order_list
       where ownerid = in_residentid
         and text in ('痊愈出院', '自动出院', '好转出院', '减轻出院',
              '未愈出院', '治愈出院', '出院');
    end if;
  
    if v_out_date is null
    then
      select max(start_date)
        into v_out_date
        from hospital.order_list
       where ownerid = in_residentid
         and text like ('%出院');
    end if;
  
    return v_out_date;
  
  end get_医嘱_出院日期;
  -------------------------------------------------------------- 
  procedure s_医嘱_皮试签名(in_order_listid     in varchar2
                           ,in_skin_test_result in varchar2
                           ,in_sign_workerid    in varchar2
                           ,in_sign_date        in varchar2) is
    t_order_list    order_list%rowtype;
    v_order_list_id order_list.id%type;
  begin
    lock_res.lock_ack_医嘱_操作(in_order_listid, t_order_list);
    if not (t_order_list.parentid is null or
        t_order_list.id = t_order_list.parentid)
    then
      lock_res.lock_ack_医嘱_操作(t_order_list.parentid, t_order_list);
    end if;
  
    if in_skin_test_result is not null
    then
      verify_field_dict('ORDER_LIST',
                        'SKIN_TEST_RESULT',
                        in_skin_test_result,
                        '皮试结果');
    end if;
  
    if not (t_order_list.materialid is not null and
        t_order_list.long_flag = 'B' and
        t_order_list.use_method in ('皮试', '点试', 'h', 'ih', 'ps') or
        t_order_list.materialid is null and
        t_order_list.sundry_feeid is null and
        instr(t_order_list.text, '过敏试验') > 0 or
        t_order_list.materialid is null and
        t_order_list.sundry_feeid is null and
        instr(t_order_list.text, '试验') > 0)
    then
      raise_application_error(-20001, '不是皮试医嘱，不能进行皮试签名');
    end if;
  
    if nvl(get_system_option('皮试药品_录入皮试结果'), 'Y') = 'Y'
    then
      begin
        select a.id
          into v_order_list_id
          from hospital.all_material_ t, hospital.order_list_ a
         where t.attribute like '____________B_'
           and a.materialid = t.id
           and (a.parentid = t_order_list.id or a.id = t_order_list.id);
      exception
        when no_data_found then
          raise_application_error(-20001, '请确认该药品是皮试药品!');
      end;
    else
      v_order_list_id := in_order_listid;
    end if;
  
    update order_list
       set skin_test_result1        = in_skin_test_result,
           skin_test_sign1_workerid = in_sign_workerid,
           skin_test_sign1          = get_worker_name(in_sign_workerid),
           skin_test_sign1_date     = hospital.get_date_from_str(in_sign_date)
     where (id = v_order_list_id /*or parentid = t_order_list.id*/
           );
  
    if nvl(get_system_option('医嘱皮试_启用皮试复核'), 'N') = 'N'
    then
      update order_list
         set skin_test_result         = in_skin_test_result,
             skin_test_result2        = in_skin_test_result,
             skin_test_sign2_workerid = in_sign_workerid,
             skin_test_sign2          = get_worker_name(in_sign_workerid),
             skin_test_sign2_date     = hospital.get_date_from_str(in_sign_date)
       where (id = v_order_list_id /*or parentid = t_order_list.id*/
             );
    end if;
    commit;
  
    rabbitmq.publish_ol_message(in_event        => events.ol_skin_test_sign1,
                                in_order_listid => in_order_listid);
  end s_医嘱_皮试签名;
  -------------------------------------------------------------- 
  procedure s_医嘱_皮试双签名(in_order_listid     in varchar2
                             ,in_skin_test_result in varchar2
                             ,in_sign_workerid    in varchar2
                             ,in_sign_date        in varchar2) is
    t_order_list  order_list%rowtype;
    v_skin_result order_list.skin_test_result%type;
    v_order_list1 order_list%rowtype;
  begin
    lock_res.lock_ack_医嘱_操作(in_order_listid, t_order_list);
    if not (t_order_list.parentid is null or
        t_order_list.id = t_order_list.parentid)
    then
      lock_res.lock_ack_医嘱_操作(t_order_list.parentid, t_order_list);
    end if;
  
    if in_skin_test_result is not null
    then
      verify_field_dict('ORDER_LIST',
                        'SKIN_TEST_RESULT',
                        in_skin_test_result,
                        '皮试结果');
    end if;
  
    if not (t_order_list.materialid is not null and
        t_order_list.long_flag = 'B' and
        t_order_list.use_method in ('皮试', '点试', 'h', 'ih', 'ps') or
        t_order_list.materialid is null and
        t_order_list.sundry_feeid is null and
        instr(t_order_list.text, '过敏试验') > 0)
    then
      raise_application_error(-20001, '不是皮试医嘱，不能进行皮试签名');
    end if;
  
    begin
      select a.*
        into v_order_list1
        from hospital.all_material_ t, hospital.order_list_ a
       where a.skin_test_result1 is not null
         and a.materialid = t.id
         and (a.parentid = t_order_list.id or a.id = t_order_list.id);
    exception
      when no_data_found then
        null;
    end;
  
    if v_order_list1.skin_test_result1 is null
    then
      raise_application_error(-20001, '还未皮试，不能复核皮试！');
    end if;
  
    --皮试最后结果 
    if in_skin_test_result = '2'
       or t_order_list.skin_test_result1 = '2'
    then
      v_skin_result := '2';
    else
      v_skin_result := '1';
    end if;
  
    update order_list
       set skin_test_result         = v_skin_result,
           skin_test_result2        = in_skin_test_result,
           skin_test_sign2_workerid = in_sign_workerid,
           skin_test_sign2          = get_worker_name(in_sign_workerid),
           skin_test_sign2_date     = hospital.get_date_from_str(in_sign_date)
     where (id = v_order_list1.id /*or parentid = t_order_list.id*/
           );
    commit;
  
    rabbitmq.publish_ol_message(in_event        => events.ol_skin_test_sign2,
                                in_order_listid => in_order_listid);
  end s_医嘱_皮试双签名;
  -------------------------------------------------------------- 
  procedure s_修改医嘱警示灯标识(in_order_listid in varchar2
                                ,in_light_flag   in varchar2) is
    i number;
  begin
    verify_not_null(in_light_flag, '合理用药_警示灯');
    verify_valid_number(in_light_flag, '合理用药_警示灯');
    begin
      select 2
        into i
        from hospital.order_list_
       where id = in_order_listid
         and rownum = 1
         for update nowait;
      update hospital.order_list_
         set light_flag = to_number(in_light_flag)
       where id = in_order_listid
         and rownum = 1;
    exception
      when no_data_found then
        null;
    end;
    commit;
  end;
  -------------------------------------------------------------------------------------------------------------------
  function get_next_skintest_compare_id return varchar2 is
    v_id varchar2(20);
  begin
    select to_char(sysdate, 'yyyymm') ||
           lpad(seq_skintest_compare.nextval, 8, 0)
      into v_id
      from dual;
    return v_id;
  end get_next_skintest_compare_id;
  -------------------------------------------------------------------------------------------------------------------
  procedure s_皮试药品对照(in_materialid         in varchar2
                          ,in_compare_materialid in varchar2
                          ,in_remark             in varchar2
                          ,out_id                out varchar2) is
    i    number;
    v_id hospital.skintest_compare.id%type;
  begin
    verify_not_null(in_materialid, '皮试药品ID');
    verify_valid_number(in_compare_materialid, '对照皮试药品ID');
    begin
      select 2
        into i
        from hospital.skintest_compare_ a, hospital.all_material_ b
       where a.materialid = in_materialid
         and a.compare_materialid = in_compare_materialid
         and a.materialid = b.id
         and b.attribute like '____________B_'
         and rownum = 1;
      raise_application_error(-20001,
                              get_material_name(in_materialid) ||
                              '药品已经和' ||
                              get_material_name(in_compare_materialid) ||
                              '进行对照.');
    exception
      when no_data_found then
        null;
    end;
    if in_materialid = in_compare_materialid
    then
      raise_application_error(-20001,
                              get_material_name(in_materialid) || ' 和 ' ||
                              get_material_name(in_materialid) ||
                              '为同一药品，不能进行对照.');
    end if;
    v_id := get_next_skintest_compare_id;
    insert into skintest_compare_
      (id,
       hosp_id,
       materialid,
       compare_materialid,
       remark,
       input_worker_id,
       input_update_date)
    values
      (v_id,
       hospital.get_login_hospid,
       in_materialid,
       in_compare_materialid,
       in_remark,
       hospital.get_login_workerid,
       sysdate);
    out_id := v_id;
    commit;
  end s_皮试药品对照;
  ------------------------------------------------------------------------------------------------------------------- 
  procedure s_皮试药品取消对照(in_id in varchar2) is
    i number;
  begin
    verify_length(in_id, '20', 'ID');
    begin
      select 2
        into i
        from hospital.skintest_compare_ a, hospital.all_material_ b
       where a.id = in_id
         and rownum = 1;
    exception
      when no_data_found then
        raise_application_error(-20001, '没有找到对应的皮试药品对照！');
    end;
    delete from skintest_compare_ a where a.id = in_id;
    commit;
  end s_皮试药品取消对照;
  -------------------------------------------------------------------------------------------------------------------
begin
  null;
end ol_input;
/
