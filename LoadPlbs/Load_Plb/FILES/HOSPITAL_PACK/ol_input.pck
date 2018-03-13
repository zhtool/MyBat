create or replace package ol_input is

  -- Author  : ADMINISTRATOR
  -- Created : 2006/12/06 9:30:18
  -- Purpose : ҽ��¼����̴���
  --           ����ǰҽ��¼����صĹ��̣���֯���ð�
  procedure s_ҽ��_ҽ��_����_ȡ��(in_order_listid in varchar2);
  procedure s_ҽ��_��ҽ��_����_ҽ����(in_residentid         in varchar2
                                     ,in_order_list_groupid in varchar2
                                     ,in_start_date         in varchar2
                                     ,in_start_workerid     in varchar2
                                     ,in_type               in varchar2
                                     ,in_check_point        in varchar2 default null
                                     ,out_order_listid      out varchar2);
  procedure s_ҽ��_��ҽ��_����_ҽ����(in_residentid              in varchar2
                                     ,in_order_list_groupid      in varchar2
                                     ,in_order_list_group_itemid in varchar2
                                     ,in_start_date              in varchar2
                                     ,in_start_workerid          in varchar2
                                     ,in_type                    in varchar2
                                     ,in_check_point             in varchar2 default null
                                     ,out_order_listid           out varchar2);
  procedure s_ҽ��_ճ��(in_residentid     in varchar2
                       ,in_order_listid   in varchar2
                       ,in_start_date     in varchar2
                       ,in_start_workerid in varchar2
                       ,in_type           in varchar2
                       ,in_check_point    in varchar2 default null
                       ,out_order_listid  out varchar2);
  procedure s_ҽ��_��ҽ��_����_����(in_parent_order_listid in varchar2
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
                                   , -- ҽ������(��ʿҽ����ҽʦҽ��������ҽ������Ժ��ҩ)
                                    in_add_supply          in varchar2
                                   ,in_drop_speed          in varchar2
                                   ,in_drop_speed_unit     in varchar2
                                   ,out_order_listid       out varchar2);
  --����ҽ�����͵�ҽ������
  procedure s_ҽ��_��ҽ��_�ӷ�_����(in_parent_order_listid in varchar2
                                   ,in_long_flag           in varchar2
                                   ,in_start_date          in varchar2
                                   ,in_start_workerid      in varchar2
                                   ,in_residentid          in varchar2
                                   ,in_deptid              in varchar2
                                   , --�������
                                    in_sundry_feeid        in varchar2
                                   ,in_price               in varchar2
                                   ,in_amount              in varchar2
                                   ,in_type                in varchar2
                                   , -- ҽ������(��ʿҽ����ҽʦҽ��������ҽ������Ժ��ҩ)
                                    in_add_supply          in varchar2
                                   ,out_order_listid       out varchar2
                                   ,in_method              in varchar2 default null
                                   ,in_hospid              in varchar2 default null
                                   ,in_check_point         in varchar2 default null);
  procedure s_ҽ��_��ҽ��_�ӷ�_����_nc(in_parent_order_listid in varchar2
                                      ,in_long_flag           in varchar2
                                      ,in_start_date          in varchar2
                                      ,in_start_workerid      in varchar2
                                      ,in_residentid          in varchar2
                                      ,in_deptid              in varchar2
                                      , --�������
                                       in_sundry_feeid        in varchar2
                                      ,in_price               in varchar2
                                      ,in_amount              in varchar2
                                      ,in_type                in varchar2
                                      , -- ҽ������(��ʿҽ����ҽʦҽ��������ҽ������Ժ��ҩ)
                                       out_add_supply         out varchar2
                                      ,out_order_listid       out varchar2
                                      ,in_method              in varchar2 default null
                                      ,in_hospid              in varchar2 default null
                                      ,in_check_point         in varchar2 default null);
  procedure s_ҽ��_��ҽ��_�ı�_����(in_parent_order_listid in varchar2
                                   ,in_long_flag           in varchar2
                                   ,in_start_date          in varchar2
                                   ,in_start_workerid      in varchar2
                                   ,in_residentid          in varchar2
                                   ,in_type                in varchar2
                                   , -- ҽ������(��ʿҽ����ҽʦҽ��������ҽ������Ժ��ҩ)
                                    in_text                in varchar2
                                   ,out_order_listid       out varchar2);
  procedure s_ҽ��_��ע(in_order_listid in varchar2
                       ,in_text         in varchar2);
  procedure s_ҽ��_ҽ��_ȷ��(in_order_listid in varchar2
                            ,in_type         in varchar2);
  procedure s_ҽ��_ҽ��_���(in_order_listid in varchar2);
  procedure s_ҽ��_ҽ��_ȷ��_nc(in_order_listid in varchar2
                               ,in_type         in varchar2);
  procedure s_ҽ��_ҽ��_ȷ��_ȡ��(in_order_listid in varchar2
                                 ,in_type         in varchar2);
  procedure s_ҽ��_ҽ��_ȷ��_ȡ��nc(in_order_listid in varchar2
                                   ,in_type         in varchar2);
  procedure s_ҽ��_�жϻ�����(in_residentid in varchar2);
  procedure s_��ʿ����ҽ��(in_residentid in varchar2);
  --���ò��˲���
  procedure s_���ò���(in_residentid     in varchar2
                      ,in_illness_status in varchar2);
  --�жϻ�����
  procedure s_���û�����(in_residentid in varchar2);
  function get_ҽ���ж�ҽ������״̬(in_residentid in varchar2)
    return varchar2;
  function get_��ʿ�ж�ҽ������״̬(in_residentid in varchar2)
    return varchar2;
  procedure s_ҽ��_��ҽ��_����_����_nc(in_parent_order_listid in varchar2
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
                                      ,in_type                in varchar2 -- ҽ������(��ʿҽ����ҽʦҽ��������ҽ������Ժ��ҩ)
                                      ,in_add_supply          in varchar2
                                      ,in_text                in varchar2 default null
                                      ,in_drop_speed          in varchar2
                                      ,in_drop_speed_unit     in varchar2
                                      ,out_order_listid       out varchar2);
  procedure s_ҽ��_��ҽ��_�ı�_����_nc(in_parent_order_listid in varchar2
                                      ,in_long_flag           in varchar2
                                      ,in_start_date          in varchar2
                                      ,in_start_workerid      in varchar2
                                      ,in_residentid          in varchar2
                                      ,in_type                in varchar2
                                      , -- ҽ������(��ʿҽ����ҽʦҽ��������ҽ������Ժ��ҩ)
                                       in_text                in varchar2
                                      ,out_order_listid       out varchar2);
  procedure s_ҽ��_ҽ��_����_ȡ��_nc(in_order_listid in varchar2);
  --ҽ���˶�
  procedure s_ҽ��_�˶�(in_order_listid in varchar2);
  procedure s_ҽ��_�˶�_ȡ��(in_order_listid in varchar2);
  --ҽ��ѡ��
  procedure s_ҽ��_ѡ��(in_id           in varchar2
                       ,in_order_listid in varchar2
                       ,out_id          out varchar2);
  procedure s_ҽ��_ѡ��_ɾ��(in_id in varchar2);
  procedure s_ҽ��_�޸�ҽ�����ڱ�־(in_order_listid in varchar2
                                   ,in_long_flag    in varchar2);

  function get_ҽ��_��Ժ����(in_residentid in varchar2) return date;
  procedure s_ҽ������ҽ��nc(in_residentid in varchar2);
  procedure s_ҽ��ȷ�ϴ���ҽ��nc(in_residentid in varchar2);

  procedure s_ҽ��_Ƥ��ǩ��(in_order_listid     in varchar2
                           ,in_skin_test_result in varchar2
                           ,in_sign_workerid    in varchar2
                           ,in_sign_date        in varchar2);

  procedure s_ҽ��_Ƥ��˫ǩ��(in_order_listid     in varchar2
                             ,in_skin_test_result in varchar2
                             ,in_sign_workerid    in varchar2
                             ,in_sign_date        in varchar2);
  procedure s_�޸�ҽ����ʾ�Ʊ�ʶ(in_order_listid in varchar2
                                ,in_light_flag   in varchar2);
  function get_next_skintest_compare_id return varchar2;
  procedure s_Ƥ��ҩƷ����(in_materialid         in varchar2
                          ,in_compare_materialid in varchar2
                          ,in_remark             in varchar2
                          ,out_id                out varchar2);
  procedure s_Ƥ��ҩƷȡ������(in_id in varchar2);

end ol_input;
/
create or replace package body hospital.ol_input is

  /***************************************************/
  /* ˽�й��̶���                                    */
  /***************************************************/
  ack_status  varchar2(10);
  ack_status1 varchar2(10);
  procedure prv_ҽ��_��_����_����(out_order_listid   out varchar2
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

  procedure prv_ҽ��_��_����_���Ӵ���(out_order_listid   out varchar2
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

  procedure prv_ҽ��_��_�ӷ�_����(out_order_listid  out varchar2
                                 ,in_start_workerid in varchar2
                                 ,in_start_date     in varchar2
                                 ,in_residentid     in varchar2
                                 ,in_execute_deptid in varchar2
                                 , --�������
                                  in_sundry_feeid   in varchar2
                                 ,in_price          in varchar2
                                 ,in_amount         in varchar2
                                 ,in_remark         in varchar2
                                 ,in_type           in varchar2
                                 ,in_method         in varchar2
                                 ,in_hospid         in varchar2
                                 ,in_check_point    in varchar2);

  procedure prv_ҽ��_��_����_����(out_order_listid   out varchar2
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
  procedure prv_ҽ��_��_�ӷ�_����(out_order_listid  out varchar2
                                 ,in_start_workerid in varchar2
                                 ,in_start_date     in varchar2
                                 ,in_residentid     in varchar2
                                 ,in_execute_deptid in varchar2
                                 , --�������
                                  in_sundry_feeid   in varchar2
                                 ,in_price          in varchar2
                                 ,in_amount         in varchar2
                                 ,in_remark         in varchar2
                                 ,in_type           in varchar2
                                 ,in_method         in varchar2
                                 ,in_hospid         in varchar2
                                 ,in_check_point    in varchar2
                                 ,in_account_type   in varchar2 default null);
  procedure prv_ҽ��_ҽ��_����_����(out_order_listid   out varchar2
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
  procedure prv_ҽ��_ҽ��_�ӷ�_����(out_order_listid  out varchar2
                                   ,in_long_flag      in varchar2
                                   ,in_start_date     in varchar2
                                   ,in_start_workerid in varchar2
                                   ,in_residentid     in varchar2
                                   ,in_deptid         in varchar2
                                   , --�������
                                    in_sundry_feeid   in varchar2
                                   ,in_price          in varchar2
                                   ,in_amount         in varchar2
                                   ,in_remark         in varchar2
                                   ,in_type           in varchar2
                                   ,in_method         in varchar2
                                   ,in_hospid         in varchar2
                                   ,in_check_point    in varchar2
                                   ,in_account_type   in varchar2 default null);
  procedure prv_ҽ��_ҽ��_�ı�_����(out_order_listid  out varchar2
                                   ,in_long_flag      in varchar2
                                   ,in_start_date     in varchar2
                                   ,in_start_workerid in varchar2
                                   ,in_residentid     in varchar2
                                   ,in_type           in varchar2
                                   ,in_text           in varchar2);
  procedure prv_ҽ��_ҽ��_����_ȡ������(in_order_listid in varchar2);
  procedure prv_ҽ��_ҽ��_����_ȡ�����(in_order_listid in varchar2);

  procedure prv_ҽ��_��ҩ����_�ӷ�_����(out_order_listid  out varchar2
                                       ,in_long_flag      in varchar2
                                       ,in_start_date     in varchar2
                                       ,in_start_workerid in varchar2
                                       ,in_residentid     in varchar2
                                       ,in_deptid         in varchar2
                                       , --�������
                                        in_sundry_feeid   in varchar2
                                       ,in_price          in varchar2
                                       ,in_amount         in varchar2
                                       ,in_remark         in varchar2
                                       ,in_type           in varchar2
                                       ,in_check_point    in varchar2);
  procedure prv_ҽ��_��ҩ����_����_����(out_order_listid   out varchar2
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
  procedure prv_ҽ��_��ҽ��_����(in_parent_order_listid in varchar2
                                ,in_child_order_listid  in varchar2
                                ,in_order_list_type     in varchar2 default null);
  procedure prv_ҽ��_ҽ��_ȷ��_����(in_order_listid in varchar2);

  procedure prv_ҽ��_ҽ��_ȷ��_ȡ������(in_order_listid in varchar2);
  procedure prv_��ʿ����ҽ��(in_residentid in varchar2);
  procedure prv_�жϻ�����(in_residentid in varchar2);
  procedure prv_��¼ҽ����_¼�����(in_residentid         in varchar2
                                   ,in_order_list_groupid in varchar2
                                   ,in_error_message      in varchar2);
  /***************************************************/
  /* ���й���ʵ��                                    */
  /***************************************************/
  ----------------------------------------------------------------------------
  --
  --     tiger      2006/11/28 - ����ҽ������󣬵��������ҽ��������һ��
  --     tiger      2006/03/08 - ��ҽ��Ϊ�ӷ�ʱ�������������
  --     tiger      2005/08/30 - ����'AUTO_COPY'����ҽ��ʧ�ܺ�����Ժ�Ŀ����������κδ���
  --                           - ����'COPY'����ҽ��ʧ����ȫ����
  --     tiger      2004/12/11 - ����ҽ��ʧ�ܺ�����Ժ�Ŀ����������κδ���
  --     tiger      2001/10/16 - ����ְԱ�ĵ�¼���š�������㲿�ź�סԺ���㲿�Ź���
  --
  procedure s_ҽ��_��ҽ��_����_ҽ����(in_residentid         in varchar2
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
    lock_res.lock_ack_ҽ��_����(in_residentid, t_resident_info);
    if nvl(get_system_option('�ٴ�·��_���߽�ֹʹ��HIS¼��ҽ��'), 'N') = 'Y'
       and in_type = 'DOCTOR'
    then
      if hospital.get_�Ƿ�·������(in_residentid) = 'Y'
      then
        raise_application_error(-20001, '��ʹ���ٴ�·��ϵͳ¼��ҽ��.;');
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
                                '���Ϊ' || in_order_list_groupid ||
                                '��ҽ��������.;');
      when others then
        raise_application_error(-20001, '���������ڲ��������Ժ�����.;');
    end;
    if t_order_list_group.status = 'EDITING'
    then
      raise_application_error(-20001, '��ҽ�������ڱ༭״̬,���ܲ���.;');
    end if;
    if t_order_list_group.type <> 'GROUP'
    then
      raise_application_error(-20001,
                              '��֧�ֵ�ҽ����' || t_order_list_group.type ||
                              '¼�빦��.;');
    end if;
    if t_order_list_group.generate_mode not in ('COPY', 'AUTO_COPY')
    then
      raise_application_error(-20001,
                              '��֧�ֵ�ҽ����' ||
                              t_order_list_group.generate_mode ||
                              '¼�뷽ʽ.;');
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
          s_ҽ��_��ҽ��_����_����(null,
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
            raise_application_error(-20001, 'ҽ��¼�����:' || sqlerrm);
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
                                  '��֧�ֵ�ִ�в��ű�־' ||
                                  c_parent.execute_dept_flag || '.;');
        end if;
        t_skip := 'N';
        --begin
        s_ҽ��_��ҽ��_�ӷ�_����(null,
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
        --�ı�ҽ��
        s_ҽ��_��ҽ��_�ı�_����(null,
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
              s_ҽ��_��ҽ��_����_����(t_parent_order_listid,
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
                                      '��֧�ֵ�ִ�в��ű�־' ||
                                      c_parent.execute_dept_flag || '.;');
            end if;
            begin
              s_ҽ��_��ҽ��_�ӷ�_����(t_parent_order_listid,
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
            --�ı�ҽ��
            s_ҽ��_��ҽ��_�ı�_����(null,
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
      prv_��¼ҽ����_¼�����(in_residentid,
                              in_order_list_groupid,
                              t_error);
      commit;
      raise_application_error(-20001, t_error);
    end if;
  end;
  ----------------------------------------------------------------------------
  --     tahuiping  2016/11/23 - ����ҽ����ϸid��ѭ������
  --     tiger      2006/11/28 - ����ҽ������󣬵��������ҽ��������һ��
  --     tiger      2006/03/08 - ��ҽ��Ϊ�ӷ�ʱ�������������
  --     tiger      2005/08/30 - ����'AUTO_COPY'����ҽ��ʧ�ܺ�����Ժ�Ŀ����������κδ���
  --                           - ����'COPY'����ҽ��ʧ����ȫ����
  --     tiger      2004/12/11 - ����ҽ��ʧ�ܺ�����Ժ�Ŀ����������κδ���
  --     tiger      2001/10/16 - ����ְԱ�ĵ�¼���š�������㲿�ź�סԺ���㲿�Ź���
  --
  procedure s_ҽ��_��ҽ��_����_ҽ����(in_residentid              in varchar2
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
    lock_res.lock_ack_ҽ��_����(in_residentid, t_resident_info);
    if nvl(get_system_option('�ٴ�·��_���߽�ֹʹ��HIS¼��ҽ��'), 'N') = 'Y'
       and in_type = 'DOCTOR'
    then
      if hospital.get_�Ƿ�·������(in_residentid) = 'Y'
      then
        raise_application_error(-20001, '��ʹ���ٴ�·��ϵͳ¼��ҽ��.;');
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
                                '���Ϊ' || in_order_list_groupid ||
                                '��ҽ��������.;');
      when others then
        raise_application_error(-20001, '���������ڲ��������Ժ�����.;');
    end;
    if t_order_list_group.status = 'EDITING'
    then
      raise_application_error(-20001, '��ҽ�������ڱ༭״̬,���ܲ���.;');
    end if;
    if t_order_list_group.type <> 'GROUP'
    then
      raise_application_error(-20001,
                              '��֧�ֵ�ҽ����' || t_order_list_group.type ||
                              '¼�빦��.;');
    end if;
    if t_order_list_group.generate_mode not in ('COPY', 'AUTO_COPY')
    then
      raise_application_error(-20001,
                              '��֧�ֵ�ҽ����' ||
                              t_order_list_group.generate_mode ||
                              '¼�뷽ʽ.;');
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
                                '���Ϊ' || in_order_list_group_itemid ||
                                '��ҽ�������ڣ�');
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
        s_ҽ��_��ҽ��_����_����(null,
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
                                  '��֧�ֵ�ִ�в��ű�־' ||
                                  t_order_list_group_item.execute_dept_flag || '.;');
        end if;
        s_ҽ��_��ҽ��_�ӷ�_����(null,
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
        s_ҽ��_��ҽ��_�ı�_����(null,
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
        
          s_ҽ��_��ҽ��_����_����(null,
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
                                    '��֧�ֵ�ִ�в��ű�־' ||
                                    c_parent.execute_dept_flag || '.;');
          end if;
          t_skip := 'N';
          s_ҽ��_��ҽ��_�ӷ�_����(null,
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
          --�ı�ҽ��
          s_ҽ��_��ҽ��_�ı�_����(null,
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
                s_ҽ��_��ҽ��_����_����(t_parent_order_listid,
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
                                        '��֧�ֵ�ִ�в��ű�־' ||
                                        c_parent.execute_dept_flag || '.;');
              end if;
              s_ҽ��_��ҽ��_�ӷ�_����(t_parent_order_listid,
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
              --�ı�ҽ��
              s_ҽ��_��ҽ��_�ı�_����(null,
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
  --     in_order_lisid Ҫ�����ҽ����ţ����Ϊ��ֵ������ճ����������������
  --
  procedure s_ҽ��_ճ��(in_residentid     in varchar2
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
    lock_res.lock_ack_ҽ��_����(in_residentid, t_resident_info);
    if nvl(get_system_option('�ٴ�·��_���߽�ֹʹ��HIS¼��ҽ��'), 'N') = 'Y'
       and in_type = 'DOCTOR'
    then
      if hospital.get_�Ƿ�·������(in_residentid) = 'Y'
      then
        raise_application_error(-20001, '��ʹ���ٴ�·��ϵͳ¼��ҽ��.;');
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
                                '�Ҳ���סԺ��Ϊ' || in_residentid ||
                                '�Ĳ��˵�סԺ��Ϣ.;');
      when others then
        raise_application_error(-20001, '���������ڲ��������Ժ�����.;');
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
          s_ҽ��_��ҽ��_����_����(null,
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
            raise_application_error(-20001, 'ҽ��¼�����:' || sqlerrm);
            t_error := substrb(t_error || sqlerrm || chr(10), 1, 4000);
            t_skip  := 'Y';
        end;
      elsif c_parent.sundry_feeid is not null
      then
        t_skip := 'N';
        begin
          s_ҽ��_��ҽ��_�ӷ�_����(null,
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
        --�ı�ҽ��
        s_ҽ��_��ҽ��_�ı�_����(null,
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
            s_ҽ��_��ҽ��_����_����(t_parent_order_listid,
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
            s_ҽ��_��ҽ��_�ӷ�_����(t_parent_order_listid,
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
            --�ı�ҽ��
          
            s_ҽ��_��ҽ��_�ı�_����(null,
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
  end s_ҽ��_ճ��;
  ----------------------------------------------------------------------------
  -- 
  -- $header: S_ҽ��_��ҽ��_�ӷ�_����.sql , v 1.0   $ 
  --   
  --  copyright (c) 2000 by holly source corporation 
  --    name
  --      S_ҽ��_��ҽ��_�ӷ�_����.sql - <one-line expansion of the name>
  --    description
  --      <short description of component this file declares/defines>
  --    returns
  -- 
  --    notes
  --      <other useful comments, qualifications, etc.>
  --    modified   (yyyy/mm/dd)   reason
  --     tiger      2007/09/15 -  ���ӷ�ҽ�������÷� 
  --     tiger      2005/08/30 -  ������� IN_ADD_SUPPLY ָ���Ƿ����֧�����Ӳ�����ҽ��
  --     tiger      2001/10/15 -  ����ְԱ�ĵ�¼���š�������㲿�ź�סԺ���㲿�Ź���
  --     tiger      2001/06/09 -  �ж��������з����޸�Ϊ�鿴�Ƿ����SEQ����
  --     tiger      2001/05/14 -  ��ֹʹ�� order_list_tempulate  
  --     tiger      2000/12/04 -  �۸����������С��0
  --     tiger      2000/08/19 -  �޸Ĵ���:����ҽ�����˲���ѡ�񣬷��ض��ֵ
  --     tiger      2000/08/11 -  ���ӶԲ��ż�ҩƷ�÷�����ҽ���Զ�����
  --
  ----------------------------------------------------------------------------
  --����ҽ�����͵�ҽ������                                    
  procedure s_ҽ��_��ҽ��_�ӷ�_����(in_parent_order_listid in varchar2
                                   ,in_long_flag           in varchar2
                                   ,in_start_date          in varchar2
                                   ,in_start_workerid      in varchar2
                                   ,in_residentid          in varchar2
                                   ,in_deptid              in varchar2
                                   , --�������
                                    in_sundry_feeid        in varchar2
                                   ,in_price               in varchar2
                                   ,in_amount              in varchar2
                                   ,in_type                in varchar2
                                   , -- ҽ������(��ʿҽ����ҽʦҽ��������ҽ������Ժ��ҩ)
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
    lock_res.lock_ack_ҽ��_����(in_residentid, t_resident_info);
    if in_hospid is null
    then
      v_hospid := get_login_hospid;
    else
      v_hospid := in_hospid;
    end if;
    user_permit.s_ack_ҽ��ȷ��Ȩ;
    if nvl(get_system_option('�ٴ�·��_���߽�ֹʹ��HIS¼��ҽ��'), 'N') = 'Y'
       and in_type = 'DOCTOR'
    then
      if hospital.get_�Ƿ�·������(in_residentid) = 'Y'
      then
        raise_application_error(-20001, '��ʹ���ٴ�·��ϵͳ¼��ҽ��.;');
      end if;
    end if;
  
    verify_not_null(in_price,
                    '�ӷ�(' || in_sundry_feeid || ')���۲���Ϊ��');
    s_ҽ��_��ҽ��_�ӷ�_����_nc(in_parent_order_listid,
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
      verify_valid_number(in_amount, '����');
      if to_number(in_amount) < 0
      then
        raise_application_error(-20001, '��������С��0');
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
            verify_valid_number(t_field_dict.remark, '����');
            t_amount := t_field_dict.remark;
            t_seq    := null;
          end if;
        exception
          when no_data_found then
            raise_application_error(-20001,
                                    '�Ƿ�������(' || in_amount || ').;');
          when too_many_rows then
            raise_application_error(-20001,
                                    'ʹ��Ƶ��(' || in_amount || '�ж��.;');
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
          raise_application_error(-20001, 'û���ҵ�סԺ���˵�סԺ����.;');
        when others then
          raise_application_error(-20001, '���������ڲ��������Ժ�����.;');
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
                --����ǹ̶��۸񣬲���SUNDRY_FEE�ļ۸�
                --�������ҽ��ģ��ļ۸�
                begin
                  select *
                    into t_sundry_fee
                    from sundry_fee_config
                   where hospid = v_hospid
                     and sundry_feeid = c.sundry_feeid;
                exception
                  when no_data_found then
                    raise_application_error(-20001,
                                            'û���ҵ�' ||
                                            get_sundry_fee_name(c.sundry_feeid) ||
                                            '���ӷ���Ŀ' || c.sundry_feeid ||
                                            '��֪ͨϵͳ����Ա.;');
                  when too_many_rows then
                    raise_application_error(-20001, '�ҵ������ӷ���Ŀ.;');
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
                                          '��֧�ֵ�ִ�в��ű�־' ||
                                          c.execute_dept_flag || '.;');
                end if;
              
                t_amount := to_char(to_number(t_amount) *
                                    to_number(c.amount));
              
                prv_ҽ��_��ҩ����_�ӷ�_����(t_sub_order_listid,
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
                prv_ҽ��_��ҽ��_����(in_parent_order_listid,
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
                prv_ҽ��_��ҩ����_����_����(t_sub_order_listid,
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
                prv_ҽ��_��ҽ��_����(in_parent_order_listid,
                                     t_order_listid,
                                     'AUTOFEE');
            end;
          end if;
        elsif c.generate_mode = 'COPY_ALL'
        then
          if c.sundry_feeid is not null
          then
            --����ǹ̶��۸񣬲���SUNDRY_FEE�ļ۸�
            --�������ҽ��ģ��ļ۸�
            begin
              select *
                into t_sundry_fee
                from sundry_fee_config
               where hospid = v_hospid
                 and sundry_feeid = c.sundry_feeid;
            exception
              when no_data_found then
                raise_application_error(-20001,
                                        'û���ҵ�' ||
                                        get_sundry_fee_name(c.sundry_feeid) ||
                                        '���ӷ���Ŀ' || c.sundry_feeid ||
                                        '��֪ͨϵͳ����Ա.;');
              when too_many_rows then
                raise_application_error(-20001, '�ҵ������ӷ���Ŀ.;');
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
                                      '��֧�ֵ�ִ�в��ű�־' ||
                                      c.execute_dept_flag || '.;');
            end if;
            prv_ҽ��_��ҩ����_�ӷ�_����(t_sub_order_listid,
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
            prv_ҽ��_��ҽ��_����(t_order_listid,
                                 t_sub_order_listid,
                                 'AUTOFEE');
          else
            prv_ҽ��_��ҩ����_����_����(t_sub_order_listid,
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
            prv_ҽ��_��ҽ��_����(t_order_listid,
                                 t_sub_order_listid,
                                 'AUTOFEE');
          end if;
        else
          raise_application_error(-20001,
                                  '��֧�ֵĲ���ҽ��¼�뷽ʽ' ||
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
  end s_ҽ��_��ҽ��_�ӷ�_����;
  ------------------------------------------------------------------------
  --  8800��ͷ����ɨ���ӷ�
  -- �ж��Ƿ����� HRPIF.erp_mate_inv_collate���ձ� 
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
  --  tiger 2008/10/21 - ʵ��"s_ҽ��_��ҽ��_�ӷ�_����",�Ĺ��ܣ����ύ
  --
  procedure s_ҽ��_��ҽ��_�ӷ�_����_nc(in_parent_order_listid in varchar2
                                      ,in_long_flag           in varchar2
                                      ,in_start_date          in varchar2
                                      ,in_start_workerid      in varchar2
                                      ,in_residentid          in varchar2
                                      ,in_deptid              in varchar2
                                      , --�������
                                       in_sundry_feeid        in varchar2
                                      ,in_price               in varchar2
                                      ,in_amount              in varchar2
                                      ,in_type                in varchar2
                                      , -- ҽ������(��ʿҽ����ҽʦҽ��������ҽ������Ժ��ҩ)
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
    lock_res.lock_ack_ҽ��_����(in_residentid, t_resident_info);
    if in_hospid is null
    then
      v_hospid := get_login_hospid;
    else
      v_hospid := in_hospid;
    end if;
    v_sundry_fee_account_type := get_sundry_fee_account_type(in_sundry_feeid);
    -- ��ֵ�Ĳ�8800��ʼ���ӷ� ҽ������ֻ���ǣ� long_flag in('B','D') 
    if v_sundry_fee_account_type = 2
       and in_long_flag not in ('B', 'D')
    then
      raise_application_error(-20001, '��ֵ�Ĳ�,ҽ�����Ͳ���Ϊ����ҽ��;');
    end if;
  
    out_add_supply := 'NO';
    user_permit.s_ack_ҽ��ȷ��Ȩ;
    verify_valid_number(in_price, '�۸�');
    if to_number(in_price) < 0
    then
      raise_application_error(-20001, '�۸���С��0');
    end if;
    begin
      verify_valid_number(in_amount, '����');
      if to_number(in_amount) < 0
      then
        raise_application_error(-20001, '��������С��0');
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
            verify_valid_number(t_field_dict.remark, '����');
            t_amount := t_field_dict.remark;
            t_seq    := null;
          end if;
        exception
          when no_data_found then
            raise_application_error(-20001,
                                    '�Ƿ�������(' || in_amount || ').;');
          when too_many_rows then
            raise_application_error(-20001,
                                    'ʹ��Ƶ��(' || in_amount || '�ж��.;');
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
          raise_application_error(-20001, '��ҽ��û���ҵ�.;');
        when others then
          raise_application_error(-20001, '���������ڲ���,���Ժ�����.;');
      end;
      if t_parent_order_list.materialid is not null
      then
        prv_ҽ��_ҽ��_�ӷ�_����(t_order_listid,
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
        prv_ҽ��_��ҽ��_����(in_parent_order_listid, t_order_listid, null);
      else
        if t_parent_order_list.sundry_feeid is not null
        then
          prv_ҽ��_ҽ��_�ӷ�_����(t_order_listid,
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
          if (nvl(get_system_option('ҽ��¼��_�ӷ�������ҽ��'), 'Y') = 'Y')
          then
            prv_ҽ��_��ҽ��_����(in_parent_order_listid,
                                 t_order_listid,
                                 null);
          else
            prv_ҽ��_��ҽ��_����(t_order_listid, t_order_listid, in_type);
          end if;
        end if;
      end if;
    else
      prv_ҽ��_ҽ��_�ӷ�_����(t_order_listid,
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
      prv_ҽ��_��ҽ��_����(t_order_listid, t_order_listid, in_type);
      out_add_supply := 'YES';
    end if;
    --�����ҽ����ҽ�������޸�dr_order_list_info
    if in_type in ('DOCTOR', 'OP1')
    then
      s_ҽ������ҽ��nc(in_residentid);
    end if;
  
    out_order_listid := t_order_listid;
  end s_ҽ��_��ҽ��_�ӷ�_����_nc;
  ----------------------------------------------------------------------------
  --  tiger 2007/01/01 - ҽ��ɾ��ҽ��������ò���û�д�ȷ�ϵĴ��������޸�dr_order_list_info
  --  tiger 2005/02/25 - ���� S_ҽ��_ҽ��_����_ȡ����� ��������
  --  tiger 2004/11/25 - �޸�ɾ������:
  --                     1 ��ʱҽ��:�ж�״̬�������ɾ��
  --                     2 ����ҽ��:�ж�״̬������������ִ���������������������Ƿ����ɾ��
  --                     3 ����������� 1,2�жϿ���ɾ��,���������ҽ�����Ƿ�����������ж�ɾ�����Ǳ��
  --                     4 ���Ҫɾ����ҽ��Ϊ���ȡ������������ҽ����
  --                       ���Ҫɾ����ҽ��Ϊֱ��ɾ���������Ϊ��ҽ������ɾ������ҽ���飬�����Ϊ��ҽ����ɾ������ҽ�� 
  --  tiger 2001/10/09 - ���Ѿ��������õ�ҽ��ɾ�����ñ��ɾ������ֱ��ɾ��
  --
  procedure s_ҽ��_ҽ��_����_ȡ��(in_order_listid in varchar2) as
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
    s_ҽ��_ҽ��_����_ȡ��_nc(in_order_listid);
    commit;
    rabbitmq.publish_ol_message(in_event        => events.ol_delete,
                                in_deptid       => v_deptid,
                                in_patientid    => v_patientid,
                                in_residentid   => v_residentid,
                                in_order_listid => in_order_listid);
  end s_ҽ��_ҽ��_����_ȡ��;
  ----------------------------------------------------------------------------
  -- 
  -- $header: S_ҽ��_��ҽ��_����_����.sql , v 1.0   $ 
  --   
  --  copyright (c) 2000 by holly source corporation 
  --    name
  --      S_ҽ��_��ҽ��_����_����.sql - <one-line expansion of the name>
  --    description
  --      <short description of component this file declares/defines>
  --    returns
  -- 
  --    notes
  --      <other useful comments, qualifications, etc.>
  --    modified   (yyyy/mm/dd)   reason
  --     tiger      2009/06/03 -  ��ֻ����һ�εľ�����Һ�����⴦������������ҽ����ÿ������
  --     tiger      2006/12/31  - ҽ��¼��ҽ�����޸�dr_order_list.infoΪ¼��ҽ��״̬
  --     tiger      2006/12/06  - ��ҽ����Ϊ��ʿҽ����ҽʦҽ��������ҽ������Ժ��ҩ��
  --     tiger      2005/08/30 -  ������� IN_ADD_SUPPLY ָ���Ƿ����֧�����Ӳ�����ҽ��
  --     tiger      2001/12/18 -  ����ϵͳѡ��  ���ڿڷ�ҩ_ҩ����ҩ DEFAULT = 'N' ,������ã�����ҽ������Ϊ0��������һ����ʱҽ��������ҩ��
  --     tiger      2001/10/14 -  ����ְԱ�ĵ�¼���š�������㲿�ź�סԺ���㲿�Ź���
  --     tiger      2001/09/13 -  ����ִ�в���¼���Լ����ŵ���ʱ�ӷ�ҽ����
  --     tiger      2001/06/09 -  �ж��������з����޸�Ϊ�鿴�Ƿ����SEQ����
  --     tiger      2001/05/14 -  ȡ��order_list_tempulate   
  --     tiger      2000/12/04 -  �ж���������<0
  --     tiger      2000/12/04 -  �ж���������<=0
  --     tiger      2000/12/02 -  ����ҽ��_��ҩ����_���������е��÷�
  --     tiger      2000/08/19 -  �޸Ĵ���:����ҽ�����˲���ѡ�񣬷��ض��ֵ
  --     tiger      2000/08/11    ���ӶԲ��ż�ҩƷ�÷�����ҽ���Զ�����
  procedure s_ҽ��_��ҽ��_����_����(in_parent_order_listid in varchar2
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
                                   , -- ҽ������(��ʿҽ����ҽʦҽ��������ҽ������Ժ��ҩ)
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
        raise_application_error(-20001, 'ҽ����ֹʹ�ô�ҩ;');
      end if;
    end;
    select a.patientid
      into v_patientid
      from resident_patient a
     where a.residentid = in_residentid;
    if nvl(get_system_option('�ٴ�·��_���߽�ֹʹ��HIS¼��ҽ��'), 'N') = 'Y'
       and in_type = 'DOCTOR'
    then
      if hospital.get_�Ƿ�·������(in_residentid) = 'Y'
      then
        raise_application_error(-20001, '��ʹ���ٴ�·��ϵͳ¼��ҽ��.;');
      end if;
    end if;
    s_ҽ��_��ҽ��_����_����_nc(in_parent_order_listid,
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
  end s_ҽ��_��ҽ��_����_����;
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
    lock_res.lock_ack_ҽ��_����(in_residentid, t_resident_info);
    if nvl(get_system_option('�ٴ�·��_���߽�ֹʹ��HIS¼��ҽ��'), 'N') = 'Y'
       and in_type = 'DOCTOR'
    then
      if hospital.get_�Ƿ�·������(in_residentid) = 'Y'
      then
        raise_application_error(-20001, '��ʹ���ٴ�·��ϵͳ¼��ҽ��.;');
      end if;
    end if;
    hospital.verify_drop_speed(in_drop_speed);
    hospital.verify_length(in_drop_speed_unit, 30, '���ٵ�λ');
    user_permit.s_ack_ҽ��ȷ��Ȩ;
    t_add_supply := 'NO';
    verify_valid_number(in_amount, '����');
    if to_number(in_amount) < 0
    then
      raise_application_error(-20001, '�����������=0');
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
                                'ʹ��Ƶ��' || in_amount || '���ֶ��.;');
    end;
  
    --�ж����¼��Ա���Ǳ����ŵĹ�����Ա����ֹ¼��
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
                                '����������' ||
                                get_dept_name(v_input_deptid) ||
                                '����ݵ�¼,�������' ||
                                get_dept_name(v_patient_deptid) ||
                                '����ҽ�����д��� .;');
      else
        if in_type in ('OP1', 'OP2')
        then
          null;
        else
          raise_application_error(-20001, '���ٴ����Ҳ���¼������ҽ��.;');
        end if;
      end if;
    end if;
  
    if in_type = 'NURSE'
       and nvl(get_system_option('����ҽ��_��ֹ¼��ҩƷҽ��'), 'Y') = 'Y'
    then
      raise_application_error(-20001, '����ҽ����ֹ¼��ҩƷҽ��.;');
    end if;
  
    t_amount := in_amount;
  
    --�ж��ǲ��ǿڷ�ҩ
    -- 1  �ڷ�ҩ
    -- 0 �ǿڷ�ҩ
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
      --������ҽ��
      begin
        select *
          into t_parent_order_list
          from order_list
         where id = in_parent_order_listid
           and rownum = 1
           for update of id nowait;
      exception
        when no_data_found then
          raise_application_error(-20001, '��ҽ��û���ҵ�.;');
        when others then
          raise_application_error(-20001, '���������ڲ���,���Ժ�����.;');
      end;
      if t_parent_order_list.long_flag = 'A'
         and v_po_flag = '1'
      then
        begin
          select 2
            into i
            from system_option
           where id like '���ڿڷ�ҩ��ҩ����%'
             and name = v_patient_deptid;
        exception
          when no_data_found then
            t_amount := '0';
            prv_ҽ��_ҽ��_����_����(t_order_listid,
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
            prv_ҽ��_��ҽ��_����(t_order_listid, t_order_listid, null);
        end;
      end if;
    
      prv_ҽ��_ҽ��_����_����(t_order_listid,
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
      prv_ҽ��_��ҽ��_����(in_parent_order_listid, t_order_listid, null);
    else
      --���Ӹ�ҽ��
      if in_long_flag = 'A'
         and v_po_flag = '1'
      then
        begin
          select 2
            into i
            from system_option
           where id like '���ڿڷ�ҩ��ҩ����%'
             and name = v_patient_deptid;
        exception
          when no_data_found then
            t_amount := '0';
            prv_ҽ��_ҽ��_����_����(t_order_listid,
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
            prv_ҽ��_��ҽ��_����(t_order_listid, t_order_listid, in_type);
        end;
      end if;
      prv_ҽ��_ҽ��_����_����(t_order_listid,
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
      prv_ҽ��_��ҽ��_����(t_order_listid, t_order_listid, in_type);
      t_add_supply := 'YES';
      --�����ҽ����ҽ�������޸�dr_order_list_info
      if in_type in ('DOCTOR', 'OP1')
      then
        s_ҽ������ҽ��nc(in_residentid);
      end if;
    
    end if;
    out_order_listid := t_order_listid;
    commit;
  
    --����ҽ��
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
          raise_application_error(-20001, '�ҵ�������ͬ��ʹ��Ƶ��.;');
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
          raise_application_error(-20001, 'û���ҵ�סԺ���˵�סԺ����.;');
      end;
    
      --i == 2 ����̶����ң� i==1 ����סԺ����
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
          --ֻ����һ��
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
                --����ǹ̶��۸񣬲���SUNDRY_FEE�ļ۸�
                --�������ҽ��ģ��ļ۸�
                begin
                  select *
                    into t_sundry_fee
                    from sundry_fee_config
                   where hospid = get_login_hospid
                     and sundry_feeid = c.sundry_feeid;
                exception
                  when no_data_found then
                    raise_application_error(-20001,
                                            'û���ҵ�' ||
                                            get_sundry_fee_name(c.sundry_feeid) ||
                                            '���ӷ���Ŀ' || c.sundry_feeid ||
                                            '��֪ͨϵͳ����Ա.;');
                  when too_many_rows then
                    raise_application_error(-20001, '�ҵ������ӷ���Ŀ.;');
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
                                          '��֧�ֵ�ִ�в��ű�־' ||
                                          c.execute_dept_flag || '.;');
                end if;
              
                --������Һ����������ģ�������ߣ�������ʹ��ҽ����ÿ������,�������ӵ��ǳ���ҽ����
                if t_sundry_fee.sundry_feeid = '120400006a'
                   or t_sundry_fee.sundry_feeid = '120400006A'
                then
                  t_frequence := c.amount;
                else
                  t_frequence := t_frequence * c.amount;
                end if;
              
                prv_ҽ��_��ҩ����_�ӷ�_����(t_sub_order_listid,
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
                prv_ҽ��_��ҩ����_����_����(t_sub_order_listid,
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
            --�����  ������Һ(����һ�飩���� ��Ƥ����Һ(����һ�飩���� ��С��ͷƤ������Һ(����һ�飩����
            --    �÷��� ivgtt
            if (nvl(get_system_option('������Һҽ��_��һ�鲻��������Һ����'),
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
            
              --����ǹ̶��۸񣬲���SUNDRY_FEE�ļ۸�
              --�������ҽ��ģ��ļ۸�
            
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
                                        'û���ҵ�' ||
                                        get_sundry_fee_name(c.sundry_feeid) ||
                                        '���ӷ���Ŀ' || c.sundry_feeid ||
                                        '��֪ͨϵͳ����Ա.;');
              when too_many_rows then
                raise_application_error(-20001, '�ҵ������ӷ���Ŀ.;');
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
                                      '��֧�ֵ�ִ�в��ű�־' ||
                                      c.execute_dept_flag || '.;');
            end if;
            prv_ҽ��_��ҩ����_�ӷ�_����(t_sub_order_listid,
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
            prv_ҽ��_��ҽ��_����(t_order_listid,
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
            prv_ҽ��_��ҩ����_����_����(t_sub_order_listid,
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
            prv_ҽ��_��ҽ��_����(t_order_listid,
                                 t_sub_order_listid,
                                 'AUTOFEE');
          end if;
        else
          raise_application_error(-20001,
                                  '��֧�ֵĲ���ҽ��¼�뷽ʽ' ||
                                  c.generate_mode || '.;');
        end if;
      end loop;
      commit;
    end if;
  end s_ҽ��_��ҽ��_����_����;
  */
  ----------------------------------------------------------------------------
  --  tiger  2008/10/11 -�����ı�ҽ������
  procedure s_ҽ��_��ҽ��_�ı�_����(in_parent_order_listid in varchar2
                                   ,in_long_flag           in varchar2
                                   ,in_start_date          in varchar2
                                   ,in_start_workerid      in varchar2
                                   ,in_residentid          in varchar2
                                   ,in_type                in varchar2
                                   , -- ҽ������(��ʿҽ����ҽʦҽ��������ҽ������Ժ��ҩ)
                                    in_text                in varchar2
                                   ,out_order_listid       out varchar2) is
  begin
    if nvl(get_system_option('�ٴ�·��_���߽�ֹʹ��HIS¼��ҽ��'), 'N') = 'Y'
       and in_type = 'DOCTOR'
    then
      if hospital.get_�Ƿ�·������(in_residentid) = 'Y'
      then
        raise_application_error(-20001, '��ʹ���ٴ�·��ϵͳ¼��ҽ��.;');
      end if;
    end if;
    s_ҽ��_��ҽ��_�ı�_����_nc(in_parent_order_listid,
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
  end s_ҽ��_��ҽ��_�ı�_����;
  ----------------------------------------------------------------------------
  procedure s_ҽ��_��ע(in_order_listid in varchar2
                       ,in_text         in varchar2) is
    t_order_list order_list%rowtype;
    i            number;
  begin
    lock_res.lock_ack_ҽ��_����(in_order_listid, t_order_list);
    verify_length(in_text, 200, '�ı�ҽ��');
  
    if t_order_list.materialid is not null
       and t_order_list.long_flag = 'B'
       and t_order_list.use_method in ('Ƥ��', '����', 'h', 'ih')
       or t_order_list.materialid is null
       and t_order_list.sundry_feeid is null
       and instr(t_order_list.text, '��������') > 0
       and in_text in ('(-)', '(+)')
    then
      null; --Ƥ��ҽ�����������κ�״̬����ע
    else
      if t_order_list.long_flag = 'B'
         and trim(in_text) in ('��ҩ', '����')
      then
        null;
      elsif (t_order_list.status <> 'WAIT_ACK' and
            t_order_list.long_flag = 'A')
      then
        raise_application_error(-20001, '��ҽ���Ѿ�ȷ�ϣ������޸�.;');
      else
        if (t_order_list.status1 in ('WAIT_EXEC', 'STOPPED') and
           t_order_list.long_flag = 'B')
        then
          raise_application_error(-20001,
                                  '��ҽ���Ѿ�' ||
                                  hospital.get_field_dict_name('ORDER_LIST',
                                                               'STATUS1',
                                                               t_order_list.status1) ||
                                  '�������޸�.;');
        end if;
      end if;
    end if;
  
    if trim(replace(in_text, ' ', null)) in ('���ճ�Ժ', '���ճ�Ժ')
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
                                in_text || 'ҽ���Ѿ�¼�룬�����ظ�¼��.;');
      exception
        when no_data_found then
          null;
      end;
    
      if t_order_list.long_flag <> 'B'
      then
        raise_application_error(-20001, in_text || 'ֻ��������ʱҽ��.;');
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
                                '��ҽ���Ѿ�' ||
                                hospital.get_field_dict_name('ORDER_LIST',
                                                             'STATUS1',
                                                             t_order_list.status1) ||
                                '�������޸�.;');
      end if;
    end if;
    commit;
  end s_ҽ��_��ע;
  ----------------------------------------------------------------------------
  --  tiger  2009/02/24 - ��  s_ҽ��_ҽ��_ȷ��_nc  ��ʵ��
  --  tiger  2007/01/01 - ҽ��ȷ�Ϻ��жϲ��˵Ļ�����仯,��¼��resident_patient��
  --  tiger  2006/12/31 - ҽʦȷ��ҽ�����޸�dr_order_list_info
  --  tiger  2006/12/06 - ҽʦҽ��ֻ����¼���߱���ȷ��
  --                      ����ҽ����ͬ��ǰ�ĳ���
  --  tiger  2002/01/03 - ȷ�����ں��Լ�������ͬ��¼���ŵ���Ա¼���ҽ����
  --  tiger  2001/09/13 - ֻ��ȷ���Լ�¼���ҽ��
  --  lym    2016/08/16 - ���ɼ�����뵥
  procedure s_ҽ��_ҽ��_ȷ��(in_order_listid in varchar2
                            ,in_type         in varchar2) as
  begin
    s_ҽ��_ҽ��_ȷ��_nc(in_order_listid, in_type);
    commit;
    rabbitmq.publish_ol_message(in_event        => events.ol_ack,
                                in_order_listid => in_order_listid);
  end s_ҽ��_ҽ��_ȷ��;
  ----------------------------------------------------------------------------
  procedure s_ҽ��_ҽ��_ȷ��_nc(in_order_listid in varchar2
                               ,in_type         in varchar2) as
    i               number;
    t_order_list    order_list%rowtype;
    t_resident_info resident_info%rowtype;
    v_pivas_flag    varchar2(30);
  begin
    lock_res.lock_ack_ҽ��_����(in_order_listid,
                                t_order_list,
                                t_resident_info);
    user_permit.s_ack_ҽ��ȷ��Ȩ;
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
                                'סԺ��Ϊ(' || t_order_list.ownerid ||
                                ')�Ĳ���(' ||
                                get_patient_name(t_order_list.patientid) ||
                                ')û��δȷ�ϵ�ҽ��.;');
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
      --ҽ��ҽ��������ҽ�������뱾��ȷ��
      then
        if c.input_workerid = hospital.login.get_workerid
        then
          prv_ҽ��_ҽ��_ȷ��_����(c.order_listid);
        end if;
      else
        --����ҽ�����Ƶ��κ��˿���ȷ��
        if is_same_login_dept(c.input_workerid, hospital.login.get_workerid) <> 0
        then
          prv_ҽ��_ҽ��_ȷ��_����(c.order_listid);
        end if;
      end if;
    end loop;
  
    if in_type in ('DOCTOR', 'OP')
    then
      s_ҽ��ȷ�ϴ���ҽ��nc(t_order_list.ownerid);
    end if;
  
    prv_�жϻ�����(t_order_list.ownerid);
  
    --����������������ҩ��ҩƷ��ֱ���޸Ŀ���Ϊ������������ҩ��
    --  ����ȷ��������������ҩ��
    --    �����������ϵͳѡ�� ID = ҩ�� || ҩ������  || ������������ҩ������  NAME=    ��������������ҩ������
    --    ���磺ҽԺ������ҩ������Ϊ 0000123456
    --          ������������ҩ������Ϊ 0000999999
    --    ��ϵͳѡ��Ϊ    ID=ҩ��0000123456��������������ҩ������  NAME=0000999999
    --  ȷ��������������ҩ����Һ����Ϊ
    --    ϵͳѡ�ID=������������ҩƷ�÷� || ���  NAME=ҩƷ�÷�
    --    ���磺  ID=������������ҩƷ�÷�1   NAME=ivgtt
    --            ID=������������ҩƷ�÷�2   NAME=ivgttlk
    --  ȷ���Ǹ��ٴ����ҿ�ͨ�������������ڹ���
    --           ID=��������������ҩ���� || ���ұ���  NAME=Y
    if nvl(get_system_option('��������������ҩ����' ||
                             t_resident_info.deptid),
           'N') = 'Y'
    then
      v_pivas_flag := '��ͨ����'; --��Ҫ�����������������˴���
    else
      v_pivas_flag := 'δ��ͨ����'; --���Ծ��������������˴���
    end if;
  
    if v_pivas_flag = '��ͨ����'
    then
      for c in (select a.id, a.parentid, b.deptid
                  from hospital.order_list      a,
                       hospital.t����������ҩ�� b,
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
                   and get_system_option('ҩ��' || a.material_deptid ||
                                         '������������ҩ������') = b.deptid
                   and c.id like '������������ҩƷ�÷�%'
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
  end s_ҽ��_ҽ��_ȷ��_nc;
  ----------------------------------------------------------------------------
  procedure s_ҽ��_ҽ��_���(in_order_listid in varchar2) is
    i            number;
    t_order_list order_list%rowtype;
  begin
    user_permit.s_ack_ҽ��ȷ��Ȩ;
    lock_res.lock_ack_ҽ��_����(in_order_listid, t_order_list);
    if t_order_list.status = 'WAIT_AUDIT'
    then
      null;
    else
      raise_application_error(-20001, '��ѡ�����˵�ҽ�����д˲���.;');
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
      raise_application_error(-20001, '��ҽ���������㲻����˵�ҩƷ.;');
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
  end s_ҽ��_ҽ��_���;
  ----------------------------------------------------------------------------
  procedure s_ҽ��_ҽ��_ȷ��_ȡ��(in_order_listid in varchar2
                                 ,in_type         in varchar2) as
  begin
    s_ҽ��_ҽ��_ȷ��_ȡ��nc(in_order_listid, in_type);
    commit;
    rabbitmq.publish_ol_message(in_event        => events.ol_ack_cancel,
                                in_order_listid => in_order_listid);
  end s_ҽ��_ҽ��_ȷ��_ȡ��;
  ----------------------------------------------------------------------------
  procedure s_ҽ��_ҽ��_ȷ��_ȡ��nc(in_order_listid in varchar2
                                   ,in_type         in varchar2) as
    t_order_list          order_list%rowtype;
    t_find                varchar2(1);
    t_parent_order_listid order_list.parentid%type;
    exam_apply_id         hospital.in_examination_application_.id%type;
  begin
    lock_res.lock_ack_ҽ��_����(in_order_listid, t_order_list);
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
                                '���Ǳ���¼���ҽ��������ȡ��ȷ��.;');
      end if;
    else
      if is_same_login_dept(t_order_list.input_workerid,
                            hospital.login.get_workerid) = 0
      then
        raise_application_error(-20001,
                                '���Ǳ�����¼���ҽ��������ȡ��ȷ��.;');
      end if;
    end if;
  
    t_find := 'N';
    if t_order_list.parentid is null
    then
      t_parent_order_listid := in_order_listid;
      if t_order_list.status in ('NORMAL', 'WAIT_AUDIT', 'WAIT_CHECK')
      then
        prv_ҽ��_ҽ��_ȷ��_ȡ������(in_order_listid);
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
      prv_ҽ��_ҽ��_ȷ��_ȡ������(c.id);
      t_find := 'Y';
    end loop;
    if t_find = 'N'
    then
      raise_application_error(-20001, '��һ����û�п���ȡ��ȷ�ϵ�ҽ��.;');
    else
      if t_order_list.type in ('DOCTOR', 'OP1')
         and t_order_list.input_workerid = hospital.login.get_workerid
      then
        s_ҽ������ҽ��nc(t_order_list.ownerid);
      end if;
    end if;
    prv_�жϻ�����(t_order_list.ownerid);
  
    --ɾ��������뵥
    begin
      select id
        into exam_apply_id
        from hospital.in_examination_application_
       where order_listid = in_order_listid;
      hospital.exam_apply.s_������뵥_ɾ��nc(exam_apply_id);
    exception
      when no_data_found then
        null;
    end;
  
  end s_ҽ��_ҽ��_ȷ��_ȡ��nc;
  ----------------------------------------------------------------------------
  procedure s_ҽ��_�жϻ�����(in_residentid in varchar2) is
  begin
    prv_�жϻ�����(in_residentid);
  end s_ҽ��_�жϻ�����;
  procedure s_���ò���(in_residentid     in varchar2
                      ,in_illness_status in varchar2) is
    v_rowid rowid;
  begin
    lock_res.lock_resident_patient_by_rid(in_residentid);
    if in_illness_status not in ('0', '1', '2')
    then
      raise_application_error(-20001,
                              '�Ƿ��Ĳ����־(' || in_illness_status ||
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
                                'סԺ��Ϊ(' || in_residentid ||
                                ')�Ĳ��˲��ǵ�ǰסԺ����.;');
    end;
  end s_���ò���;
  ----------------------------------------------------------------------------
  procedure s_��ʿ����ҽ��(in_residentid in varchar2) is
  begin
    lock_res.lock_resident_patient_by_rid(in_residentid);
    prv_��ʿ����ҽ��(in_residentid);
  end s_��ʿ����ҽ��;
  ----------------------------------------------------------------------------
  procedure s_���û�����(in_residentid in varchar2) is
  begin
    lock_res.lock_resident_patient_by_rid(in_residentid);
    prv_�жϻ�����(in_residentid);
  end s_���û�����;
  /***************************************************/
  /* ˽�й���ʵ��                                    */
  /***************************************************/
  ----------------------------------------------------------------------------
  --REM
  --REM   TIGER 2000/03/16  ȡ������ҽ��¼��
  --REM
  procedure prv_ҽ��_��_����_����(out_order_listid   out varchar2
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
      verify_not_null(in_medicament, '����');
      verify_not_null(in_use_method, '�÷�');
      verify_not_null(in_frequence, 'Ƶ��');
      verify_valid_number(in_medicament, '����');
      verify_field_dict('ORDER_LIST',
                        'USE_METHOD',
                        upper(in_use_method),
                        'ʹ�÷���');
      verify_field_dict('ORDER_LIST',
                        'FREQUENCE',
                        upper(in_frequence),
                        'Ƶ��');
      if in_use_method in ('Ƥ��', 'PS', 'ps', '����')
      then
        raise_application_error(-20001, 'Ƥ��ҽ�����ܿ���ҽ��.;');
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
                                    'ϵͳ���������ô���,��֪ͨϵͳ����Ա.;');
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
                              'ҩƷ( ' || get_material_name(in_materialid) ||
                              ' )������ʹ��ҩƷ��');
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
    prv_ҽ��_��_����_���Ӵ���(t_order_listid,
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
  end prv_ҽ��_��_����_����;
  ----------------------------------------------------------------------------
  procedure prv_ҽ��_��_����_���Ӵ���(out_order_listid   out varchar2
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
    --verify_not_null(in_medicament, '����');
    --verify_not_null(in_use_method, '�÷�');
    --verify_not_null(in_frequence, 'Ƶ��');
    --verify_valid_number(in_medicament, '����');
    /*
    verify_field_dict('ORDER_LIST',
                      'USE_METHOD',
                      upper(in_use_method),
                      'ʹ�÷���');
    verify_field_dict('ORDER_LIST',
                      'FREQUENCE',
                      upper(in_frequence),
                      'Ƶ��');
                      */
    verify_not_null(in_amount, '����');
    verify_valid_number(in_amount, '����');
    if to_number(in_amount) < 0
    then
      raise_application_error(-20001, '��������С��0');
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
                                    'ϵͳ���������ô���,��֪ͨϵͳ����Ա.;');
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
      verify_valid_date(in_start_date, 'ҽ����ʼʱ��');
      v_start_date := get_date_from_str(in_start_date);
      if v_start_date > sysdate
      then
        raise_application_error(-20001, '��ʼʱ�䲻�ܴ��ڵ�ǰʱ��.;');
      end if;
    else
      v_start_date := sysdate;
    end if;
    if in_type not in ('NURSE')
    then
      user_permit.s_ack_����Ȩ(v_start_workerid);
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
                                '����������' ||
                                get_dept_name(v_input_deptid) ||
                                '����ݵ�¼,�������' ||
                                get_dept_name(v_patient_deptid) ||
                                '����ҽ�����д��� .;');
      else
        raise_application_error(-20001,
                                '���ٴ����Һ͸������Ҳ���¼��ҽ����');
      end if;
    end if;
    if in_type not in ('OP1', 'OP2')
    then
      s_ack_סԺ����ҽ��ͬ����(in_residentid,
                               v_start_workerid,
                               '���ܸ��ò�����ҽ��');
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
                                get_dept_name(in_material_deptid) || 'û��' ||
                                get_package_description(in_packageid) || '��' ||
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
    --����ҽ��¼����������ҽ�� 
    if (in_type = 'NURSE' and
       nvl(get_system_option('����ҽ��_¼����������ҽ��'), 'N') = 'Y')
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
       get_ҩƷ���ۼ�(in_material_deptid,
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
  end prv_ҽ��_��_����_���Ӵ���;
  ----------------------------------------------------------------------------
  --
  --     tiger 2006/09/21 - �����޼۴���
  --     tiger 2000/05/04 - �жϲ��������������ϵĴ�λ��
  --
  procedure prv_ҽ��_��_�ӷ�_����(out_order_listid  out varchar2
                                 ,in_start_workerid in varchar2
                                 ,in_start_date     in varchar2
                                 ,in_residentid     in varchar2
                                 ,in_execute_deptid in varchar2
                                 , --�������
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
      verify_valid_date(in_start_date, 'ҽ����ʼʱ��');
      v_start_date := get_date_from_str(in_start_date);
      if v_start_date > sysdate
      then
        raise_application_error(-20001, '��ʼʱ�䲻�ܴ��ڵ�ǰʱ��.;');
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
    if nvl(get_system_option('��ֹ¼��ǲ��˿��ҳ����ӷ�ҽ��'), 'Y') = 'Y'
    then
      if nvl(v_patient_deptid, '2') <> nvl(in_execute_deptid, '1')
      then
        raise_application_error(-20001,
                                '�����ӷ�ҽ��ִ�п��ұ����ǲ���סԺ����.;');
      end if;
      if nvl(v_patient_deptid, '2') <> nvl(v_input_deptid, '1')
      then
        if is_worker_login_dept(hospital.login.get_workerid,
                                v_patient_deptid) <> 0
        then
          raise_application_error(-20001,
                                  '����������' ||
                                  get_dept_name(v_input_deptid) ||
                                  '����ݵ�¼,�������' ||
                                  get_dept_name(v_patient_deptid) ||
                                  '����ҽ�����д��� .;');
        else
          raise_application_error(-20001,
                                  '���ٴ����Һ͸������Ҳ���¼��ҽ����');
        end if;
      end if;
    end if;
    if in_type not in ('OP1', 'OP2', 'AUTOFEE')
    then
      s_ack_סԺ����ҽ��ͬ����(in_residentid,
                               t_start_workerid,
                               '���ܸ��ò�����ҽ��');
    end if;
    verify_not_null(in_amount, '����');
    verify_valid_number(in_amount, '����');
    if to_number(in_amount) < 0
    then
      raise_application_error(-20001, '��������С��0.;');
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
                                '���Ϊ' || in_sundry_feeid ||
                                '���ӷ���Ŀ������.;');
    end;
  
    --�ӷ� attribute ΪC �����û���������ҽ��
    if t_sundry_fee.attribute = 'C'
    then
      v_order_list_attr := 'C';
    else
      v_order_list_attr := 'B';
    end if;
  
    if get_sundry_fee_name(t_sundry_fee.sundry_feeid) = '��λ��'
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
                                '�ò����Ѿ��д�λ��,��������������');
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
                                '�ò����Ѿ��л�����,��������������');
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
                                '���۲��ܴ�������޼�(' ||
                                t_sundry_fee.max_price || ' ).;');
      end if;
    end if;
  
    if t_sundry_fee.min_price is not null
    then
      if to_number(in_price) < t_sundry_fee.min_price
      then
        raise_application_error(-20001,
                                hospital.get_sundry_fee_name(t_sundry_fee.sundry_feeid) ||
                                '���۲��ܴ�������޼�(' ||
                                t_sundry_fee.max_price || ' ).;');
      end if;
    end if;
  
    select max(nvl(sequence, 0))
      into t_order_list.sequence
      from order_list
     where ownerid = in_residentid
       and start_date <= v_start_date;
  
    --�ƶ�ҽ��  
    update order_list
       set sequence = sequence + 1
     where ownerid = in_residentid
       and sequence >= nvl(t_order_list.sequence, 0) + 1;
  
    select b.patientid
      into t_order_list.patientid
      from resident_info a, resident_patient b
     where a.residentid = in_residentid
       and a.record_no = b.record_no;
    --����ҽ��¼����������ҽ��  
    begin
      if (in_type = 'NURSE' and
         nvl(get_system_option('����ҽ��_¼����������ҽ��'), 'Y') = 'Y')
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
  end prv_ҽ��_��_�ӷ�_����;
  ----------------------------------------------------------------------------
  --
  --     tiger    2001/10/15 - ����ְԱ�ĵ�¼���š�������㲿�ź�סԺ���㲿�Ź���
  --  tiger  2001/09/13  - ����ִ�в���¼���Լ����ŵ���ʱҽ����
  --

  procedure prv_ҽ��_��_����_����(out_order_listid   out varchar2
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
    verify_not_null(in_amount, '����');
    verify_valid_number(in_amount, '����');
    if to_number(in_amount) < 0
    then
      raise_application_error(-20001, '��������С��0.;');
    end if;
  
    t_start_worker.id := nvl(in_start_workerid, hospital.login.get_workerid);
    if in_type not in ('NURSE')
    then
      user_permit.s_ack_����Ȩ(t_start_worker.id);
    end if;
    if in_type not in ('OP1', 'OP2')
    then
      s_ack_סԺ����ҽ��ͬ����(in_residentid,
                               in_start_workerid,
                               '���ܸ��ò�����ҽ��');
    end if;
    verify_current_resident(in_residentid);
    if in_start_date is not null
    then
      verify_valid_date(in_start_date, 'ҽ����ʼʱ��');
      v_start_date := get_date_from_str(in_start_date);
      select a.in_date
        into s_start_date
        from hospital.resident_info_ a
       where a.residentid = in_residentid
         and rownum = 1;
      if (v_start_date > sysdate or v_start_date < s_start_date)
      then
        raise_application_error(-20001,
                                '��ʼʱ�䲻�ܴ��ڵ�ǰʱ����߿�ʼʱ��С����Ժʱ��.;');
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
                              'ҩƷ( ' || get_material_name(in_materialid) ||
                              ' )������ʹ��ҩƷ��');
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
                                '����������' ||
                                get_dept_name(v_input_deptid) ||
                                '����ݵ�¼,�������' ||
                                get_dept_name(t_resident_info.deptid) ||
                                '����ҽ�����д��� .;');
      end if;
      begin
        select 2
          into i
          from system_option
         where id like 'ҽ��¼��_ִ�в���%'
           and name = v_input_deptid
           and rownum = 1;
        null;
        --        if in_material_deptid <> v_input_deptid
        --        then
        --          raise_application_error(-20001,
        --                                  '���ٴ�����¼��ҽ��ֻ�����ı����ҵ�����.;');
        --        end if;
        v_execute_deptid := v_input_deptid;
      exception
        when no_data_found then
          raise_application_error(-20001,
                                  '���ٴ����Һ͸������Ҳ���¼��ҽ����');
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
                                get_dept_name(in_material_deptid) || 'û��' ||
                                get_package_description(in_packageid) || '��' ||
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
  
    if nvl(get_system_option('ҽ��¼��_��ʱ��ҩҽ��_ʹ��¼���÷�'), 'N') = 'Y'
    then
      t_method := in_method;
    end if;
    if in_method in ('h st', 'Ƥ�� st', 'ih st', '���� st')
    then
      t_method := in_method;
      if in_amount > 1
      then
        raise_application_error(-20001, 'Ƥ���÷���ֻ�ܿ�1֧ҩ');
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
                                    'ϵͳ���������ô���,��֪ͨϵͳ����Ա.;');
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
    --����ҽ��¼��Ա������ҽ��
    if (in_type = 'NURSE' and
       nvl(get_system_option('����ҽ��_¼����������ҽ��'), 'Y') = 'Y')
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
       get_ҩƷ���ۼ�(in_material_deptid,
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
  end prv_ҽ��_��_����_����;
  ----------------------------------------------------------------------------
  --
  --     tiger    2006/09/21 - �����޼۴���
  --     tiger    2002/01/03 - ȡ�����ƣ����ٴ�����ֻ��¼��ִ�п����Լ���ҽ����ԭ��ҽ��ģ����ȷʵ����һЩ����ҽ�������ٴ�����ִ�С�
  --     tiger    2001/10/15 - ����ְԱ�ĵ�¼���š�������㲿�ź�סԺ���㲿�Ź���
  --     tiger    2001/09/13 - ����ִ�в���¼���Լ����ŵ���ʱҽ����
  --
  procedure prv_ҽ��_��_�ӷ�_����(out_order_listid  out varchar2
                                 ,in_start_workerid in varchar2
                                 ,in_start_date     in varchar2
                                 ,in_residentid     in varchar2
                                 ,in_execute_deptid in varchar2
                                 , --�������
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
    verify_not_null(in_amount, '����');
    verify_valid_number(in_amount, '����');
    if to_number(in_amount) < 0
    then
      raise_application_error(-20001, '��������С��0.;');
    end if;
    if in_start_date is not null
    then
      verify_valid_date(in_start_date, 'ҽ����ʼʱ��');
      v_start_date := get_date_from_str(in_start_date);
      select a.in_date
        into s_start_date
        from hospital.resident_info_ a
       where a.residentid = in_residentid
         and rownum = 1;
      if (v_start_date > sysdate or v_start_date < s_start_date)
      then
        raise_application_error(-20001,
                                '��ʼʱ�䲻�ܴ��ڵ�ǰʱ����߿�ʼʱ��С����Ժʱ��.;');
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
                                '����������' ||
                                get_dept_name(v_input_deptid) ||
                                '����ݵ�¼,�������' ||
                                get_dept_name(v_patient_deptid) ||
                                '����ҽ�����д��� .;');
      end if;
      begin
        select 2
          into i
          from system_option
         where id like 'ҽ��¼��_ִ�в���%'
           and name = v_input_deptid
           and rownum = 1;
        /*
               if in_execute_deptid <> v_input_deptid then
                 raise_application_error(-20001,'���ٴ�����ֻ��¼�뱾����ִ�е�ҽ��,'||
                        '����¼��ִ�п���Ϊ'||get_dept_name(in_execute_deptid)||'.;');
               end if;
        */
      exception
        when no_data_found then
          raise_application_error(-20001,
                                  '���ٴ����Һ͸������Ҳ���¼��ҽ����');
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
                                '���Ϊ(' || in_sundry_feeid ||
                                ')���ӷ���Ŀ������.;');
    end;
  
    if t_sundry_fee.max_price is not null
    then
      if to_number(in_price) > t_sundry_fee.max_price
      then
        raise_application_error(-20001,
                                get_sundry_fee_name(t_sundry_fee.sundry_feeid) ||
                                '���۲��ܴ�������޼�(' ||
                                t_sundry_fee.max_price || ' ).;');
      end if;
    end if;
  
    if t_sundry_fee.min_price is not null
    then
      if to_number(in_price) < t_sundry_fee.min_price
      then
        raise_application_error(-20001,
                                get_sundry_fee_name(t_sundry_fee.sundry_feeid) ||
                                '���۲��ܴ�������޼�(' ||
                                t_sundry_fee.max_price || ' ).;');
      end if;
    end if;
  
    update order_list
       set sequence = sequence + 1
     where ownerid = in_residentid
       and sequence >= nvl(t_order_list.sequence, 0) + 1;
    if (in_type = 'NURSE' and
       nvl(get_system_option('����ҽ��_¼����������ҽ��'), 'Y') = 'Y')
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
  end prv_ҽ��_��_�ӷ�_����;
  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
  --     tiger 2002/09/16 - ȡ��ҽ��¼��ʱ�ķ��ÿ���
  --     tiger 2001/10/16 - ����ְԱ�ĵ�¼���š�������㲿�ź�סԺ���㲿�Ź���

  procedure prv_ҽ��_ҽ��_�ӷ�_����(out_order_listid  out varchar2
                                   ,in_long_flag      in varchar2
                                   ,in_start_date     in varchar2
                                   ,in_start_workerid in varchar2
                                   ,in_residentid     in varchar2
                                   ,in_deptid         in varchar2
                                   , --�������
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
                                '��סԺ��(' || in_residentid ||
                                ')�ļ�¼û���ҵ�.;');
    end;
    if t_resident_patient.status = 'NORMAL'
    then
      null;
    elsif t_resident_patient.status = 'WAIT_BED'
    then
      raise_application_error(-20001, '���Ȱ��Ŵ�λ,����ҽ��.;');
    elsif t_resident_patient.status = 'WAIT_OUT'
    then
      raise_application_error(-20001,
                              '�ò����Ѿ������Ժ,������¼��ҽ��,�����ԶԸò���ȡ�������Ժ,��¼��ҽ��.;');
    elsif t_resident_patient.status = 'WAIT_PRE'
    then
      raise_application_error(-20001, '�ò�����Ҫ�Ƚ�Ѻ��,��¼��ҽ��.;');
    elsif t_resident_patient.status = 'WAIT_ACC'
    then
      raise_application_error(-20001, '�ò�����Ҫ�Ƚ���,��¼��ҽ��.;');
    else
      raise_application_error(-20001,
                              '����ʶ��Ĳ���״̬(' ||
                              t_resident_patient.status ||
                              '),��֪ͨϵͳ����Ա.;');
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
                              '�ӷ���Ŀ(' || t_sundry_fee.sundry_feeid || ')' ||
                              get_sundry_fee_name(t_sundry_fee.sundry_feeid) ||
                              '�ļ۸���' || to_char(t_sundry_fee.price) ||
                              '������۸������޸�.;');
    end if;
    if t_sundry_fee.order_list_flag in ('LONG', 'IN_LONG')
    then
      if t_long_flag = 'B'
      then
        raise_application_error(-20001,
                                '�ӷ���Ŀ(' || t_sundry_fee.sundry_feeid ||
                                ')ֻ�����ڳ���ҽ��.;');
      end if;
    elsif t_sundry_fee.order_list_flag in ('TEMP', 'IN_TEMP')
    then
      if t_long_flag = 'A'
      then
        /*        raise_application_error(-20001,
        '�ӷ���Ŀ(' || t_sundry_fee.sundry_feeid ||
        ')ֻ��������ʱҽ��.;');*/
        t_long_flag := 'B';
      end if;
    elsif t_sundry_fee.order_list_flag = 'CLASS'
    then
      raise_application_error(-20001,
                              '�ӷ���Ŀ(' || t_sundry_fee.sundry_feeid ||
                              ')�Ƿ��࣬������Ϊҽ�����롣');
    elsif t_sundry_fee.order_list_flag = 'OUT'
    then
      raise_application_error(-20001,
                              '�ӷ���Ŀ(' || t_sundry_fee.sundry_feeid ||
                              ')��ר������������ã�������Ϊҽ�����롣');
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
                              '��ִ�п��Ҳ�����' ||
                              get_dept_name(in_deptid) || '.;');
    end if;
    if t_long_flag = 'A'
    then
      prv_ҽ��_��_�ӷ�_����(t_order_listid,
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
      prv_ҽ��_��_�ӷ�_����(t_order_listid,
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
                              '���ܴ����ҽ����־(' || in_long_flag ||
                              ').;');
    end if;
    out_order_listid := t_order_listid;
  end prv_ҽ��_ҽ��_�ӷ�_����;
  -----------------------------------------------------------------
  procedure prv_ҽ��_ҽ��_����_����(out_order_listid   out varchar2
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
                                '��סԺ��(' || in_residentid ||
                                ')�ļ�¼û���ҵ�.;');
      when too_many_rows then
        raise_application_error(-20001,
                                '��סԺ��(' || in_residentid ||
                                ')�ļ�¼�ҵ�����.;');
    end;
    if t_resident_patient.status = 'NORMAL'
    then
      null;
    elsif t_resident_patient.status = 'WAIT_BED'
    then
      raise_application_error(-20001, '���Ȱ��Ŵ�λ,����ҽ��.;');
    elsif t_resident_patient.status = 'WAIT_OUT'
    then
      raise_application_error(-20001,
                              '�ò����Ѿ������Ժ,������¼��ҽ��,�����ԶԸò���ȡ�������Ժ,��¼��ҽ��.;');
    elsif t_resident_patient.status = 'WAIT_PRE'
    then
      raise_application_error(-20001, '�ò�����Ҫ�Ƚ�Ѻ��,��¼��ҽ��.;');
    else
      raise_application_error(-20001,
                              '����ʶ��Ĳ���״̬(' ||
                              t_resident_patient.status ||
                              '),��֪ͨϵͳ����Ա.;');
    end if;
  
    select attribute
      into t_material_attribute
      from material
     where id = in_materialid;
    if substrb(t_material_attribute, 2, 1) = 'B'
    then
      verify_worker(in_start_workerid, '����ҽʦ');
      pre_ack.ack_������Ȩ(hospital.login.get_workerid);
    end if;
  
    if lic.get_���ע��Ϸ�����֤('סԺ����ҩ����������ϵͳ') >= 0
    then
      if nvl(get_system_option('����ҩ��������ҩ¼������'), 'N') = 'Y'
      then
        verify_worker(in_start_workerid, '����ҽʦ');
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
                                  'ҽʦ( ' ||
                                  hospital.get_worker_name(in_start_workerid) ||
                                  ') ��Ȩ��ʹ��ҩƷ( ' ||
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
        from hospital.tҽ�����߽�ֹ��ҩ�� a, hospital.field_dict b
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
                              '���߽�ֹʹ��ҩƷ�� ' ||
                              hospital.get_material_name(in_materialid) ||
                              hospital.get_package_description(in_packageid));
    exception
      when no_data_found then
        null;
    end;
  
    --Ƥ��ҩƷ
    begin
      select 2
        into i
        from hospital.all_material_ t
       where t.attribute like '____________B_'
         and t.id = in_materialid;
    
      --ʹ��Ƥ��ҩƷ��ҽ�����ж��Ƿ���Ƥ��
      if (in_use_method not in ('Ƥ��', '����', 'h', 'ih', 'ps') and
         in_frequence not in ('��', 'X'))
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
              if v_hour <= nvl(get_system_option('�����������ض�ʱ����Ƥ��ҩƷ�ɲ�Ƥ��ʱ��'),
                               24)
              then
                null;
              else
                raise_application_error(-20001,
                                        '[' ||
                                        hospital.get_material_name(in_materialid) ||
                                        ']ΪƤ��ҩƷ,' ||
                                        '��Ƥ�Ժ���ʹ�ã�');
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
                         nvl(get_system_option('�ض�ʱ����Ƥ��ҩƷ�ɲ�Ƥ��ʱ��'),
                             1)
                     and rownum = 1;
                  if s_skin_test_result is null
                  then
                    raise_application_error(-20001,
                                            '[' ||
                                            hospital.get_material_name(in_materialid) ||
                                            ']ΪƤ��ҩƷ,' ||
                                            '��Ƥ�Ժ���ʹ�ã�');
                  end if;
                  --Ƥ�Խ��Ϊ����
                  if s_skin_test_result = 'Ƥ������'
                  then
                    raise_application_error(-20001,
                                            '[' ||
                                            hospital.get_material_name(in_materialid) ||
                                            ']���ﴦ��Ƥ�Խ��Ϊ����,' ||
                                            '����ʹ�ø�ҩƷ��');
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
                                                ']ΪƤ��ҩƷ,' ||
                                                '��Ƥ�Ժ���ʹ�ã�');
                    end;
                end;
            end;
        end;
        --Ƥ�Խ��Ϊ����
        if v_skin_test_result = '2'
        then
          raise_application_error(-20001,
                                  '[' ||
                                  hospital.get_material_name(in_materialid) ||
                                  ']Ƥ�Խ��Ϊ����,' || '����ʹ�ø�ҩƷ��');
        end if;
      end if;
    exception
      when no_data_found then
        null;
    end;
    if (in_frequence in ('st', '��', 'X') and in_long_flag = 'A')
    then
      raise_application_error(-20001,
                              '[' || in_frequence ||
                              ']ֻ��¼��ʱҽ��������¼Ϊ����ҽ����');
    end if;
    if in_long_flag = 'A'
    then
      prv_ҽ��_��_����_����(t_order_listid,
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
      prv_ҽ��_��_����_����(t_order_listid,
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
                              '���ܴ����ҽ����־(' || in_long_flag ||
                              ').;');
    end if;
    out_order_listid := t_order_listid;
  end prv_ҽ��_ҽ��_����_����;
  ----------------------------------------------------------------------------
  --
  --     tiger 2006/09/21 - �����޼۴���
  --     tiger 2000/05/04 - �жϲ��������������ϵĴ�λ��
  --
  procedure prv_ҽ��_ҽ��_�ı�_����(out_order_listid  out varchar2
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
      verify_valid_date(in_start_date, 'ҽ����ʼʱ��');
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
                                '����������' ||
                                get_dept_name(v_input_deptid) ||
                                '����ݵ�¼,�������' ||
                                get_dept_name(v_patient_deptid) ||
                                '����ҽ�����д��� .;');
      else
        if in_type in ('OP1', 'OP2')
        then
          null;
        else
          raise_application_error(-20001,
                                  '���ٴ����Һ͸������Ҳ���¼��ҽ����');
        end if;
      end if;
    end if;
    if in_type not in ('OP1', 'OP2')
    then
      s_ack_סԺ����ҽ��ͬ����(in_residentid,
                               t_start_workerid,
                               '���ܸ��ò�����ҽ��');
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
  
    --�ƶ�ҽ��  
    update order_list
       set sequence = sequence + 1
     where ownerid = in_residentid
       and sequence >= nvl(t_order_list.sequence, 0) + 1;
    --����ҽ��¼��Ա������ҽ��
    if (in_type = 'NURSE' and
       nvl(get_system_option('����ҽ��_¼����������ҽ��'), 'Y') = 'Y')
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
  end prv_ҽ��_ҽ��_�ı�_����;
  ----------------------------------------------------------------------------
  --     tiger      2004/12/14 -  ȡ��commit
  --     tiger      2001/10/16 -  ����ְԱ�ĵ�¼���š�������㲿�ź�סԺ���㲿�Ź���
  procedure prv_ҽ��_ҽ��_����_ȡ������(in_order_listid in varchar2) as
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
        raise_application_error(-20001, '��¼������.;');
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
      raise_application_error(-20001, '������ֻ��ɾ������ҽ������ʱҽ��.;');
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
                              '��ҽ��(' || t_str || ')�Ѿ�ȷ�ϣ�����ɾ��.;');
    elsif t_order_list.status = 'STOPPED'
    then
      raise_application_error(-20001,
                              '��ҽ��(' || t_str || ')�Ѿ�ֹͣ������ɾ��.;');
    elsif t_order_list.status = 'WAIT_ACK'
    then
      null;
    else
      raise_application_error(-20001, '����ʶ��ı�־.;');
    end if;
    if is_same_login_dept(hospital.login.get_workerid,
                          t_order_list.input_workerid) = 0
    then
      raise_application_error(-20001,
                              '����' ||
                              get_worker_name(t_order_list.input_workerid) ||
                              '¼���ҽ����������(��)����ͬһ�����ң�����ɾ��.;');
    end if;
    delete from order_list where id = in_order_listid;
    insert into hospital.deleted_records_
      (schema_name, table_name, id, delete_date)
    values
      ('HOSPITAL', 'ORDER_LIST', in_order_listid, sysdate);
  
  end prv_ҽ��_ҽ��_����_ȡ������;
  -----------------------------------------------------------------
  --
  --     tiger      2004/12/14 -  ȡ��commit
  --     tiger      2001/10/15 - ����ְԱ�ĵ�¼���š�������㲿�ź�סԺ���㲿�Ź���
  --     tiger      2001/09/11 - create 
  --
  procedure prv_ҽ��_ҽ��_����_ȡ�����(in_order_listid in varchar2) as
    t_order_list order_list%rowtype;
    t_str        varchar2(255);
  begin
    lock_res.lock_order_list(in_order_listid, t_order_list);
    if t_order_list.long_flag not in ('A', 'B')
    then
      raise_application_error(-20001,
                              '������ֻ�ܱ�ǳ���ҽ������ʱҽ��ɾ��.;');
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
                              '��ҽ��(' || t_str || ')�Ѿ�ȷ�ϣ�����ɾ��.;');
    elsif t_order_list.status = 'STOPPED'
    then
      raise_application_error(-20001,
                              '��ҽ��(' || t_str || ')�Ѿ�ֹͣ������ɾ��.;');
    elsif t_order_list.status = 'WAIT_ACK'
    then
      null;
    elsif t_order_list.status = 'DELETED'
    then
      raise_application_error(-20001, '��ҽ��(' || t_str || ')�Ѿ�ɾ��.;');
    else
      raise_application_error(-20001, '����ʶ��ı�־.;');
    end if;
    if is_same_login_dept(hospital.login.get_workerid,
                          t_order_list.input_workerid) = 0
    then
      raise_application_error(-20001,
                              '����' ||
                              get_worker_name(t_order_list.input_workerid) ||
                              '¼���ҽ����������(��)����ͬһ�����ң�����ɾ��.;');
    end if;
    update order_list
       set status      = 'DELETED',
           operator    = hospital.login.get_workerid,
           update_date = sysdate
     where id = in_order_listid;
  end prv_ҽ��_ҽ��_����_ȡ�����;
  -----------------------------------------------------------------
  procedure prv_ҽ��_��ҩ����_�ӷ�_����(out_order_listid  out varchar2
                                       ,in_long_flag      in varchar2
                                       ,in_start_date     in varchar2
                                       ,in_start_workerid in varchar2
                                       ,in_residentid     in varchar2
                                       ,in_deptid         in varchar2
                                       , --�������
                                        in_sundry_feeid   in varchar2
                                       ,in_price          in varchar2
                                       ,in_amount         in varchar2
                                       ,in_remark         in varchar2
                                       ,in_type           in varchar2
                                       ,in_check_point    in varchar2) as
  begin
    prv_ҽ��_ҽ��_�ӷ�_����(out_order_listid,
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
  end prv_ҽ��_��ҩ����_�ӷ�_����;
  -----------------------------------------------------------------
  procedure prv_ҽ��_��ҩ����_����_����(out_order_listid   out varchar2
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
    user_permit.s_ack_����Ȩ(v_start_workerid);
    if in_type not in ('OP1', 'OP2', 'AUTOFEE')
    then
      s_ack_סԺ����ҽ��ͬ����(in_residentid,
                               hospital.login.get_workerid,
                               '���ܸ��ò���¼��ҽ��');
      s_ack_סԺ����ҽ��ͬ����(in_residentid,
                               v_start_workerid,
                               '���ܸ��ò�����ҽ��');
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
        raise_application_error(-20001, 'û���ҵ���¼.;');
      when others then
        raise_application_error(-20001, '���������ڲ��������Ժ�����.;');
    end;
    if in_material_deptid is not null
    then
      verify_department(in_material_deptid);
    end if;
    verify_material_package(in_materialid, in_packageid);
    verify_not_null(in_amount, '����');
    verify_valid_number(in_amount, '����');
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
                                get_dept_name(in_material_deptid) || 'û��' ||
                                get_package_description(in_packageid) || '��' ||
                                get_material_name(in_materialid) || '.;');
    end;
    --����ҽ��¼����������ҽ��     
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
       get_ҩƷ���ۼ�(in_material_deptid,
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
  end prv_ҽ��_��ҩ����_����_����;
  -----------------------------------------------------------------
  --   2013/11/06  tiger  - �ֹ��Ʒ�ҽ��������������ҽ��
  --   2006/12/06  tiger  - ����ҽ������
  --   2006/06/19  tiger  - ��ҽ���͸�ҽ��¼���߱�����ͬһ����
  --   2004/11/26  tiger  - �����ӷ�ҽ��������Ϊ����ҽ���ĸ�ҽ��
  --   2004/11/25  tiger  - ������ҽ���Ŀ�ʼʱ��=��ҽ���Ŀ�ʼʱ�� 
  --
  procedure prv_ҽ��_��ҽ��_����(in_parent_order_listid in varchar2
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
      raise_application_error(-20001, '�ֹ��Ʒ�ҽ������֧����ҽ��.;');
    end if;
    if t_parent_order_list.ownerid <> t_child_order_list.ownerid
    then
      raise_application_error(-20001,
                              '�ⲻ��ͬһ��סԺ�ŵ�ҽ������������.;');
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
          raise_application_error(-20001, '��ҽ����¼������.;');
      end;
      if t_parent_order_list.parentid <> t_parent_order_list.id
      then
        raise_application_error(-20001, '��ҽ�����ô���.;');
      end if;
    end if;
    if t_parent_order_list.status = 'WAIT_ACK'
    then
      null;
    elsif t_parent_order_list.status = 'NORMAL'
    then
      raise_application_error(-20001, '��ҽ���Ѿ�ȷ�ϣ���������.;');
    elsif t_parent_order_list.status = 'STOPPED'
    then
      raise_application_error(-20001, '��ҽ���Ѿ�ֹͣ����������.;');
    else
      raise_application_error(-20001, '����ʶ��ı�־.;');
    end if;
    if t_child_order_list.status = 'WAIT_ACK'
    then
      null;
    elsif t_child_order_list.status = 'NORMAL'
    then
      raise_application_error(-20001, '��ҽ���Ѿ�ȷ�ϣ���������.;');
    elsif t_child_order_list.status = 'STOPPED'
    then
      raise_application_error(-20001, '��ҽ���Ѿ�ֹͣ����������.;');
    else
      raise_application_error(-20001, '����ʶ��ı�־.;');
    end if;
    if t_child_order_list.parentid is null
    then
      null;
    elsif t_child_order_list.parentid = t_child_order_list.id
    then
      raise_application_error(-20001, '��ҽ������Ƕ��.;');
    elsif t_child_order_list.parentid <> t_child_order_list.id
    then
      raise_application_error(-20001, '�Ѿ�����ҽ��.;');
    end if;
    if t_parent_order_list.long_flag <> t_child_order_list.long_flag
    then
      raise_application_error(-20001,
                              '��ҽ���븸ҽ��Ӧ��ͬʱΪ����ҽ����ͬʱΪ��ʱҽ��.;');
    end if;
    if t_parent_order_list.long_flag = 'A'
       and t_parent_order_list.sundry_feeid is not null
    then
      if t_child_order_list.materialid is not null
      then
        raise_application_error(-20001,
                                '����ҽ��������Ϊ�����ӷ�ҽ������ҽ��.;');
      end if;
    end if;
  
    if (t_parent_order_list.input_workerid <>
       t_child_order_list.input_workerid and
       in_order_list_type != 'AUTOFEE')
    then
      raise_application_error(-20001,
                              '��ҽ����ҽ������ͬһ����¼���,���ܲ�����ҽ��.;');
    end if;
  
    if t_parent_order_list.materialid is null
       and t_parent_order_list.sundry_feeid is null
       and t_parent_order_list.id <> t_child_order_list.id
    then
      raise_application_error(-20001, '�ı�ҽ�����ܲ�����ҽ��.;');
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
  end prv_ҽ��_��ҽ��_����;
  -----------------------------------------------------------------
  --  2013/09/09  �Ż�ҽ��ȷ������;ֻ��ȷ���Լ�¼���ҽ��
  --  2013/09/11  ҽ��ȷ�Ϻ󣬽�����˶�״̬WAIT_CHECK
  --  2011/11/27  ����ҩƷ���������ƶȣ����ҽ������ҩ���� < ҩƷ����ҽ��ȷ��״̬Ϊ WAIT_AUDIT
  --  2011/11/27  tiger ȡ��  ҽ��ȷ��_���㾲����� ����
  --  2001/06/11  tiger - ���� ҽ��ȷ��_���㾲����� = N
  --
  procedure prv_ҽ��_ҽ��_ȷ��_����(in_order_listid in varchar2) as
    i             number;
    t_order_list  order_list%rowtype;
    exam_apply_id hospital.in_examination_application_.id%type;
  begin
    user_permit.s_ack_ҽ��ȷ��Ȩ;
    lock_res.lock_order_list(in_order_listid, t_order_list);
    ol_status.s_ack_ҽ��ȷ��(t_order_list);
  
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
      if nvl(get_system_option('ҽ���������̱������'), 'N') = 'Y'
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
    if nvl(get_system_option('ҽ���������̱������'), 'N') = 'Y'
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
      ol_status.s_ack_ҽ��ȷ��(t_order_list);
    
      update order_list
         set status       = ack_status,
             status1      = ack_status1,
             ack_workerid = hospital.login.get_workerid,
             ack_date     = sysdate
       where id = c.id;
    end loop;
  
    if lic.get_���ע��Ϸ�����֤('סԺ����ҩ����������ϵͳ') >= 0
    then
      if nvl(get_system_option('����ҩ��������ҩ¼������'), 'N') = 'N'
         and nvl(get_system_option('������ҩ�ּ�����'), 'N') = 'Y'
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
    --�½�������뵥
    hospital.exam_apply.s_������뵥_�½�nc(in_order_listid, exam_apply_id);
    --���ڿ���Ҫ�ң�ֱ��ָ����������������ҩ��
  
  end prv_ҽ��_ҽ��_ȷ��_����;
  -----------------------------------------------------------------
  --     tiger      2013/09/11 - �Ż�ȡ��ȷ������
  --     tiger      2006/12/07 - ҽʦҽ��ֻ����ȷ���߱��˻���ҽʦ����ȡ��ȷ�� 
  --     tiger      2001/10/16 - ����ְԱ�ĵ�¼���š�������㲿�ź�סԺ���㲿�Ź���
  procedure prv_ҽ��_ҽ��_ȷ��_ȡ������(in_order_listid in varchar2) as
    t_order_list order_list%rowtype;
  begin
    lock_res.lock_order_list(in_order_listid, t_order_list);
  
    if t_order_list.type = 'DOCTOR'
    then
      if t_order_list.ack_workerid <> hospital.login.get_workerid
         and t_order_list.start_workerid <> hospital.login.get_workerid
      then
        raise_application_error(-20001,
                                'ҽʦҽ��ֻ����ȷ���߱��˻���ҽʦ����ȡ��ȷ��.;');
      end if;
    else
      if is_same_login_dept(hospital.login.get_workerid,
                            t_order_list.ack_workerid) = 0
      then
        raise_application_error(-20001,
                                '����' ||
                                get_worker_name(t_order_list.ack_workerid) ||
                                'ȷ�ϵ�ҽ������������ͬһ�����ң�������ȡ��ȷ��.;');
      end if;
    end if;
  
    ol_status.s_ack_ҽ��ȷ��ȡ��(t_order_list);
  
    if t_order_list.long_flag not in ('A', 'B')
    then
      raise_application_error(-20001, '���ǳ��ڻ�����ʱҽ��������ȡ��ȷ��');
    end if;
  
    if nvl(t_order_list.executed_days, 0) - nvl(t_order_list.skip_days, 0) > 0
       or nvl(t_order_list.this_days, 0) > 0
    then
      raise_application_error(-20001, '��ҽ���Ѿ�����,����ȡ��ȷ��');
    end if;
  
    update order_list
       set status       = 'WAIT_ACK',
           status1      = 'NONE',
           ack_workerid = null,
           ack_date     = null,
           skip_days    = null
     where id = in_order_listid;
  
  end prv_ҽ��_ҽ��_ȷ��_ȡ������;
  -----------------------------------------------------------------
  function get_ҽ���ж�ҽ������״̬(in_residentid in varchar2)
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
               where id like 'ҽ������_ִ�п����Լ�����%')
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
                   where id like 'ҽ������_ִ�п����Լ�����%')
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
                       where id like 'ҽ������_ִ�п����Լ�����%')
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
  end get_ҽ���ж�ҽ������״̬;
  -----------------------------------------------------------------
  function get_��ʿ�ж�ҽ������״̬(in_residentid in varchar2)
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
               where id like 'ҽ������_ִ�п����Լ�����%')
         and rownum = 1;
      v_status := 'LOCKED';
    exception
      when no_data_found then
        begin
          if nvl(get_system_option('ҽ���������̱������'), 'N') = 'Y'
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
                     where id like 'ҽ������_ִ�п����Լ�����%')
                  
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
                     where id like 'ҽ������_ִ�п����Լ�����%')
                  
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
                       where id like 'ҽ������_ִ�п����Լ�����%')
                    
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
  end get_��ʿ�ж�ҽ������״̬;
  -----------------------------------------------------------------
  -- ��¼ҽ����ʼ����ҽ������dr_order_list_info�м�¼��Ϣ
  --     tiger      2006/12/31 - create
  procedure s_ҽ������ҽ��nc(in_residentid in varchar2) is
    v_dr_order_list_info dr_order_list_info%rowtype;
    v_deptid             varchar2(10);
    v_patientid          varchar2(10);
    v_status             dr_order_list_info.status%type;
  begin
    --����������Ϣ
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
        raise_application_error(-20001, '���ǵ�ǰסԺ����.;');
      when others then
        raise_application_error(-20001, '���������ڲ���,���Ժ���.;');
    end;
    --�ж�����ҽ���Ƿ��ڲ���
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
                                  '����Ϊ(' ||
                                  v_dr_order_list_info.workerid ||
                                  ')��ҽ�����ڴ���ҽ�������Ժ���.;');
        end if;
      end if;
    exception
      when no_data_found then
        null;
    end;
    --�жϴ���ҽ��״̬
  
    v_status := get_ҽ���ж�ҽ������״̬(in_residentid);
  
    --�޸�״̬��Ϣ
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
  end s_ҽ������ҽ��nc;
  -----------------------------------------------------------------
  -- ��¼ҽ����������ҽ������dr_order_list_info�м�¼��Ϣ
  --     tiger      2006/12/31 - create
  procedure s_ҽ��ȷ�ϴ���ҽ��nc(in_residentid in varchar2) is
    v_dr_order_list_info dr_order_list_info%rowtype;
    v_deptid             varchar2(10);
    v_patientid          varchar2(10);
    v_status             dr_order_list_info.status%type;
  begin
    --����������Ϣ
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
        raise_application_error(-20001, '���ǵ�ǰסԺ����.;');
      when others then
        raise_application_error(-20001, '���������ڲ���,���Ժ���.;');
    end;
  
    --�ж�����ҽ���Ƿ��ڲ���
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
                                  '����Ϊ(' ||
                                  v_dr_order_list_info.workerid ||
                                  ')��ҽ�����ڴ���ҽ�������Ժ���.;');
        end if;
      end if;
    exception
      when no_data_found then
        null;
    end;
    --�жϴ���ҽ��״̬
    v_status := get_ҽ���ж�ҽ������״̬(in_residentid);
    --�޸�״̬��Ϣ
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
  end s_ҽ��ȷ�ϴ���ҽ��nc;
  ----------------------------------------------------------
  procedure prv_��ʿ����ҽ��(in_residentid in varchar2) is
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
        raise_application_error(-20001, '���ǵ�ǰסԺ����.;');
      when others then
        raise_application_error(-20001, '���������ڲ���,���Ժ���.;');
    end;
    v_status := get_��ʿ�ж�ҽ������״̬(in_residentid);
    --�޸�״̬��Ϣ
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
  end prv_��ʿ����ҽ��;
  ----------------------------------------------------------
  procedure prv_�жϻ�����(in_residentid in varchar2) is
    v_sundry_feeid all_sundry_fee.id%type;
    v_nurse_level  number := 4; --Ĭ��û�л�����
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
  end prv_�жϻ�����;
  ----------------------------------------------------------------------------  
  procedure prv_��¼ҽ����_¼�����(in_residentid         in varchar2
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
  end prv_��¼ҽ����_¼�����;
  ----------------------------------------------------------------------------
  procedure s_ҽ��_��ҽ��_����_����_nc(in_parent_order_listid in varchar2
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
                                      , -- ҽ������(��ʿҽ����ҽʦҽ��������ҽ������Ժ��ҩ)
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
    lock_res.lock_ack_ҽ��_����(in_residentid, t_resident_info);
    hospital.verify_drop_speed(in_drop_speed);
    hospital.verify_length(in_drop_speed_unit, 30, '���ٵ�λ');
    user_permit.s_ack_ҽ��ȷ��Ȩ;
    t_add_supply := 'NO';
    verify_valid_number(in_amount, '����');
    hospital.verify_drop_speed(in_drop_speed);
    hospital.verify_length(in_drop_speed, 30, '����');
    if to_number(in_amount) < 0
    then
      raise_application_error(-20001, '�����������=0');
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
                                'ʹ��Ƶ��' || in_amount || '���ֶ��.;');
    end;
  
    --�ж����¼��Ա���Ǳ����ŵĹ�����Ա����ֹ¼��
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
                                '����������' ||
                                get_dept_name(v_input_deptid) ||
                                '����ݵ�¼,�������' ||
                                get_dept_name(v_patient_deptid) ||
                                '����ҽ�����д��� .;');
      else
        if in_type in ('OP1', 'OP2')
        then
          null;
        else
          raise_application_error(-20001, '���ٴ����Ҳ���¼������ҽ��.;');
        end if;
      end if;
    end if;
  
    if in_type = 'NURSE'
       and nvl(get_system_option('����ҽ��_��ֹ¼��ҩƷҽ��'), 'Y') = 'Y'
    then
      begin
        select 2
          into i
          from hospital.all_material
         where id = in_materialid
           and account_subjectid like '123%'
           and nvl(get_system_option('����ҽ��_����¼������ⷿ����ҽ��'),
                   'Y') = 'Y'
           and rownum = 1;
        null;
      exception
        when no_data_found then
          if (nvl(get_system_option('����ҽ��_����¼������ⷿ����ҽ��'),
                  'Y') = 'Y')
          then
            raise_application_error(-20001, '����ҽ����ֹҩƷҽ��.;');
          else
            raise_application_error(-20001,
                                    '����ҽ����ֹ¼��ҩƷ������ⷿ����ҽ��.;');
          end if;
      end;
    end if;
  
    t_amount := in_amount;
    --�ж��ǲ��ǿڷ�ҩ�÷�
    -- 1  �ڷ�ҩ
    -- 0 �ǿڷ�ҩ
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
      --������ҽ��
      begin
        select *
          into t_parent_order_list
          from order_list
         where id = in_parent_order_listid
           and rownum = 1
           for update of id nowait;
      exception
        when no_data_found then
          raise_application_error(-20001, '��ҽ��û���ҵ�.;');
        when others then
          raise_application_error(-20001, '���������ڲ���,���Ժ�����.;');
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
            raise_application_error(-20001, '��ҽ��û���ҵ�.;');
          when others then
            raise_application_error(-20001, '���������ڲ���,���Ժ�����.;');
        end;
      end if;
      if t_parent_order_list.materialid is null
         and in_materialid is not null
      then
        raise_application_error(-20001, '�ӷ�ҽ������¼��ҩƷ��ҽ��.;');
      end if;
      if t_parent_order_list.long_flag = 'A'
         and v_po_flag = '1'
      then
        begin
          select 2
            into i
            from system_option
           where id like '���ڿڷ�ҩ��ҩ����%'
             and name = v_patient_deptid;
        exception
          when no_data_found then
            t_amount := '0';
            prv_ҽ��_ҽ��_����_����(t_order_listid,
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
            prv_ҽ��_��ҽ��_����(t_order_listid, t_order_listid, null);
        end;
      end if;
    
      prv_ҽ��_ҽ��_����_����(t_order_listid,
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
      prv_ҽ��_��ҽ��_����(in_parent_order_listid, t_order_listid, null);
    else
      --���Ӹ�ҽ��
      if in_long_flag = 'A'
         and v_po_flag = '1'
      then
        begin
          select 2
            into i
            from system_option
           where id like '���ڿڷ�ҩ��ҩ����%'
             and name = v_patient_deptid;
        exception
          when no_data_found then
            t_amount := '0';
            prv_ҽ��_ҽ��_����_����(t_order_listid,
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
            prv_ҽ��_��ҽ��_����(t_order_listid, t_order_listid, in_type);
        end;
      end if;
      prv_ҽ��_ҽ��_����_����(t_order_listid,
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
      prv_ҽ��_��ҽ��_����(t_order_listid, t_order_listid, in_type);
      t_add_supply := 'YES';
      --�����ҽ����ҽ�������޸�dr_order_list_info
      if in_type in ('DOCTOR', 'OP1')
      then
        s_ҽ������ҽ��nc(in_residentid);
      end if;
    
    end if;
    out_order_listid := t_order_listid;
    if in_text is not null
    then
      update order_list set text = in_text where id = t_order_listid;
    end if;
  
    --����ҽ��
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
                                      'û���ҵ�ʹ��Ƶ��' || in_frequence ||
                                      '��֪ͨϵͳ����Ա.;');
            exception
              when no_data_found then
                null;
            end;
          else
            t_frequence := 1;
          end if;
        when too_many_rows then
          raise_application_error(-20001, '�ҵ�������ͬ��ʹ��Ƶ��.;');
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
          raise_application_error(-20001, 'û���ҵ�סԺ���˵�סԺ����.;');
      end;
    
      --i == 2 ����̶����ң� i==1 ����סԺ����
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
          --ֻ����һ��
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
                --����ǹ̶��۸񣬲���SUNDRY_FEE�ļ۸�
                --�������ҽ��ģ��ļ۸�
                begin
                  select *
                    into t_sundry_fee
                    from sundry_fee_config
                   where hospid = get_login_hospid
                     and sundry_feeid = c.sundry_feeid;
                exception
                  when no_data_found then
                    raise_application_error(-20001,
                                            'û���ҵ�' ||
                                            get_sundry_fee_name(c.sundry_feeid) ||
                                            '���ӷ���Ŀ' || c.sundry_feeid ||
                                            '��֪ͨϵͳ����Ա.;');
                  when too_many_rows then
                    raise_application_error(-20001, '�ҵ������ӷ���Ŀ.;');
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
                                          '��֧�ֵ�ִ�в��ű�־' ||
                                          c.execute_dept_flag || '.;');
                end if;
              
                --������Һ����������ģ�������ߣ�������ʹ��ҽ����ÿ������
                if t_sundry_fee.sundry_feeid = '120400006a'
                   or t_sundry_fee.sundry_feeid = '120400006A'
                then
                  t_frequence := c.amount;
                  v_long_flag := 'A'; --������Һ���Զ����ٳ���ҽ��
                else
                  t_frequence := t_frequence * c.amount;
                  v_long_flag := in_long_flag;
                end if;
                prv_ҽ��_��ҩ����_�ӷ�_����(t_sub_order_listid,
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
                prv_ҽ��_��ҩ����_����_����(t_sub_order_listid,
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
            --�����  ������Һ(����һ�飩���� ��Ƥ����Һ(����һ�飩���� ��С��ͷƤ������Һ(����һ�飩����
            --    �÷��� ivgtt
            if (nvl(get_system_option('������Һҽ��_��һ�鲻��������Һ����'),
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
            
              --����ǹ̶��۸񣬲���SUNDRY_FEE�ļ۸�
              --�������ҽ��ģ��ļ۸�
            
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
                                        'û���ҵ�' ||
                                        get_sundry_fee_name(c.sundry_feeid) ||
                                        '���ӷ���Ŀ' || c.sundry_feeid ||
                                        '��֪ͨϵͳ����Ա.;');
              when too_many_rows then
                raise_application_error(-20001, '�ҵ������ӷ���Ŀ.;');
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
                                      '��֧�ֵ�ִ�в��ű�־' ||
                                      c.execute_dept_flag || '.;');
            end if;
            prv_ҽ��_��ҩ����_�ӷ�_����(t_sub_order_listid,
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
            prv_ҽ��_��ҽ��_����(t_order_listid,
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
            prv_ҽ��_��ҩ����_����_����(t_sub_order_listid,
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
            prv_ҽ��_��ҽ��_����(t_order_listid,
                                 t_sub_order_listid,
                                 'AUTOFEE');
          end if;
        else
          raise_application_error(-20001,
                                  '��֧�ֵĲ���ҽ��¼�뷽ʽ' ||
                                  c.generate_mode || '.;');
        end if;
      end loop;
    end if;
  end s_ҽ��_��ҽ��_����_����_nc;
  ----------------------------------------------------------------------------
  procedure s_ҽ��_��ҽ��_�ı�_����_nc(in_parent_order_listid in varchar2
                                      ,in_long_flag           in varchar2
                                      ,in_start_date          in varchar2
                                      ,in_start_workerid      in varchar2
                                      ,in_residentid          in varchar2
                                      ,in_type                in varchar2
                                      , -- ҽ������(��ʿҽ����ҽʦҽ��������ҽ������Ժ��ҩ)
                                       in_text                in varchar2
                                      ,out_order_listid       out varchar2) is
    t_order_listid      order_list.id%type;
    t_parent_order_list order_list%rowtype;
    i                   number;
    t_resident_info     resident_info%rowtype;
  begin
    lock_res.lock_ack_ҽ��_����(in_residentid, t_resident_info);
    user_permit.s_ack_ҽ��ȷ��Ȩ;
    verify_length(in_text, 200, '�ı�ҽ��');
  
    if trim(replace(in_text, ' ', null)) in ('���ճ�Ժ', '���ճ�Ժ')
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
                                in_text || 'ҽ���Ѿ�¼�룬�����ظ�¼��.;');
      exception
        when no_data_found then
          null;
      end;
    
      if in_long_flag <> 'B'
      then
        raise_application_error(-20001, in_text || 'ֻ��������ʱҽ��.;');
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
          raise_application_error(-20001, '��ҽ��û���ҵ�.;');
        when others then
          raise_application_error(-20001, '���������ڲ���,���Ժ�����.;');
      end;
      prv_ҽ��_ҽ��_�ı�_����(t_order_listid,
                              t_parent_order_list.long_flag,
                              null, --t_parent_order_list.start_date,
                              t_parent_order_list.start_workerid,
                              t_parent_order_list.ownerid,
                              in_type,
                              in_text);
      prv_ҽ��_��ҽ��_����(in_parent_order_listid, t_order_listid, null);
    else
      prv_ҽ��_ҽ��_�ı�_����(t_order_listid,
                              in_long_flag,
                              in_start_date,
                              in_start_workerid,
                              in_residentid,
                              in_type,
                              in_text);
      prv_ҽ��_��ҽ��_����(t_order_listid, t_order_listid, in_type);
    end if;
    out_order_listid := t_order_listid;
    --�����ҽ����ҽ�������޸�dr_order_list_info
    if in_type in ('DOCTOR', 'OP1')
    then
      s_ҽ������ҽ��nc(in_residentid);
    end if;
  end s_ҽ��_��ҽ��_�ı�_����_nc;
  ---------------------------------------------------------------
  procedure s_ҽ��_ҽ��_����_ȡ��_nc(in_order_listid in varchar2) as
    t_order_list order_list%rowtype;
    i            number;
  begin
    lock_res.lock_ack_ҽ��_����(in_order_listid, t_order_list);
    ol_status.s_ack_ҽ��_¼��_ȡ��(t_order_list);
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
        prv_ҽ��_ҽ��_����_ȡ�����(c.id);
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
            prv_ҽ��_ҽ��_����_ȡ������(c.id);
          end loop;
        else
          prv_ҽ��_ҽ��_����_ȡ������(in_order_listid);
        end if;
    end;
    --����ò�����ҽ��ɾ��ҽ��������
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
          s_ҽ��ȷ�ϴ���ҽ��nc(t_order_list.ownerid);
      end;
    end if;
  
  end s_ҽ��_ҽ��_����_ȡ��_nc;
  ---------------------------------------------------------------
  procedure s_ҽ��_�˶�(in_order_listid in varchar2) is
    t_order_list order_list%rowtype;
  begin
    lock_res.lock_ack_ҽ��_����(in_order_listid, t_order_list);
    ol_status.s_ack_ҽ���˶�(t_order_list);
    update order_list
       set status         = 'NORMAL',
           status1        = 'WAIT_ACC',
           check_workerid = hospital.login.get_workerid,
           check_date     = sysdate,
           this_days      = 0
     where (id = in_order_listid or parentid = in_order_listid);
    s_��ʿ����ҽ��(t_order_list.ownerid);
    commit;
    rabbitmq.publish_ol_message(in_event        => events.ol_check,
                                in_order_listid => in_order_listid);
  end s_ҽ��_�˶�;
  ---------------------------------------------------------------
  procedure s_ҽ��_�˶�_ȡ��(in_order_listid in varchar2) is
    t_order_list order_list%rowtype;
    i            number;
  begin
    lock_res.lock_ack_ҽ��_����(in_order_listid, t_order_list);
    ol_status.s_ack_ҽ���˶�ȡ��(t_order_list);
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
                                  '�����Լ��˶Ե�ҽ��,����ȡ���˶�.;');
      end;
    end if;
  
    if nvl(t_order_list.executed_days, 0) - nvl(t_order_list.skip_days, 0) > 0
       or nvl(t_order_list.this_days, 0) > 0
    then
      raise_application_error(-20001, '��ҽ���Ѿ�����,����ȡ���˶�');
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
  end s_ҽ��_�˶�_ȡ��;
  --------------------------------------------------------------- 
  procedure s_ҽ��_ѡ��(in_id           in varchar2
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
  end s_ҽ��_ѡ��;
  --------------------------------------------------------------- 
  --  ҽ��ѡ���ɾ��ָ����ѡ��ͬʱɾ��2Сʱ��ǰ��ѡ��
  --
  procedure s_ҽ��_ѡ��_ɾ��(in_id in varchar2) is
  begin
    delete from order_list_select where id = in_id;
    delete from order_list_select where update_date < sysdate - 2 / 24;
    commit;
  end s_ҽ��_ѡ��_ɾ��;
  --------------------------------------------------------------- 
  procedure s_ҽ��_�޸�ҽ�����ڱ�־(in_order_listid in varchar2
                                   ,in_long_flag    in varchar2) is
    t_order_list   order_list%rowtype;
    v_sundry_feeid hospital.all_sundry_fee_.id%type;
    t_deptid     hospital.resident_info_.deptid%type;
    i              integer;
  begin
    lock_res.lock_ack_ҽ��_����(in_order_listid, t_order_list);
    if t_order_list.long_flag = in_long_flag
    then
      return;
    end if;
  
    if in_long_flag not in ('A', 'B')
    then
      raise_application_error(-20001,
                              '�������in_long_flagֵ����������A����B.;');
    end if;
    begin
      select 2
        into i
        from hospital.order_list_ a
       where a.id = in_order_listid
         and a.start_date < a.input_date
         and a.long_flag = 'B';
      raise_application_error(-20001, '��¼ҽ���������޸�ҽ����־');
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
                              '�ò����Ѿ��г��ڻ���ҽ��,�����޸ĳ��ڡ���ʱ��־');
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
                              'ҽ���Ѿ�ȷ���������޸ĳ��ڡ���ʱ��־.;');
    end if;
  
    if t_order_list.input_workerid <> hospital.login.get_workerid
    then
      raise_application_error(-20001,
                              '����(' ||
                              get_worker_name(t_order_list.input_workerid) ||
                              ' ��¼���ҽ��,�����ܲ����޸ĳ��ڡ���ʱ��־.;');
    end if;
  
    if t_order_list.long_flag not in ('A', 'B')
    then
      raise_application_error(-20001,
                              '���ǳ��ڻ�����ʱҽ���������޸ĳ��ڡ���ʱ��־.;');
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
        if nvl(get_system_option('�����޸���������ִ���ӷ�ҽ����־'), 'N') = 'Y'
        then
          raise_application_error(-20001,
                                  '�������޸ķǲ��˿���ִ��ҽ����ҽ����־;');
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
  end s_ҽ��_�޸�ҽ�����ڱ�־;
  --------------------------------------------------------------- 
  function get_ҽ��_��Ժ����(in_residentid in varchar2) return date is
    v_out_date date;
  begin
    select max(start_date)
      into v_out_date
      from hospital.order_list
     where ownerid = in_residentid
       and text = '���ճ�Ժ';
  
    if v_out_date is null
    then
      select max(start_date)
        into v_out_date
        from hospital.order_list
       where ownerid = in_residentid
         and text = '���ճ�Ժ';
      v_out_date := v_out_date + 1;
    end if;
  
    if v_out_date is null
    then
      select max(start_date)
        into v_out_date
        from hospital.order_list
       where ownerid = in_residentid
         and text in ('Ȭ����Ժ', '�Զ���Ժ', '��ת��Ժ', '�����Ժ',
              'δ����Ժ', '������Ժ', '��Ժ');
    end if;
  
    if v_out_date is null
    then
      select max(start_date)
        into v_out_date
        from hospital.order_list
       where ownerid = in_residentid
         and text like ('%��Ժ');
    end if;
  
    return v_out_date;
  
  end get_ҽ��_��Ժ����;
  -------------------------------------------------------------- 
  procedure s_ҽ��_Ƥ��ǩ��(in_order_listid     in varchar2
                           ,in_skin_test_result in varchar2
                           ,in_sign_workerid    in varchar2
                           ,in_sign_date        in varchar2) is
    t_order_list    order_list%rowtype;
    v_order_list_id order_list.id%type;
  begin
    lock_res.lock_ack_ҽ��_����(in_order_listid, t_order_list);
    if not (t_order_list.parentid is null or
        t_order_list.id = t_order_list.parentid)
    then
      lock_res.lock_ack_ҽ��_����(t_order_list.parentid, t_order_list);
    end if;
  
    if in_skin_test_result is not null
    then
      verify_field_dict('ORDER_LIST',
                        'SKIN_TEST_RESULT',
                        in_skin_test_result,
                        'Ƥ�Խ��');
    end if;
  
    if not (t_order_list.materialid is not null and
        t_order_list.long_flag = 'B' and
        t_order_list.use_method in ('Ƥ��', '����', 'h', 'ih', 'ps') or
        t_order_list.materialid is null and
        t_order_list.sundry_feeid is null and
        instr(t_order_list.text, '��������') > 0 or
        t_order_list.materialid is null and
        t_order_list.sundry_feeid is null and
        instr(t_order_list.text, '����') > 0)
    then
      raise_application_error(-20001, '����Ƥ��ҽ�������ܽ���Ƥ��ǩ��');
    end if;
  
    if nvl(get_system_option('Ƥ��ҩƷ_¼��Ƥ�Խ��'), 'Y') = 'Y'
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
          raise_application_error(-20001, '��ȷ�ϸ�ҩƷ��Ƥ��ҩƷ!');
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
  
    if nvl(get_system_option('ҽ��Ƥ��_����Ƥ�Ը���'), 'N') = 'N'
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
  end s_ҽ��_Ƥ��ǩ��;
  -------------------------------------------------------------- 
  procedure s_ҽ��_Ƥ��˫ǩ��(in_order_listid     in varchar2
                             ,in_skin_test_result in varchar2
                             ,in_sign_workerid    in varchar2
                             ,in_sign_date        in varchar2) is
    t_order_list  order_list%rowtype;
    v_skin_result order_list.skin_test_result%type;
    v_order_list1 order_list%rowtype;
  begin
    lock_res.lock_ack_ҽ��_����(in_order_listid, t_order_list);
    if not (t_order_list.parentid is null or
        t_order_list.id = t_order_list.parentid)
    then
      lock_res.lock_ack_ҽ��_����(t_order_list.parentid, t_order_list);
    end if;
  
    if in_skin_test_result is not null
    then
      verify_field_dict('ORDER_LIST',
                        'SKIN_TEST_RESULT',
                        in_skin_test_result,
                        'Ƥ�Խ��');
    end if;
  
    if not (t_order_list.materialid is not null and
        t_order_list.long_flag = 'B' and
        t_order_list.use_method in ('Ƥ��', '����', 'h', 'ih', 'ps') or
        t_order_list.materialid is null and
        t_order_list.sundry_feeid is null and
        instr(t_order_list.text, '��������') > 0)
    then
      raise_application_error(-20001, '����Ƥ��ҽ�������ܽ���Ƥ��ǩ��');
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
      raise_application_error(-20001, '��δƤ�ԣ����ܸ���Ƥ�ԣ�');
    end if;
  
    --Ƥ������� 
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
  end s_ҽ��_Ƥ��˫ǩ��;
  -------------------------------------------------------------- 
  procedure s_�޸�ҽ����ʾ�Ʊ�ʶ(in_order_listid in varchar2
                                ,in_light_flag   in varchar2) is
    i number;
  begin
    verify_not_null(in_light_flag, '������ҩ_��ʾ��');
    verify_valid_number(in_light_flag, '������ҩ_��ʾ��');
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
  procedure s_Ƥ��ҩƷ����(in_materialid         in varchar2
                          ,in_compare_materialid in varchar2
                          ,in_remark             in varchar2
                          ,out_id                out varchar2) is
    i    number;
    v_id hospital.skintest_compare.id%type;
  begin
    verify_not_null(in_materialid, 'Ƥ��ҩƷID');
    verify_valid_number(in_compare_materialid, '����Ƥ��ҩƷID');
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
                              'ҩƷ�Ѿ���' ||
                              get_material_name(in_compare_materialid) ||
                              '���ж���.');
    exception
      when no_data_found then
        null;
    end;
    if in_materialid = in_compare_materialid
    then
      raise_application_error(-20001,
                              get_material_name(in_materialid) || ' �� ' ||
                              get_material_name(in_materialid) ||
                              'ΪͬһҩƷ�����ܽ��ж���.');
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
  end s_Ƥ��ҩƷ����;
  ------------------------------------------------------------------------------------------------------------------- 
  procedure s_Ƥ��ҩƷȡ������(in_id in varchar2) is
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
        raise_application_error(-20001, 'û���ҵ���Ӧ��Ƥ��ҩƷ���գ�');
    end;
    delete from skintest_compare_ a where a.id = in_id;
    commit;
  end s_Ƥ��ҩƷȡ������;
  -------------------------------------------------------------------------------------------------------------------
begin
  null;
end ol_input;
/
