create or replace package pck_kb is

  procedure s_知识库类型新建(in_id        in varchar2,
                             in_name      in varchar2,
                             in_hosp_id   in varchar2,
                             in_dept_id   in varchar2,
                             in_worker_id in varchar2);
  procedure s_知识库项目新建(in_class_id  in varchar2,
                             in_parent_id in varchar2,
                             in_name      in varchar2,
                             in_hosp_id   in varchar2,
                             in_dept_id   in varchar2,
                             in_worker_id in varchar2);
  procedure s_知识库项目修改(in_class_id  in varchar2,
                             in_id        in varchar2,
                             in_name      in varchar2,
                             in_hosp_id   in varchar2,
                             in_dept_id   in varchar2,
                             in_worker_id in varchar2);
  procedure s_知识库项目删除(in_class_id  in varchar2,
                             in_id        in varchar2,
                             parent_name  out varchar2,
                             in_hosp_id   in varchar2,
                             in_dept_id   in varchar2,
                             in_worker_id in varchar2);
  procedure s_知识库项目内容修改(in_class_id  in varchar2,
                                 in_id        in varchar2,
                                 in_content   in varchar2,
                                 in_hosp_id   in varchar2,
                                 in_dept_id   in varchar2,
                                 in_worker_id in varchar2);
  procedure s_知识库类型修改(in_id        in varchar2,
                             in_name      in varchar2,
                             in_hosp_id   in varchar2,
                             in_dept_id   in varchar2,
                             in_worker_id in varchar2);
  procedure s_知识库类型删除(in_id        in varchar2,
                             in_hosp_id   in varchar2,
                             in_dept_id   in varchar2,
                             in_worker_id in varchar2);
end PCK_KB;
/
create or replace package body PCK_KB is

  procedure s_知识库类型新建(in_id        in varchar2,
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
      raise_application_error(-20001, '同名类型已存在！');
    exception
      when no_data_found then
        null;
    end;
    insert into hsemr.knowledge_base_class_
      (id, name)
    values
      (in_id, in_name);
    commit;
  end s_知识库类型新建;

  procedure s_知识库类型修改(in_id        in varchar2,
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
      raise_application_error(-20001, '同名类型已存在！');
    exception
      when no_data_found then
        null;
    end;
    update hsemr.knowledge_base_class_ a
       set a.name = in_name
     where a.id = in_id;
    commit;
  end s_知识库类型修改;

  procedure s_知识库类型删除(in_id        in varchar2,
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
      raise_application_error(-20001, '该类型下已存在项目！');
    exception
      when no_data_found then
        null;
    end;
    delete from hsemr.knowledge_base_class_ a where a.id = in_id;
    commit;
  end s_知识库类型删除;

  procedure s_知识库项目新建(in_class_id  in varchar2,
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
      raise_application_error(-20001, '同名项目已存在！');
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
  end s_知识库项目新建;

  procedure s_知识库项目修改(in_class_id  in varchar2,
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
      raise_application_error(-20001, '同名项目已存在！');
    exception
      when no_data_found then
        null;
    end;
    update hsemr.knowledge_base_ a
       set a.item_name = in_name
     where a.knowledge_base_class_id = in_class_id
       and a.item_id = in_id;
  
    commit;
  end s_知识库项目修改;

  procedure s_知识库项目删除(in_class_id  in varchar2,
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
      raise_application_error(-20001, '请先删除子项目！');
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
        parent_name := '空';
    end;
    delete from hsemr.knowledge_base_ a
     where a.item_id = in_id
       and a.knowledge_base_class_id = in_class_id;
    delete from hsemr.knowledge_base_content_ a
     where a.knowledge_base_item_id = in_id
       and a.knowledge_base_class_id = in_class_id;
  
    commit;
  end s_知识库项目删除;

  procedure s_知识库项目内容修改(in_class_id  in varchar2,
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
      raise_application_error(-20001, '这是一个父类，不需要明细介绍！');
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
  end s_知识库项目内容修改;

begin
  null;
end PCK_KB;
/
