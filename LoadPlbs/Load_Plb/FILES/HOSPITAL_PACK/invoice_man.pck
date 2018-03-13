create or replace package hospital.invoice_man is

  -- Author  : ADMINISTRATOR
  -- Created : 2006/06/07 21:43:50
  -- Purpose : ��Ʊ����
  --2011/04/15: ZH �������º���
  -- s_get_סԺ��Ʊ�š�s_get_סԺ��Ʊ�š�s_get_סԺ��Ʊ����s_get_סԺ��Ʊ��
  -- Public type declarations
  procedure s_��Ʊ����(in_workerid   in varchar2
                  ,in_type       in varchar2
                  ,in_from_no    in varchar2
                  ,in_to_no      in varchar2
                  ,in_billreg    in varchar2
                  ,in_billlength in varchar2
                  ,out_id        out varchar2);
  procedure s_��Ʊ����_ȷ��(in_id in varchar2);
  procedure s_��Ʊ�黹(in_workerid   in varchar2
                  ,in_type       in varchar2
                  ,in_from_no    in varchar2
                  ,in_to_no      in varchar2
                  ,in_billreg    in varchar2
                  ,in_billlength in varchar2
                  ,out_id        out varchar2);
  procedure s_��Ʊ�黹_ȷ��(in_id in varchar2);
  procedure s_��Ʊɾ��(in_id in varchar2);
  procedure s_��Ʊ����(in_type       in varchar2
                  ,in_invoice_no in varchar2
                  ,in_workerid   in varchar2
                  ,in_reason     in varchar2);
  procedure s_��Ʊ_����(in_type     in varchar2
                   ,in_to_no    in varchar2
                   ,in_workerid in varchar2
                   ,in_reason   in varchar2);
  procedure s_�޸����÷�Ʊ��¼(in_id         in varchar2
                      ,in_to_no      in varchar2
                      ,in_billreg    in varchar2
                      ,in_billlength in varchar2);

  procedure s_���ô�ӡ�Ŷ�(in_type      in varchar2
                    ,in_invoiceid in varchar2
                    ,in_remark    in varchar2 default null);

  function s_��ȡ��һ����Ʊ��(in_type     in varchar2
                     ,in_workerid in varchar2 default null) return integer;
  function s_��ȡʣ�෢Ʊ��(in_type     in varchar2
                    ,in_workerid in varchar2 default null) return integer;
  procedure s_ʹ�÷�Ʊ(in_type      in varchar2
                  ,out_print_no out varchar2);
  procedure s_ע��ʹ�úŶ�(in_type      in varchar2
                    ,in_invoiceid in varchar2);

  function s_get_���﷢Ʊ��(in_fee_workerid in varchar2
                      ,in_from_date    in date
                      ,in_to_date      in date) return varchar2;
  function s_get_������Ʊ��(in_fee_workerid in varchar2
                      ,in_from_date    in date
                      ,in_to_date      in date) return varchar2;
  function s_get_���﷢Ʊ��(in_fee_workerid in varchar2
                      ,in_from_date    in date
                      ,in_to_date      in date) return number;
  function s_get_������Ʊ��(in_fee_workerid in varchar2
                      ,in_from_date    in date
                      ,in_to_date      in date) return number;
  function s_get_�к����﷢Ʊ��(in_fee_workerid in varchar2
                        ,in_from_date    in date
                        ,in_to_date      in date) return number;
  function s_get_�к�������Ʊ��(in_fee_workerid in varchar2
                        ,in_from_date    in date
                        ,in_to_date      in date) return number;
  function s_get_�޺����﷢Ʊ��(in_fee_workerid in varchar2
                        ,in_from_date    in date
                        ,in_to_date      in date) return number;
  function s_get_�޺�������Ʊ��(in_fee_workerid in varchar2
                        ,in_from_date    in date
                        ,in_to_date      in date) return number;

  function s_get_�շ�ԱԤ����Ʊ��(in_fee_workerid in varchar2
                         ,in_from_date    in date
                         ,in_to_date      in date) return varchar2;

  function s_get_�շ�ԱԤ����Ʊ��(in_fee_workerid in varchar2
                         ,in_from_date    in date
                         ,in_to_date      in date) return number;

  function s_get_�շ�Ա��Ԥ����Ʊ��(in_fee_workerid in varchar2
                          ,in_from_date    in date
                          ,in_to_date      in date) return varchar2;

  function s_get_�շ�Ա��Ԥ����Ʊ��(in_fee_workerid in varchar2
                          ,in_from_date    in date
                          ,in_to_date      in date) return number;

  function s_get_ȫԺԤ����Ʊ��(in_from_date in date
                        ,in_to_date   in date) return varchar2;

  function s_get_ȫԺԤ����Ʊ��(in_from_date in date
                        ,in_to_date   in date) return number;

  function s_get_ȫԺ��Ԥ����Ʊ��(in_from_date in date
                         ,in_to_date   in date) return varchar2;

  function s_get_ȫԺ��Ԥ����Ʊ��(in_from_date in date
                         ,in_to_date   in date) return number;
  procedure s_ʹ��סԺ��Ʊ(in_type       in varchar2
                    ,in_action     in varchar2 default 'PRINT'
                    ,in_residentid in varchar2
                    ,in_invoice_no in varchar2 default null
                    ,in_printed    in varchar2);
  function s_��Ʊ��ӡ_��ȡסԺ��Ʊ��(in_residentid in varchar2) return varchar2;
  function s_get_סԺ��Ʊ��(in_fee_workerid in varchar2
                      ,in_from_date    in date
                      ,in_to_date      in date) return varchar2;
  function s_get_סԺ��Ʊ��(in_fee_workerid in varchar2
                      ,in_from_date    in date
                      ,in_to_date      in date) return varchar2;
  function s_get_סԺ��Ʊ��(in_fee_workerid in varchar2
                      ,in_from_date    in date
                      ,in_to_date      in date) return number;
  function s_get_סԺ��Ʊ��(in_fee_workerid in varchar2
                      ,in_from_date    in date
                      ,in_to_date      in date) return number;
  --�����ǽ�������������Ԥ����ҵ�񣬼��д�ӡ���﷢Ʊ�������  
  procedure s_�ϲ���ӡ���﷢Ʊ_�����ӡ(in_from_date  in varchar2
                           ,in_to_date    in varchar2
                           ,in_attribute  in varchar2
                           ,out_ticket_no out varchar2);
  procedure s_�ϲ���ӡ���﷢Ʊ_ɾ����Ʊ(in_ticket_no in varchar2);
  procedure s_�ϲ���ӡ���﷢Ʊ_���е���(in_patientid  in varchar2
                           ,in_attribute  in varchar2
                           ,out_ticket_no out varchar2);
  procedure s_�ϲ���ӡ���﷢Ʊ_�½�����(in_patientid    in varchar2
                           ,in_attribute    in varchar2
                           ,in_content_type in varchar2
                           ,out_ticket_no   out varchar2);
  procedure s_�ϲ���ӡ���﷢Ʊ_������ϸ(in_ticket_no     in varchar2
                           ,in_charge_billid in varchar2
                           ,in_print_num     in integer default 1);
  procedure s_�ϲ���ӡ���﷢Ʊ_����ɾ��(in_ticket_no     in varchar2
                           ,in_charge_billid in varchar2);
  procedure s_�ϲ���ӡ���﷢Ʊ_�ύ(in_ticket_no in varchar2);
  procedure s_�ϲ���ӡ���﷢Ʊ_���´�ӡ(in_ticket_no in varchar2);
  procedure s_�ϲ���ӡ���﷢Ʊ_��Ʊ���(in_ticket_no in varchar2);
  procedure s_�ϲ���ӡ���﷢Ʊ_���_ȡ��(in_ticket_no in varchar2);
  procedure s_�ϲ���ӡ���﷢Ʊ_��Ʊ(in_ticket_no in varchar2);
  procedure sp_�ϲ���ӡ_���﷢Ʊ��Ʊnc(in_ticket_no in varchar2);
  procedure s_�ϲ���ӡ���﷢Ʊ_��ӡ��Ȩ(in_ticket_no    in varchar2
                           ,in_grant_reason in varchar2);
  procedure s_�ϲ���ӡ���﷢Ʊ_��Ȩȡ��(in_ticket_no in varchar2
                           ,in_seq       in varchar2);

  procedure s_���﷢Ʊ_���´�ӡ��Ȩ(in_prescriptionid in varchar2
                         ,in_charge_billid  in varchar2
                         ,in_grant_reason   in varchar2);
  procedure s_���﷢Ʊ_���´�ӡ��Ȩȡ��(in_prescriptionid in varchar2
                           ,in_charge_billid  in varchar2
                           ,in_seq            in varchar2);
  procedure s_���﷢Ʊ_���Ӵ�ӡ����(in_prescriptionid in varchar2
                         ,in_charge_billid  in varchar2
                         ,in_print_count    in number);
  function get_���﷢Ʊ_���´�ӡ(in_prescriptionid in varchar2
                        ,in_charge_billid  in varchar2) return number;
  function get_�ϲ���ӡ���﷢Ʊ_���´�ӡ(in_ticket_no in varchar2) return number;
  procedure s_סԺ��Ʊ_���´�ӡ��Ȩ(in_residentid   in varchar2
                         ,in_grant_reason in varchar2);
  procedure s_סԺ��Ʊ_���´�ӡ��Ȩȡ��(in_residentid in varchar2
                           ,in_seq        in varchar2);
  procedure s_סԺ��Ʊ_���Ӵ�ӡ����(in_residentid  in varchar2
                         ,in_print_count in number);
  function get_סԺ��Ʊ_���´�ӡ(in_residentid in varchar2) return integer;

  procedure s_סԺԤ����_���´�ӡ��Ȩ(in_residentid   in varchar2
                          ,in_pre_payid    in varchar2
                          ,in_grant_reason in varchar2);
  procedure s_סԺԤ����_���´�ӡ��Ȩȡ��(in_residentid in varchar2
                            ,in_pre_payid  in varchar2
                            ,in_seq        in varchar2);
  procedure s_סԺԤ����_���Ӵ�ӡ����(in_residentid  in varchar2
                          ,in_pre_payid   in varchar2
                          ,in_print_count in number);
  function get_סԺԤ����_���´�ӡ(in_residentid in varchar2
                         ,in_pre_payid  in varchar2) return integer;
  procedure s_�����շ�_��Ʊ����(in_pay_method    in varchar2
                       ,in_charge_billid in varchar2);
  procedure s_�����˷�_��Ʊ����(in_ticket_no     in varchar2
                       ,in_charge_billid in varchar2
                       ,in_pay_method    in varchar2);
  function get_������ӡ��Ʊ��ϸ����(in_prescriptionid in varchar2) return number;
  function get_�Һ�Ʊ��ӡ��Ʊ��ϸ����(in_charge_billid in varchar2) return number;

  ---------����Ԥ����Ʊ����
  procedure s_����Ԥ����_��Ʊ����(in_clinic_flow_accountid in number);
  procedure s_����Ԥ����_���´�ӡ��Ȩ(in_clinic_flow_accountid in number
                          ,in_grant_reason          in varchar2);
  procedure s_����Ԥ����_���´�ӡ��Ȩȡ��(in_clinic_flow_accountid in number
                            ,in_seq                   in varchar2);
  procedure s_����Ԥ����_���Ӵ�ӡ����(in_clinic_flow_accountid in number
                          ,in_print_count           in number);
  function get_����Ԥ����_���´�ӡ(in_clinic_flow_accountid in number) return number;

  function s_get_�ϲ���ӡ��Ʊ��(in_fee_workerid          in varchar2
                        ,in_charge_bill_attribute in varchar2
                        ,in_from_date             in date
                        ,in_to_date               in date) return varchar2;
  function s_get_�ϲ���ӡ��Ʊ��Ʊ��(in_fee_workerid          in varchar2
                          ,in_charge_bill_attribute in varchar2
                          ,in_from_date             in date
                          ,in_to_date               in date) return varchar2;
  function s_get_�ϲ���ӡ��Ʊ��(in_fee_workerid          in varchar2
                        ,in_charge_bill_attribute in varchar2
                        ,in_from_date             in date
                        ,in_to_date               in date) return number;
  function s_get_�ϲ���ӡ��Ʊ��Ʊ��(in_fee_workerid          in varchar2
                          ,in_charge_bill_attribute in varchar2
                          ,in_from_date             in date
                          ,in_to_date               in date) return number;
  function s_get_����Ԥ����_��ӡƱ��(in_fee_workerid in varchar2
                           ,in_from_date    in date
                           ,in_to_date      in date) return varchar2;
  procedure s_after_�����շ�ȡ��nc(in_patientid     in varchar2
                            ,in_charge_billid in varchar2
                            ,in_attribute     in varchar2
                            ,in_ticket_no     in varchar2);

  procedure s_after_סԺ����ȡ��nc(in_patientid  in varchar2
                            ,in_residentid in varchar2);

  function get_�ϲ���Ʊ_Ԥ����(in_ticket_no in varchar2) return number;
  function get_�ϲ���Ʊ_Ԥ�������(in_ticket_no in varchar2) return number;

  function get_������Ʊ������������(in_charge_billid in varchar2) return number;
  function get_��Ʊ������������(in_ticket_no     in varchar2
                       ,in_charge_billid in varchar2) return number;

end invoice_man;
/
create or replace package body hospital.invoice_man is
  --------------------------------------------------------------------------------------------
  --˽�й��̶���
  procedure i_������Ա_���ô�ӡ�Ŷ�(in_type      in varchar2
                         ,in_invoiceid in varchar2
                         ,in_remark    in varchar2 default null);
  procedure i_�������ص�_���ô�ӡ�Ŷ�(in_type      in varchar2
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
  procedure s_��Ʊ����(in_workerid   in varchar2
                  ,in_type       in varchar2
                  ,in_from_no    in varchar2
                  ,in_to_no      in varchar2
                  ,in_billreg    in varchar2
                  ,in_billlength in varchar2
                  ,out_id        out varchar2) is
    i    integer;
    v_id invoice.id%type;
  begin
    verify_worker(in_workerid, '��Ʊ������');
    verify_field_dict('INVOICE', 'TYPE', in_type, 'Ʊ������');
    verify_valid_number(in_from_no, 'Ʊ�ݿ�ʼ����');
    verify_valid_number(in_to_no, 'Ʊ�ݽ�������');
    verify_valid_number(in_billreg, 'ע���');
    verify_valid_number(in_billlength, 'Ʊ�ų���');
    if to_number(in_from_no) > to_number(in_to_no)
    then
      raise_application_error(-20001, '��ʼ��Ʊ�ű���С�ڽ�����Ʊ��.;');
    end if;
    if to_number(in_from_no) < 1
    then
      raise_application_error(-20001, '��Ʊ�Ų���С��0');
    end if;
    if to_number(in_to_no) > 999999999999
    then
      raise_application_error(-20001, '��Ʊ�Ų��ܴ���999999999999');
    end if;
    if to_number(in_from_no) <> trunc(to_number(in_from_no))
    then
      raise_application_error(-20001, '��Ʊ�Ų���ʹ��С��');
    end if;
    if to_number(in_to_no) <> trunc(to_number(in_to_no))
    then
      raise_application_error(-20001, '��Ʊ�Ų���ʹ��С��');
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
         and service = '����'
         and status <> 'FINISHED'
         and rownum = 1;
      raise_application_error(-20001,
                              'Ҫ�����Ʊ���Ѿ��������Ѿ�����Ʊ���У������ظ�����.;');
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
       '����',
       in_from_no,
       in_to_no,
       in_billreg,
       in_billlength,
       in_workerid,
       sysdate,
       'WAIT_ACK');
    out_id := v_id;
    commit;
  end s_��Ʊ����;
  --------------------------------------------------------------------------------------------
  procedure s_��Ʊ����_ȷ��(in_id in varchar2) is
    v_invoice invoice%rowtype;
  begin
    begin
      lock_invoice_info(in_id, v_invoice);
      if v_invoice.service <> '����'
      then
        raise_application_error(-20001,
                                '�������÷�Ʊ�ļ�¼,����ȷ������.;');
      end if;
    
      if v_invoice.status <> 'WAIT_ACK'
      then
        raise_application_error(-20001, '�úŶε�Ʊ���Ѿ�ȷ��.;');
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
                                'û���ҵ����Ϊ( ' || in_id || ' )��Ҫȷ�ϵ����ü�¼.;');
    end;
  end s_��Ʊ����_ȷ��;
  --------------------------------------------------------------------------------------------
  procedure s_��Ʊ�黹(in_workerid   in varchar2
                  ,in_type       in varchar2
                  ,in_from_no    in varchar2
                  ,in_to_no      in varchar2
                  ,in_billreg    in varchar2
                  ,in_billlength in varchar2
                  ,out_id        out varchar2) is
    i    integer;
    v_id invoice.id%type;
  begin
    verify_worker(in_workerid, '��Ʊ������');
    verify_field_dict('INVOICE', 'TYPE', in_type, 'Ʊ������');
    verify_valid_number(in_from_no, 'Ʊ�ݿ�ʼ����');
    verify_valid_number(in_to_no, 'Ʊ�ݽ�������');
    verify_valid_number(in_billreg, 'ע���');
    verify_valid_number(in_billlength, 'Ʊ�ų���');
    if to_number(in_from_no) > to_number(in_to_no)
    then
      raise_application_error(-20001, '��ʼ��Ʊ�ű���С�ڽ�����Ʊ��.;');
    end if;
  
    --�ж������Լ����õĺŶ�
    begin
      select 2
        into i
        from invoice
       where type = in_type
         and workerid = in_workerid
         and service = '����'
         and from_no <= to_number(in_from_no)
         and to_no >= to_number(in_to_no)
         and rownum = 1;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                'Ҫ�黹��Ʊ��û�а������κ��Ѿ����õĺŶ��У����ܹ黹.;');
    end;
  
    --�ж������Լ�δ�黹�ĺŶ�
    begin
      select 2
        into i
        from invoice
       where type = in_type
         and service = '�黹'
         and (from_no <= to_number(in_from_no) and
             to_no >= to_number(in_from_no) or
             from_no <= to_number(in_to_no) and
             to_no >= to_number(in_to_no) and rownum = 1);
      raise_application_error(-20001,
                              'Ҫ�黹��Ʊ���Ѿ��������Ѿ��黹�ĺŶ��У������ظ��黹.;');
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
       '�黹',
       in_from_no,
       in_to_no,
       in_billreg,
       in_billlength,
       in_workerid,
       sysdate,
       'WAIT_ACK');
    out_id := v_id;
  end s_��Ʊ�黹;
  --------------------------------------------------------------------------------------------
  procedure s_��Ʊ�黹_ȷ��(in_id in varchar2) is
    v_back_invoice invoice%rowtype;
    v_take_invoice invoice%rowtype;
    v_backed_num   number;
  begin
    lock_invoice_info(in_id, v_back_invoice);
  
    if v_back_invoice.service <> '�黹'
    then
      raise_application_error(-20001, '�������÷�Ʊ�ļ�¼,����ȷ������.;');
    end if;
  
    if v_back_invoice.status <> 'WAIT_ACK'
    then
      raise_application_error(-20001, '�úŶε�Ʊ���Ѿ�ȷ��.;');
    end if;
  
    update invoice
       set status       = 'ACKED',
           ack_workerid = hospital.login.get_workerid,
           ack_date     = sysdate
     where id = in_id;
  
    --���ҹ黹�ķ�Ʊ���������÷�Ʊ��¼�Ƿ�ȫ���黹���
    begin
      select *
        into v_take_invoice
        from invoice
       where type = v_back_invoice.type
         and service = '����'
         and from_no <= v_back_invoice.from_no
         and to_no >= v_back_invoice.to_no
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001, '�Ҳ���Ҫ�黹��Ʊ�����ü�¼.;');
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
                              'û���ҵ����Ϊ( ' || in_id || ' )��Ҫȷ�ϵ����ü�¼.;');
  end s_��Ʊ�黹_ȷ��;
  --------------------------------------------------------------------------------------------
  procedure s_��Ʊɾ��(in_id in varchar2) is
    v_invoice invoice%rowtype;
  begin
    lock_invoice_info(in_id, v_invoice);
    if v_invoice.status not in ('WAIT_ACK', 'ACKED')
    then
      raise_application_error(-20001, '�úŶε�Ʊ���Ѿ�ʹ��,����ɾ��.;');
    end if;
    delete from invoice where id = in_id;
    commit;
  end s_��Ʊɾ��;
  --------------------------------------------------------------------------------------------
  procedure s_��Ʊ����nc(in_type       in varchar2
                    ,in_invoice_no in varchar2
                    ,in_workerid   in varchar2
                    ,in_reason     in varchar2) is
    v_invoice      invoice%rowtype;
    v_invoice_pool hospital.invoice_pool_%rowtype;
    v_status       hospital.invoice_print_ticket_.status%type;
  begin
    verify_field_dict('INVOICE', 'TYPE', in_type, 'Ʊ������');
    verify_valid_number(in_invoice_no, 'Ʊ�ݿ�ʼ����');
    hospital.verify_worker(in_workerid, '��Ʊ��Ա');
  
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
                                'δ�ҵ���Ʊ���Ϊ' || in_invoice_no ||
                                '�ķ�Ʊ���ü�¼,�������.;');
    end;
  
    if v_invoice.workerid <> in_workerid
    then
      raise_application_error(-20001,
                              'δ�ҵ���Ʊ���Ϊ' || in_invoice_no || '�ķ�Ʊ������ԱΪ' ||
                              v_invoice.workerid || ',�������ԱΪ' ||
                              in_workerid || '�������.;');
    end if;
  
    if v_invoice.status not in ('PRINTING')
    then
      raise_application_error(-20001,
                              'δ�ҵ���Ʊ���Ϊ' || in_invoice_no || '���ñ��Ϊ' ||
                              v_invoice.id || '�ķ�Ʊδ����[�ڴ�ӡ]״̬,��������.;');
    end if;
    begin
      --��Ҫ��֤ �Ƿ�ֻҪ���ô�ӡ�ĺŶ� �ͻ������Ʊ����Ϣ
      select *
        into v_invoice_pool
        from hospital.invoice_pool_
       where workerid = in_workerid
         and type = in_type
         and invoiceid = v_invoice.id;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                'δ�ҵ���Ʊ����Ϊ' || in_type || ',��Ʊ���Ϊ' ||
                                v_invoice.id || '����Ϊ' || in_workerid ||
                                '�ķ�Ʊ����Ϣ,��������.;');
    end;
  
    if to_number(in_invoice_no) < v_invoice_pool.print_no
    then
      raise_application_error(-20001,
                              '��ǰҪ���ϵķ�Ʊ���' || in_invoice_no ||
                              'С���Ѿ�ʹ�õķ�Ʊ���' ||
                              to_char(v_invoice_pool.print_no) || '��������.;');
    end if;
  
    --�Ƿ�ÿ��ֻ������һ�ŷ�Ʊ
    if to_number(in_invoice_no) > v_invoice_pool.print_no + 1
    then
      raise_application_error(-20001, 'ÿ��ֻ������һ�ŷ�Ʊ.;');
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
                                '�÷�Ʊ�Ѿ���������״̬,�����ٴ�����.;');
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
           �ֽ���,
           �������,
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
           '���˷�Ʊ',
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
  
  end s_��Ʊ����nc;
  --------------------------------------------------------------------------------------------
  procedure s_��Ʊ����(in_type       in varchar2
                  ,in_invoice_no in varchar2
                  ,in_workerid   in varchar2
                  ,in_reason     in varchar2) is
  begin
    s_��Ʊ����nc(in_type, in_invoice_no, in_workerid, in_reason);
    commit;
  end s_��Ʊ����;
  --------------------------------------------------------------------------------------------
  procedure s_��Ʊ_����nc(in_type     in varchar2
                     ,in_to_no    in varchar2
                     ,in_workerid in varchar2
                     ,in_reason   in varchar2) is
    v_invoice      invoice%rowtype;
    v_invoice_pool hospital.invoice_pool_%rowtype;
    v_from_no      number;
  begin
    verify_field_dict('INVOICE', 'TYPE', in_type, 'Ʊ������');
    verify_valid_number(in_to_no, 'Ʊ�ݿ�ʼ����');
    hospital.verify_worker(in_workerid, '��Ʊ��Ա');
  
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
                                'δ�ҵ���Ʊ���Ϊ' || in_to_no || '�ķ�Ʊ���ü�¼,�������.;');
    end;
  
    if v_invoice.workerid <> in_workerid
    then
      raise_application_error(-20001,
                              'δ�ҵ���Ʊ���Ϊ' || in_to_no || '�ķ�Ʊ������ԱΪ' ||
                              v_invoice.workerid || ',�������ԱΪ' ||
                              in_workerid || '�������.;');
    end if;
  
    if v_invoice.status not in ('PRINTING')
    then
      raise_application_error(-20001,
                              '���Ϊ' || v_invoice.id ||
                              '�ķ�Ʊδ����[�ڴ�ӡ]״̬,��������.;');
    end if;
    begin
      --��Ҫ��֤ �Ƿ�ֻҪ���ô�ӡ�ĺŶ� �ͻ������Ʊ����Ϣ
      select *
        into v_invoice_pool
        from hospital.invoice_pool_
       where workerid = in_workerid
         and type = in_type
         and invoiceid = v_invoice.id;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                'δ�ҵ���Ʊ����Ϊ' || in_type || ',��Ʊ���Ϊ' ||
                                v_invoice.id || '����Ϊ' || in_workerid ||
                                '�ķ�Ʊ����Ϣ,��������.;');
    end;
  
    if to_number(in_to_no) < v_invoice_pool.print_no
    then
      raise_application_error(-20001,
                              '��ǰ��ת�ķ�Ʊ���' || in_to_no || 'С���Ѿ�ʹ�õķ�Ʊ���' ||
                              to_char(v_invoice_pool.print_no) || '��������.;');
    end if;
    v_from_no := v_invoice_pool.print_no;
    loop
      if v_from_no > to_number(in_to_no)
      then
        exit;
      else
        --����һ�ŷ�Ʊ
        s_��Ʊ����nc(in_type, v_from_no, in_workerid, in_reason);
        v_from_no := v_from_no + 1;
      end if;
    end loop;
  
  end s_��Ʊ_����nc;

  --------------------------------------------------------------------------------------------
  procedure s_��Ʊ_����(in_type     in varchar2
                   ,in_to_no    in varchar2
                   ,in_workerid in varchar2
                   ,in_reason   in varchar2) is
  begin
    s_��Ʊ_����nc(in_type, in_to_no, in_workerid, in_reason);
    commit;
  end s_��Ʊ_����;
  --------------------------------------------------------------------------------------------
  procedure s_�޸����÷�Ʊ��¼(in_id         in varchar2
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
                                '�öη�Ʊ�������ڴ�ӡ�ķ�Ʊ,�����޸�.;');
      end if;
    
      if v_invoice.to_no <= in_to_no
      then
        raise_application_error(-20001,
                                'Ҫ�޸ĵ��½�ֹ��������Ѿ�����ĺ���,�����޸�.;');
      end if;
    
      select *
        into v_invoice_pool
        from invoice_pool
       where invoiceid = in_id
         for update nowait;
      if v_invoice_pool.print_no > in_to_no
      then
        raise_application_error(-20001, '�µĽ�ֹ��Ʊ���Ѿ���ӡ,�����޸�');
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
        raise_application_error(-20001, 'Ҫ�޸ĵķ�Ʊ���ü�¼������.;');
    end;
  
  end s_�޸����÷�Ʊ��¼;
  --------------------------------------------------------------------------------------------
  procedure s_���ô�ӡ�Ŷ�(in_type      in varchar2
                    ,in_invoiceid in varchar2
                    ,in_remark    in varchar2 default null) is
  begin
    --�ж�Ҫ���õĺŶ���һ���Ϸ��Ĵ�ӡ�Ŷ�
    if nvl(get_system_option('���չ����ص���䷢Ʊ�Ŷ�' || in_type), 'N') = 'Y'
    then
      verify_not_null(in_remark, '��ע');
      verify_length(in_remark, 20, 'ʹ�÷�Χ');
      i_�������ص�_���ô�ӡ�Ŷ�(in_type, in_invoiceid, in_remark);
    else
      if in_remark is not null
      then
        raise_application_error(-20001, '��ע����Ϊ��.;');
      end if;
      i_������Ա_���ô�ӡ�Ŷ�(in_type, in_invoiceid);
    end if;
  end s_���ô�ӡ�Ŷ�;
  --------------------------------------------------------------------------------------------
  procedure s_ע��ʹ�úŶ�(in_type      in varchar2
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
                                '���Ϊ(' || in_invoiceid || ')�ĺŶβ������ڴ�ӡ�ĺŶ�.;');
    end;
    if v_invoice_pool.type <> in_type
    then
      raise_application_error(-20001,
                              '����ķ�Ʊ���ʹ�ӡ�ĺŶ������ͬ����������.;');
    end if;
    if nvl(get_system_option('���չ����ص���䷢Ʊ�Ŷ�' || in_type), 'N') = 'N'
    then
      raise_application_error(-20001,
                              '���ǰ��չ����ص���䷢Ʊ�ŶΣ�����ע��Ŷ�');
    end if;
  
    delete from worker_invoice_pool
     where workerid = hospital.login.get_workerid
       and type = in_type;
  
    insert into worker_invoice_pool
      (workerid, type, invoiceid)
    values
      (hospital.login.get_workerid, in_type, in_invoiceid);
    commit;
  end s_ע��ʹ�úŶ�;
  --------------------------------------------------------------------------------------------
  function s_��ȡ��һ����Ʊ��(in_type     in varchar2
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
    if nvl(get_system_option('���չ����ص���䷢Ʊ�Ŷ�' || in_type), 'N') = 'Y'
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
  end s_��ȡ��һ����Ʊ��;
  --------------------------------------------------------------------------------------------
  function s_��ȡʣ�෢Ʊ��(in_type     in varchar2
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
    if nvl(get_system_option('���չ����ص���䷢Ʊ�Ŷ�' || in_type), 'N') = 'Y'
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
  end s_��ȡʣ�෢Ʊ��;
  --------------------------------------------------------------------------------------------
  procedure prv_������Ʊ(in_ticket_no   in varchar2
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
                                
                                '���Ϊ(' || in_ticket_no || ')��(' ||
                                in_ticket_type || ')�����ڣ����ܴ�ӡ.;');
      when others then
        raise_application_error(-20001, '���������ڲ��������Ժ�����.;');
    end;
  end prv_������Ʊ;
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
  procedure s_��Ʊ_�½�����(in_patientid    in varchar2
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
    verify_field_dict('CHARGE_BILL', 'ATTRIBUTE', in_attribute, '�շѷ�ʽ');
  
    insert into invoice_print_ticket
      (hospid,
       ticket_no,
       charge_bill_attribute,
       patientid,
       residentid,
       fee,
       �ֽ���,
       �������,
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
       '���˷�Ʊ',
       'WAIT_ACK',
       in_content_type,
       in_invoice_type);
  end s_��Ʊ_�½�����;

  --------------------------------------------------------------------------------------------
  -- in_print_num 1 ,-1 �����ӡ����
  procedure s_��Ʊ_������ϸ(in_ticket_no     in varchar2
                     ,in_ticket_type   in varchar2
                     ,in_charge_billid in varchar2
                     ,in_print_num     in integer default 1) is
    v_ticket     invoice_print_ticket%rowtype;
    v_fee        charge_bill.fee%type;
    v_find       varchar2(10);
    v_ticket_no  charge_bill.ticket_no%type;
    v_rowid      rowid;
    v_�ֽ���   number := 0;
    v_�������   number := 0;
    v_attribute  charge_bill.attribute%type;
    v_patientid  hospital.patient_.id%type;
    v_residentid hospital.resident_info_.residentid%type;
  begin
    prv_������Ʊ(in_ticket_no, in_ticket_type, v_ticket);
    if v_ticket.status <> 'WAIT_ACK'
    then
      raise_application_error(-20001, '���ܸ�һ���Ѿ���ɵķ�Ʊ�������ϸ');
    end if;
  
    if in_print_num not in (1, -1)
    then
      raise_application_error(-20001, '�Ƿ��Ĵ�ӡ����');
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
      if v_ticket.type = '���˷�Ʊ'
      then
        if v_ticket_no is not null
        then
          raise_application_error(-20001,
                                  '����ı��Ϊ( ' || in_charge_billid ||
                                  ' )�ĵ����Ѿ������������ķ�Ʊ��.;');
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
        if v_ticket.type = '���˷�Ʊ'
        then
          if v_ticket_no is not null
          then
            raise_application_error(-20001,
                                    '����ı��Ϊ( ' || in_charge_billid ||
                                    ' )�ĵ����Ѿ������������ķ�Ʊ(' || v_ticket_no ||
                                    ')��.;');
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
                              '�Ҳ������Ϊ( ' || in_charge_billid || ' )���շ��˵�.;');
    end if;
  
    if v_attribute = 'CASH'
    then
      v_�ֽ��� := v_fee;
    else
      if v_attribute = 'ACCOUNT'
      then
        begin
          select a.self_pay, a.account_pay
            into v_�ֽ���, v_�������
            from hospital.out_balance_info_ a
           where a.residentid = v_residentid
             and a.��Ժ��־ = '��Ժ'
             and a.update_reason is null;
        exception
          when no_data_found then
            raise_application_error(-20001,
                                    '�Ҳ���סԺ��Ϊ( ' || v_residentid ||
                                    ' )�ĳ�Ժ��¼.;');
        end;
      else
        v_������� := v_fee;
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
         set ��ӡ���� = ��ӡ���� + in_print_num
       where rowid = v_rowid;
    exception
      when no_data_found then
        insert into invoice_print_detail
          (invoice_type, ticket_no, charge_billid, ��ӡ����)
        values
          (in_ticket_type, in_ticket_no, in_charge_billid, in_print_num);
    end;
    update invoice_print_ticket
       set fee      = nvl(fee, 0) + in_print_num * v_fee,
           �ֽ��� = nvl(�ֽ���, 0) + in_print_num * nvl(v_�ֽ���, 0),
           ������� = nvl(�������, 0) + in_print_num * nvl(v_�������, 0)
     where ticket_no = in_ticket_no
       and invoice_type = in_ticket_type;
  end s_��Ʊ_������ϸ;

  --------------------------------------------------------------------------------------------
  procedure s_��Ʊ_����ɾ��(in_ticket_no     in varchar2
                     ,in_ticket_type   in varchar2
                     ,in_charge_billid in varchar2) is
    v_ticket     invoice_print_ticket%rowtype;
    v_fee        charge_bill.fee%type;
    v_find       varchar2(10);
    v_ticket_no  charge_bill.ticket_no%type;
    v_�ֽ���   number := 0;
    v_�������   number := 0;
    v_attribute  charge_bill.attribute%type;
    v_residentid hospital.resident_info_.residentid%type;
  begin
    prv_������Ʊ(in_ticket_no, in_ticket_type, v_ticket);
    if v_ticket.status <> 'WAIT_ACK'
    then
      raise_application_error(-20001, '���ܸ�һ���Ѿ���ɵķ�Ʊ�������ϸ');
    end if;
  
    begin
      select a.fee, a.ticket_no, a.attribute
        into v_fee, v_ticket_no, v_attribute
        from hospital.charge_bill a, hospital.all_worker b
       where a.id = in_charge_billid
         and a.fee_operator = b.id
         and b.hospid = hospital.login.get_hospid
         for update nowait;
      if v_ticket.type = '���˷�Ʊ'
      then
        if nvl(v_ticket_no, 'x') <> in_ticket_no
        then
          raise_application_error(-20001,
                                  '����ı��Ϊ( ' || in_charge_billid ||
                                  ' )�ĵ����Ѿ������������ķ�Ʊ��.;');
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
        if v_ticket.type = '���˷�Ʊ'
        then
          if nvl(v_ticket_no, 'x') <> in_ticket_no
          then
            raise_application_error(-20001,
                                    '����ı��Ϊ( ' || in_charge_billid ||
                                    ' )�ĵ����Ѿ������������ķ�Ʊ��.;');
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
                              '�Ҳ������Ϊ( ' || in_charge_billid || ' )���շ��˵�.;');
    end if;
  
    if v_attribute = 'CASH'
    then
      v_�ֽ��� := v_fee;
    else
      if v_attribute = 'ACCOUNT'
      then
        begin
          select a.self_pay, a.account_pay
            into v_�ֽ���, v_�������
            from hospital.out_balance_info_ a
           where a.residentid = v_residentid
             and a.��Ժ��־ = '��Ժ'
             and a.update_reason is null;
        exception
          when no_data_found then
            raise_application_error(-20001,
                                    '�Ҳ���סԺ��Ϊ( ' || v_residentid ||
                                    ' )�ĳ�Ժ��¼.;');
        end;
      else
        v_������� := v_fee;
      end if;
    end if;
  
    delete from invoice_print_detail
     where ticket_no = in_ticket_no
       and charge_billid = in_charge_billid;
  
    update invoice_print_ticket
       set fee      = nvl(fee, 0) - v_fee,
           �ֽ��� = nvl(�ֽ���, 0) - nvl(v_�ֽ���, 0),
           ������� = nvl(�������, 0) - nvl(v_�������, 0)
     where ticket_no = in_ticket_no;
  end s_��Ʊ_����ɾ��;

  --------------------------------------------------------------------------------------------
  procedure s_ʹ�÷�Ʊ(in_type      in varchar2
                  ,out_print_no out varchar2) is
    t_rowid rowid;
  begin
    if in_type = 'סԺ��Ʊ'
    then
      raise_application_error(-20001, '�����˴���Ĵ洢����!!');
    end if;
    if nvl(get_system_option('���չ����ص���䷢Ʊ�Ŷ�' || in_type), 'N') = 'Y'
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
          raise_application_error(-20001, '��ְԱû�п�ʹ�õķ�Ʊ.;');
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
                                  '��ְԱû�п�ʹ�õķ�Ʊ.;');
      end;
    end if;
  end;
  /*
  --------------------------------------------------------------------------------------------
  procedure s_ʹ�÷�Ʊex(in_type          in varchar2
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
    if in_type = 'סԺ��Ʊ'
    then
      raise_application_error(-20001, '�����˴���Ĵ洢����!!');
    end if;
    if nvl(get_system_option('���չ����ص���䷢Ʊ�Ŷ�' || in_type), 'N') = 'Y'
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
          raise_application_error(-20001, '��ְԱû�п�ʹ�õķ�Ʊ.;');
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
                                  '��ְԱû�п�ʹ�õķ�Ʊ.;');
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
                              '�Ҳ������Ϊ( ' || in_charge_billid ||
                              ' )���շ��˵�.;');
    end if;
  
    s_��Ʊ_�½�����(v_patientid,
                    v_residentid,
                    v_attribute,
                    '1',
                    in_type,
                    out_print_no);
  
    s_��Ʊ_������ϸ(out_print_no, in_type, in_charge_billid, 1);
  
  end;
  */
  --------------------------------------------------------------------------------------------
  procedure prv_ʹ�÷�Ʊ(in_fee_workerid in varchar2
                    ,in_type         in varchar2
                    ,out_print_no    out number) is
    t_rowid rowid;
  begin
    if in_type = 'סԺ��Ʊ'
    then
      raise_application_error(-20001, '�����˴���Ĵ洢����!!');
    end if;
    if nvl(get_system_option('���չ����ص���䷢Ʊ�Ŷ�' || in_type), 'N') = 'Y'
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
          raise_application_error(-20001, '��ְԱû�п�ʹ�õķ�Ʊ.;');
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
                                  '��ְԱû�п�ʹ�õķ�Ʊ.;');
      end;
    end if;
  end;
  --------------------------------------------------------------------------------------------

  procedure s_ʹ��סԺ��Ʊ(in_type       in varchar2
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
    if nvl(hospital.get_system_option('ʹ��סԺ��Ʊ����'), 'N') <> 'Y'
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
                                  'û���ҵ�סԺ��Ϊ' || in_residentid ||
                                  '����Ժ�ǼǼ�¼.;');
      end;
    
      begin
        select print_no
          into v_invoice_no
          from invoice_pool
         where workerid = hospital.login.get_workerid
           and type = in_type
           and print_no <= to_no
           for update nowait;
        --���Ŵ���
        update invoice_pool
           set print_no = print_no + 1
         where workerid = hospital.login.get_workerid
           and type = in_type;
      exception
        when no_data_found then
          raise_application_error(-20001, '��ְԱû�п�ʹ�õķ�Ʊ.;');
      end;
    
      s_��Ʊ_�½�����(v_patientid,
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
    
      s_��Ʊ_������ϸ(v_invoice_no, in_type, v_charge_billid, v_printed);
      /*
      --��¼סԺ��Ʊʹ�����
      insert into hospital.resident_invoice_consume
        (residentid, invoice_no, workerid, update_date, print_count)
      values
        (in_residentid,
         v_invoice_no,
         hospital.login.get_workerid,
         sysdate,
         in_printed);
      */
      --��¼��Ʊʹ�������charge_bill
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

  procedure s_����ʹ��סԺ��Ʊ(in_type       in varchar2
                      ,in_action     in varchar2 default 'PRINT'
                      ,in_residentid in varchar2
                      ,in_printed    in varchar2) is
    v_invoice_no    hospital.charge_bill_.ticket_no%type;
    v_charge_billid hospital.charge_bill.id%type;
    v_flag          varchar2(10) default null;
    v_patientid     hospital.resident_info_.patientid%type;
    v_printed       integer;
  
  begin
    if nvl(hospital.get_system_option('ʹ��סԺ��Ʊ����'), 'N') <> 'Y'
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
                                  'û���ҵ�סԺ��Ϊ' || in_residentid ||
                                  '����Ժ�ǼǼ�¼.;');
      end;
    
      begin
        select print_no
          into v_invoice_no
          from invoice_pool
         where workerid = hospital.login.get_workerid
           and type = in_type
           and print_no <= to_no
           for update nowait;
        --���Ŵ���
        update invoice_pool
           set print_no = print_no + 1
         where workerid = hospital.login.get_workerid
           and type = in_type;
      exception
        when no_data_found then
          raise_application_error(-20001, '��ְԱû�п�ʹ�õķ�Ʊ.;');
      end;
    
      s_��Ʊ_�½�����(v_patientid,
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
    
      s_��Ʊ_������ϸ(v_invoice_no, in_type, v_charge_billid, v_printed);
      /*
      --��¼סԺ��Ʊʹ�����
      insert into hospital.resident_invoice_consume
        (residentid, invoice_no, workerid, update_date, print_count)
      values
        (in_residentid,
         v_invoice_no,
         hospital.login.get_workerid,
         sysdate,
         in_printed);
      */
      --��¼��Ʊʹ�������charge_bill
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
  function s_��Ʊ��ӡ_��ȡסԺ��Ʊ��(in_residentid in varchar2) return varchar2 is
    i            number;
    v_invoice_no varchar2(20);
  begin
    if nvl(hospital.get_system_option('ʹ��סԺ��Ʊ����'), 'N') <> 'Y'
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
                                    '�˲���û�н��㵥�ݣ��޷���÷�Ʊ�ţ���');
        end;
    end;
  
    return v_invoice_no;
    commit;
  end s_��Ʊ��ӡ_��ȡסԺ��Ʊ��;
  --------------------------------------------------------------------------------------------
  function s_get_���﷢Ʊ��(in_fee_workerid in varchar2
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
  end s_get_���﷢Ʊ��;
  --------------------------------------------------------------------------------------------
  function s_get_������Ʊ��(in_fee_workerid in varchar2
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
  end s_get_������Ʊ��;
  --------------------------------------------------------------------------------------------
  function s_get_���﷢Ʊ��(in_fee_workerid in varchar2
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
  end s_get_���﷢Ʊ��;
  --------------------------------------------------------------------------------------------
  function s_get_������Ʊ��(in_fee_workerid in varchar2
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
  end s_get_������Ʊ��;
  --------------------------------------------------------------------------------------------
  function s_get_�к����﷢Ʊ��(in_fee_workerid in varchar2
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
  end s_get_�к����﷢Ʊ��;
  --------------------------------------------------------------------------------------------
  function s_get_�к�������Ʊ��(in_fee_workerid in varchar2
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
  end s_get_�к�������Ʊ��;
  --------------------------------------------------------------------------------------------
  function s_get_�޺����﷢Ʊ��(in_fee_workerid in varchar2
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
  end s_get_�޺����﷢Ʊ��;
  --------------------------------------------------------------------------------------------
  function s_get_�޺�������Ʊ��(in_fee_workerid in varchar2
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
  end s_get_�޺�������Ʊ��;
  --------------------------------------------------------------------------------------------
  function s_get_�շ�ԱԤ����Ʊ��(in_fee_workerid in varchar2
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
  end s_get_�շ�ԱԤ����Ʊ��;
  --------------------------------------------------------------------------------------------
  function s_get_�շ�ԱԤ����Ʊ��(in_fee_workerid in varchar2
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
  end s_get_�շ�ԱԤ����Ʊ��;
  --------------------------------------------------------------------------------------------
  function s_get_�շ�Ա��Ԥ����Ʊ��(in_fee_workerid in varchar2
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
  end s_get_�շ�Ա��Ԥ����Ʊ��;
  --------------------------------------------------------------------------------------------
  function s_get_�շ�Ա��Ԥ����Ʊ��(in_fee_workerid in varchar2
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
  end s_get_�շ�Ա��Ԥ����Ʊ��;
  --------------------------------------------------------------------------------------------
  function s_get_ȫԺԤ����Ʊ��(in_from_date in date
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
  end s_get_ȫԺԤ����Ʊ��;
  --------------------------------------------------------------------------------------------
  function s_get_ȫԺԤ����Ʊ��(in_from_date in date
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
  end s_get_ȫԺԤ����Ʊ��;
  --------------------------------------------------------------------------------------------
  function s_get_ȫԺ��Ԥ����Ʊ��(in_from_date in date
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
  end s_get_ȫԺ��Ԥ����Ʊ��;
  --------------------------------------------------------------------------------------------
  function s_get_ȫԺ��Ԥ����Ʊ��(in_from_date in date
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
  end s_get_ȫԺ��Ԥ����Ʊ��;
  --------------------------------------------------------------------------------------------
  procedure i_������Ա_���ô�ӡ�Ŷ�(in_type      in varchar2
                         ,in_invoiceid in varchar2
                         ,in_remark    in varchar2 default null) is
    v_invoice      invoice%rowtype;
    v_invoice_pool invoice_pool%rowtype;
  begin
    begin
      lock_invoice_info(in_invoiceid, v_invoice);
      if v_invoice.service <> '����'
      then
        raise_application_error(-20001,
                                '�������÷�Ʊ�ļ�¼,�������ô�ӡ�Ŷ�.;');
      end if;
    
      if v_invoice.status <> 'ACKED'
      then
        raise_application_error(-20001,
                                '�úŶεķ�Ʊ��û��ȷ��,�������ô�ӡ�Ŷ�.;');
      end if;
    
      if v_invoice.workerid <> hospital.login.get_workerid
      then
        raise_application_error(-20001,
                                '�úŶεķ�Ʊ���������õ�,�������ô�ӡ�Ŷ�.;');
      end if;
    exception
      when no_data_found then
        null;
    end;
    --�жϸ�ְԱ�Ĵ�ӡ��Ʊ�Ŷ���û�п�ʹ�õķ�Ʊ��
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
                                '��ǰʹ�õķ�Ʊ��û�д�ӡ���,���������µĴ�ӡ�Ŷ�,��һ����ӡ��Ʊ����' ||
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
  end i_������Ա_���ô�ӡ�Ŷ�;
  --------------------------------------------------------------------------------------------
  procedure i_�������ص�_���ô�ӡ�Ŷ�(in_type      in varchar2
                          ,in_invoiceid in varchar2
                          ,in_remark    in varchar2 default null) is
    v_invoice      invoice%rowtype;
    v_invoice_pool invoice_pool%rowtype;
  begin
    begin
      lock_invoice_info(in_invoiceid, v_invoice);
      if v_invoice.service <> '����'
      then
        raise_application_error(-20001,
                                '�������÷�Ʊ�ļ�¼,�������ô�ӡ�Ŷ�.;');
      end if;
    
      if v_invoice.status <> 'ACKED'
      then
        raise_application_error(-20001,
                                '�úŶεķ�Ʊ��û��ȷ��,�������ô�ӡ�Ŷ�.;');
      end if;
    
    exception
      when no_data_found then
        null;
    end;
    --�жϸ�ְԱ�Ĵ�ӡ��Ʊ�Ŷ���û�п�ʹ�õķ�Ʊ��
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
                                '��ǰʹ�õķ�Ʊ��û�д�ӡ���,���������µĴ�ӡ�Ŷ�,��һ����ӡ��Ʊ����' ||
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
  end i_�������ص�_���ô�ӡ�Ŷ�;
  --------------------------------------------------------------------------------------------
  function s_get_סԺ��Ʊ��(in_fee_workerid in varchar2
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
  end s_get_סԺ��Ʊ��;
  --------------------------------------------------------------------------------------------
  function s_get_סԺ��Ʊ��(in_fee_workerid in varchar2
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
  end s_get_סԺ��Ʊ��;
  --------------------------------------------------------------------------------------------
  function s_get_סԺ��Ʊ��(in_fee_workerid in varchar2
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
  end s_get_סԺ��Ʊ��;
  --------------------------------------------------------------------------------------------
  function s_get_סԺ��Ʊ��(in_fee_workerid in varchar2
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
  end s_get_סԺ��Ʊ��;
  --------------------------------------------------------------------------------------------
  procedure s_��ӡ���﷢Ʊ(in_patientid     in varchar2
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
                                '���Ϊ( ' || in_patientid || ' )�Ĳ��˲�����.;');
    end;
  
    if in_attribute not in ('USER_DEF9', 'PRE_PAY')
    then
      raise_application_error(-20001,
                              '��֧�ֵ�ҵ��( ' || in_attribute || ').;');
    end if;
  
    s_ʹ�÷�Ʊ('���﷢Ʊ', v_ticket_no);
  
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
      raise_application_error(-20001, 'û���ҵ�Ҫ��ӡ�ĵ���.;');
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
       '�����ֽ�');
    out_ticket_no := v_ticket_no;
    commit;
  end s_��ӡ���﷢Ʊ;

  --------------------------------------------------------------------------------------------
  procedure s_�ϲ���ӡ���﷢Ʊ_�½�����(in_from_date  date
                           ,in_to_date    date
                           ,in_attribute  in varchar2
                           ,out_ticket_no out varchar2) is
    v_ticket_no invoice_print_ticket.ticket_no%type;
    v_ticket    invoice_print_ticket%rowtype;
  begin
    verify_field_dict('CHARGE_BILL', 'ATTRIBUTE', in_attribute, '�շѷ�ʽ');
  
    select min(ticket_no)
      into v_ticket_no
      from hospital.invoice_print_ticket_
     where hospid = get_login_hospid
       and print_workerid = hospital.login.get_workerid
       and status = 'DELETED'
       and type = '���巢Ʊ';
    if v_ticket_no is not null
    then
      prv_������Ʊ(v_ticket_no, '���﷢Ʊ', v_ticket);
      update hospital.invoice_print_ticket_
         set charge_bill_attribute = in_attribute,
             from_date             = in_from_date,
             to_date               = in_to_date,
             fee                   = 0,
             print_workerid        = hospital.login.get_workerid,
             print_date            = sysdate,
             print_num             = 0,
             type                  = '���巢Ʊ',
             status                = 'WAIT_ACK'
       where hospid = get_login_hospid
         and ticket_no = v_ticket_no
         and invoice_type = '���﷢Ʊ';
    else
      s_ʹ�÷�Ʊ('���﷢Ʊ', v_ticket_no);
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
         '���巢Ʊ',
         'WAIT_ACK',
         '���﷢Ʊ');
    end if;
    out_ticket_no := v_ticket_no;
  end s_�ϲ���ӡ���﷢Ʊ_�½�����;
  --------------------------------------------------------------------------------------------
  --  ���㱾ʱ����ڣ���Ҫ�����ӡ�ķ�Ʊ
  --  �㷨��
  -- (r) = (1) - (2) -��3�� + ��4��
  --   (1) = ��ʱ����շѽ��
  --   (2) = ��ʱ����˷ѽ��
  --   (3) = ��ʱ��δ�ӡ���˷�Ʊ��� 
  --   (4) = ��ʱ��θ�����Ʊ���  
  --        
  procedure s_�ϲ���ӡ���﷢Ʊ_�����ӡ(in_from_date  in varchar2
                           ,in_to_date    in varchar2
                           ,in_attribute  in varchar2
                           ,out_ticket_no out varchar2) is
    v_from_date date;
    v_to_date   date;
    v_ticket_no varchar2(20);
  begin
    verify_field_dict('CHARGE_BILL', 'ATTRIBUTE', in_attribute, '�շѷ�ʽ');
    --��ʼʱ�����ϴν���ʱ�����һ��
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
      verify_valid_date(in_from_date, '��ʼʱ��');
      v_from_date := trunc(get_date_from_str(in_from_date));
    else
      v_from_date := trunc(v_from_date) + 1;
    end if;
  
    if v_from_date > trunc(sysdate)
    then
      raise_application_error(-20001, '�շѿ�ʼ���ڲ��ܴ��ڽ���.;');
    end if;
  
    --����ʱ��������ʱ���23:59:59
    verify_valid_date(in_to_date, '����ʱ��');
    v_to_date := trunc(get_date_from_str(in_to_date));
    v_to_date := to_date(to_char(v_to_date, 'yyyy/mm/dd') || ' 23:59:59',
                         'yyyy/mm/dd hh24:mi:ss');
    if v_to_date > trunc(sysdate)
    then
      raise_application_error(-20001, '����ʱ�䲻�ܴ��ڽ���.;');
    end if;
  
    s_�ϲ���ӡ���﷢Ʊ_�½�����(v_from_date, v_to_date, in_attribute, v_ticket_no);
    --(1) ��ӡ������ӡʱ����շѵķ�Ʊ
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
      s_�ϲ���ӡ���﷢Ʊ_������ϸ(in_ticket_no     => v_ticket_no,
                      in_charge_billid => c.id);
    end loop;
  
    --(2) ���������ӡʱ����˷ѵķ�Ʊ
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
      s_�ϲ���ӡ���﷢Ʊ_������ϸ(in_ticket_no     => v_ticket_no,
                      in_charge_billid => c.id,
                      in_print_num     => -1);
    end loop;
  
    --(3) �������ʱ����ڴ�ӡ�ĸ��˷�Ʊ��
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
      s_�ϲ���ӡ���﷢Ʊ_������ϸ(in_ticket_no     => v_ticket_no,
                      in_charge_billid => c.id,
                      in_print_num     => -1);
    
    end loop;
  
    --����:(4) ��ʱ������Ʊ�ĸ��˷�Ʊ
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
      s_�ϲ���ӡ���﷢Ʊ_������ϸ(in_ticket_no     => v_ticket_no,
                      in_charge_billid => c.id);
    end loop;
    delete from invoice_print_detail
     where ticket_no = v_ticket_no
       and ��ӡ���� = 0;
    s_�ϲ���ӡ���﷢Ʊ_�ύ(in_ticket_no => v_ticket_no);
    out_ticket_no := v_ticket_no;
  end s_�ϲ���ӡ���﷢Ʊ_�����ӡ;
  --------------------------------------------------------------------------------------------
  procedure s_�ϲ���ӡ���﷢Ʊ_ɾ����Ʊ(in_ticket_no in varchar2) is
    v_ticket hospital.invoice_print_ticket_%rowtype;
  begin
    prv_������Ʊ(in_ticket_no, '���﷢Ʊ', v_ticket);
    if v_ticket.type <> '���巢Ʊ'
    then
      raise_application_error(-20001, '�������巢Ʊ������ɾ��.;');
    end if;
    if v_ticket.print_num > 0
    then
      raise_application_error(-20001, '�÷�Ʊ�Ѿ���ӡ������ɾ��');
    end if;
    update hospital.invoice_print_ticket_
       set status = 'DELETED'
     where ticket_no = in_ticket_no
       and hospid = get_login_hospid
       and invoice_type = '���﷢Ʊ';
    delete from hospital.invoice_print_detail_
     where ticket_no = in_ticket_no
       and invoice_type = '���﷢Ʊ';
    commit;
  end s_�ϲ���ӡ���﷢Ʊ_ɾ����Ʊ;
  --------------------------------------------------------------------------------------------
  function get_�Һ�Ʊ��ӡ��Ʊ��ϸ����(in_charge_billid in varchar2) return number is
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
  
  end get_�Һ�Ʊ��ӡ��Ʊ��ϸ����;
  --------------------------------------------------------------------------------------------
  --���ط�Ʊ��ϸ������������
  function get_������Ʊ������������(in_charge_billid in varchar2) return number is
    v_���� number := 0;
  begin
    select sum(nvl(num, 0))
      into v_����
      from (select count(distinct fee_type) num
              from hospital.charge_item_
             where charge_billid = in_charge_billid
            union all
            select count(distinct fee_type) num
              from hospital.charge_item_a01_
             where charge_billid = in_charge_billid);
    return v_����;
  end get_������Ʊ������������;
  --------------------------------------------------------------------------------------------
  function get_��Ʊ������������(in_ticket_no     in varchar2
                       ,in_charge_billid in varchar2) return number is
    v_���� number := 0;
  begin
    select count(distinct fee_type)
      into v_����
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
    return v_����;
  end get_��Ʊ������������;
  --------------------------------------------------------------------------------------------
  --���ش�ӡ��Ʊ��ϸ������
  --���� 1 ��ҩ�������ӷѴ����� ҩƷ������ϸ��ӡ���ӷ����Ȱ��������Ŀ�ϲ���Ȼ�����ӷѺϲ�
  --       2 ��ҩ������ҩƷ���շ������ʹ�ӡ���ӷ����Ȱ��������Ŀ�ϲ���Ȼ�����ӷѺϲ�
  function get_������ӡ��Ʊ��ϸ����(in_prescriptionid in varchar2) return number is
    v_����                   number := 0;
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
                                    '�Ҳ������Ϊ( ' || in_prescriptionid ||
                                    ')�Ĵ���');
        end;
    end;
    if v_prescription_attribute in ('A', 'C')
    then
      if v_table_name = 'PRESCRIPTION'
      then
        select sum(nvl(num, 0))
          into v_����
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
          into v_����
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
          into v_����
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
          into v_����
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
    return v_����;
  end get_������ӡ��Ʊ��ϸ����;
  --------------------------------------------------------------------------------------------
  --  �ϲ����ݺ�ȷ����Ʊ��ϸ������ָ��������
  --     
  procedure s_�ϲ���ӡ���﷢Ʊ_���е���(in_patientid  in varchar2
                           ,in_attribute  in varchar2
                           ,out_ticket_no out varchar2) is
    v_��Ʊ��ӡ������         number;
    v_�������˵���Ʊ��ӡ���� number;
    i                        number;
    v_content_type           varchar2(10);
    v_sysopt                 varchar2(10);
  begin
    v_��Ʊ��ӡ������ := 0;
    v_sysopt         := get_system_option('���﷢Ʊ_�ϲ���ӡ_��ӡ��ϸ');
  
    if v_sysopt is null
       or v_sysopt not in ('Y', 'FEE_TYPE')
    then
      raise_application_error(-20001,
                              'û������ϵͳѡ��:���﷢Ʊ_�ϲ���ӡ_��ӡ��ϸ');
    end if;
  
    if v_sysopt = 'Y'
    then
      v_content_type := '1'; --��ӡ��ϸ
    else
      v_content_type := '2'; --��ӡ��������
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
      s_�ϲ���ӡ���﷢Ʊ_�½�����(in_patientid,
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
            v_�������˵���Ʊ��ӡ���� := get_������ӡ��Ʊ��ϸ����(c.prescriptionid);
          else
            v_�������˵���Ʊ��ӡ���� := get_�Һ�Ʊ��ӡ��Ʊ��ϸ����(c.id);
          end if;
          if v_��Ʊ��ӡ������ + v_�������˵���Ʊ��ӡ���� > 20
          then
            exit;
          end if;
        elsif v_content_type = '2'
        then
          v_�������˵���Ʊ��ӡ���� := invoice_man.get_������Ʊ������������(c.id);
          if v_�������˵���Ʊ��ӡ���� > 4
          then
            raise_application_error(-20001,
                                    '����(' || c.prescriptionid ||
                                    ')���Ŵ�ӡ���ͳ���4,���ܽ���.;');
          end if;
        
          v_�������˵���Ʊ��ӡ���� := invoice_man.get_��Ʊ������������(out_ticket_no, c.id);
          if v_�������˵���Ʊ��ӡ���� > 4
          then
            exit;
          end if;
        else
          raise_application_error(-20001, '��֧�ֵķ�Ʊ���ݴ�ӡ��ʽ.;');
        end if;
      
        v_��Ʊ��ӡ������ := v_��Ʊ��ӡ������ + v_�������˵���Ʊ��ӡ����;
        s_�ϲ���ӡ���﷢Ʊ_������ϸ(in_ticket_no     => out_ticket_no,
                        in_charge_billid => c.id);
      end loop;
      delete from hospital.t���﷢Ʊ��Ʊ��_
       where hospid = get_login_hospid
         and fee_workerid = hospital.login.get_workerid
         and patientid = in_patientid;
      s_�ϲ���ӡ���﷢Ʊ_�ύ(in_ticket_no => out_ticket_no);
    exception
      when no_data_found then
        delete from hospital.t���﷢Ʊ��Ʊ��_
         where hospid = get_login_hospid
           and fee_workerid = hospital.login.get_workerid
           and patientid = in_patientid;
    end;
    commit;
  end s_�ϲ���ӡ���﷢Ʊ_���е���;
  --------------------------------------------------------------------------------------------
  procedure s_after_�����շ�ȡ��nc(in_patientid     in varchar2
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
        delete from hospital.t���﷢Ʊ��Ʊ��_
         where hospid = get_login_hospid
           and fee_workerid = hospital.login.get_workerid
           and patientid = in_patientid;
    end;
    --�����ǰ�˵�û�в�����Ӧ�ķ�Ʊ �򷵻�
    if in_ticket_no is null
    then
      return;
    end if;
    begin
      select status
        into v_status
        from hospital.invoice_print_ticket_
       where ticket_no = in_ticket_no
         and invoice_type = '���﷢Ʊ';
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '���Ϊ( ' || in_ticket_no || ' )�����﷢Ʊ��¼������.;');
    end;
  
    begin
      select count(*)
        into v_detail_num
        from hospital.invoice_print_detail_
       where invoice_type = '���﷢Ʊ'
         and ticket_no = in_ticket_no;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '���Ϊ( ' || in_ticket_no ||
                                ' )�����﷢Ʊ��ϸ��¼������.;');
      
    end;
    --���������ֽ�/���п��շѵķ�Ʊ
    if v_status = 'FINISHED'
       and v_detail_num = 1
       and in_attribute in ('CASH', 'BANK')
    then
      update hospital.invoice_print_ticket_
         set status            = 'WITHDRAWED',
             withdraw_workerid = hospital.login.get_workerid,
             withdraw_date     = sysdate
       where ticket_no = in_ticket_no
         and invoice_type = '���﷢Ʊ';
    end if;
  
  end s_after_�����շ�ȡ��nc;

  --------------------------------------------------------------------------------------------
  procedure s_after_סԺ����ȡ��nc(in_patientid  in varchar2
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
         and invoice_type = 'סԺ��Ʊ';
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '���Ϊ( ' || v_ticket_no || ' )��סԺ��Ʊ��¼������.;');
    end;
  
    begin
      select count(*)
        into v_detail_num
        from hospital.invoice_print_detail_
       where invoice_type = 'סԺ��Ʊ'
         and ticket_no = v_ticket_no;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '���Ϊ( ' || v_ticket_no ||
                                ' )��סԺ��Ʊ��ϸ��¼������.;');
      
    end;
    --����סԺ��Ʊ״̬
  
    update hospital.invoice_print_ticket_
       set status            = 'WITHDRAWED',
           withdraw_workerid = hospital.login.get_workerid,
           withdraw_date     = sysdate
     where ticket_no = v_ticket_no
       and invoice_type = 'סԺ��Ʊ';
  
  end s_after_סԺ����ȡ��nc;
  --------------------------------------------------------------------------------------------
  procedure s_�ϲ���ӡ���﷢Ʊ_�½�����(in_patientid    in varchar2
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
                                '���Ϊ( ' || in_patientid || ' )�Ĳ��˲�����.;');
    end;
    verify_field_dict('CHARGE_BILL', 'ATTRIBUTE', in_attribute, '�շѷ�ʽ');
    s_ʹ�÷�Ʊ('���﷢Ʊ', v_ticket_no);
    insert into invoice_print_ticket
      (hospid,
       ticket_no,
       charge_bill_attribute,
       patientid,
       fee,
       �ֽ���,
       �������,
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
       '���˷�Ʊ',
       'WAIT_ACK',
       in_content_type,
       '���﷢Ʊ');
    out_ticket_no := v_ticket_no;
  end s_�ϲ���ӡ���﷢Ʊ_�½�����;
  --------------------------------------------------------------------------------------------
  -- in_print_num 1 ,-1 �����ӡ����
  procedure s_�ϲ���ӡ���﷢Ʊ_������ϸ(in_ticket_no     in varchar2
                           ,in_charge_billid in varchar2
                           ,in_print_num     in integer default 1) is
    v_ticket    invoice_print_ticket%rowtype;
    v_fee       charge_bill.fee%type;
    v_find      varchar2(10);
    v_ticket_no charge_bill.ticket_no%type;
    v_rowid     rowid;
    v_�ֽ���  number := 0;
    v_�������  number := 0;
    v_attribute charge_bill.attribute%type;
  begin
    prv_������Ʊ(in_ticket_no, '���﷢Ʊ', v_ticket);
    if v_ticket.status <> 'WAIT_ACK'
    then
      raise_application_error(-20001, '���ܸ�һ���Ѿ���ɵķ�Ʊ�������ϸ');
    end if;
  
    if in_print_num not in (1, -1)
    then
      raise_application_error(-20001, '�Ƿ��Ĵ�ӡ����');
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
      if v_ticket.type = '���˷�Ʊ'
      then
        if v_ticket_no is not null
        then
          raise_application_error(-20001,
                                  '����ı��Ϊ( ' || in_charge_billid ||
                                  ' )�ĵ����Ѿ������������ķ�Ʊ��.;');
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
        if v_ticket.type = '���˷�Ʊ'
        then
          if v_ticket_no is not null
          then
            raise_application_error(-20001,
                                    '����ı��Ϊ( ' || in_charge_billid ||
                                    ' )�ĵ����Ѿ������������ķ�Ʊ(' || v_ticket_no ||
                                    ')��.;');
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
                              '�Ҳ������Ϊ( ' || in_charge_billid || ' )���շ��˵�.;');
    end if;
  
    if v_attribute = 'CASH'
       or v_attribute = 'PRE_PAY'
    then
      v_�ֽ��� := v_fee;
    else
      v_������� := v_fee;
    end if;
  
    begin
      select rowid
        into v_rowid
        from invoice_print_detail
       where ticket_no = in_ticket_no
         and charge_billid = in_charge_billid
         and invoice_type = '���﷢Ʊ'
         for update nowait;
      update invoice_print_detail
         set ��ӡ���� = ��ӡ���� + in_print_num
       where rowid = v_rowid;
    exception
      when no_data_found then
        insert into invoice_print_detail
          (ticket_no, charge_billid, ��ӡ����, invoice_type)
        values
          (in_ticket_no, in_charge_billid, in_print_num, '���﷢Ʊ');
    end;
    update invoice_print_ticket
       set fee      = nvl(fee, 0) + in_print_num * v_fee,
           �ֽ��� = nvl(�ֽ���, 0) + in_print_num * nvl(v_�ֽ���, 0),
           ������� = nvl(�������, 0) + in_print_num * nvl(v_�������, 0)
     where ticket_no = in_ticket_no
       and invoice_type = '���﷢Ʊ';
  end s_�ϲ���ӡ���﷢Ʊ_������ϸ;
  --------------------------------------------------------------------------------------------
  procedure s_�ϲ���ӡ���﷢Ʊ_����ɾ��(in_ticket_no     in varchar2
                           ,in_charge_billid in varchar2) is
    v_ticket    invoice_print_ticket%rowtype;
    v_fee       charge_bill.fee%type;
    v_find      varchar2(10);
    v_ticket_no charge_bill.ticket_no%type;
    v_�ֽ���  number := 0;
    v_�������  number := 0;
    v_attribute charge_bill.attribute%type;
  begin
    prv_������Ʊ(in_ticket_no, '���﷢Ʊ', v_ticket);
    if v_ticket.status <> 'WAIT_ACK'
    then
      raise_application_error(-20001, '���ܸ�һ���Ѿ���ɵķ�Ʊ�������ϸ');
    end if;
  
    begin
      select a.fee, a.ticket_no, a.attribute
        into v_fee, v_ticket_no, v_attribute
        from hospital.charge_bill a, hospital.all_worker b
       where a.id = in_charge_billid
         and a.fee_operator = b.id
         and b.hospid = hospital.login.get_hospid
         for update nowait;
      if v_ticket.type = '���˷�Ʊ'
      then
        if nvl(v_ticket_no, 'x') <> in_ticket_no
        then
          raise_application_error(-20001,
                                  '����ı��Ϊ( ' || in_charge_billid ||
                                  ' )�ĵ����Ѿ������������ķ�Ʊ��.;');
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
        if v_ticket.type = '���˷�Ʊ'
        then
          if nvl(v_ticket_no, 'x') <> in_ticket_no
          then
            raise_application_error(-20001,
                                    '����ı��Ϊ( ' || in_charge_billid ||
                                    ' )�ĵ����Ѿ������������ķ�Ʊ��.;');
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
                              '�Ҳ������Ϊ( ' || in_charge_billid || ' )���շ��˵�.;');
    end if;
  
    if v_attribute = 'CASH'
    then
      v_�ֽ��� := v_fee;
    else
      v_������� := v_fee;
    end if;
  
    delete from invoice_print_detail
     where ticket_no = in_ticket_no
       and invoice_type = '���﷢Ʊ'
       and charge_billid = in_charge_billid;
  
    update invoice_print_ticket
       set fee      = nvl(fee, 0) - v_fee,
           �ֽ��� = nvl(�ֽ���, 0) - nvl(v_�ֽ���, 0),
           ������� = nvl(�������, 0) - nvl(v_�������, 0)
     where ticket_no = in_ticket_no
       and invoice_type = '���﷢Ʊ';
  end s_�ϲ���ӡ���﷢Ʊ_����ɾ��;
  --------------------------------------------------------------------------------------------
  procedure s_�ϲ���ӡ���﷢Ʊ_�ύ(in_ticket_no in varchar2) is
    v_ticket invoice_print_ticket%rowtype;
    i        number;
  begin
    prv_������Ʊ(in_ticket_no, '���﷢Ʊ', v_ticket);
    if v_ticket.status <> 'WAIT_ACK'
    then
      raise_application_error(-20001, '���ظ��ύһ���Ѿ��ύ�ĵ���.;');
    end if;
  
    begin
      select 2
        into i
        from invoice_print_detail
       where ticket_no = in_ticket_no
         and invoice_type = '���﷢Ʊ'
         and rownum = 1;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '��ӡ��Ʊ�������κε���ϸ�������ύ.;');
    end;
  
    update invoice_print_ticket
       set status = 'FINISHED'
     where ticket_no = in_ticket_no
       and invoice_type = '���﷢Ʊ';
    commit;
  end;
  --------------------------------------------------------------------------------------------
  procedure s_�ϲ���ӡ���﷢Ʊ_���´�ӡ(in_ticket_no in varchar2) is
    v_ticket invoice_print_ticket%rowtype;
  begin
    prv_������Ʊ(in_ticket_no, '���﷢Ʊ', v_ticket);
    if v_ticket.print_workerid <> hospital.login.get_workerid
    then
      raise_application_error(-20001, '�������ӡ�ķ�Ʊ���㲻�����´�ӡ.;');
    end if;
  
    update hospital.t���Ｏ�д�ӡ��Ʊ��Ȩ_
       set �Ƿ��Ѵ�ӡ = 1
     where ticket_no = in_ticket_no
       and hospid = get_login_hospid;
  
    --��ӡ��ǰ��Ʊ  ������һ�ŷ�Ʊ��Ʊ�������
    delete from hospital.t���﷢Ʊ��Ʊ��_
     where hospid = hospital.login.get_hospid
       and fee_workerid = hospital.login.get_workerid
       and patientid = v_ticket.patientid;
  
    update invoice_print_ticket
       set print_num      = nvl(print_num, 0) + 1,
           print_workerid = hospital.login.get_workerid,
           print_date     = sysdate
     where ticket_no = in_ticket_no
       and invoice_type = '���﷢Ʊ'
       and hospid = get_login_hospid;
    commit;
  end s_�ϲ���ӡ���﷢Ʊ_���´�ӡ;
  --------------------------------------------------------------------------------------------
  procedure sp_�ϲ���ӡ_���﷢Ʊ��Ʊnc(in_ticket_no in varchar2) is
    v_ticket invoice_print_ticket%rowtype;
  begin
    prv_������Ʊ(in_ticket_no, '���﷢Ʊ', v_ticket);
    if v_ticket.type <> '���˷�Ʊ'
    then
      raise_application_error(-20001, '���Ǹ��˷�Ʊ,������Ʊ');
    end if;
  
    if v_ticket.status = 'FINISHED'
    then
      raise_application_error(-20001, '���Ƚ�����Ʊ��˺��ڲ���.;');
    elsif v_ticket.status = 'WAIT_WITHDRAW'
    then
      null;
    elsif v_ticket.status = 'WITHDRAWED'
    then
      raise_application_error(-20001,
                              '���Ϊ( ' || in_ticket_no ||
                              ' )�ķ�Ʊ�Ѿ���Ʊ�������ظ�����.;');
    else
      raise_application_error(-20001,
                              '��֧�ֵĲ���״̬( ' || v_ticket.status || ' ).;');
    end if;
  
    update invoice_print_ticket
       set status            = 'WITHDRAWED',
           withdraw_workerid = hospital.login.get_workerid,
           withdraw_date     = sysdate
     where ticket_no = in_ticket_no
       and invoice_type = '���﷢Ʊ';
  
    update charge_bill
       set ticket_no = null
     where id in (select charge_billid
                    from invoice_print_detail
                   where ticket_no = in_ticket_no
                     and invoice_type = '���﷢Ʊ');
  
    update charge_bill_a01
       set ticket_no = null
     where id in (select charge_billid
                    from invoice_print_detail
                   where ticket_no = in_ticket_no
                     and invoice_type = '���﷢Ʊ');
    begin
      insert into hospital.t���﷢Ʊ��Ʊ��_
        (hospid, fee_workerid, patientid, ticket_no)
      values
        (get_login_hospid,
         hospital.login.get_workerid,
         v_ticket.patientid,
         in_ticket_no);
    exception
      when dup_val_on_index then
        update hospital.t���﷢Ʊ��Ʊ��_
           set patientid = v_ticket.patientid,
               ticket_no = in_ticket_no
         where hospid = get_login_hospid
           and fee_workerid = hospital.login.get_workerid;
    end;
  end sp_�ϲ���ӡ_���﷢Ʊ��Ʊnc;

  --------------------------------------------------------------------------------------------
  procedure sp_�ϲ���ӡ_��Ʊ_ȡ��nc(in_ticket_no in varchar2) is
    v_ticket invoice_print_ticket%rowtype;
  begin
    prv_������Ʊ(in_ticket_no, '���﷢Ʊ', v_ticket);
    if v_ticket.type <> '���˷�Ʊ'
    then
      raise_application_error(-20001, '���Ǹ��˷�Ʊ,������Ʊ');
    end if;
  
    if v_ticket.status = 'FINISHED'
    then
      raise_application_error(-20001, '���Ƚ�����Ʊ��˺��ڲ���.;');
    elsif v_ticket.status = 'WAIT_WITHDRAW'
    then
      raise_application_error(-20001,
                              '���Ϊ( ' || in_ticket_no ||
                              ' )�ķ�Ʊ�Ѿ�û����ɣ�����ȡ����Ʊ.;');
    elsif v_ticket.status = 'WITHDRAWED'
    then
      null;
    else
      raise_application_error(-20001,
                              '��֧�ֵĲ���״̬( ' || v_ticket.status || ' ).;');
    end if;
  
    update invoice_print_ticket
       set status            = 'WAIT_WITHDRAW',
           withdraw_workerid = hospital.login.get_workerid,
           withdraw_date     = sysdate
     where ticket_no = in_ticket_no
       and invoice_type = '���﷢Ʊ';
  
    update charge_bill
       set ticket_no = in_ticket_no
     where id in (select charge_billid
                    from invoice_print_detail
                   where ticket_no = in_ticket_no
                     and invoice_type = '���﷢Ʊ');
  
    update charge_bill_a01
       set ticket_no = in_ticket_no
     where id in (select charge_billid
                    from invoice_print_detail
                   where ticket_no = in_ticket_no
                     and invoice_type = '���﷢Ʊ');
  
    delete from hospital.t���﷢Ʊ��Ʊ��_
     where hospid = hospital.login.get_hospid
       and ticket_no = in_ticket_no;
  
  end sp_�ϲ���ӡ_��Ʊ_ȡ��nc;
  --------------------------------------------------------------------------------------------
  --��Ʊ����������Ԥ�������
  --  1)�˵�ǰ�ķ�Ʊ 
  --  2)���µ�ǰ��Ʊ��Ӧ�˵���Ʊ���Ϊ�� 
  --  3)����clinic_flow_account��charge_billidΪ��ǰ��Ʊ��Ӧcharge_billid�����м�¼ ��Ʊ��š���Ʊ���Ϊ��
  procedure s_�ϲ���ӡ���﷢Ʊ_��Ʊ(in_ticket_no in varchar2) is
    v_ticket invoice_print_ticket%rowtype;
  begin
    prv_������Ʊ(in_ticket_no, '���﷢Ʊ', v_ticket);
    if v_ticket.type <> '���˷�Ʊ'
    then
      raise_application_error(-20001, '���Ǹ��˷�Ʊ,������Ʊ');
    end if;
  
    if v_ticket.status = 'FINISHED'
    then
      raise_application_error(-20001, '���Ƚ�����Ʊ��˺��ڲ���.;');
    elsif v_ticket.status = 'WAIT_WITHDRAW'
    then
      null;
    elsif v_ticket.status = 'WITHDRAWED'
    then
      raise_application_error(-20001, '�Ѿ���Ʊ�������ظ�����.;');
    else
      raise_application_error(-20001,
                              '��֧�ֵĲ���״̬( ' || v_ticket.status || ' ).;');
    end if;
  
    --  1)�˵�ǰ�ķ�Ʊ 
    --  2)���µ�ǰ��Ʊ��Ӧ�˵���Ʊ���Ϊ�� 
    sp_�ϲ���ӡ_���﷢Ʊ��Ʊnc(in_ticket_no);
  
    --  3)����clinic_flow_account�кͱ��η�Ʊ��Ʊ��ص�Ԥ�����¼
    update hospital.clinic_flow_account_
       set ticket_no = null,
           ��Ʊ���  = null
     where patientid = v_ticket.patientid
       and ticket_no = v_ticket.ticket_no
       and ��Ʊ��� = v_ticket.��Ʊ���
       and charge_billid in (select charge_billid
                               from invoice_print_detail
                              where ticket_no = in_ticket_no
                                and invoice_type = '���﷢Ʊ');
  
    commit;
  end s_�ϲ���ӡ���﷢Ʊ_��Ʊ;
  --------------------------------------------------------------------------------------------
  --ȡ����Ʊ����������Ԥ�������
  --  1)ȡ���˵�ǰ�ķ�Ʊ 
  --  2)ȡ�����µ�ǰ��Ʊ��Ӧ�˵���Ʊ���Ϊ�� 
  --  3)ȡ������clinic_flow_account��charge_billidΪ��ǰ��Ʊ��Ӧcharge_billid�����м�¼ ��Ʊ��š���Ʊ���Ϊ��
  procedure s_�ϲ���ӡ���﷢Ʊ_��Ʊ_ȡ��(in_ticket_no in varchar2) is
    v_ticket invoice_print_ticket%rowtype;
  begin
    prv_������Ʊ(in_ticket_no, '���﷢Ʊ', v_ticket);
    if v_ticket.type <> '���˷�Ʊ'
    then
      raise_application_error(-20001, '���Ǹ��˷�Ʊ,������Ʊ');
    end if;
  
    if v_ticket.status = 'FINISHED'
    then
      raise_application_error(-20001, '���Ƚ�����Ʊ��˺��ڲ���.;');
    elsif v_ticket.status = 'WAIT_WITHDRAW'
    then
      raise_application_error(-20001,
                              '���Ϊ( ' || in_ticket_no ||
                              ' )�ķ�Ʊ�Ѿ�û����ɣ�����ȡ����Ʊ.;');
    elsif v_ticket.status = 'WITHDRAWED'
    then
      null;
    else
      raise_application_error(-20001,
                              '��֧�ֵĲ���״̬( ' || v_ticket.status || ' ).;');
    end if;
    --  1)ȡ���˵�ǰ�ķ�Ʊ 
    --  2)ȡ�����µ�ǰ��Ʊ��Ӧ�˵���Ʊ���Ϊ�� 
    invoice_man.sp_�ϲ���ӡ_��Ʊ_ȡ��nc(in_ticket_no);
    --  3)ȡ������clinic_flow_account�кͱ��η�Ʊ��Ʊ��ص�Ԥ�����¼
    update hospital.clinic_flow_account_
       set ticket_no = v_ticket.ticket_no,
           ��Ʊ���  = v_ticket.��Ʊ���
     where patientid = v_ticket.patientid
       and charge_billid in (select charge_billid
                               from invoice_print_detail
                              where ticket_no = in_ticket_no
                                and invoice_type = '���﷢Ʊ');
  
    commit;
  end s_�ϲ���ӡ���﷢Ʊ_��Ʊ_ȡ��;
  --------------------------------------------------------------------------------------------
  procedure s_�ϲ���ӡ���﷢Ʊ_��Ʊ���(in_ticket_no in varchar2) is
    v_ticket invoice_print_ticket%rowtype;
  begin
    prv_������Ʊ(in_ticket_no, '���﷢Ʊ', v_ticket);
    if v_ticket.type <> '���˷�Ʊ'
    then
      raise_application_error(-20001, '���Ǹ��˷�Ʊ,������Ʊ');
    end if;
    if v_ticket.status = 'FINISHED'
    then
      null;
    elsif v_ticket.status = 'WAIT_WITHDRAW'
    then
      raise_application_error(-20001, '�Ѿ���ˣ������ظ�����.;');
    elsif v_ticket.status = 'WITHDRAWED'
    then
      raise_application_error(-20001, '�Ѿ���Ʊ�������ظ�����.;');
    else
      raise_application_error(-20001,
                              '��֧�ֵĲ���״̬( ' || v_ticket.status || ' ).;');
    end if;
    update invoice_print_ticket
       set status         = 'WAIT_WITHDRAW',
           audit_workerid = hospital.login.get_workerid,
           audit_date     = sysdate
     where ticket_no = in_ticket_no
       and invoice_type = '���﷢Ʊ';
    commit;
  end s_�ϲ���ӡ���﷢Ʊ_��Ʊ���;
  --------------------------------------------------------------------------------------------
  procedure s_�ϲ���ӡ���﷢Ʊ_���_ȡ��(in_ticket_no in varchar2) is
    v_ticket invoice_print_ticket%rowtype;
  begin
    prv_������Ʊ(in_ticket_no, '���﷢Ʊ', v_ticket);
    if v_ticket.type <> '���˷�Ʊ'
    then
      raise_application_error(-20001, '���Ǹ��˷�Ʊ,������Ʊ');
    end if;
    if v_ticket.status = 'FINISHED'
    then
      raise_application_error(-20001, 'û����Ʊ��ˣ�����Ҫ�������.;');
    elsif v_ticket.status = 'WAIT_WITHDRAW'
    then
      null;
    elsif v_ticket.status = 'WITHDRAWED'
    then
      raise_application_error(-20001, '�Ѿ���Ʊ�����ܳ������.;');
    else
      raise_application_error(-20001,
                              '��֧�ֵĲ���״̬( ' || v_ticket.status || ' ).;');
    end if;
    update invoice_print_ticket
       set status         = 'FINISHED',
           audit_workerid = hospital.login.get_workerid,
           audit_date     = sysdate
     where ticket_no = in_ticket_no
       and invoice_type = '���﷢Ʊ';
    commit;
  end s_�ϲ���ӡ���﷢Ʊ_���_ȡ��;
  --------------------------------------------------------------------------------------------
  procedure s_�ϲ���ӡ���﷢Ʊ_��ӡ��Ȩ(in_ticket_no    in varchar2
                           ,in_grant_reason in varchar2) is
    i           number;
    v_seq       number;
    v_ticket_no hospital.invoice_print_ticket_%rowtype;
  begin
    prv_������Ʊ(in_ticket_no, '���﷢Ʊ', v_ticket_no);
    verify_field_dict('T���Ｏ�д�ӡ��Ʊ��Ȩ',
                      '��Ȩԭ��',
                      in_grant_reason,
                      '�޸ķ�Ʊԭ��');
    begin
      select 2
        into i
        from hospital.invoice_print_ticket_
       where ticket_no = in_ticket_no
         and invoice_type = '���﷢Ʊ'
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '�Ҳ���Ҫ��Ȩ�ķ�Ʊ( ' || in_ticket_no || ').;');
    end;
  
    begin
      select 2
        into i
        from t���Ｏ�д�ӡ��Ʊ��Ȩ
       where hospid = get_login_hospid
         and ticket_no = in_ticket_no
         and �Ƿ��Ѵ�ӡ is null;
      raise_application_error(-20001, '�Ѿ�����Ȩ��Ϣ�������ظ���Ȩ.;');
    exception
      when no_data_found then
        null;
    end;
  
    select max(��Ȩ���)
      into v_seq
      from hospital.t���Ｏ�д�ӡ��Ʊ��Ȩ
     where hospid = get_login_hospid
       and ticket_no = in_ticket_no;
  
    v_seq := nvl(v_seq, 0) + 1;
  
    insert into hospital.t���Ｏ�д�ӡ��Ʊ��Ȩ
      (hospid,
       ticket_no,
       ��Ȩ���,
       ��Ȩ����,
       ��Ȩ����,
       ��Ȩԭ��,
       �Ƿ��Ѵ�ӡ)
    values
      (get_login_hospid,
       in_ticket_no,
       v_seq,
       hospital.login.get_workerid,
       sysdate,
       in_grant_reason,
       null);
  
    commit;
  end s_�ϲ���ӡ���﷢Ʊ_��ӡ��Ȩ;
  --------------------------------------------------------------------------------------------
  procedure s_�ϲ���ӡ���﷢Ʊ_��Ȩȡ��(in_ticket_no in varchar2
                           ,in_seq       in varchar2) is
    v_rec t���Ｏ�д�ӡ��Ʊ��Ȩ%rowtype;
  begin
    begin
      select *
        into v_rec
        from hospital.t���Ｏ�д�ӡ��Ʊ��Ȩ
       where hospid = get_login_hospid
         and ticket_no = in_ticket_no
         and ��Ȩ��� = in_seq
         for update nowait;
      if v_rec.�Ƿ��Ѵ�ӡ is not null
      then
        raise_application_error(-20001, '�Ѿ���ӡ�����ܹ�ȡ����Ȩ��Ϣ.;');
      end if;
    exception
      when no_data_found then
        null;
    end;
    delete from hospital.t���Ｏ�д�ӡ��Ʊ��Ȩ
     where hospid = get_login_hospid
       and ticket_no = in_ticket_no
       and ��Ȩ��� = in_seq;
    commit;
  end s_�ϲ���ӡ���﷢Ʊ_��Ȩȡ��;
  --------------------------------------------------------------------------------------------

  procedure s_סԺ��Ʊ_���´�ӡ��Ȩ(in_residentid   in varchar2
                         ,in_grant_reason in varchar2) is
    i     number;
    v_seq number;
  begin
    verify_field_dict('RESIDENT_INVOICE_PRINT_GRANT',
                      'GRANT_REASON',
                      in_grant_reason,
                      '�޸ķ�Ʊԭ��');
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
                                '�Ҳ���סԺ��Ϊ( ' || in_residentid ||
                                ')�Ļ���סԺ����Ϣ���޷���ӡ');
    end;
  
    begin
      select 2
        into i
        from hospital.resident_invoice_print_grant
       where residentid = in_residentid
         and printed is null;
      raise_application_error(-20001, '�Ѿ�����Ȩ��Ϣ�������ظ���Ȩ.;');
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
  
  end s_סԺ��Ʊ_���´�ӡ��Ȩ;
  --------------------------------------------------------------------------------------------
  procedure s_סԺ��Ʊ_���´�ӡ��Ȩȡ��(in_residentid in varchar2
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
        raise_application_error(-20001, '�Ѿ���ӡ�����ܹ�ȡ����Ȩ��Ϣ.;');
      end if;
    exception
      when no_data_found then
        null;
    end;
    delete from hospital.resident_invoice_print_grant
     where residentid = in_residentid
       and seq = in_seq;
    commit;
  end s_סԺ��Ʊ_���´�ӡ��Ȩȡ��;
  --------------------------------------------------------------------------------------------
  procedure s_סԺ��Ʊ_���Ӵ�ӡ����(in_residentid  in varchar2
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
  end s_סԺ��Ʊ_���Ӵ�ӡ����;
  --------------------------------------------------------------------------------------------
  --����0 ������Դ�ӡ , ��0�����ܴ�ӡ
  function get_סԺ��Ʊ_���´�ӡ(in_residentid in varchar2) return integer is
    v_ret number := 0;
  begin
    if nvl(get_system_option('סԺ��Ʊ_�ظ���ӡ������Ȩ'), 'N') = 'N'
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
  
    --�Ƿ���ҩЧ�Ĵ�ӡ��Ȩ��Ϣ
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
  
    --�ж��Ƿ�Ϊ��һ�δ�ӡ
    select max(print)
      into v_ret
      from hospital.charge_bill
     where residentid = in_residentid;
  
    return nvl(v_ret, 1);
  
  end get_סԺ��Ʊ_���´�ӡ;
  --------------------------------------------------------------------------------------------
  procedure s_סԺԤ����_���´�ӡ��Ȩ(in_residentid   in varchar2
                          ,in_pre_payid    in varchar2
                          ,in_grant_reason in varchar2) is
    i     number;
    v_seq number;
  begin
    verify_field_dict('RESIDENT_PRE_PAY_PRINT_GRANT',
                      'GRANT_REASON',
                      in_grant_reason,
                      '�޸ķ�Ʊԭ��');
    begin
      select 2
        into i
        from hospital.pre_pay
       where id = in_pre_payid
         and residentid = in_residentid;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '�Ҳ���סԺ��Ϊ( ' || in_residentid || '),���Ϊ:(' ||
                                in_pre_payid || '),��Ԥ�����¼���޷���ӡ');
    end;
  
    begin
      select 2
        into i
        from hospital.resident_pre_pay_print_grant
       where residentid = in_residentid
         and pre_payid = in_pre_payid
         and printed is null;
      raise_application_error(-20001, '�Ѿ�����Ȩ��Ϣ�������ظ���Ȩ.;');
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
  end s_סԺԤ����_���´�ӡ��Ȩ;
  --------------------------------------------------------------------------------------------
  procedure s_סԺԤ����_���´�ӡ��Ȩȡ��(in_residentid in varchar2
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
        raise_application_error(-20001, '�Ѿ���ӡ�����ܹ�ȡ����Ȩ��Ϣ.;');
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
  end s_סԺԤ����_���´�ӡ��Ȩȡ��;
  --------------------------------------------------------------------------------------------
  procedure s_סԺԤ����_���Ӵ�ӡ����(in_residentid  in varchar2
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
  end s_סԺԤ����_���Ӵ�ӡ����;
  --------------------------------------------------------------------------------------------
  -- ����0���Դ�ӡ�� ��0��ֹ��ӡ
  function get_סԺԤ����_���´�ӡ(in_residentid in varchar2
                         ,in_pre_payid  in varchar2) return integer is
    v_ret number := 0;
  begin
    if nvl(get_system_option('סԺԤ����_�ظ���ӡ������Ȩ'), 'N') = 'N'
    then
      return 0;
    end if;
  
    --�Ƿ���ҩЧ�Ĵ�ӡ��Ȩ��Ϣ
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
  
    --�ж��Ƿ�Ϊ��һ�δ�ӡ
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
  
  end get_סԺԤ����_���´�ӡ;
  --------------------------------------------------------------------------------------------  
  -- in_grant_resaon :   A ���Ϸ�Ʊ��
  --                     B �����Ϸ�Ʊ�����´�ӡ
  procedure s_���﷢Ʊ_���´�ӡ��Ȩ(in_prescriptionid in varchar2
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
                      '�޸ķ�Ʊԭ��');
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
                                    '�Ҳ����������Ϊ:(' || in_prescriptionid ||
                                    '),�˵����Ϊ(' || in_charge_billid ||
                                    ')�ķ�Ʊ��Ϣ���޷���ӡ');
        end;
    end;
  
    begin
      select 2
        into i
        from hospital.clinic_invoice_print_grant
       where prescriptionid = in_prescriptionid
         and charge_billid = in_charge_billid
         and printed is null;
      raise_application_error(-20001, '�Ѿ�����Ȩ��Ϣ�������ظ���Ȩ.;');
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
      --���Ϸ�Ʊ��ʹ���µı��
      prv_ʹ�÷�Ʊ(v_fee_workerid, '���﷢Ʊ', v_new_ticket_no);
      update charge_bill
         set ticket_no = v_new_ticket_no
       where id = in_charge_billid;
      update charge_bill_a01
         set ticket_no = v_new_ticket_no
       where id = in_charge_billid;
    end if;
    commit;
  end s_���﷢Ʊ_���´�ӡ��Ȩ;
  --------------------------------------------------------------------------------------------  
  procedure s_���﷢Ʊ_���´�ӡ��Ȩȡ��(in_prescriptionid in varchar2
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
        raise_application_error(-20001, '�ɷ�Ʊ�Ѿ������ˣ�����ȡ����ӡ.;');
      end if;
      if v_rec.printed is not null
      then
        raise_application_error(-20001, '�Ѿ���ӡ�����ܹ�ȡ����Ȩ��Ϣ.;');
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
  end s_���﷢Ʊ_���´�ӡ��Ȩȡ��;
  --------------------------------------------------------------------------------------------
  procedure s_���﷢Ʊ_���Ӵ�ӡ����(in_prescriptionid in varchar2
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
  end s_���﷢Ʊ_���Ӵ�ӡ����;

  --------------------------------------------------------------------------------------------
  --����0 ������Դ�ӡ , ��0�����ܴ�ӡ
  function get_���﷢Ʊ_���´�ӡ(in_prescriptionid in varchar2
                        ,in_charge_billid  in varchar2) return number is
    v_ret number := 0;
  begin
    if nvl(get_system_option('���﷢Ʊ_�ظ���ӡ������Ȩ'), 'N') = 'N'
    then
      return 0;
    end if;
  
    --�Ƿ���ҩЧ�Ĵ�ӡ��Ȩ��Ϣ
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
  
    --�ж��Ƿ�Ϊ��һ�δ�ӡ
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
  end get_���﷢Ʊ_���´�ӡ;
  --------------------------------------------------------------------------------------------
  function get_�ϲ���ӡ���﷢Ʊ_���´�ӡ(in_ticket_no in varchar2) return number is
    v_ret number := 0;
  begin
    if nvl(get_system_option('���﷢Ʊ_�ظ���ӡ������Ȩ'), 'N') = 'N'
    then
      return 0;
    end if;
  
    --�Ƿ���ҩЧ�Ĵ�ӡ��Ȩ��Ϣ
    begin
      select 0
        into v_ret
        from hospital.t���Ｏ�д�ӡ��Ʊ��Ȩ_
       where hospid = get_login_hospid
         and ticket_no = in_ticket_no
         and �Ƿ��Ѵ�ӡ is null;
      return v_ret;
    exception
      when no_data_found then
        null;
    end;
  
    --�ж��Ƿ�Ϊ��һ�δ�ӡ
    select nvl(print_num, 0)
      into v_ret
      from hospital.invoice_print_ticket
     where hospid = get_login_hospid
       and ticket_no = in_ticket_no;
    return v_ret;
  end get_�ϲ���ӡ���﷢Ʊ_���´�ӡ;
  --------------------------------------------------------------------------------------------
  procedure s_�����շ�_��Ʊ����(in_pay_method    in varchar2
                       ,in_charge_billid in varchar2) is
    v_��ӡ��Ʊ   hospital.t�����շ�����_.��ӡ��Ʊ%type;
    v_ticket_no  hospital.charge_bill.ticket_no%type;
    v_attribute  charge_bill.attribute%type;
    v_patientid  hospital.patient_.id%type;
    v_residentid hospital.resident_info_.residentid%type;
    v_fee        number;
  
  begin
    --if in_pay_method not in ('CASH', 'BANK')
    --then
    -- raise_application_error(-20001,
    --                         '���Ϊ:' || in_charge_billid || '�շ�����Ϊ' ||
    --                        in_pay_method ||
    --                        ',����ʹ��s_�����շ�_��Ʊ����.;');
    --end if;
    select ��ӡ��Ʊ
      into v_��ӡ��Ʊ
      from hospital.t�����շ�����
     where hospid = get_login_hospid
       and charge_bill_attribute = in_pay_method;
  
    if v_��ӡ��Ʊ = '2'
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
                                  '�Ҳ������Ϊ( ' || in_charge_billid ||
                                  ' )���շ��˵�.;');
          null;
      end;
      if v_fee <= 0
      then
        return;
      end if;
    
      s_ʹ�÷�Ʊ('���﷢Ʊ', v_ticket_no);
      s_��Ʊ_�½�����(v_patientid,
                v_residentid,
                v_attribute,
                '1',
                '���﷢Ʊ',
                v_ticket_no,
                '0');
    
      s_��Ʊ_������ϸ(v_ticket_no, '���﷢Ʊ', in_charge_billid, 1);
      update invoice_print_ticket
         set status = 'FINISHED'
       where ticket_no = v_ticket_no
         and invoice_type = '���﷢Ʊ';
    end if;
  end s_�����շ�_��Ʊ����;

  --------------------------------------------------------------------------------------------
  procedure s_�����˷�_��Ʊ����(in_ticket_no     in varchar2
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
         and invoice_type = '���﷢Ʊ'
         and status = 'FINISHED';
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '���Ϊ:' || in_ticket_no || '��Ʊʹ�ü�¼������.;');
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
                              '���Ϊ:' || in_charge_billid || '���˵���¼������.;');
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
       and invoice_type = '���﷢Ʊ';
  end s_�����˷�_��Ʊ����;
  --------------------------------------------------------------------------------------------
  procedure s_����Ԥ����_��Ʊ����(in_clinic_flow_accountid in number) is
    v_ticket_no           hospital.charge_bill.ticket_no%type;
    v_clinic_flow_account hospital.clinic_flow_account%rowtype;
  begin
    if nvl(get_system_option('����Ԥ����_��Ʊ����'), 'N') = 'Y'
    then
      select *
        into v_clinic_flow_account
        from clinic_flow_account
       where id = in_clinic_flow_accountid
         for update nowait;
      if v_clinic_flow_account.flag = 'B'
         and v_clinic_flow_account.back_clinic_flow_accountid is null
         and get_system_option('����Ԥ����_���㵥��Ʊ����') = 'Y'
      then
        invoice_man.s_ʹ�÷�Ʊ('������㵥', v_ticket_no);
      else
        invoice_man.s_ʹ�÷�Ʊ('����Ԥ����', v_ticket_no);
      end if;
      update clinic_flow_account
         set ticket_no = to_char(v_ticket_no)
       where id = in_clinic_flow_accountid;
    end if;
  end s_����Ԥ����_��Ʊ����;
  --------------------------------------------------------------------------------------------
  procedure s_����Ԥ����_���´�ӡ��Ȩ(in_clinic_flow_accountid in number
                          ,in_grant_reason          in varchar2) is
    i     number;
    v_seq number;
  begin
    verify_field_dict('T����Ԥ�����ӡ��Ȩ',
                      '��Ȩԭ��',
                      in_grant_reason,
                      '�޸ķ�Ʊԭ��');
    begin
      select 2
        into i
        from hospital.clinic_flow_account_
       where id = in_clinic_flow_accountid
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '�Ҳ���Ҫ��Ȩ��( ' || in_clinic_flow_accountid ||
                                ')����Ԥ���𵥾�.;');
    end;
  
    begin
      select 2
        into i
        from hospital.t����Ԥ�����ӡ��Ȩ
       where hospid = get_login_hospid
         and clinic_flow_accountid = in_clinic_flow_accountid
         and �Ƿ��Ѵ�ӡ is null;
      raise_application_error(-20001, '�Ѿ�����Ȩ��Ϣ�������ظ���Ȩ.;');
    exception
      when no_data_found then
        null;
    end;
  
    select max(��Ȩ���)
      into v_seq
      from hospital.t����Ԥ�����ӡ��Ȩ
     where hospid = get_login_hospid
       and clinic_flow_accountid = in_clinic_flow_accountid;
  
    v_seq := nvl(v_seq, 0) + 1;
  
    insert into hospital.t����Ԥ�����ӡ��Ȩ
      (hospid,
       clinic_flow_accountid,
       ��Ȩ���,
       ��Ȩ����,
       ��Ȩ����,
       ��Ȩԭ��,
       �Ƿ��Ѵ�ӡ)
    values
      (get_login_hospid,
       in_clinic_flow_accountid,
       v_seq,
       hospital.login.get_workerid,
       sysdate,
       in_grant_reason,
       null);
    commit;
  end s_����Ԥ����_���´�ӡ��Ȩ;
  --------------------------------------------------------------------------------------------
  procedure s_����Ԥ����_���´�ӡ��Ȩȡ��(in_clinic_flow_accountid in number
                            ,in_seq                   in varchar2) is
    v_rec hospital.t����Ԥ�����ӡ��Ȩ%rowtype;
  begin
    begin
      select *
        into v_rec
        from hospital.t����Ԥ�����ӡ��Ȩ
       where hospid = get_login_hospid
         and clinic_flow_accountid = in_clinic_flow_accountid
         and ��Ȩ��� = in_seq
         for update nowait;
      if v_rec.�Ƿ��Ѵ�ӡ is not null
      then
        raise_application_error(-20001, '�Ѿ���ӡ�����ܹ�ȡ����Ȩ��Ϣ.;');
      end if;
    exception
      when no_data_found then
        null;
    end;
    delete from hospital.t����Ԥ�����ӡ��Ȩ
     where hospid = get_login_hospid
       and clinic_flow_accountid = in_clinic_flow_accountid
       and ��Ȩ��� = in_seq;
    commit;
  
  end s_����Ԥ����_���´�ӡ��Ȩȡ��;
  --------------------------------------------------------------------------------------------
  procedure s_����Ԥ����_���Ӵ�ӡ����(in_clinic_flow_accountid in number
                          ,in_print_count           in number) is
  begin
    update hospital.t����Ԥ�����ӡ��Ȩ
       set �Ƿ��Ѵ�ӡ = 1
     where hospid = get_login_hospid
       and clinic_flow_accountid = in_clinic_flow_accountid
       and �Ƿ��Ѵ�ӡ is null;
    update clinic_flow_account
       set print = nvl(print, 0) + nvl(in_print_count, 1)
     where id = in_clinic_flow_accountid;
    commit;
  end s_����Ԥ����_���Ӵ�ӡ����;
  --------------------------------------------------------------------------------------------
  function get_����Ԥ����_���´�ӡ(in_clinic_flow_accountid in number) return number is
    v_ret number := 0;
  begin
    if nvl(get_system_option('����Ԥ����_�ظ���ӡ������Ȩ'), 'N') = 'N'
    then
      return 0;
    end if;
  
    --�Ƿ���ҩЧ�Ĵ�ӡ��Ȩ��Ϣ
    begin
      select 0
        into v_ret
        from hospital.t����Ԥ�����ӡ��Ȩ
       where hospid = get_login_hospid
         and clinic_flow_accountid = in_clinic_flow_accountid
         and �Ƿ��Ѵ�ӡ is null;
      return v_ret;
    exception
      when no_data_found then
        null;
    end;
  
    --�ж��Ƿ�Ϊ��һ�δ�ӡ
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
  end get_����Ԥ����_���´�ӡ;
  --------------------------------------------------------------------------------------------
  function s_get_�ϲ���ӡ��Ʊ��(in_fee_workerid          in varchar2
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
  end s_get_�ϲ���ӡ��Ʊ��;
  --------------------------------------------------------------------------------------------
  function s_get_�ϲ���ӡ��Ʊ��Ʊ��(in_fee_workerid          in varchar2
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
  end s_get_�ϲ���ӡ��Ʊ��Ʊ��;
  --------------------------------------------------------------------------------------------
  function s_get_�ϲ���ӡ��Ʊ��(in_fee_workerid          in varchar2
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
  end s_get_�ϲ���ӡ��Ʊ��;
  --------------------------------------------------------------------------------------------
  function s_get_�ϲ���ӡ��Ʊ��Ʊ��(in_fee_workerid          in varchar2
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
  end s_get_�ϲ���ӡ��Ʊ��Ʊ��;
  --------------------------------------------------------------------------------------------
  function s_get_����Ԥ����_��ӡƱ��(in_fee_workerid in varchar2
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
  end s_get_����Ԥ����_��ӡƱ��;
  --------------------------------------------------------------------------------------------
  function get_�ϲ���Ʊ_Ԥ����(in_ticket_no in varchar2) return number is
    v_�շ�ǰ���     number;
    v_�շ��ڼ䷢���� number;
    v_Ԥ����         number; -- = v_�շ�ǰ��� + v_�շ��ڼ䷢����
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
                                '���Ϊ(' || in_ticket_no || ')�ķ�Ʊ�����ڣ����ܴ�ӡ.;');
      when others then
        raise_application_error(-20001, '���������ڲ��������Ժ�����.;');
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
          into v_�շ�ǰ���, v_min_id
          from hospital.clinic_flow_account
         where charge_billid = c.id
           and charge_billid is not null;
      exception
        when no_data_found then
          raise_application_error(-20001, '�Ƿ��Ĵ���.;');
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
          raise_application_error(-20001, '�Ƿ��Ĵ���.;');
      end;
      exit;
    end loop;
  
    select sum(in_fee)
      into v_�շ��ڼ䷢����
      from hospital.clinic_flow_account_
     where patientid = v_ticket.patientid
       and id > v_min_id
       and id < v_max_id
       and flag in ('A', 'B');
    v_Ԥ���� := nvl(v_�շ�ǰ���, 0) + nvl(v_�շ��ڼ䷢����, 0);
    return v_Ԥ����;
  end get_�ϲ���Ʊ_Ԥ����;
  --------------------------------------------------------------------------------------------
  function get_�ϲ���Ʊ_Ԥ�������(in_ticket_no in varchar2) return number is
    v_Ԥ������� number;
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
                                '���Ϊ(' || in_ticket_no || ')�ķ�Ʊ�����ڣ����ܴ�ӡ.;');
      when others then
        raise_application_error(-20001, '���������ڲ��������Ժ�����.;');
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
          into v_Ԥ�������
          from hospital.clinic_flow_account
         where charge_billid = c.id
           and charge_billid is not null;
      exception
        when no_data_found then
          raise_application_error(-20001, '�Ƿ��Ĵ���.;');
      end;
      exit;
    end loop;
    return nvl(v_Ԥ�������, 0);
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
                              '���Ϊ(' || in_id || ')�ķ�Ʊ��Ϣ������.;');
  end lock_invoice_info;
  -------------------------------------------------------------------------------------------
begin
  null;
end invoice_man;
/
