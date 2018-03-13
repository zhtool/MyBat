create or replace package pck_kb is

  procedure s_֪ʶ�������½�(in_id        in varchar2,
                             in_name      in varchar2,
                             in_hosp_id   in varchar2,
                             in_dept_id   in varchar2,
                             in_worker_id in varchar2);
  procedure s_֪ʶ����Ŀ�½�(in_class_id  in varchar2,
                             in_parent_id in varchar2,
                             in_name      in varchar2,
                             in_hosp_id   in varchar2,
                             in_dept_id   in varchar2,
                             in_worker_id in varchar2);
  procedure s_֪ʶ����Ŀ�޸�(in_class_id  in varchar2,
                             in_id        in varchar2,
                             in_name      in varchar2,
                             in_hosp_id   in varchar2,
                             in_dept_id   in varchar2,
                             in_worker_id in varchar2);
  procedure s_֪ʶ����Ŀɾ��(in_class_id  in varchar2,
                             in_id        in varchar2,
                             parent_name  out varchar2,
                             in_hosp_id   in varchar2,
                             in_dept_id   in varchar2,
                             in_worker_id in varchar2);
  procedure s_֪ʶ����Ŀ�����޸�(in_class_id  in varchar2,
                                 in_id        in varchar2,
                                 in_content   in varchar2,
                                 in_hosp_id   in varchar2,
                                 in_dept_id   in varchar2,
                                 in_worker_id in varchar2);
  procedure s_֪ʶ�������޸�(in_id        in varchar2,
                             in_name      in varchar2,
                             in_hosp_id   in varchar2,
                             in_dept_id   in varchar2,
                             in_worker_id in varchar2);
  procedure s_֪ʶ������ɾ��(in_id        in varchar2,
                             in_hosp_id   in varchar2,
                             in_dept_id   in varchar2,
                             in_worker_id in varchar2);
end PCK_KB;
/
create or replace package body PCK_KB is

  procedure s_֪ʶ�������½�(in_id        in varchar2,
                             in_name      in varchar2,
                             in_hosp_id   in varchar2,
                             in_dept_id   in varchar2,
                             in_worker_id in varchar2) is
    i number(2);
  begin
    hsemr.pck_ec.his_login(in_hosp_id, in_dept_id, in_worker_id);
    begin
      select 2
        into i
        from hsemr.knowledge_base_class_ a
       where a.name = in_name;
      raise_application_error(-20001, 'ͬ�������Ѵ��ڣ�');
    exception
      when no_data_found then
        null;
    end;
    insert into hsemr.knowledge_base_class_
      (id, name)
    values
      (in_id, in_name);
    commit;
  end s_֪ʶ�������½�;

  procedure s_֪ʶ�������޸�(in_id        in varchar2,
                             in_name      in varchar2,
                             in_hosp_id   in varchar2,
                             in_dept_id   in varchar2,
                             in_worker_id in varchar2) is
    i number(2);
  begin
    hsemr.pck_ec.his_login(in_hosp_id, in_dept_id, in_worker_id);
    begin
      select 2
        into i
        from hsemr.knowledge_base_class_ a
       where a.name = in_name
         and a.id <> in_id;
      raise_application_error(-20001, 'ͬ�������Ѵ��ڣ�');
    exception
      when no_data_found then
        null;
    end;
    update hsemr.knowledge_base_class_ a
       set a.name = in_name
     where a.id = in_id;
    commit;
  end s_֪ʶ�������޸�;

  procedure s_֪ʶ������ɾ��(in_id        in varchar2,
                             in_hosp_id   in varchar2,
                             in_dept_id   in varchar2,
                             in_worker_id in varchar2) is
    i number(2);
  begin
    hsemr.pck_ec.his_login(in_hosp_id, in_dept_id, in_worker_id);
    begin
      select 2
        into i
        from hsemr.knowledge_base_ a
       where a.knowledge_base_class_id = in_id
         and rownum = 1;
      raise_application_error(-20001, '���������Ѵ�����Ŀ��');
    exception
      when no_data_found then
        null;
    end;
    delete from hsemr.knowledge_base_class_ a where a.id = in_id;
    commit;
  end s_֪ʶ������ɾ��;

  procedure s_֪ʶ����Ŀ�½�(in_class_id  in varchar2,
                             in_parent_id in varchar2,
                             in_name      in varchar2,
                             in_hosp_id   in varchar2,
                             in_dept_id   in varchar2,
                             in_worker_id in varchar2) is
    i           number(10);
  begin
    hsemr.pck_ec.his_login(in_hosp_id, in_dept_id, in_worker_id);
    begin
      select 2
        into i
        from hsemr.knowledge_base_ a
       where a.item_name = in_name
         and a.knowledge_base_class_id = in_class_id;
      raise_application_error(-20001, 'ͬ����Ŀ�Ѵ��ڣ�');
    exception
      when no_data_found then
        null;
    end;
  
    select nvl(max(a.item_id), 0) + 1
      into i
      from hsemr.knowledge_base_ a
     where a.knowledge_base_class_id = in_class_id;
  
    insert into hsemr.knowledge_base_
      (knowledge_base_class_id,
       item_id,
       item_name,
       parent_id,
       pym,
       show_order)
    values
      (in_class_id, i, in_name, in_parent_id, hsemr.get_pinyin(in_name), i);
  
    insert into hsemr.knowledge_base_content_
      (item_content, knowledge_base_item_id, knowledge_base_class_id,update_date)
    values
      (null, i, in_class_id,sysdate);
  
    commit;
  end s_֪ʶ����Ŀ�½�;

  procedure s_֪ʶ����Ŀ�޸�(in_class_id  in varchar2,
                             in_id        in varchar2,
                             in_name      in varchar2,
                             in_hosp_id   in varchar2,
                             in_dept_id   in varchar2,
                             in_worker_id in varchar2) is
    i number(2);
  begin
    hsemr.pck_ec.his_login(in_hosp_id, in_dept_id, in_worker_id);
    begin
      select 2
        into i
        from hsemr.knowledge_base_ a
       where a.item_name = in_name
         and a.knowledge_base_class_id = in_class_id
         and a.item_id <> in_id;
      raise_application_error(-20001, 'ͬ����Ŀ�Ѵ��ڣ�');
    exception
      when no_data_found then
        null;
    end;
    update hsemr.knowledge_base_ a
       set a.item_name = in_name
     where a.knowledge_base_class_id = in_class_id
       and a.item_id = in_id;
  
    commit;
  end s_֪ʶ����Ŀ�޸�;

  procedure s_֪ʶ����Ŀɾ��(in_class_id  in varchar2,
                             in_id        in varchar2,
                             parent_name  out varchar2,
                             in_hosp_id   in varchar2,
                             in_dept_id   in varchar2,
                             in_worker_id in varchar2) is
    i        number(2);
    parentid hsemr.knowledge_base_.item_id%type;
  begin
    hsemr.pck_ec.his_login(in_hosp_id, in_dept_id, in_worker_id);
    begin
      select 2
        into i
        from hsemr.knowledge_base_ a
       where a.parent_id = in_id
         and a.knowledge_base_class_id = in_class_id
         and rownum = 1;
      raise_application_error(-20001, '����ɾ������Ŀ��');
    exception
      when no_data_found then
        null;
    end;
    select a.parent_id
      into parentid
      from hsemr.knowledge_base_ a
     where a.item_id = in_id
       and a.knowledge_base_class_id = in_class_id;
    begin
      select a.item_name
        into parent_name
        from hsemr.knowledge_base_ a
       where a.item_id = parentid
         and a.knowledge_base_class_id = in_class_id;
    exception
      when no_data_found then
        parent_name := '��';
    end;
    delete from hsemr.knowledge_base_ a
     where a.item_id = in_id
       and a.knowledge_base_class_id = in_class_id;
    delete from hsemr.knowledge_base_content_ a
     where a.knowledge_base_item_id = in_id
       and a.knowledge_base_class_id = in_class_id;
  
    commit;
  end s_֪ʶ����Ŀɾ��;

  procedure s_֪ʶ����Ŀ�����޸�(in_class_id  in varchar2,
                                 in_id        in varchar2,
                                 in_content   in varchar2,
                                 in_hosp_id   in varchar2,
                                 in_dept_id   in varchar2,
                                 in_worker_id in varchar2) is
    i number(2);
  begin
    hsemr.pck_ec.his_login(in_hosp_id, in_dept_id, in_worker_id);
    begin
      select 2
        into i
        from hsemr.knowledge_base_ a
       where a.knowledge_base_class_id = in_class_id
         and a.parent_id = in_id
         and rownum = 1;
      raise_application_error(-20001, '����һ�����࣬����Ҫ��ϸ���ܣ�');
    exception
      when no_data_found then
        null;
    end;
    begin
      select 2
        into i
        from hsemr.knowledge_base_content_ a
       where a.knowledge_base_item_id = in_id
         and a.knowledge_base_class_id = in_class_id;
    exception
      when no_data_found then
        insert into hsemr.knowledge_base_content_
          (item_content, knowledge_base_item_id, knowledge_base_class_id,update_date)
        values
          ('', in_id, in_class_id,sysdate);
    end;
    update hsemr.knowledge_base_content_ a
       set a.item_content = null,
           update_date = sysdate
     where a.knowledge_base_class_id = in_class_id
       and a.knowledge_base_item_id = in_id;
    commit;
  end s_֪ʶ����Ŀ�����޸�;

begin
  null;
end PCK_KB;
/
