create or replace package ol_mhc is

  -- Author  : panglei
  -- Created : 2016/3/18 15:30:38
  -- Purpose : 
  -----------------------------------------------------------------------------------

  function get_order_list_scale(in_residentid in varchar2) return varchar2;
  function get_contrast_sample_type(in_sample_type in varchar2)
    return varchar2;
  function get_resident_gender(in_patientid in varchar2) return varchar2;
  function get_order_list_exec_date(in_id in varchar2) return date;
  function get_order_list_end_date(in_id in varchar2) return date;
  function get_pres_hers_scale(in_id in varchar2, in_status in varchar2)
    return varchar2;
  function get_lis_print_date(in_order_listid in varchar2) return varchar2;
  function get_lis_print_operator(in_order_listid in varchar2)
    return varchar2;
  function get_lis_result(in_id in varchar2) return varchar2;
  function get_lis_finished_date(in_id in varchar2) return varchar2;
  function get_order_list_content(in_id in varchar2) return varchar2;
  function get_order_list_a01_content(in_id in varchar2) return varchar2;
  function get_order_list_content_dosage(in_id in varchar2) return varchar2;
  function get_order_list_content_package(in_id in varchar2) return varchar2;
  function get_allergy_material(in_patientid in varchar2) return varchar2;
  function get_order_list_exec_seq(in_id in varchar2) return varchar2;
  function get_resident_bed(in_residentid in varchar2) return varchar2;
  function get_patrol_num(in_id in varchar2) return varchar2;
  procedure sp_register_pda(in_ownerid     in varchar2,
                            in_url         in varchar2,
                            in_hosp_name   in varchar2,
                            in_hosp_code   in varchar2,
                            in_register_id in varchar2);
  procedure sp_ҽ������_����(in_use_method in varchar2);
  procedure sp_order_list_exec(in_id             in varchar2,
                               in_min_drop_speed in varchar2,
                               in_max_drop_speed in varchar2,
                               in_workerid       in varchar2);
  procedure sp_��������ִ��(in_residentid   in varchar2,
                            in_sundry_feeid in varchar2);
  procedure sp_�걾�ɼ�ִ��(in_id in varchar2, in_workerid in varchar2);

  procedure sp_order_list_exec_ch(in_order_listid in varchar2,
                                  in_workerid     in varchar2);
  procedure sp_ҽ��_�ֶ����(in_id       in varchar2,
                             in_remark   in varchar2,
                             in_workerid in varchar2);
  procedure sp_nurse_beds_binding(in_change_type in varchar2,
                                  in_bedid       in varchar2,
                                  in_deptid      in varchar2,
                                  in_hospid      in varchar2,
                                  in_workerid    in varchar2);

  procedure sp_��ҽ����_ִ��_ȡ��(in_id in varchar2);
  procedure sp_contrast_sample_type(in_sample_type     in varchar2,
                                    in_con_sample_type in varchar2);
  procedure sp_order_list_plan_seq(in_id      in varchar2,
                                   in_seq     in varchar2,
                                   in_transid in varchar2);
  procedure sp_order_list_plan_status(in_id        in varchar2,
                                      in_executeid in varchar2,
                                      in_status    in varchar2,
                                      in_workerid  in varchar2);
  procedure sp_order_list_nurse_task_add(in_sundry_feeid in varchar2,
                                         in_deptid       in varchar2);
  procedure sp_��ҩ����_����(in_prescriptionid in varchar2);
  procedure sp_��ҩ����_��ϸ_����(in_prescription_herbsid in varchar2);
  procedure sp_��ҩ����_��ϸ_��ҩ(in_id in varchar2);
  procedure sp_��ҩ����_��ϸ_���Һ���(in_id in varchar2);
  procedure sp_��ҩ����_��ϸ_���߷�ҩ(in_id in varchar2);
  procedure sp_order_list_dispose_����(in_use_method in varchar2,
                                       in_name       in varchar2);
  procedure sp_order_list_dispose_ɾ��(in_use_method in varchar2);
  procedure sp_keyboard_����(in_data_element in varchar2,
                             in_value        in varchar2,
                             in_type         in varchar2);
  procedure sp_keyboard_ɾ��(in_data_element in varchar2,
                             in_value        in varchar2,
                             in_type         in varchar2);
  procedure sp_ҽ��_ҽ��ִ�мƻ�_����nc(in_order_list       order_list%rowtype,
                                        in_this_account_seq number,
                                        in_this_days        number);
  procedure sp_ҽ��_ҽ��ִ�мƻ�_ȡ��nc(in_order_list       order_list%rowtype,
                                        in_this_account_seq number);
  procedure sp_mn_patrol_����(in_residentid     in varchar2,
                              in_ol_exec_planid in varchar2,
                              in_content        in varchar2,
                              in_type           in varchar2,
                              in_drop_speed     in varchar2,
                              in_workerid       in varchar2,
                              in_deptid         in varchar2);
end ol_mhc;
/
create or replace package body ol_mhc is
  --create sequence seq_mhc start with 1 maxvalue 99999999  cache 10 cycle;
  ------------------------------------------------------------------------------------
  function get_ol_exec_plan_nextid return varchar2 is
    v_id varchar2(14);
  begin
    select to_char(sysdate, 'yyyymm') || lpad(seq_mhc.nextval, 8, '0')
      into v_id
      from dual;
    return v_id;
  end get_ol_exec_plan_nextid;
  ------------------------------------------------------------------------------------
  function get_ol_transfusion_nextid return varchar2 is
    v_id varchar2(14);
  begin
    select to_char(sysdate, 'yyyymm') || lpad(seq_mhc.nextval, 8, '0')
      into v_id
      from dual;
    return v_id;
  end get_ol_transfusion_nextid;
  ------------------------------------------------------------------------------------
  function get_bedid_binding_nextid return varchar2 is
    v_id varchar2(14);
  begin
    select to_char(sysdate, 'yyyymm') || lpad(seq_mhc.nextval, 8, '0')
      into v_id
      from dual;
    return v_id;
  end get_bedid_binding_nextid;
  ------------------------------------------------------------------------------------
  function get_ol_nurse_task_nextid return varchar2 is
    v_id varchar2(14);
  begin
    select to_char(sysdate, 'yyyymm') || lpad(seq_mhc.nextval, 8, '0')
      into v_id
      from dual;
    return v_id;
  end get_ol_nurse_task_nextid;
  ------------------------------------------------------------------------------------
  function get_prescription_herbs_nextid return varchar2 is
    v_id varchar2(14);
  begin
    select to_char(sysdate, 'yyyymm') || lpad(seq_mhc.nextval, 8, '0')
      into v_id
      from dual;
    return v_id;
  end get_prescription_herbs_nextid;
  ------------------------------------------------------------------------------------
  function get_pres_herbs_detail_nextid return varchar2 is
    v_id varchar2(14);
  begin
    select to_char(sysdate, 'yyyymm') || lpad(seq_mhc.nextval, 8, '0')
      into v_id
      from dual;
    return v_id;
  end get_pres_herbs_detail_nextid;
  ------------------------------------------------------------------------------------
  function get_mn_patrol_nextid return varchar2 is
    v_id varchar2(14);
  begin
    select to_char(sysdate, 'yyyymm') || lpad(seq_mhc.nextval, 8, '0')
      into v_id
      from dual;
    return v_id;
  end get_mn_patrol_nextid;
  ------------------------------------------------------------------------------------
  function get_order_list_scale(in_residentid in varchar2) return varchar2 is
    v_order_list_scale varchar2(10);
  begin
    select b.finished || '/' || a.total
      into v_order_list_scale
      from (select count(*) total
              from hospital.order_list_exec_plan_
             where residentid = in_residentid
               and to_char(plan_date, 'YYYY/MM/DD') =
                   to_char(sysdate, 'YYYY/MM/DD')
               and status = 'NORMAL') a,
           (select count(*) finished
              from hospital.order_list_exec_plan_
             where residentid = '00004185'
               and to_char(plan_date, 'YYYY/MM/DD') =
                   to_char(sysdate, 'YYYY/MM/DD')
               and status1 = 'FINISHED') b;
    return v_order_list_scale;
  end get_order_list_scale;
  ------------------------------------------------------------------------------------
  function get_contrast_sample_type(in_sample_type in varchar2)
    return varchar2 is
    v_con_sample_type varchar2(20);
  begin
    select contrast_sample_type
      into v_con_sample_type
      from hospital.contrast_sample_type_
     where sample_type = in_sample_type;
    return v_con_sample_type;
  end get_contrast_sample_type;
  ------------------------------------------------------------------------------------
  function get_resident_gender(in_patientid in varchar2) return varchar2 is
    v_gender varchar2(4);
  begin
    select hospital.get_field_dict_name('PATIENT', 'GENDER', a.gender)
      into v_gender
      from hospital.patient_ a, hospital.resident_patient_ b
     where a.id = b.patientid
       and b.patientid = in_patientid
       and rownum = 1;
    return nvl(v_gender, '');
  end get_resident_gender;
  ------------------------------------------------------------------------------------
  function get_order_list_exec_date(in_id in varchar2) return date is
    v_date date;
  begin
    select a.exec_date
      into v_date
      from hospital.order_list_exec_plan_ a
     where a.id = in_id;
    return v_date;
  end get_order_list_exec_date;
  ------------------------------------------------------------------------------------
  function get_order_list_end_date(in_id in varchar2) return date is
    v_date date;
  begin
    select a.end_date
      into v_date
      from hospital.order_list_exec_plan_ a
     where a.id = in_id;
    return v_date;
  end get_order_list_end_date;
  ------------------------------��ȡ��ҩ������ҩƷ��-------------------------------------------
  function get_pres_hers_scale(in_id in varchar2, in_status in varchar2)
    return varchar2 is
    v_total    varchar2(10);
    v_received varchar2(10);
  begin
    select count(*)
      into v_total
      from hospital.prescription_herbs_detail_
     where prescription_herbsid = in_id;
  
    select count(*)
      into v_received
      from hospital.prescription_herbs_detail_ a
     where prescription_herbsid = in_id
       and a.status = in_status;
  
    return v_received;
  end get_pres_hers_scale;
  ------------------------------��ȡ�����ӡʱ��-------------------------------------
  function get_lis_print_date(in_order_listid in varchar2) return varchar2 is
    v_print_date hospital.ol_barcode_.update_date%type;
  begin
    select a.update_date
      into v_print_date
      from hospital.ol_barcode_ a, hospital.order_list_ b
     where a.order_listid = b.id
       and b.id = in_order_listid
       and rownum = 1;
    return to_char(v_print_date, 'YYYY/MM/DD HH24:MI');
  end get_lis_print_date;
  ------------------------------��ȡ�����ӡ��---------------------------------------
  function get_lis_print_operator(in_order_listid in varchar2)
    return varchar2 is
    v_print_operator varchar2(20);
  begin
    select hospital.get_worker_name(a.operator)
      into v_print_operator
      from hospital.ol_barcode_ a, hospital.order_list_ b
     where a.order_listid = b.id
       and b.id = in_order_listid
       and rownum = 1;
    return v_print_operator;
  end get_lis_print_operator;

  ------------------------------��ȡ���鱨���Ƿ��н��---------------------------------------
  function get_lis_result(in_id in varchar2) return varchar2 is
    v_num varchar2(5);
  begin
    select to_char(count(*))
      into v_num
      from lisif.lis_result
     where test_no = in_id;
    return v_num;
  end get_lis_result;
  ------------------------------��ȡ���鱨�����ʱ��---------------------------------------
  function get_lis_finished_date(in_id in varchar2) return varchar2 is
    v_result varchar2(20);
  begin
    select nvl(to_char(update_date, 'yyyy/mm/dd hh24:mi'), ' ')
      into v_result
      from lisif.lis_result
     where test_no = in_id
       and rownum = 1;
    return v_result;
  end get_lis_finished_date;
  ------------------------------��ȡorder_list_ҽ������--------------------------------------- 
  function get_order_list_content(in_id in varchar2) return varchar2 is
    v_result varchar2(4000);
  begin
    for c in (select nvl2(a.sundry_feeid,
                          hospital.get_sundry_fee_name(a.sundry_feeid) || '<'||a.comment_text||'>',
                          hospital.get_material_name(a.materialid) || ' ' ||
                          a.method ) || a.text ҽ��
                from hospital.order_list a
               where (a.id = in_id or a.parentid = in_id)
               order by a.sequence, a.subseq) loop
      if v_result is not null then
        v_result := v_result || chr(10) || c.ҽ��;
      else
        v_result := c.ҽ��;
      end if;
    end loop;
    return v_result;
  end get_order_list_content;
  ------------------------------��ȡorder_list_a01ҽ������---------------------------------------
  function get_order_list_a01_content(in_id in varchar2) return varchar2 is
    v_result varchar2(4000);
  begin
    for c in (select nvl2(a.sundry_feeid,
                          hospital.get_sundry_fee_name(a.sundry_feeid) || '<'||a.comment_text||'>',
                          hospital.get_material_name(a.materialid) || ' ' ||
                          a.method) || a.text ҽ��
                from hospital.order_list_a01 a
               where (a.id = in_id or a.parentid = in_id)
               order by a.sequence, a.subseq) loop
      if v_result is not null then
        v_result := v_result || chr(10) || c.ҽ��;
      else
        v_result := c.ҽ��;
      end if;
    end loop;
    return v_result;
  end get_order_list_a01_content;
  ------------------------------��ȡҽ�����ݵļ���--------------------------------------- 
  function get_order_list_content_dosage(in_id in varchar2) return varchar2 is
    v_result varchar2(4000);
  begin
    for c in (select a.amount ||
                     nvl2(a.sundry_feeid,
                          hospital.get_sundry_fee_unit(a.sundry_feeid),
                          hospital.get_package_name(a.packageid)) ҽ��
                from hospital.order_list a
               where (a.id = in_id or a.parentid = in_id)
               order by a.sequence, a.subseq) loop
      if v_result is not null then
        v_result := v_result || chr(10) || c.ҽ��;
      else
        v_result := c.ҽ��;
      end if;
    end loop;
    return v_result;
  end get_order_list_content_dosage;

  ------------------------------��ȡҽ�����ݵİ�װ---------------------------------------  
  function get_order_list_content_package(in_id in varchar2) return varchar2 is
    v_result varchar2(4000);
  begin
    for c in (select nvl2(a.packageid,
                          hospital.get_package_description(a.packageid),
                          ' ') ҽ��
                from hospital.order_list a
               where (a.id = in_id or a.parentid = in_id)
               order by a.sequence, a.subseq) loop
      if v_result is not null then
        v_result := v_result || chr(10) || c.ҽ��;
      else
        v_result := c.ҽ��;
      end if;
    end loop;
    return v_result;
  end get_order_list_content_package;

  ------------------------------��ȡ����ҩ��---------------------------------------  
  function get_allergy_material(in_patientid in varchar2) return varchar2 is
    v_result varchar2(4000);
  begin
    for c in (select hospital.get_material_name(materialid) name
                from hospital.allergic_
               where patientid = in_patientid) loop
      if v_result is not null then
        v_result := v_result || ',' || c.name;
      else
        v_result := c.name;
      end if;
    end loop;
    return v_result;
  end get_allergy_material;
  ------------------------------------------------------------------------------------
  function get_order_list_exec_seq(in_id in varchar2) return varchar2 is
    v_seq varchar2(4);
  begin
    select a.execute_seq
      into v_seq
      from hospital.order_list_exec_plan_ a
     where a.id = in_id;
    return v_seq;
  end get_order_list_exec_seq;
  ------------------------------------------------------------------------------------
  function get_resident_bed(in_residentid in varchar2) return varchar2 is
    v_result varchar2(10);
  begin
    select a.resident_info_bedid
      into v_result
      from hospital.resident_patient_ a
     where a.residentid = in_residentid;
    return v_result;
  end get_resident_bed;
  ------------------------------��ȡ��ҺѲ�Ӵ���---------------------------------------
  function get_patrol_num(in_id in varchar2) return varchar2 is
    v_num varchar2(5);
  begin
    select to_char(count(*))
      into v_num
      from hospital.mn_patrol_ a
     where a.order_list_exec_planid = in_id;
    return v_num;
  end get_patrol_num;
  ---------------------ע��ҽԺpda-------------------------------------------------------
  procedure sp_register_pda(in_ownerid     in varchar2,
                            in_url         in varchar2,
                            in_hosp_name   in varchar2,
                            in_hosp_code   in varchar2,
                            in_register_id in varchar2) is
    i number;
  begin
    begin
      select 2
        into i
        from hospital.register_pda_ a
       where a.owner = in_ownerid
         and a.hospital_name = in_hosp_name
         and a.hospital_code = in_hosp_code;
      raise_application_error(-20001,
                              '��ҽԺ�����ѱ�ʹ�ã�����ϵ�Դ�Ƽ���');
    exception
      when no_data_found then
        insert into hospital.register_pda_
          (owner,
           webservice_url,
           hospital_name,
           hospital_code,
           register_id,
           update_date)
        values
          (in_ownerid,
           in_url,
           in_hosp_name,
           in_hosp_code,
           in_register_id,
           sysdate);
    end;
    commit;
  end sp_register_pda;
  ---------------------ҽ����������-------------------------------------------------------
  procedure sp_ҽ������_����(in_use_method in varchar2) is
    i number;
  begin
    insert into hospital.order_list_dispose_
      (use_method, status, input_date)
    values
      (lower(in_use_method), 'ENABLED', sysdate);
    commit;
  end sp_ҽ������_����;
  ------------------------------------------------------------------------------------
  /*
    ����ִ�����͵Ĳ�ͬ��Ӧ�ô��벻ͬ����������
  */
  ------------------------------------------------------------------------------------
  procedure sp_order_list_exec(in_id             in varchar2,
                               in_min_drop_speed in varchar2,
                               in_max_drop_speed in varchar2,
                               in_workerid       in varchar2) is
    v_id                   hospital.order_list_exec_plan_.id%type;
    v_order_list_exec_plan hospital.order_list_exec_plan_%rowtype;
    v_order_list           order_list%rowtype;
    j                      number;
  begin
    begin
      select *
        into v_order_list_exec_plan
        from hospital.order_list_exec_plan_
       where id = in_id;
    
      select *
        into v_order_list
        from hospital.order_list_
       where id = v_order_list_exec_plan.order_listid;
    
      begin
        select 2
          into j
          from hospital.order_list_dispose_
         where status = 'ENABLED'
           and use_method = v_order_list.use_method
           and rownum = 1;
      
        if v_order_list_exec_plan.status1 = 'WAIT_EXEC' or
           v_order_list_exec_plan.status1 = 'PAUSING' then
          begin
            select id
              into v_id
              from hospital.order_list_exec_plan_
             where residentid = v_order_list_exec_plan.residentid
               and status1 = 'TRANSFUSING';
          
            update hospital.order_list_exec_plan_
               set end_date     = sysdate,
                   end_workerid = in_workerid,
                   status1      = 'FINISHED'
             where id = v_id;
          
          exception
            when no_data_found then
              null;
          end;
        
          update hospital.order_list_exec_plan_
             set exec_date      = sysdate,
                 exec_workerid  = in_workerid,
                 status1        = 'TRANSFUSING',
                 min_drop_speed = in_min_drop_speed,
                 max_drop_speed = in_max_drop_speed
           where id = in_id;
        elsif v_order_list_exec_plan.status1 = 'TRANSFUSING' then
          update hospital.order_list_exec_plan_
             set end_date     = sysdate,
                 end_workerid = in_workerid,
                 status1      = 'FINISHED'
           where id = in_id;
        else
          raise_application_error(-20001,
                                  '��ǰҽ����״̬�� ' ||
                                  hospital.get_field_dict_name('ORDER_LIST_EXEC_PLAN',
                                                               'STATUS1',
                                                               v_order_list_exec_plan.status1) ||
                                  ',������ִ�в�����');
        end if;
      exception
        when no_data_found then
          if v_order_list_exec_plan.status1 = 'WAIT_EXEC' then
            update hospital.order_list_exec_plan_
               set exec_date     = sysdate,
                   exec_workerid = in_workerid,
                   status1       = 'FINISHED'
             where id = in_id;
          else
            raise_application_error(-20001,
                                    '��ǰҽ����״̬��' ||
                                    hospital.get_field_dict_name('ORDER_LIST_EXEC_PLAN',
                                                                 'STATUS1',
                                                                 v_order_list_exec_plan.status1) ||
                                    ',���ܲ�����');
          end if;
      end;
    exception
      when no_data_found then
        raise_application_error(-20001, in_id);
    end;
    commit;
  end sp_order_list_exec;
  ------------------------------------------------------------------------------------
  procedure sp_��������ִ��(in_residentid   in varchar2,
                            in_sundry_feeid in varchar2) is
    v_id         hospital.order_list_exec_plan_.id%type;
    v_order_list hospital.order_list_exec_plan_%rowtype;
    t_order_list order_list%rowtype;
  begin
    begin
      select *
        into t_order_list
        from hospital.order_list_
       where ownerid = in_residentid
         and sundry_feeid = in_sundry_feeid
         and status1 = 'WAIT_EXEC'
         and rownum = 1;
    
      begin
        select *
          into v_order_list
          from hospital.order_list_exec_plan_
         where order_listid = t_order_list.id
           and residentid = in_residentid
           and to_char(plan_date, 'YYYY/MM/DD') =
               to_char(sysdate, 'YYYY/MM/DD')
           and rownum = 1;
        update hospital.order_list_exec_plan_
           set exec_date     = sysdate,
               exec_workerid = hospital.login.get_workerid,
               status1       = 'FINISHED'
         where id = v_order_list.id;
        hospital.ol_exec.s_ҽ��_ҽ��_ִ��nc(v_order_list.order_listid);
      exception
        when no_data_found then
          raise_application_error(-20001,
                                  'ûҪ�ҵ����߶�Ӧ�Ļ�������ִ�мƻ���ϸ�����ʵ�Լ��Ĳ�����');
      end;
    
    exception
      when no_data_found then
        raise_application_error(-20001, 'ûҪ�ҵ����߶�Ӧ��ҽ����Ϣ��');
    end;
  
    commit;
  end sp_��������ִ��;
  ------------------------------------------------------------------------------------------------------------- 
  procedure sp_�걾�ɼ�ִ��(in_id in varchar2, in_workerid in varchar2) is
    v_id                   hospital.order_list_exec_plan_.id%type;
    v_order_list_exec_plan hospital.order_list_exec_plan_%rowtype;
    v_ol_barcode           hospital.ol_barcode_%rowtype;
    i                      number;
  begin
    begin
      begin
        select *
          into v_ol_barcode
          from hospital.ol_barcode_
         where id = in_id
           and rownum = 1;
        begin
          select *
            into v_order_list_exec_plan
            from hospital.order_list_exec_plan_ a
           where a.order_listid in (select order_listid
                                      from hospital.ol_barcode_
                                     where id = in_id
                                       and status = 'SAMPLE'
                                       and rownum = 1)
             and a.residentid = v_ol_barcode.residentid;
        exception
          when no_data_found then
            raise_application_error(-20001, 'û���ҵ���Ҫִ�еĲɼ���Ŀ');
        end;
      
        if v_order_list_exec_plan.status1 not in
           ('FINISHED', 'HAND_FINISHED') then
          update hospital.order_list_exec_plan_ a
             set a.end_date     = sysdate,
                 a.end_workerid = in_workerid,
                 a.status1      = 'FINISHED'
           where a.order_listid in
                 (select order_listid
                    from hospital.ol_barcode_
                   where id = in_id
                     and status = 'SAMPLE');
          /*          hospital.barcd.s_����סԺ������Ϣ(in_id,
          to_char(sysdate,
                  'YYYY/mm/dd HH24:mi:ss'),
          in_workerid);*/
        else
          raise_application_error(-20001, '��ǰ״̬����ִ��');
        end if;
      end;
    exception
      when no_data_found then
        raise_application_error(-20001, in_id);
    end;
    commit;
  end sp_�걾�ɼ�ִ��;
  ------------------------------------------------------------------------------------------------------------- 

  ---------------------------------��ҽ����ִ��-------------------------------------------------- 
  procedure sp_order_list_exec_ch(in_order_listid in varchar2,
                                  in_workerid     in varchar2) is
    v_id         hospital.order_list_exec_plan_.id%type;
    v_frequence  hospital.order_list_.frequence%type;
    i            number;
    t_order_list order_list_exec_plan_%rowtype;
  begin
    begin
      select *
        into t_order_list
        from hospital.order_list_exec_plan_
       where id = in_order_listid;
    exception
      when no_data_found then
        raise_application_error(-20001, 'û�в鵽�����ݣ�');
    end;
    if t_order_list.status1 not in ('FINISHED', 'HAND_FINISHED') and
       t_order_list.exec_date is null then
      update hospital.order_list_exec_plan_
         set exec_date     = sysdate,
             exec_workerid = in_workerid,
             status1       = 'WAIT_EXEC'
       where id = in_order_listid;
    elsif t_order_list.status1 = 'WAIT_EXEC' and
          t_order_list.end_date is null then
      update hospital.order_list_exec_plan_
         set status1      = 'FINISHED',
             end_date     = sysdate,
             end_workerid = in_workerid
       where id = in_order_listid;
    else
      raise_application_error(-20001, '�������Ѿ���ɣ�����ȡ��ִ�У�');
    end if;
    commit;
  end sp_order_list_exec_ch;
  ---------------------�ֶ����-------------------------------------------------------
  procedure sp_ҽ��_�ֶ����(in_id       in varchar2,
                             in_remark   in varchar2,
                             in_workerid in varchar2) is
    v_order_list_exec_plan_ hospital.order_list_exec_plan_%rowtype;
    v_status                hospital.order_list_exec_plan_.status1%type;
  begin
    begin
      select status1
        into v_status
        from hospital.order_list_exec_plan_
       where id = in_id;
      if v_status <> 'FINISHED' then
        update hospital.order_list_exec_plan_
           set end_date     = sysdate,
               end_workerid = in_workerid,
               status1      = 'HAND_FINISHED',
               remark       = in_remark
         where id = in_id;
      else
        raise_application_error(-20001, '��ҽ���Ѿ���ɣ����������ֶ����');
      end if;
    exception
      when no_data_found then
        raise_application_error(-20001, 'ִ�е���û�д����ݣ���ˢ�£�');
    end;
    commit;
  end sp_ҽ��_�ֶ����;
  ------------------------- ��λ��-------------------------------------------
  procedure sp_nurse_beds_binding(in_change_type in varchar2,
                                  in_bedid       in varchar2,
                                  in_deptid      in varchar2,
                                  in_hospid      in varchar2,
                                  in_workerid    in varchar2) is
    v_id hospital.nurse_beds_binding_.id%type;
  begin
    --      login.login(in_deptid, in_hospid, in_workerid); 
    if in_change_type = 'I' then
      v_id := get_bedid_binding_nextid;
      insert into hospital.nurse_beds_binding_
        (id, deptid, bedid, workerid, update_date, remark)
      values
        (v_id, in_deptid, in_bedid, in_workerid, sysdate, '');
    elsif in_change_type = 'D' then
      delete from hospital.nurse_beds_binding_
       where bedid = in_bedid
         and deptid = in_deptid
         and workerid = in_workerid;
    end if;
    commit;
  end sp_nurse_beds_binding;
  ---------------------���üƻ��ϲ�-------------------------------------------------------

  ------------------------- ҽ��ִ�мƻ�ȡ��-------------------------------------------
  procedure sp_��ҽ����_ִ��_ȡ��(in_id in varchar2) is
    t_order_list hospital.order_list_exec_plan_%rowtype;
  begin
    begin
      select *
        into t_order_list
        from hospital.order_list_exec_plan_
       where id = in_id;
    exception
      when no_data_found then
        raise_application_error(-20001, 'û�в鵽�����ݣ�');
    end;
    --��ҽ������Ҫִ�����Σ���һ�μ�¼��exec_date,exec_workerid,�ڶ��μ�¼�ڣ�end_date,end_workerid
    -- ȡ��ִ��ʱ��ֻ��ȡ����һ��ִ�еģ�����Ѿ������ģ��Ͳ���ȡ��
    if t_order_list.end_date is null then
      update hospital.order_list_exec_plan_
         set exec_date = null, exec_workerid = null
       where id = in_id;
    else
      raise_application_error(-20001, '�������Ѿ���ɣ�����ȡ��ִ�У�');
    end if;
    commit;
  end sp_��ҽ����_ִ��_ȡ��;
  ------------------------- �������Ͷ���-------------------------------------------
  procedure sp_contrast_sample_type(in_sample_type     in varchar2,
                                    in_con_sample_type in varchar2) is
    i number;
  begin
    begin
      select 2
        into i
        from hospital.contrast_sample_type_
       where sample_type = in_sample_type;
      /*       raise_application_error(-20001, 'ִ�е���û�д����ݣ���ˢ�£�');*/
    exception
      when no_data_found then
        insert into hospital.contrast_sample_type_
          (sample_type,
           contrast_sample_type,
           workerid,
           update_date,
           remark)
        values
          (in_sample_type,
           in_con_sample_type,
           hospital.login.get_workerid,
           sysdate,
           '');
    end;
    commit;
  end sp_contrast_sample_type;
  ------------------------- ҽ����Һ��-------------------------------------------
  procedure prv_order_list_transfusion(in_residentid in varchar2,
                                       in_id         in varchar2,
                                       in_date       in date) is
  begin
    insert into hospital.order_list_transfusion_
      (id, residentid, workerid, input_date, remark, status)
    values
      (in_id,
       in_residentid,
       hospital.login.get_workerid,
       in_date,
       '',
       'WAIT_ACK');
  end prv_order_list_transfusion;

  ------------------------- �޸���Һ����� -------------------------------------------
  procedure sp_order_list_plan_seq(in_id      in varchar2,
                                   in_seq     in varchar2,
                                   in_transid in varchar2) is
  begin
    update hospital.order_list_exec_plan_
       set ol_plan_seq = in_seq, order_list_transfusionid = in_transid
     where id = in_id;
    commit;
  end sp_order_list_plan_seq;

  ------------------------- �޸���Һ��ϸ״̬ -------------------------------------------
  procedure sp_order_list_plan_status(in_id        in varchar2,
                                      in_executeid in varchar2,
                                      in_status    in varchar2,
                                      in_workerid  in varchar2) is
    v_status1              hospital.order_list_exec_plan_.status1%type;
    v_order_list_exec_plan hospital.order_list_exec_plan_%rowtype;
    i                      number;
  begin
    begin
      select status1
        into v_status1
        from hospital.order_list_exec_plan_
       where id = in_id;
    exception
      when no_data_found then
        null;
    end;
  
    if v_status1 = in_status or v_status1 = 'TRANSFUSING' then
      /*      if v_status1 = 'WAIT_DISPENSING' then
      v_status1 := 'WAIT_CHECK';
      begin
        select 2
          into i
          from hospital.order_list_exec_plan_
         where executeid = in_executeid;
        raise_application_error(-20001, '����Һ���Ѿ�ִ�У�');
      exception
        when no_data_found then
          update hospital.order_list_exec_plan_
             set status1             = v_status1,
                 dispensing_date     = sysdate,
                 dispensing_workerid = in_workerid,
                 executeid           = in_executeid
           where id = in_id;
      end;*/
      if v_status1 = 'WAIT_CHECK' then
        v_status1 := 'WAIT_DISPENSATION';
      
        begin
          select *
            into v_order_list_exec_plan
            from hospital.order_list_exec_plan_
           where executeid = in_executeid;
        
          raise_application_error(-20001,
                                  '��ǰҽ���Ѿ������˶ԣ��������ظ�������' ||
                                  '�ƻ�ʱ��:' ||
                                  to_char(v_order_list_exec_plan.plan_date,
                                          'YYYY/MM/DD') ||
                                  '!��˶�Һ��ƿǩ���ڣ�');
        exception
          when no_data_found then
            null;
        end;
      
        update hospital.order_list_exec_plan_
           set status1        = v_status1,
               check_date     = sysdate,
               check_workerid = in_workerid,
               executeid      = in_executeid
         where id = in_id;
      elsif v_status1 = 'WAIT_DISPENSATION' then
        v_status1 := 'WAIT_EXEC';
        update hospital.order_list_exec_plan_
           set status1           = v_status1,
               dispense_date     = sysdate,
               dispense_workerid = in_workerid
         where executeid = in_executeid;
      elsif in_status = 'PAUSING' and v_status1 = 'TRANSFUSING' then
        update hospital.order_list_exec_plan_
           set status1        = 'PAUSING',
               pause_date     = sysdate,
               pause_workerid = in_workerid
         where id = in_id;
      else
        null;
      end if;
    else
      raise_application_error(-20001,
                              '��ǰҽ����״̬��' ||
                              hospital.get_field_dict_name('ORDER_LIST_EXEC_PLAN',
                                                           'STATUS1',
                                                           v_status1) ||
                              ',���ܲ�����');
    end if;
    commit;
  end sp_order_list_plan_status;
  ------------------------- ҽ���������� -------------------------------------------
  procedure sp_order_list_nurse_task_add(in_sundry_feeid in varchar2,
                                         in_deptid       in varchar2) is
    i    number;
    v_id hospital.order_list_nurse_task_.id%type;
  begin
    begin
      select 2
        into i
        from hospital.order_list_nurse_task_
       where sundry_feeid = in_sundry_feeid
         and deptid = in_deptid;
      raise_application_error(-20001, '��ǰ�����������');
    exception
      when no_data_found then
        v_id := get_ol_nurse_task_nextid;
        insert into hospital.order_list_nurse_task_
          (id, sundry_feeid, deptid, workerid, input_date, remark)
        values
          (v_id,
           in_sundry_feeid,
           in_deptid,
           hospital.login.get_workerid,
           sysdate,
           '');
    end;
    commit;
  end sp_order_list_nurse_task_add;
  ------------------------- ��ҩ���� -------------------------------------------
  procedure sp_��ҩ����_����(in_prescriptionid in varchar2) is
    v_id           hospital.prescription_herbs_.id%type;
    v_prescription hospital.prescription_%rowtype;
    i              number;
    n              number;
    m              number;
  begin
    begin
      select 2
        into i
        from hospital.prescription_herbs_
       where prescriptionid = in_prescriptionid;
      raise_application_error(-20001, '�ò�ҩ�����Ѿ����ڣ�');
    exception
      when no_data_found then
        select *
          into v_prescription
          from hospital.prescription_
         where id = in_prescriptionid;
        v_id := get_prescription_herbs_nextid;
        insert into hospital.prescription_herbs_
          (id,
           prescriptionid,
           patientid,
           residentid,
           amount,
           frequence,
           status,
           workerid,
           input_date,
           remark)
        values
          (v_id,
           in_prescriptionid,
           v_prescription.patientid,
           v_prescription.residentid,
           v_prescription.amount,
           3,
           'WAIT_BOIL',
           hospital.login.get_workerid,
           sysdate,
           '');
        n := 0;
        m := v_prescription.amount * 3;
        while n < m loop
          sp_��ҩ����_��ϸ_����(v_id);
          n := n + 1;
        end loop;
    end;
    commit;
  end sp_��ҩ����_����;
  ------------------------- ��ҩ����ִ����ϸ -------------------------------------------
  procedure sp_��ҩ����_��ϸ_����(in_prescription_herbsid in varchar2) is
    v_id                 hospital.prescription_herbs_.id%type;
    v_prescription_herbs hospital.prescription_herbs_%rowtype;
  begin
    begin
      select *
        into v_prescription_herbs
        from hospital.prescription_herbs_
       where id = in_prescription_herbsid;
    end;
    v_id := get_pres_herbs_detail_nextid;
    insert into hospital.prescription_herbs_detail_
      (id,
       prescription_herbsid,
       patientid,
       residentid,
       boil_room_date,
       boil_room_workerid,
       status)
    values
      (v_id,
       in_prescription_herbsid,
       v_prescription_herbs.patientid,
       v_prescription_herbs.residentid,
       sysdate,
       hospital.login.get_workerid,
       'WAIT_BOIL');
    commit;
  end sp_��ҩ����_��ϸ_����;
  ------------------------- ��ҩ����ִ����ϸ_��ҩ -------------------------------------------
  procedure sp_��ҩ����_��ϸ_��ҩ(in_id in varchar2) is
    v_prescription_herbs_detail hospital.prescription_herbs_detail_%rowtype;
  begin
    begin
      select *
        into v_prescription_herbs_detail
        from hospital.prescription_herbs_detail_
       where id = in_id;
      if v_prescription_herbs_detail.status = 'WAIT_BOIL' then
        update hospital.prescription_herbs_detail_ a
           set a.boil_herbs_date     = sysdate,
               a.boil_herbs_workerid = hospital.login.get_workerid,
               a.status              = 'WAIT_CHECK'
         where id = in_id;
      else
        raise_application_error(-20001,
                                '�ò�ҩ����������ϸ״̬��' ||
                                v_prescription_herbs_detail.status ||
                                ',��������ҩ��');
      end if;
    exception
      when no_data_found then
        raise_application_error(-20001, '�ò�ҩ����������ϸ�����ڣ�');
    end;
    commit;
  end sp_��ҩ����_��ϸ_��ҩ;
  ------------------------- ��ҩ����ִ����ϸ_���Һ��� -------------------------------------------
  procedure sp_��ҩ����_��ϸ_���Һ���(in_id in varchar2) is
    v_prescription_herbs_detail hospital.prescription_herbs_detail_%rowtype;
    i                           number;
  begin
    begin
      select *
        into v_prescription_herbs_detail
        from hospital.prescription_herbs_detail_
       where id = in_id;
      if v_prescription_herbs_detail.status = 'WAIT_CHECK' then
        update hospital.prescription_herbs_detail_ a
           set a.dept_check_date     = sysdate,
               a.dept_check_workerid = hospital.login.get_workerid,
               a.status              = 'WAIT_TAKE'
         where id = in_id;
      else
        raise_application_error(-20001,
                                '�ò�ҩ����������ϸ״̬��' ||
                                v_prescription_herbs_detail.status ||
                                ',���������Һ��գ�');
      end if;
    exception
      when no_data_found then
        raise_application_error(-20001, '�ò�ҩ����������ϸ�����ڣ�');
    end;
    commit;
  end sp_��ҩ����_��ϸ_���Һ���;
  ------------------------- ��ҩ����ִ����ϸ_���˷�ҩ -------------------------------------------
  procedure sp_��ҩ����_��ϸ_���߷�ҩ(in_id in varchar2) is
    v_prescription_herbs_detail hospital.prescription_herbs_detail_%rowtype;
  begin
    begin
      select *
        into v_prescription_herbs_detail
        from hospital.prescription_herbs_detail_
       where id = in_id;
      if v_prescription_herbs_detail.status = 'WAIT_TAKE' then
        update hospital.prescription_herbs_detail_ a
           set a.exec_date     = sysdate,
               a.exec_workerid = hospital.login.get_workerid,
               a.status        = 'FINISHED'
         where id = in_id;
      else
        raise_application_error(-20001,
                                '�ò�ҩ����������ϸ״̬��' ||
                                v_prescription_herbs_detail.status ||
                                ',���ܷ�ҩ��');
      end if;
    exception
      when no_data_found then
        raise_application_error(-20001, '�ò�ҩ����������ϸ�����ڣ�');
    end;
    commit;
  end sp_��ҩ����_��ϸ_���߷�ҩ;

  ------------------------- ���üƻ��÷����� -------------------------------------------
  procedure sp_order_list_dispose_����(in_use_method in varchar2,
                                       in_name       in varchar2) is
  begin
    insert into hospital.order_list_dispose_
      (use_method, status, workerid, input_date, use_method_name)
    values
      (in_use_method, 'ENABLED', login.get_workerid, sysdate, in_name);
    commit;
  end sp_order_list_dispose_����;
  ------------------------- ���üƻ��÷�ɾ�� -------------------------------------------
  procedure sp_order_list_dispose_ɾ��(in_use_method in varchar2) is
    i number;
  begin
    begin
      select 2
        into i
        from hospital.order_list_dispose_
       where use_method = in_use_method;
    exception
      when no_data_found then
        raise_application_error(-20001, in_use_method || '�÷�������!');
    end;
  
    delete from hospital.order_list_dispose_
     where use_method = in_use_method;
    commit;
  end sp_order_list_dispose_ɾ��;
  ------------------------- �Զ������ -------------------------------------------
  procedure sp_keyboard_����(in_data_element in varchar2,
                             in_value        in varchar2,
                             in_type         in varchar2) is
    v_seq number;
  begin
    begin
      select max(seq)
        into v_seq
        from hospital.mhc_keyboard_values_
       where data_element = in_data_element
         and type = in_type
       group by data_element;
      v_seq := v_seq + 1;
    exception
      when no_data_found then
        v_seq := 1;
    end;
    insert into hospital.mhc_keyboard_values_
      (data_element, data_value, type, seq, workerid, update_date, status)
    values
      (in_data_element,
       in_value,
       in_type,
       v_seq,
       login.get_workerid,
       sysdate,
       'ENABLED');
    commit;
  end sp_keyboard_����;
  ------------------------- �Զ������_ɾ�� -------------------------------------------
  procedure sp_keyboard_ɾ��(in_data_element in varchar2,
                             in_value        in varchar2,
                             in_type         in varchar2) is
    i number;
  begin
    begin
      select 2
        into i
        from hospital.mhc_keyboard_values_
       where data_element = in_data_element
         and data_value = in_value
         and type = in_type;
    exception
      when no_data_found then
        raise_application_error(-20001, '�����������ݲ����ڣ�');
    end;
  
    delete from hospital.mhc_keyboard_values_
     where data_element = in_data_element
       and data_value = in_value
       and type = in_type;
    commit;
  end sp_keyboard_ɾ��;
  ------------------------- ҽ��ִ�мƻ�_���� -------------------------------------------
  procedure sp_ҽ��_ҽ��ִ�мƻ�_����nc(in_order_list       order_list%rowtype,
                                        in_this_account_seq number,
                                        in_this_days        number) is
    j                  number;
    i                  number;
    n                  number;
    v_date             date;
    t_find             varchar2(1);
    t_use_method       order_list.use_method%type;
    v_status1          order_list_exec_plan_.status1%type;
    t_order_list_trans order_list_transfusion_%rowtype;
    v_id               hospital.order_list_exec_plan_.id%type;
    v_transid          hospital.order_list_transfusion_.id%type;
  begin
    --�鿴�ƶ�����ϵͳ�Ƿ����� N:û���� null:û���� ID:�����ƶ�����ϵͳ
    t_find := nvl(hospital.get_system_option('�����ƶ�����ϵͳ'), 'N');
    if t_find = 'N' then
      return;
    end if;
  
    -- ֻ�ܲ��븸ҽ��id���������ҽ�����Զ�����
    if not (in_order_list.id = in_order_list.parentid or
        in_order_list.parentid is null) then
      return;
    end if;
  
    if in_order_list.type = 'OP2' or in_order_list.price = 0 then
      return;
    end if;
    v_date := in_order_list.ack_date + nvl(in_order_list.executed_days, 0);
    /*    raise_application_error(-20001, in_this_days);*/
    /*-�Ƿ������÷����ñ��е��÷� 
       1.���ڣ���ҽ��״̬Ϊ����ҩ  
       2.�����ڣ���ҽ��״̬Ϊ��ִ��
    --*/
  
    n := 0;
    while n < in_this_days loop
      begin
        select 2
          into j
          from hospital.order_list_dispose_ --ҽ���÷����ñ�
         where status = 'ENABLED'
           and use_method = in_order_list.use_method
           and rownum = 1;
        begin
          select a.id
            into v_transid
            from hospital.order_list_transfusion_ a,
                 hospital.order_list_             o,
                 hospital.order_list_exec_plan_   b
           where a.residentid = in_order_list.ownerid
             and a.input_date > trunc(v_date)
             and a.input_date < trunc(v_date) + 1
             and a.id = b.order_list_transfusionid
             and o.id = b.order_listid
             and b.order_list_transfusionid is not null
             and o.use_method = in_order_list.use_method
             and rownum = 1;
        exception
          when no_data_found then
            begin
              -- ��ѯ�˻��ߵ���Һ�ܱ��Ƿ��п�����
              select a.id
                into v_transid
                from hospital.order_list_transfusion_ a,
                     hospital.order_list_exec_plan_   b
               where a.residentid = in_order_list.ownerid
                 and a.input_date > trunc(v_date)
                 and a.input_date < trunc(v_date) + 1
                 and a.id = b.order_list_transfusionid(+)
                 and rownum = 1;
              -- ������ݺ���Ҫ�����жϣ��ӱ����Ƿ������ݴ��ڣ��У����´���id���ޣ�ʹ��id
              begin
                select 2
                  into j
                  from hospital.order_list_exec_plan_ a
                 where a.order_list_transfusionid = v_transid
                   and rownum = 1;
              
                v_transid := get_ol_transfusion_nextid;
                --��Һ�ƻ��ܱ��в���һ������
                prv_order_list_transfusion(in_order_list.ownerid,
                                           v_transid,
                                           v_date);
              exception
                when no_data_found then
                  null;
              end;
            exception
              when no_data_found then
                v_transid := get_ol_transfusion_nextid;
                --��Һ�ƻ��ܱ��в���һ������
                prv_order_list_transfusion(in_order_list.ownerid,
                                           v_transid,
                                           v_date);
            end;
        end;
        v_status1 := 'WAIT_CHECK';
      exception
        when no_data_found then
          v_transid := null;
          v_status1 := 'WAIT_EXEC';
      end;
      -- ����Ƶ��ȷ����Ҫ�����������
      i := 1;
      while i <= nvl(in_order_list.frequence, 1) loop
        v_id := get_ol_exec_plan_nextid;
        insert into hospital.order_list_exec_plan_
          (id,
           order_listid,
           residentid,
           execute_seq,
           plan_date,
           workerid,
           input_date,
           status,
           status1,
           order_list_transfusionid,
           this_account_seq)
        values
          (v_id,
           in_order_list.id,
           in_order_list.ownerid,
           i,
           v_date,
           hospital.login.get_workerid,
           sysdate,
           'NORMAL',
           v_status1,
           v_transid,
           in_this_account_seq);
        i := i + 1;
      end loop;
      n      := n + 1;
      v_date := v_date + 1;
    end loop;
  end sp_ҽ��_ҽ��ִ�мƻ�_����nc;
  ------------------------- ҽ��ִ�мƻ�_ȡ�� -------------------------------------------
  procedure sp_ҽ��_ҽ��ִ�мƻ�_ȡ��nc(in_order_list       order_list%rowtype,
                                        in_this_account_seq number) is
  begin
    delete from hospital.order_list_exec_plan_
     where order_listid = in_order_list.id
       and this_account_seq = in_this_account_seq;
  end sp_ҽ��_ҽ��ִ�мƻ�_ȡ��nc;
  ------------------------- �ճ�Ѳ�Ӽ�¼��ʼ����� -------------------------------------------
  procedure prv_mn_patrol_��ʼ�����nc(in_content  in varchar2,
                                       in_type     in varchar2,
                                       in_workerid in varchar2,
                                       in_deptid   in varchar2) is
    v_id hospital.mn_patrol_.id%type;
  begin
    v_id := get_mn_patrol_nextid;
    insert into hospital.mn_patrol_
      (id, content, type, workerid, deptid, input_date)
    values
      (v_id, in_content, in_type, in_workerid, in_deptid, sysdate);
      commit;
  end prv_mn_patrol_��ʼ�����nc;
  ------------------------- Ѳ�� -------------------------------------------
  procedure prv_mn_patrol_����(in_residentid     in varchar2,
                               in_ol_exec_planid in varchar2,
                               in_content        in varchar2,
                               in_type           in varchar2,
                               in_drop_speed     in varchar2,
                               in_workerid       in varchar2,
                               in_deptid         in varchar2) is
    v_id hospital.mn_patrol_.id%type;
  begin
    v_id := get_mn_patrol_nextid;
    insert into hospital.mn_patrol_
      (id,
       residentid,
       order_list_exec_planid,
       content,
       type,
       drop_speed,
       workerid,
       deptid,
       input_date)
    values
      (v_id,
       in_residentid,
       in_ol_exec_planid,
       in_content,
       in_type,
       in_drop_speed,
       in_workerid,
       in_deptid,
       sysdate);
  end prv_mn_patrol_����;
  ------------------------- Ѳ�ӱ� -------------------------------------------
  procedure sp_mn_patrol_����(in_residentid     in varchar2,
                              in_ol_exec_planid in varchar2,
                              in_content        in varchar2,
                              in_type           in varchar2,
                              in_drop_speed     in varchar2,
                              in_workerid       in varchar2,
                              in_deptid         in varchar2) is
    v_date date;
    v_type hospital.mn_patrol_.type%type;
  begin
    if in_type = '02' then
      prv_mn_patrol_����(in_residentid,
                         in_ol_exec_planid,
                         in_content,
                         in_type,
                         in_drop_speed,
                         in_workerid,
                         in_deptid);
    else
      begin
        select max(input_date)
          into v_date
          from hospital.mn_patrol_
         where input_date <= sysdate
           and deptid = in_deptid
           and type not in ('01', '02');
      
        if v_date is not null then
          begin
            select type
              into v_type
              from hospital.mn_patrol_
             where input_date = v_date
               and deptid = in_deptid
               and type not in ('01', '02');
          exception
            when no_data_found then
              null;
          end;
        end if;
      
        if in_type = '04' then
          if v_type = '03' then
            prv_mn_patrol_��ʼ�����nc('����Ѳ��',
                                       '04',
                                       in_workerid,
                                       in_deptid);
            return;
          else
            raise_application_error(-20001,
                                    'δ��ʼѲ�ӣ�������������Ѳ�Ӳ�����');
          end if;
        end if;
      
        if v_type = '04' or v_type is null then
          prv_mn_patrol_��ʼ�����nc('��ʼѲ��',
                                     '03',
                                     in_workerid,
                                     in_deptid);
        end if;
      exception
        when no_data_found then
          prv_mn_patrol_��ʼ�����nc('��ʼѲ��',
                                     '03',
                                     in_workerid,
                                     in_deptid);
      end;
      prv_mn_patrol_����(in_residentid,
                         in_ol_exec_planid,
                         in_content,
                         in_type,
                         in_drop_speed,
                         in_workerid,
                         in_deptid);
    end if;
    commit;
  end sp_mn_patrol_����;
  --------------------------------------------------------------------
end ol_mhc;
/
