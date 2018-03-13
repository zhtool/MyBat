create or replace package pres is

  -- Author  : tiger
  -- Created : 2008/10/16 13:17:10
  -- Purpose : ��S_סԺ��ʼ�Ĵ洢�������벢��д
  procedure s_סԺ_���Ŵ�λ(in_patientid       in varchar2
                     ,in_residentid      in varchar2
                     ,in_charge_doctorid in varchar2
                     ,in_bedid           in varchar2);
  procedure s_סԺ_�����Ժ_��Ȩ(in_residentid in varchar2);
  procedure s_סԺ_�����Ժ_��Ȩȡ��(in_residentid in varchar2);

  procedure s_סԺ_��Ժ����(in_patientid         in varchar2
                     ,in_residentid        in varchar2
                     ,in_in_state          in varchar2
                     ,in_definite_date     in varchar2
                     ,in_blood_type        in varchar2
                     ,in_rescue_times      in varchar2
                     ,in_success_times     in varchar2
                     ,in_follow_flag       in varchar2
                     ,in_follow_date       in varchar2
                     ,in_open_body         in varchar2
                     ,in_teach_flag        in varchar2
                     ,in_sample_quality    in varchar2
                     ,in_direct_doctorid   in varchar2
                     ,in_charge_doctorid   in varchar2
                     ,in_resident_doctorid in varchar2
                     ,in_practice_doctorid in varchar2
                     ,in_out_date          in varchar2);
  procedure s_סԺ_��Ժ����_ȡ��(in_patientid  in varchar2
                        ,in_residentid in varchar2
                        ,in_remark     in varchar2);
  procedure s_סԺ_���ʷ��ÿ���(in_patientid     in varchar2
                       ,in_residentid    in varchar2
                       ,in_account_type  in varchar2
                       ,in_pay_limit     in number
                       ,in_control_limit in number);
  procedure s_סԺ_����ĸӤ��ϵ(in_mother_residentid in varchar2
                       ,in_baby_residentid   in varchar2);
  procedure s_סԺ_ȡ��ĸӤ��ϵ(in_mother_residentid in varchar2
                       ,in_baby_residentid   in varchar2);
  procedure s_סԺ_����_����;
  procedure s_סԺ_����_����_����(in_residentid in varchar2);
  procedure s_סԺ_����_����_����(in_residentid in varchar2);
  procedure s_סԺ_����͸֧��(in_patientid  in varchar2
                      ,in_residentid in varchar2
                      ,in_fee        in varchar2);
  procedure s_סԺ_����Ԥ����(in_patientid  in varchar2
                      ,in_residentid in varchar2
                      ,in_fee        in varchar2);
  procedure s_סԺ_��Ѻ��(in_patientid  in varchar2
                    ,in_residentid in varchar2
                    ,in_fee_flag   in varchar2
                    ,in_use_fee    in varchar2
                    ,in_fee        in varchar2
                    ,in_bill_type  in varchar2
                    ,in_bill_no    in varchar2
                    ,in_remark     in varchar2
                    ,out_id        out varchar2);
  procedure s_סԺ_��Ѻ��nc(in_patientid  in varchar2
                      ,in_residentid in varchar2
                      ,in_fee_flag   in varchar2
                      ,in_use_fee    in varchar2
                      ,in_fee        in varchar2
                      ,in_bill_type  in varchar2
                      ,in_bill_no    in varchar2
                      ,in_remark     in varchar2
                      ,out_id        out varchar2);
  procedure s_סԺ_��Ѻ��(in_patientid  in varchar2
                    ,in_residentid in varchar2
                    ,in_pre_payid  in varchar2
                    ,in_remark     in varchar2);
  procedure s_סԺ_��Ѻ��nc(in_patientid  in varchar2
                      ,in_residentid in varchar2
                      ,in_pre_payid  in varchar2
                      ,in_remark     in varchar2);
  procedure s_סԺ_��Ѻ��_��Ȩ(in_patientid       in varchar2
                       ,in_residentid      in varchar2
                       ,in_pre_payid       in varchar2
                       ,in_withdraw_reason in varchar2);
  procedure s_סԺ_��Ѻ��_��Ȩ_ȡ��(in_patientid  in varchar2
                          ,in_residentid in varchar2
                          ,in_pre_payid  in varchar2);
  -----------------------------------------------------------------------------------------------------
  procedure sp_סԺԤ��_������_���_begin(in_app_id         in varchar2
                                ,in_patientid      in varchar2
                                ,in_residentid     in varchar2
                                ,in_fee_flag       in varchar2
                                ,in_use_fee        in varchar2
                                ,in_fee            in varchar2
                                ,in_bill_type      in varchar2
                                ,in_bill_no        in varchar2
                                ,in_remark         in varchar2
                                ,in_login_hospid   in varchar2
                                ,in_login_deptid   in varchar2
                                ,in_login_workerid in varchar2
                                ,out_id            out varchar2);
  -----------------------------------------------------------------------------------------------------
  procedure sp_סԺԤ��_������_���_end(in_app_id         in varchar2
                              ,in_patientid      in varchar2
                              ,in_residentid     in varchar2
                              ,in_prepay_id      in varchar2
                              ,in_is_success     in varchar2
                              ,in_login_hospid   in varchar2
                              ,in_login_deptid   in varchar2
                              ,in_login_workerid in varchar2);
  ----------------------------------------------------------------------------------------------------
  procedure sp_סԺԤ��_������_����_begin(in_app_id     in varchar2
                                ,in_patientid  in varchar2
                                ,in_residentid in varchar2
                                ,in_pre_payid  in varchar2
                                ,in_remark     in varchar2);
  -----------------------------------------------------------------------------------------------------
  procedure sp_סԺԤ��_������_����_end(in_app_id         in varchar2
                              ,in_patientid      in varchar2
                              ,in_residentid     in varchar2
                              ,in_prepay_id      in varchar2
                              ,in_is_success     in varchar2
                              ,in_login_hospid   in varchar2
                              ,in_login_deptid   in varchar2
                              ,in_login_workerid in varchar2
                              ,in_his_tsn        in varchar2);
  procedure s_סԺ_��Ժ(in_patientid  in varchar2
                   ,in_residentid in varchar2);
  procedure s_סԺ_��Ժnc(in_patientid  in varchar2
                     ,in_residentid in varchar2);
  procedure s_סԺ_��Ժ_ת��(in_residentid in varchar2);
  procedure s_סԺ_��Ժ_ȡ��(in_process_no in varchar2
                      ,in_residentid in varchar2);
  procedure s_סԺ_��Ժ_ȡ��nc(in_process_no in varchar2
                        ,in_residentid in varchar2);
  --סԺ������صĲ���
  procedure s_סԺ_���ɾ��(in_residentid in varchar2
                     ,in_diagnoseid in varchar2);

  procedure s_סԺ_�������(in_attribute  in varchar2
                     ,in_patientid  in varchar2
                     ,in_residentid in varchar2
                     ,in_diseaseid  in varchar2
                     ,in_remark     in varchar2);
  --��������Ժ��صĲ���
  procedure s_סԺ_סԺ�Ǽ�(out_patientid              out varchar2
                     ,out_residentid             out varchar2
                     ,in_hosp_id                 in varchar2
                     ,in_patientid               in varchar2
                     ,in_residentid              in varchar2
                     ,in_deptid                  in varchar2
                     ,in_bill_type               in varchar2
                     ,in_pre_pay                 in varchar2
                     ,in_pre_pay_bill_no         in varchar2
                     ,in_office_address          in varchar2
                     ,in_birthday                in varchar2
                     ,in_gender                  in varchar2
                     ,in_birth_province          in varchar2
                     ,in_birth_county            in varchar2
                     ,in_profession              in varchar2
                     ,in_doctorid                in varchar2
                     ,in_warrantor               in varchar2
                     ,in_remark                  in varchar2
                     ,in_resident_info_attribute in varchar2
                     , --סԺ�������
                      in_office_tele             in varchar2
                     ,in_office_zip              in varchar2
                     ,in_home_address            in varchar2
                     ,in_home_zip                in varchar2
                     ,in_asso_name               in varchar2
                     ,in_asso_relation           in varchar2
                     ,in_asso_address            in varchar2
                     ,in_asso_tele               in varchar2
                     ,in_qc_id                   in varchar2
                     ,in_home_bed                in number
                     ,in_age                     in varchar2
                     , --��Ժ����
                      in_age_unit                in varchar2
                     , --��Ժ���䵥λ
                      out_pre_payid              out varchar2
                     ,in_education               in varchar2
                     ,in_regionid                in varchar2
                     ,in_case_page1_pay_method   in varchar2 default null
                     ,in_patient_attribute       in varchar2 default null
                     ,in_identification          in varchar2 default null
                     ,in_marry_status            in varchar2 default null
                     ,in_race                    in varchar2 default null
                     ,in_blood_type              in varchar2 default null
                     ,in_free_no                 in varchar2 default null
                     ,in_home_tele               in varchar2 default null
                     ,in_asso_zip                in varchar2 default null
                     ,in_name                    in varchar2 default null
                     ,in_pinyin                  in varchar2 default null
                     ,in_country                 in varchar2 default null
                     ,in_diagnose_attribute      in varchar2 default null
                     ,in_diagnose_diseaseid      in varchar2 default null
                     ,in_diagnose_remark         in varchar2 default null
                     ,in_seq                     in varchar2 default null --�ڼ���סԺ
                     ,in_confirm_seq             in varchar2 default null
                     ,in_long_term_out_patient   in varchar2 default null);

  procedure s_סԺ_סԺ�Ǽ�_ȡ��(in_patientid  in varchar2
                        ,in_residentid in varchar2);
  procedure s_סԺ_סԺ�Ǽ�_�޸ĿƱ�(in_patientid  in varchar2
                          ,in_residentid in varchar2
                          ,in_new_deptid in varchar2);
  procedure s_סԺ_��Ժ����_�޸�(in_patientid  in varchar2
                        ,in_residentid in varchar2
                        ,in_new_date   in varchar2);
  procedure s_סԺ_�������Ǽ�(in_mother_residentid in varchar2
                      ,in_residentid        in varchar2
                      ,in_name              in varchar2
                      ,in_pinyin            in varchar2
                      ,in_birthday          in varchar2
                      ,in_gender            in varchar2
                      ,in_remark            in varchar2
                      ,out_patientid        out varchar2
                      ,out_residentid       out varchar2);
  procedure s_סԺ_�޸���������Ϣ(in_residentid in varchar2
                        ,in_name       in varchar2
                        ,in_pinyin     in varchar2
                        ,in_birthday   in varchar2
                        ,in_gender     in varchar2);
  procedure s_סԺ_�������Ǽ�_ȡ��(in_patientid         in varchar2
                         ,in_residentid        in varchar2
                         ,in_mother_residentid in varchar2);
  --���²�����ת����صĲ���                                     
  procedure s_סԺ_ת��_����(in_residentid         in varchar2 --����סԺ��
                      ,in_deptid             in varchar2 --ת������
                      ,in_destination_deptid in varchar2 --��ת�����
                      ,in_type               in varchar2 --ת�����ͣ�A ��ͨת�� B ĸӤͬʱת�� C ĸ��ת�ơ�Ӥ����ר�� D Ӥ��ת�ơ�ĸ�ײ�ת��
                      ,in_remark             in varchar2);
  procedure s_סԺ_ת��_����_ȡ��(in_residentid in varchar2 --����סԺ��
                          );
  procedure s_סԺ_ת��_ת��(in_residentid in varchar2);
  procedure s_סԺ_ת��_�ܾ�ת��(in_residentid in varchar2);
  procedure s_סԺ_������ҳ_����(in_residentid in varchar2
                        ,in_reason     in varchar2);
  procedure s_�޸�סԺ��(in_old_residentid in varchar2
                   ,in_new_residentid in varchar2);
  --�շѽ���
  procedure s_סԺ_���������ƽ��(in_patientid  in varchar2
                        ,in_residentid in varchar2
                        ,in_fee        in varchar2
                        ,out_seq       out varchar2);
  procedure s_סԺ_�˱������ƽ��(in_patientid  in varchar2
                        ,in_residentid in varchar2
                        ,in_seq        in varchar2);
  --�²��˵Ǽ�
  procedure change_patient(in_op_type           in varchar2
                          ,out_id               out varchar2
                          ,in_id                in varchar2
                          ,in_pinyin            in varchar2
                          ,in_name              in varchar2
                          ,in_attribute         in varchar2
                          ,in_gender            in varchar2
                          ,in_birthday          in varchar2
                          ,in_profession        in varchar2
                          ,in_country           in varchar2
                          ,in_identification    in varchar2
                          ,in_marry_status      in varchar2
                          ,in_birth_province    in varchar2
                          ,in_birth_county      in varchar2
                          ,in_race              in varchar2
                          ,in_blood_type        in varchar2
                          ,in_free_no           in varchar2
                          ,in_home_address      in varchar2
                          ,in_home_tele         in varchar2
                          ,in_home_zip          in varchar2
                          ,in_office_address    in varchar2
                          ,in_office_tele       in varchar2
                          ,in_office_zip        in varchar2
                          ,in_asso_name         in varchar2
                          ,in_asso_relation     in varchar2
                          ,in_asso_address      in varchar2
                          ,in_asso_tele         in varchar2
                          ,in_asso_zip          in varchar2
                          ,in_clinic_fee_rate   in varchar2
                          ,in_resident_fee_type in varchar2
                          ,in_resident_fee_rate in varchar2
                          ,in_remark            in varchar2
                          ,in_age               in varchar2 default null
                          ,in_age_unit          in varchar2 default null
                          ,in_education         in varchar2 default null
                          ,in_regionid          in varchar2 default null
                          ,in_religion          in varchar2 default null
                          ,in_residentid        in varchar2 default null);
  ---------------------------------------------------------------------------
  --     tiger      2009/01/17 - ���������д
  procedure change_patient_nc(in_op_type           in varchar2
                             ,out_id               out varchar2
                             ,in_id                in varchar2
                             ,in_pinyin            in varchar2
                             ,in_name              in varchar2
                             ,in_attribute         in varchar2
                             ,in_gender            in varchar2
                             ,in_birthday          in varchar2
                             ,in_profession        in varchar2
                             ,in_country           in varchar2
                             ,in_identification    in varchar2
                             ,in_marry_status      in varchar2
                             ,in_birth_province    in varchar2
                             ,in_birth_county      in varchar2
                             ,in_race              in varchar2
                             ,in_blood_type        in varchar2
                             ,in_free_no           in varchar2
                             ,in_home_address      in varchar2
                             ,in_home_tele         in varchar2
                             ,in_home_zip          in varchar2
                             ,in_office_address    in varchar2
                             ,in_office_tele       in varchar2
                             ,in_office_zip        in varchar2
                             ,in_asso_name         in varchar2
                             ,in_asso_relation     in varchar2
                             ,in_asso_address      in varchar2
                             ,in_asso_tele         in varchar2
                             ,in_asso_zip          in varchar2
                             ,in_clinic_fee_rate   in varchar2
                             ,in_resident_fee_type in varchar2
                             ,in_resident_fee_rate in varchar2
                             ,in_remark            in varchar2
                             ,in_age               in varchar2
                             ,in_age_unit          in varchar2
                             ,in_education         in varchar2
                             ,in_regionid          in varchar2
                             ,in_religion          in varchar2
                             ,in_residentid        in varchar2 default null);
  procedure s_�޸Ĳ���������Ȩ(in_patientid in varchar2
                      ,in_old_name  in varchar2
                      ,in_new_name  in varchar2);
  procedure s_�޸Ĳ���������Ȩ_ȡ��(in_patientid in varchar2
                         ,in_seq       in varchar2);
  --֪ʶ�ֵ�ά��                          
  procedure change_field_knowledge_nc(in_op_type     in varchar2
                                     ,in_table_name  in varchar2
                                     ,in_field_name  in varchar2
                                     ,in_field_value in varchar2
                                     ,in_pinyin      in varchar2
                                     ,in_frequence   in varchar2
                                     ,in_type        in varchar2
                                     ,in_attribute   in varchar2
                                     ,in_status      in varchar2);
  procedure change_field_knowledge(in_op_type     in varchar2
                                  ,in_table_name  in varchar2
                                  ,in_field_name  in varchar2
                                  ,in_field_value in varchar2
                                  ,in_pinyin      in varchar2
                                  ,in_frequence   in varchar2
                                  ,in_type        in varchar2
                                  ,in_attribute   in varchar2
                                  ,in_status      in varchar2);
  --���ﲡ����־�Ǽ�
  procedure change_clinic_log_register(in_op_type              in varchar2
                                      ,in_patientid            in varchar2
                                      ,in_fertility            in varchar2
                                      ,in_onset_date           in date
                                      ,in_onset_address        in varchar2
                                      ,in_diagnose_status      in varchar2
                                      ,in_diagnose1            in varchar2
                                      ,in_diagnose1_icd10      in varchar2
                                      ,in_diagnose2            in varchar2
                                      ,in_diagnose2_icd10      in varchar2
                                      ,in_diagnose3            in varchar2
                                      ,in_diagnose3_icd10      in varchar2
                                      ,in_other_diagnose       in varchar2
                                      ,in_other_diagnose_icd10 in varchar2
                                      ,in_diagnostic_basis     in varchar2
                                      ,in_diagnose_result      in varchar2
                                      ,in_remark               in varchar2
                                      ,in_id                   in varchar2 default null
                                      ,in_temperature_flag     in varchar2 default null
                                      ,in_Ѫѹ��ѹֵ           in varchar2 default null
                                      ,in_Ѫѹ��ѹֵ           in varchar2 default null
                                      ,in_Ѫѹ��λ             in varchar2 default null
                                      ,in_Ѫ��ֵ               in varchar2 default null
                                      ,in_Ѫ�ǵ�λ             in varchar2 default null
                                      ,in_revise_reason        in varchar2 default null);
  procedure s_������־_����(in_id     in varchar2
                     ,in_status in varchar2);
  --���ڽ���
  procedure s_סԺ_���ڽ���(in_patientid      in varchar2
                     ,in_residentid     in varchar2
                     ,in_balance_date   in varchar2 default null
                     ,out_charge_billid out varchar2);
  procedure s_סԺ_���ڽ���_ȡ��(in_patientid     in varchar2
                        ,in_residentid    in varchar2
                        ,in_charge_billid in varchar2);
  procedure s_סԺ_���ڽ���_����(in_patientid         in varchar2
                        ,in_residentid        in varchar2
                        ,in_charge_billid     in varchar2
                        ,in_status            in varchar2
                        ,in_patient_type      in varchar2
                        ,in_pay_bill_type     in varchar2
                        ,in_account_receiable in number --Ӧ��סԺ���ܶ�  Account_receiable
                        ,in_total_fee         in number --ʵ�� Total_fee
                        ,in_pre_pay           in number --Ԥ������  Pre_pay
                        ,in_pay_lack          in number --������� Pay_lack
                        ,in_back_fee          in number --�˿��� Back_fee
                        ,in_diff_fee          in number --Ƿ�ѽ�� Diff_fee
                        ,in_account           in number --��ϸ��Ŀ����  Account
                        ,in_account_pay       in number --�������� Account_pay
                        ,in_self_pay          in number --����֧��self_pay
                        ,in_third_assure      in number --�������������
                        ,in_third_info        in varchar2 --������������Ϣ
                        ,in_hospital_pay      in number);
  procedure s_סԺ_���ڽ���_����_ȡ��(in_patientid     in varchar2
                           ,in_residentid    in varchar2
                           ,in_charge_billid in varchar2);
  procedure s_סԺ_���(in_residentid in varchar2
                   ,in_reason     in varchar2);
  procedure s_סԺ_���_����(in_residentid in varchar2);
  function get_סԺ����_�Ƿ����(in_residentid in varchar2) return integer;
  procedure verify_valid_���֤��(in_id in varchar2);
  function get_birthday_from_���֤��(in_id in varchar2) return varchar2;
  procedure get_age(in_birthday  in date
                   ,in_from_date date
                   ,out_age      out varchar2
                   ,out_age_unit out varchar2);
  -----------------------------------------------------------------------------------------------------     
  function get_is_new_residentid_rule(in_residentid in varchar2)
    return varchar2;
  -----------------------------------------------------------------------------------------------------               
  function get_resident_hosp_id(in_residentid in varchar2) return varchar2;
  -----------------------------------------------------------------------------------------------------
  function get_resident_id(in_residentid in varchar2) return varchar2;
  -----------------------------------------------------------------------------------------------------
  function get_resident_times(in_patientid in varchar2) return varchar2;
  -----------------------------------------------------------------------------------------------------
  function get_resident_visit_id(in_residentid in varchar2) return varchar2;
  -----------------------------------------------------------------------------------------------------

  procedure s_����_��סԺ������־(in_patientid  in varchar2
                         ,in_residentid in varchar2
                         ,in_no_pre_pay in varchar2);
  procedure s_סԺ����_ҽ����չ��Ϣ(in_residentid           in varchar2
                         ,in_סԺ����             in varchar2
                         ,in_������ۼ�ͳ��       in varchar2
                         ,in_������ۼƹ���Ա���� in varchar2
                         ,in_���ܳ��������־     in varchar2
                         ,in_���ܹ���Ա������־   in varchar2
                         ,in_ҽ���չ����         in varchar2);
  procedure s_�½�_סԺ֤(in_patientid in varchar2
                    ,out_id       out varchar2);
  procedure s_�޸�_סԺ֤(in_id              in varchar2
                    ,in_patientid       in varchar2
                    ,in_name            in varchar2
                    ,in_pinyin          in varchar2
                    ,in_attribute       in varchar2
                    ,in_gender          in varchar2
                    ,in_age             in varchar2
                    ,in_age_unit        in varchar2
                    ,in_birthday        in varchar2
                    ,in_profession      in varchar2
                    ,in_country         in varchar2
                    ,in_identification  in varchar2
                    ,in_marry_status    in varchar2
                    ,in_birth_province  in varchar2
                    ,in_birth_county    in varchar2
                    ,in_race            in varchar2
                    ,in_free_no         in varchar2
                    ,in_home_address    in varchar2
                    ,in_home_tele       in varchar2
                    ,in_home_zip        in varchar2
                    ,in_office_address  in varchar2
                    ,in_office_tele     in varchar2
                    ,in_office_zip      in varchar2
                    ,in_asso_name       in varchar2
                    ,in_asso_relation   in varchar2
                    ,in_asso_address    in varchar2
                    ,in_asso_tele       in varchar2
                    ,in_asso_zip        in varchar2
                    ,in_remark          in varchar2
                    ,in_education       in varchar2
                    ,in_regionid        in varchar2
                    ,in_in_diagnose_id  in varchar2
                    ,in_resident_deptid in varchar2);

  procedure s_����_סԺ֤(in_id              in varchar2
                    ,in_doctor_id       in varchar2
                    ,in_patientid       in varchar2
                    ,in_name            in varchar2
                    ,in_pinyin          in varchar2
                    ,in_attribute       in varchar2
                    ,in_gender          in varchar2
                    ,in_age             in varchar2
                    ,in_age_unit        in varchar2
                    ,in_birthday        in varchar2
                    ,in_profession      in varchar2
                    ,in_country         in varchar2
                    ,in_identification  in varchar2
                    ,in_marry_status    in varchar2
                    ,in_birth_province  in varchar2
                    ,in_birth_county    in varchar2
                    ,in_race            in varchar2
                    ,in_free_no         in varchar2
                    ,in_home_address    in varchar2
                    ,in_home_tele       in varchar2
                    ,in_home_zip        in varchar2
                    ,in_office_address  in varchar2
                    ,in_office_tele     in varchar2
                    ,in_office_zip      in varchar2
                    ,in_asso_name       in varchar2
                    ,in_asso_relation   in varchar2
                    ,in_asso_address    in varchar2
                    ,in_asso_tele       in varchar2
                    ,in_asso_zip        in varchar2
                    ,in_remark          in varchar2
                    ,in_education       in varchar2
                    ,in_regionid        in varchar2
                    ,in_in_diagnose_id  in varchar2
                    ,in_resident_deptid in varchar2
                    ,out_id             out varchar2);
  procedure s_�޸�_סԺ֤״̬(in_id      in varchar2
                      ,in_op_flag in varchar2);
  procedure s_ɾ��_סԺ֤(in_id in varchar2);
end pres;
/
create or replace package body pres is
  -- ���� in_success ֵ����
  in_success_ok   constant varchar2(1) := '0';
  in_success_fail constant varchar2(2) := '-1';
  -------------------------------------------------------------------------------------------------------------------
  -- ҵ���������ֵ䳣������
  attribute_����     constant varchar2(10) := 'A';
  attribute_����     constant varchar2(10) := 'B';
  attribute_������   constant varchar2(10) := 'C';
  attribute_��ʼ��� constant varchar2(20) := 'CHARGE_BEGIN';
  attribute_���ʧ�� constant varchar2(20) := 'CHARGE_FAIL';
  attribute_��ʼ���� constant varchar2(20) := 'WITHDRAW_BAGIN';
  -----------------------------------------------------------------------------------------------------
  --20160324  s_סԺ_�������Ǽ�_ȡ�� �������º���
  --hospital.s_����_סԺ�Ǽ�_ȡ��(in_patientid, in_residentid);
  --hospital.s_����_סԺ�Ǽ�_ȡ��(in_patientid, in_residentid);
  procedure prv_�޸�סԺ��(in_old_residentid in varchar2
                     ,in_new_residentid in varchar2);
  procedure prv_get_age(in_birthday  in date
                       ,out_age      out varchar2
                       ,out_age_unit out varchar2
                       ,in_from_date date default null);
  -----------------------------------------------------------------------------------------------------
  procedure prv_סԺ_����ĸӤ��ϵ(in_mother_residentid in varchar2
                         ,in_baby_residentid   in varchar2);
  -----------------------------------------------------------------------------------------------------
  procedure prv_סԺ_ȡ��ĸӤ��ϵ(in_mother_residentid in varchar2
                         ,in_baby_residentid   in varchar2);
  -----------------------------------------------------------------------------------------------------

  procedure verify_valid_region(in_regionid in varchar2) is
    i number;
  begin
    select 2
      into i
      from region
     where id = in_regionid
       and rownum = 1;
  exception
    when no_data_found then
      raise_application_error(-20001,
                              '�Ƿ��������������( ' || in_regionid || ' ).;');
  end;
  -----------------------------------------------------------------------------------------------------
  function get_סԺ����_�Ƿ����(in_residentid in varchar2) return integer is
    v_leave_flag resident_patient.leave_flag%type;
    v_result     integer;
  begin
    v_result := 0;
    begin
      select leave_flag
        into v_leave_flag
        from resident_patient
       where residentid = in_residentid;
      if v_leave_flag = 'LEAVE'
      then
        v_result := 1;
      end if;
    exception
      when no_data_found then
        null;
    end;
    return v_result;
  end;
  -----------------------------------------------------------------------------------------------------
  procedure prv_��֤_סԺ����_δ���(in_residentid in varchar2) is
    v_leave_flag resident_patient.leave_flag%type;
  begin
    begin
      select leave_flag
        into v_leave_flag
        from resident_patient
       where residentid = in_residentid;
      if v_leave_flag = 'LEAVE'
      then
        raise_application_error(-20001,
                                '�ò����Ѿ����,���ܽ��е�ǰ�Ĳ���.;');
      end if;
    exception
      when no_data_found then
        null;
    end;
  end;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/16 - ���������д,������
  --     ԭ��:  s_סԺ_������ҳ_����
  --     tiger      2013/08/05 - ���л��߾����ɲ�����ҳ
  --     tiger      2008/09/16 - ȡ���ύ
  --     tiger      2006/12/27 - ����ϵͳѡ����ò���ֵ��Ĭ��ֵ
  --     tiger      2006/06/08 - Blood_type ȱʡΪδ��
  --     tiger      2006/05/27 - RhȱʡΪ '0'=δ��
  --     tiger      2005/01/17 - �޸�һЩȱʡֵ: ��ҽԺ���Ʒ���ȱʡΪ��ҽ ,Rh=����                        
  --     tiger      2003/08/15 - ����Ʋ��˲���Ҫ������ҳ 
  --     tiger      2000/12/21 - ����������Ҫ��������
  --     tiger      2000/08/19 - REWRITE  �ϲ��� resident_register & resident_info
  procedure prv_סԺ_������ҳ_����(in_residentid in varchar2
                          ,in_reason     in varchar2) is
    i                         number;
    t_patient                 patient%rowtype;
    t_resident_info           resident_info%rowtype;
    v_treat_type              varchar2(10);
    v_sample_quality_doctorid worker.id%type;
    v_sample_quality_nurseid  worker.id%type;
    v_case_trim_workerid      worker.id%type;
    v_code_workerid           worker.id%type;
    v_hbsag                   case_page1.hbsag%type;
    v_hcvab                   case_page1.hcvab%type;
    v_hivab                   case_page1.hivab%type;
    v_pay_method              case_page1.pay_method%type;
  begin
    begin
      select 2
        into i
        from case_page1
       where residentid = in_residentid
         and rownum = 1;
      raise_application_error(-20001,
                              'סԺ��Ϊ( ' || in_residentid || ' )�Ĳ�����ҳ�Ѿ�����.;');
    exception
      when no_data_found then
        null;
    end;
  
    if instr(get_system_option('ҽԺ����'), '��ҽ') = 0
    then
      v_treat_type := '2'; --��ҽ
    else
      v_treat_type := '1'; --��ҽ
    end if;
    if in_residentid is null
    then
      raise_application_error(-20001, 'סԺ�Ų���Ϊ��.;');
    end if;
  
    begin
      select a.*
        into t_resident_info
        from resident_info a
       where a.residentid = in_residentid
         and a.process_reason in ('IN', 'NEW')
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                'סԺ��(' || in_residentid || ')������.;');
      when too_many_rows then
        raise_application_error(-20001,
                                'סԺ��(' || in_residentid || ')���ڶ�����Ժ��¼.;');
    end;
  
    if in_reason = 'S_סԺ_סԺ�Ǽ�'
    then
      return;
    end if;
    begin
      select *
        into t_patient
        from patient
       where id = t_resident_info.patientid
         and rownum = 1;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '���Ϊ' || t_resident_info.patientid ||
                                '�Ĳ�����Ϣ������.;');
    end;
  
    v_sample_quality_doctorid := get_system_option('������ҳ_��������ҽʦ');
    if v_sample_quality_doctorid is not null
    then
      verify_worker(v_sample_quality_doctorid, '��������ҽʦ');
    end if;
    v_sample_quality_nurseid := get_system_option('������ҳ_�������ƻ�ʿ');
    if v_sample_quality_nurseid is not null
    then
      verify_worker(v_sample_quality_doctorid, '�������ƻ�ʿ');
    end if;
    v_case_trim_workerid := get_system_option('������ҳ_����������');
    if v_sample_quality_nurseid is not null
    then
      verify_worker(v_case_trim_workerid, '����������');
    end if;
    v_code_workerid := get_system_option('������ҳ_����Ա');
    if v_sample_quality_nurseid is not null
    then
      verify_worker(v_code_workerid, '����Ա');
    end if;
    v_hbsag := nvl(get_system_option('������ҳ_HBSAG_Ĭ��ֵ'), '1');
    v_hcvab := nvl(get_system_option('������ҳ_HCVAB_Ĭ��ֵ'), '1');
    v_hivab := nvl(get_system_option('������ҳ_HIVAB_Ĭ��ֵ'), '1');
    begin
      select pay_method
        into v_pay_method
        from hospital.resident_info
       where residentid = in_residentid
         and process_reason = 'IN';
    exception
      when no_data_found then
        v_pay_method := nvl(get_system_option('������ҳ_PAY_METHOD_Ĭ��ֵ'),
                            '4');
    end;
    if nvl(v_pay_method, '��ѡ��') not in
       ('1', '2', '3', '4', '5', '6', '7', '8', '9')
    then
      v_pay_method := '1';
    end if;
  
    insert into case_page1
      (id,
       patientid,
       residentid,
       seq,
       bmc_no,
       omc_no,
       attribute,
       pay_method,
       name,
       gender,
       birthday,
       age,
       age_unit,
       marry_status,
       profession,
       birth_province,
       birth_county,
       race,
       country,
       identification,
       office_address,
       office_tele,
       office_zip,
       home_address,
       home_address4,
       home_tele,
       home_zip,
       asso_name,
       asso_relation,
       asso_address,
       asso_tele,
       in_state,
       in_way,
       treated_before_in,
       in_deptid,
       in_room,
       in_date,
       change_deptid,
       change_room,
       out_type,
       out_deptid,
       out_room,
       out_date,
       in_days,
       treat_type,
       user_define1,
       user_define2,
       user_define3,
       definite_date,
       pathology_no,
       allergic,
       hbsag,
       hcvab,
       hivab,
       cac_diag_equal,
       cio_diag_equal,
       ac_diag_equal,
       io_diag_equal,
       ij_diag_equal,
       fc_diag_equal,
       rc_diag_equal,
       infected,
       rescue_times,
       success_times,
       rescue_method,
       in_danger_state,
       in_emg_state,
       in_hard_state,
       direct,
       direct_doctorid,
       charge_doctorid,
       resident_doctorid,
       study_doctor,
       graduate_student,
       practice_doctorid,
       code_workerid,
       sample_quality,
       sample_quality_doctorid,
       sample_quality_nurseid,
       case_trim_workerid,
       case_trim_date,
       dead_flag,
       dead_reason,
       open_body,
       dead_date,
       follow_flag,
       follow_date,
       teach_flag,
       research_flag,
       first_operation,
       first_treat,
       first_check,
       first_diagnose,
       blood_type,
       rh,
       blood_transfusion_reaction,
       transfusion_reaction,
       transfusion_red_cell,
       transfusion_plaque,
       transfusion_plasm,
       transfusion_whole_blood,
       transfusion_others,
       operate_date,
       operation_flag,
       status,
       operator,
       update_date,
       remark,
       home_bed,
       reason,
       regionid,
       long_term_out_patient)
    values
      (in_residentid,
       t_resident_info.patientid,
       t_resident_info.residentid,
       t_resident_info.seq,
       null, --BMC_NO,
       null, --OMC_NO,
       null, --ATTRIBUTE,
       v_pay_method, --PAY_METHOD�Է�,
       t_patient.name,
       t_patient.gender,
       t_patient.birthday,
       t_resident_info.age,
       t_resident_info.age_unit,
       t_patient.marry_status,
       nvl(t_patient.profession,
           nvl(hospital.get_system_option('���ߵǼ�_Ĭ��ְҵ'), 'ũ��')),
       t_patient.birth_province,
       t_patient.birth_county,
       t_patient.race,
       t_patient.country,
       t_patient.identification,
       t_patient.office_address,
       t_patient.office_tele,
       t_patient.office_zip,
       t_patient.home_address,
       t_patient.home_address,
       t_patient.home_tele,
       t_patient.home_zip,
       t_patient.asso_name,
       t_patient.asso_relation,
       t_patient.asso_address,
       t_patient.asso_tele,
       '3', --IN_STATE      һ��                 ,
       '1', --IN_WAY        ����                 ,
       '2', --TREATED_BEFORE_IN  ��             ,
       t_resident_info.deptid,
       t_resident_info.bedid,
       nvl(t_resident_info.in_date, sysdate),
       null, --CHANGE_DEPTID                  ,
       null, --CHANGE_ROOM                    ,
       '1', --OUT_TYPE                       ,
       null, --OUT_DEPTID                     ,
       null, --OUT_ROOM                       ,
       null, --OUT_DATE                       ,
       0, --IN_DAYS                        ,
       v_treat_type, --TREAT_TYPE                     ,
       '0', --USER_DEFINE1                   ,
       '1', --USER_DEFINE2 ������Դ-����                  ,
       null, --USER_DEFINE3                   ,
       null, --DEFINITE_DATE                  ,
       null, --PATHOLOGY_NO                   ,
       null, --ALLERGIC                       ,
       v_hbsag,
       v_hcvab,
       v_hivab,
       decode(v_treat_type, '2', '0', '1'), --CAC_DIAG_EQUAL,
       decode(v_treat_type, '2', '0', '1'), --CIO_DIAG_EQUAL,
       '1', --AC_DIAG_EQUAL                  ,
       '1', --IO_DIAG_EQUAL                  ,
       '0', --IJ_DIAG_EQUAL                  ,
       '0', --FC_DIAG_EQUAL                  ,
       '0', --RC_DIAG_EQUAL                  ,
       0, --INFECTED                       ,
       0, --RESCUE_TIMES                   ,
       0, --SUCCESS_TIMES                  ,
       '4', --RESCUE_METHOD                ,
       0, --IN_DANGER_STATE                ,
       0, --IN_EMG_STATE                   ,
       0, --IN_HARD_STATE                  ,
       null, --DIRECT                         ,
       null, --DIRECT_DOCTORID                ,
       t_resident_info.charge_doctorid,
       null, --RESIDENT_DOCTORID              ,
       null, --STUDY_DOCTOR                   ,
       null, --GRADUATE_STUDENT               ,
       null, --PRACTICE_DOCTORID              ,
       v_code_workerid, --CODE_WORKERID                  ,
       '1', --SAMPLE_QUALITY                 ,
       v_sample_quality_doctorid, --SAMPLE_QUALITY_DOCTORID        ,
       v_sample_quality_nurseid, --SAMPLE_QUALITY_NURSEID         ,
       v_case_trim_workerid, --CASE_TRIM_WORKERID             ,
       null, --CASE_TRIM_DATE                 ,
       0, --DEAD_FLAG                      ,
       null, --DEAD_REASON                    ,
       0, --OPEN_BODY                      ,
       null, --DEAD_DATE                      ,
       0, --FOLLOW_FLAG                    ,
       null, --FOLLOW_DATE                    ,
       0, --TEACH_FLAG                     ,
       0, --RESEARCH_FLAG                  ,
       0, --FIRST_OPERATION                ,
       0, --FIRST_TREAT                    ,
       0, --FIRST_CHECK                    ,
       0, --FIRST_DIAGNOSE                 ,
       'NA', --t_patient.blood_type,
       '0', --RH                             ,
       '3', --BLOOD_TRANSFUSION_REATION      ,
       '2', --TRANSFUSION_REACTION           ,     
       0, --TRANSFUSION_RED_CELL           ,
       0, --TRANSFUSION_PLAQUE             ,
       0, --TRANSFUSION_PLASM              ,
       0, --TRANSFUSION_WHOLE_BLOOD        ,
       0, --TRANSFUSION_OTHERS             ,
       null, --OPERATE_DATE                   ,
       0, --OPERATION_FLAG                 ,
       'AUTO', --STATUS                         ,
       hospital.login.get_workerid, --OPERATOR                       ,
       sysdate,
       null,
       0,
       in_reason,
       t_patient.regionid,
       t_resident_info.long_term_out_patient);
  end prv_סԺ_������ҳ_����;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/16 - ���������д,������
  --     ԭ��:  s__סԺ_��Ѻ��_����
  --   tiger  2009/09/17  T����Ϊ��ʱ������IN_BILL_NO ,���޶�ʱ��,����������Ĭ��Ϊ100000
  --   tiger  2008/04/11  bank���͵���Ϊ���ֽ�ͬ��������
  --   tiger  2006/07/05  ���չ�������ָ�����
  --   tiger  2004/11/28  ���Ԥ������
  --   tiger  2002/09/13  --��resident_patient�������ֶ�assurance
  --                      --��Ԥ����͵����ֿ�����
  --   tiger  2002/09/01  create
  procedure prv_סԺ_��Ѻ��_����(in_patientid  in varchar2
                         ,in_residentid in varchar2
                         ,in_fee_flag   in varchar2
                         ,in_use_fee    in varchar2
                         ,in_fee        in varchar2
                         ,in_bill_type  in varchar2
                         ,in_bill_no    in varchar2
                         ,in_remark     in varchar2
                         ,out_id        out varchar2) as
    i                  number;
    t_pre_payid        pre_pay.id%type;
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
    t_bill_no          pre_pay.bill_no%type;
    v_companyid        all_department.companyid%type;
    v_ticket_no        number;
    v_limit            number;
    v_withdraw_date    date;
    v_limittype        varchar2(30);
  begin
    verify_patient(in_patientid);
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    verify_valid_number(in_fee, '���');
    verify_field_dict('PRE_PAY', 'BILL_TYPE', in_bill_type, '�ɷѷ�ʽ');
    begin
      select field_value
        into v_limittype
        from hospital.field_dict_
       where table_name = 'PRE_PAY'
         and field_name = 'BILL_TYPE'
         and remark = 'ʱ�޿���'
         and field_value = in_bill_type;
      hospital.verify_not_null(in_fee_flag, '����ʱ��');
      verify_valid_date(in_fee_flag, '������ֹʱ��');
      v_withdraw_date := get_date_from_str(in_fee_flag);
      if v_withdraw_date <= sysdate
      then
        raise_application_error(-20001, '����ʱ�ޱ�����ڵ�ǰʱ��.;');
      end if;
    exception
      when no_data_found then
        null;
    end;
    if in_bill_type not in (v_limittype)
    then
      verify_field_dict('PRE_PAY', 'FEE_FLAG', in_fee_flag, '������Ʒ�ʽ');
    end if;
    verify_length(in_remark, 100, '��ע');
    if in_bill_type in
       ('A', 'B', 'C', 'BANK', 'BANK1', 'BANK2', 'BANK3', 'BANK4')
       and nvl(to_number(in_fee), 0) = 0
    then
      return;
    end if;
    if in_bill_type in
       ('A', 'B', 'C', 'BANK', 'BANK1', 'BANK2', 'BANK3', 'BANK4')
    then
      if to_number(nvl(in_fee, 0)) <= 0
      then
        raise_application_error(-20001, 'Ԥ�����������0');
      end if;
      if to_number(nvl(in_use_fee, 0)) <> 0
      then
        raise_application_error(-20001, '����������Ϊ0');
      end if;
    elsif in_bill_type in ('D', 'E', 'F', 'G', 'H')
    then
      if to_number(nvl(in_use_fee, 0)) < 0
      then
        raise_application_error(-20001, '�������������0');
      end if;
      if to_number(nvl(in_fee, 0)) <> 0
      then
        raise_application_error(-20001, 'Ԥ��������Ϊ0');
      end if;
    end if;
    if nvl(get_system_option('Ԥ����_�����������'), 'Y') = 'N'
    then
      if t_resident_info.process_reason = 'OUT'
         and t_resident_info.finish_flag in ('WAIT_PAY', 'FINISHED')
      then
        raise_application_error(-20001,
                                '�ò����Ѿ����˳�Ժ���㣬���ܽ���Ԥ����.;');
      end if;
    end if;
    if nvl(get_system_option('Ԥ����_���ʺ�������'), 'Y') = 'N'
    then
      if t_resident_info.process_reason = 'OUT'
         and t_resident_info.finish_flag in ('FINISHED')
      then
        raise_application_error(-20001,
                                '�ò����Ѿ����˳�Ժ���㣬���ܽ���Ԥ����.;');
      end if;
    end if;
    if in_bill_type in
       ('A', 'B', 'C', 'BANK', 'BANK1', 'BANK2', 'BANK3', 'BANK4')
    then
      if get_system_option('���չ����ص���䷢Ʊ�Ŷ�סԺԤ����') = 'Y'
      then
        invoice_man.s_ʹ�÷�Ʊ('סԺԤ����', v_ticket_no);
        t_bill_no := lpad(ltrim(rtrim(to_char(v_ticket_no))), 10, '0');
      elsif get_system_option('����ְԱ���䷢Ʊ�Ŷ�סԺԤ����') = 'Y'
      then
        invoice_man.s_ʹ�÷�Ʊ('סԺԤ����', v_ticket_no);
        t_bill_no := lpad(ltrim(rtrim(to_char(v_ticket_no))), 10, '0');
      elsif get_system_option('����Զ�����_�ֽ�Ԥ�����վݺ�') = 'Y'
      then
        t_bill_no := s_Ԥ����_���_��ȡ;
        s_Ԥ����_���_ʹ��(t_bill_no);
      elsif get_system_option('����Զ�����_��˾_�ֽ�Ԥ�����վݺ�') = 'Y'
      then
        select companyid
          into v_companyid
          from all_department
         where id = t_resident_info.deptid;
        t_bill_no := s_Ԥ����_��˾_��Ŷ�ȡ(v_companyid);
        s_Ԥ����_��˾_���_ʹ��(v_companyid);
      elsif get_system_option('����Զ�����_��Ʊ��=ID��') = 'Y'
      then
        null;
      else
        verify_not_null(in_bill_no, 'Ԥ�����վݺ�');
        begin
          select 2
            into i
            from pre_pay
           where bill_no = in_bill_no
             and rownum = 1;
          raise_application_error(-20001,
                                  '�վݺ�Ϊ' || in_bill_no ||
                                  '���վ��Ѿ�����,�����»�һ�����.;');
        exception
          when no_data_found then
            null;
        end;
        t_bill_no := in_bill_no;
      end if;
    end if;
  
    begin
      v_limit := to_number(nvl(get_system_option('Ԥ����_����Ԥ��������޶�'),
                               '10000'));
    exception
      when others then
        raise_application_error(-20001,
                                'ϵͳѡ�����ô�������ϵϵͳ����Ա.;');
    end;
    if in_fee > v_limit
    then
      raise_application_error(-20001,
                              '����Ԥ��������޶�Ϊ( ' || v_limit || ' Ԫ).;');
    end if;
  
    t_pre_payid := get_next_pre_payid;
    t_bill_no   := nvl(t_bill_no, t_pre_payid);
    insert into pre_pay
      (id,
       attribute,
       patientid,
       residentid,
       deptid,
       fee_flag,
       use_fee,
       fee,
       bill_type,
       bill_no,
       fee_date,
       fee_operator,
       withdrawer,
       withdraw_date,
       update_date,
       remark)
    values
      (t_pre_payid,
       'A',
       in_patientid,
       t_resident_info.residentid,
       t_resident_info.deptid,
       decode(in_bill_type, v_limittype, 'REAL_FEE', in_fee_flag),
       to_number(in_use_fee),
       to_number(in_fee),
       in_bill_type,
       t_bill_no,
       sysdate,
       hospital.login.get_workerid,
       decode(in_bill_type, v_limittype, hospital.login.get_workerid, null),
       decode(in_bill_type, v_limittype, v_withdraw_date, null),
       sysdate,
       in_remark);
    out_id := t_pre_payid;
    calc_pre_pay(in_patientid, t_resident_info.residentid);
  end prv_סԺ_��Ѻ��_����;
  ---------------------------------------------------------------------------
  --     tiger      2008/10/21 - ���������д,������
  --     ԭ��:  S_סԺ��_���_����
  --  tiger 2000/12/12 - create
  procedure prv_סԺ��_���_����(in_id in varchar2) as
    t_table_nextid table_nextid%rowtype;
  begin
    verify_not_null(in_id, 'סԺ�ű��');
    begin
      select *
        into t_table_nextid
        from table_nextid
       where hospid = get_login_hospid
         and deptid is null
         and next_id_type = 'סԺ�ű��'
         and nextid = in_id
         and status = 'UNLOCKED'
         and record_type in ('DELETED', 'CATCHED')
         for update of status nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                'û�ҵ���Ҫ������סԺ�ű��' || in_id || '.;');
      when too_many_rows then
        raise_application_error(-20001,
                                '�ҵ�������Ҫ������סԺ�ű��' || in_id || '.;');
      when others then
        raise_application_error(-20001,
                                '���������ڲ���,��Ⱥ�һ��ʱ��ִ��.;');
    end;
    update table_nextid
       set status = 'LOCKED'
     where hospid = get_login_hospid
       and deptid is null
       and nextid = in_id
       and next_id_type = 'סԺ�ű��'
       and status = 'UNLOCKED'
       and record_type in ('DELETED', 'CATCHED');
  end prv_סԺ��_���_����;
  ---------------------------------------------------------------------------
  procedure prv_סԺ��_���_��֤ as
    t_table_nextid table_nextid%rowtype;
    v_next_id      varchar2(20);
  begin
    if nvl(hospital.get_system_option('סԺ�Ǽ�_סԺ��ʹ�������Ϊǰ׺'),
           'N') = 'Y'
    then
      begin
        select *
          into t_table_nextid
          from table_nextid
         where deptid is null
           and hospid = get_login_hospid
           and next_id_type = 'סԺ�ű��'
           and record_type = 'INDICATOR'
           for update nowait;
      exception
        when no_data_found then
          raise_application_error(-20001,
                                  '����סԺ�Ź����з���һ��סԺ��.;');
        when too_many_rows then
          raise_application_error(-20001, '�ҵ����������ŵı�׼.;');
        when others then
          raise_application_error(-20001, '���������ڲ��������Ժ�����.;');
      end;
      --��ǰ׺������һ��ʱ,�Զ��任���
      if (t_table_nextid.prefix <> to_char(sysdate, 'yyyy') and
         to_number(to_char(sysdate, 'yyyy')) -
         to_number(t_table_nextid.prefix) = 1)
      then
        t_table_nextid.prefix := to_char(sysdate, 'yyyy');
        select substrb(lpad(ltrim(rtrim(to_char(1, '9999999999'))), 10, '0'),
                       11 - '9' + nvl(length(t_table_nextid.prefix), 0))
          into v_next_id
          from dual;
        update table_nextid
           set prefix  = to_char(sysdate, 'yyyy'),
               next_no = 1,
               nextid  = v_next_id,
               mix_no  = 1
         where deptid is null
           and hospid = get_login_hospid
           and next_id_type = 'סԺ�ű��'
           and record_type = 'INDICATOR';
        --ɾ�����վɹ����Ѿ�������δ��ʹ�õ�סԺ��
        delete from table_nextid
         where deptid is null
           and hospid = get_login_hospid
           and next_id_type = 'סԺ�ű��'
           and record_type = 'CATCHED'
           and status = 'UNLOCKED';
        commit;
      end if;
    end if;
  end prv_סԺ��_���_��֤;
  ---------------------------------------------------------------------------
  -- 2016/12/16  �����������Ϊǰ׺�����Զ�����ϵͳʱ�����ǰ׺
  --     tiger      2008/10/21 - ���������д,������
  --     ԭ��:  S_סԺ��_���_����
  --  tiger 2000/12/12 - create
  procedure prv_סԺ��_���_����(out_id out varchar2) as
    i              number;
    t_table_nextid table_nextid%rowtype;
    t_next_no      number;
    v_nextid       varchar2(10);
  begin
    begin
      select *
        into t_table_nextid
        from table_nextid
       where deptid is null
         and hospid = get_login_hospid
         and next_id_type = 'סԺ�ű��'
         and record_type = 'INDICATOR'
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001, '����סԺ�Ź����з���һ��סԺ��.;');
      when too_many_rows then
        raise_application_error(-20001, '�ҵ����������ŵı�׼.;');
      when others then
        raise_application_error(-20001, '���������ڲ��������Ժ�����.;');
    end;
  
    i := 0;
    loop
      exit when i > 9;
      t_next_no := nvl(t_table_nextid.next_no, 1) + i;
      if t_next_no > t_table_nextid.max_no
      then
        exit;
      end if;
      v_nextid := t_table_nextid.prefix ||
                  substrb(lpad(ltrim(rtrim(to_char(t_next_no, '9999999999'))),
                               10,
                               '0'),
                          11 - t_table_nextid.length +
                          nvl(length(t_table_nextid.prefix), 0));
      insert into table_nextid
        (hospid,
         next_id_type,
         deptid,
         record_type,
         status,
         nextid,
         year,
         mix_no,
         max_no,
         next_no)
      values
        (hospital.login.get_hospid,
         'סԺ�ű��',
         null,
         'CATCHED',
         'UNLOCKED',
         v_nextid,
         null,
         t_table_nextid.mix_no,
         t_table_nextid.max_no,
         t_next_no + 1);
      if i = 0
      then
        out_id := v_nextid;
      end if;
      i := i + 1;
    end loop;
    if t_next_no < t_table_nextid.max_no
    then
      update table_nextid
         set next_no = nvl(next_no, t_table_nextid.mix_no) + i
       where hospid = get_login_hospid
         and deptid is null
         and next_id_type = 'סԺ�ű��'
         and record_type = 'INDICATOR';
    else
      delete from table_nextid
       where hospid = get_login_hospid
         and deptid is null
         and next_id_type = 'סԺ�ű��'
         and record_type = 'INDICATOR';
    end if;
  end prv_סԺ��_���_����;
  ---------------------------------------------------------------------------
  --     tiger      2008/10/21 - ���������д,������
  --     ԭ��:      s_סԺ��_���_ʹ��
  --     tiger      2000/12/12 - create
  procedure prv_סԺ��_���_ʹ��(in_id in varchar2) as
    t_table_nextid table_nextid%rowtype;
  begin
    verify_not_null(in_id, 'סԺ�ű��');
    begin
      select *
        into t_table_nextid
        from table_nextid
       where hospid = get_login_hospid
         and deptid is null
         and next_id_type = 'סԺ�ű��'
         and nextid = in_id
         and status = 'LOCKED'
         for update of status nowait;
    exception
      when no_data_found then
        raise_application_error(-20001, 'û�ҵ���Ҫ���������ﵥ���.;');
      when too_many_rows then
        raise_application_error(-20001, '�ҵ�������Ҫ���������ﵥ���.;');
      when others then
        raise_application_error(-20001,
                                '���������ڲ���,��Ⱥ�һ��ʱ��ִ��.;');
    end;
    delete from table_nextid
     where hospid = get_login_hospid
       and deptid is null
       and next_id_type = 'סԺ�ű��'
       and nextid = in_id
       and status = 'LOCKED';
  end prv_סԺ��_���_ʹ��;
  ---------------------------------------------------------------------------
  --     tiger      2008/10/21 - ���������д,������
  --     ԭ��:      S_סԺ��_���_����
  --     tiger      2000/12/12 - create
  procedure prv_סԺ��_���_����(in_id in varchar2) as
    i              number;
    t_table_nextid table_nextid%rowtype;
  begin
    begin
      select 2
        into i
        from table_nextid
       where hospid = get_login_hospid
         and deptid is null
         and nextid = in_id
         and next_id_type = 'סԺ�ű��'
         and rownum = 1;
      raise_application_error(-20001, '���ֲ��ó��ֵ�סԺ�ű��.;');
    exception
      when no_data_found then
        null;
    end;
    begin
      select *
        into t_table_nextid
        from table_nextid
       where hospid = get_login_hospid
         and deptid is null
         and next_id_type = 'סԺ�ű��'
         and record_type = 'INDICATOR';
    exception
      when no_data_found then
        raise_application_error(-20001, '�Ҳ�������סԺ�ŵı�׼.;');
      when too_many_rows then
        raise_application_error(-20001, '�ҵ��������סԺ�ŵı�׼.;');
    end;
    insert into table_nextid
      (hospid,
       next_id_type,
       deptid,
       record_type,
       status,
       nextid,
       year,
       mix_no,
       max_no,
       next_no)
    values
      (get_login_hospid,
       t_table_nextid.next_id_type,
       t_table_nextid.deptid,
       'DELETED',
       'UNLOCKED',
       in_id,
       t_table_nextid.year,
       t_table_nextid.mix_no,
       t_table_nextid.max_no,
       null);
  end prv_סԺ��_���_����;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/21 - ���������д,������
  --     ԭ��:      S_סԺ��_���_��ȡ
  --     tiger      2000/12/12 - create
  function prv_סԺ��_���_��ȡ return varchar2 as
    t_id resident_info.residentid%type;
    i    number;
  begin
    select count(*)
      into i
      from table_nextid
     where hospid = get_login_hospid
       and deptid is null
       and next_id_type = 'סԺ�ű��'
       and record_type in ('DELETED', 'CATCHED')
       and status = 'UNLOCKED';
    if i <= 1
    then
      prv_סԺ��_���_����(t_id);
    end if;
    select min(nextid)
      into t_id
      from table_nextid
     where hospid = get_login_hospid
       and deptid is null
       and next_id_type = 'סԺ�ű��'
       and record_type in ('DELETED', 'CATCHED')
       and status = 'UNLOCKED';
    prv_סԺ��_���_����(t_id);
    return t_id;
  end prv_סԺ��_���_��ȡ;
  -----------------------------------------------------------------------------------------------------
  function prv_סԺ��_���_ȡ������(in_old_residentid in varchar2) return varchar2 as
    t_id resident_info.residentid%type;
  begin
    select hospital.login.get_hospid || '.' ||
           hospital.pres.get_resident_id(in_old_residentid) ||
           to_char(sysdate, 'yyyymmddhh24mmss') || '.1'
      into t_id
      from dual;
    return t_id;
  end prv_סԺ��_���_ȡ������;

  -------------------------------------------------------------------------------------
  --     tiger      2013/09/10 - �жϻ����Ƿ���Խ���ת���������
  procedure prv_סԺ_ת��_����_ǰ���ж�(in_residentid         in varchar2
                             ,in_deptid             in varchar2
                             ,in_destination_deptid in varchar2 --��ת�����
                             ,in_type               in varchar2 --ת�����ͣ�A ��ͨת�� B ĸӤͬʱת�� C ĸ��ת�ơ�Ӥ����ת�� D Ӥ��ת�ơ�ĸ�ײ�ת��
                             ,in_remark             in varchar2) is
    i                  number;
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    --ȡ��סԺ��Ȩ����
    checkout.s_�ж�_�Ƿ���ȡ����Ժ����(t_resident_info.residentid);
    if t_resident_info.process_reason = 'OUT'
    then
      raise_application_error(-20001, '�ò����Ѿ����˳�Ժ����,����ת��.;');
    elsif t_resident_info.process_reason = 'CHANGEDEPT'
    then
      if t_resident_info.finish_flag = 'WAIT_ACC'
      then
        raise_application_error(-20001, '�ò����Ѿ�����ת������.;');
      elsif t_resident_info.finish_flag = 'FINISHED'
      then
        if t_resident_patient.status in ('WAIT_BED', 'NORMAL')
        then
          null;
        else
          raise_application_error(-20001, '�ò����Ѿ�����ת������.;');
        end if;
      elsif t_resident_info.finish_flag = 'WAIT_DEPT'
      then
        raise_application_error(-20001,
                                '�ò����Ѿ�����ת������,����ת�ƽ���.;');
      else
        raise_application_error(-20001,
                                '�Ƿ���FINISH_FLAG( ' ||
                                t_resident_info.finish_flag || ' ).;');
      end if;
    elsif t_resident_info.process_reason in ('IN', 'NEW')
    then
      null;
    else
      raise_application_error(-20001, '�Ƿ���FINISH_FLAG.;');
    end if;
  
    begin
      select 2
        into i
        from order_list
       where ownerid = t_resident_info.residentid
         and long_flag = 'A'
         and status in ('WAIT_ACK', 'NORMAL')
         and rownum = 1;
      raise_application_error(-20001,
                              'סԺ��Ϊ(' || in_residentid ||
                              ')�Ĳ��˻���δȷ�Ϻ�û��ֹͣ�ĳ���ҽ��������ת��.;');
    exception
      when no_data_found then
        null;
    end;
  
    begin
      select 2
        into i
        from order_list
       where ownerid = t_resident_info.residentid
         and long_flag = 'B'
         and status = 'WAIT_ACK'
         and rownum = 1;
      raise_application_error(-20001,
                              'סԺ��Ϊ(' || in_residentid ||
                              ')�Ĳ��˻���δȷ�ϵ���ʱҽ��������ת��.;');
    exception
      when no_data_found then
        null;
    end;
  
    begin
      select 2
        into i
        from order_list
       where ownerid = t_resident_info.residentid
         and long_flag = 'B'
         and status = 'NORMAL'
         and status1 = 'WAIT_ACC'
         and rownum = 1;
      raise_application_error(-20001,
                              'סԺ��Ϊ(' || in_residentid ||
                              ')�Ĳ��˻���δ���ʵ���ʱҽ��������ת��.;');
    exception
      when no_data_found then
        null;
    end;
  
    if in_type = 'B'
    then
      for c in (select *
                  from hospital.mother_baby_relation
                 where mother_residentid = t_resident_info.residentid)
      loop
        prv_סԺ_ת��_����_ǰ���ж�(c.baby_residentid,
                          in_deptid,
                          in_destination_deptid,
                          'A',
                          in_remark);
      end loop;
    end if;
  end prv_סԺ_ת��_����_ǰ���ж�;
  -------------------------------------------------------------------------------------
  --     tiger      2013/08/08 - ������ת����ҡ�ת�����
  --                
  --     tiger      2010/08/06 - ֧��ĸӤͬʱת��
  --     tiger      2008/11/19 - �����������ʵ��s_סԺ_ת��_����Ĺ���
  --     ԭ��:      s_סԺ_ת��_����
  procedure prv_סԺ_ת��_����(in_residentid         in varchar2
                        ,in_deptid             in varchar2
                        ,in_destination_deptid in varchar2 --��ת�����
                        ,in_type               in varchar2 --ת�����ͣ�A ��ͨת�� B ĸӤͬʱת�� C ĸ��ת�ơ�Ӥ����ת�� D Ӥ��ת�ơ�ĸ�ײ�ת��
                        ,in_remark             in varchar2) is
    t_record_no        resident_patient.record_no%type;
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
    v_next_seq         number;
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    --ִ�����еĹ̶�ҽ�� E��F
    for c in (select *
                from order_list
               where ownerid = t_resident_info.residentid
                 and long_flag in ('E', 'F')
                 and status = 'NORMAL'
                 and status1 = 'WAIT_EXEC')
    loop
      ol_acc.s_ҽ��_�̶�ҽ��_ִ��nc(c);
    
    end loop;
    --ֹͣ���еĹ̶�ҽ�� F
    for c in (select a.id
                from order_list a
               where a.ownerid = t_resident_info.residentid
                 and a.long_flag = 'F'
                 and a.status = 'NORMAL'
                 and a.status1 = 'WAIT_ACC')
    loop
      ol_acc.s_ҽ��_�̶�ҽ��_ֹͣnc(c.id);
    
    end loop;
  
    /*  
    ���ͷŴ�λ���ȵ��Է�ת�ƽ��պ��ٸ�������ͷŴ�λ
    if t_resident_info.bedid is not null
    then
      update bed
         set status = 'B'
       where id = t_resident_info.bedid
         and deptid = t_resident_info.deptid;
    end if;
    */
    update resident_info
       set out_dept_date = sysdate,
           update_date   = sysdate
     where record_no = t_resident_info.record_no;
    t_record_no := get_next_resident_infoid;
  
    update resident_patient
       set record_no = t_record_no,
           status    = 'WAIT_DEPT'
     where residentid = in_residentid;
  
    insert into resident_info
      (record_no,
       patientid,
       baby_patientid,
       mother_patientid,
       residentid,
       seq,
       attribute,
       pay_method,
       pre_pay_limit,
       deptid,
       bedid,
       in_date,
       in_state,
       out_date,
       charge_billid,
       definite_date,
       charge_doctorid,
       tend_level,
       operation_date,
       ill_status,
       operator,
       update_date,
       process_reason,
       process_operator,
       process_date,
       finish_flag,
       finish_date,
       finish_operator,
       in_dept_date,
       remark,
       age,
       age_unit,
       long_term_out_patient)
    values
      (t_record_no,
       t_resident_info.patientid,
       t_resident_info.baby_patientid,
       t_resident_info.mother_patientid,
       t_resident_info.residentid,
       t_resident_info.seq,
       t_resident_info.attribute,
       t_resident_info.pay_method,
       t_resident_info.pre_pay_limit,
       t_resident_info.deptid,
       t_resident_info.bedid,
       t_resident_info.in_date,
       t_resident_info.in_state,
       t_resident_info.out_date,
       t_resident_info.charge_billid,
       t_resident_info.definite_date,
       t_resident_info.charge_doctorid,
       t_resident_info.tend_level,
       t_resident_info.operation_date,
       t_resident_info.ill_status,
       hospital.login.get_workerid,
       sysdate,
       'CHANGEDEPT',
       hospital.login.get_workerid,
       sysdate,
       'WAIT_ACC',
       sysdate,
       hospital.login.get_workerid,
       sysdate,
       substrb(in_remark, 1, 20),
       t_resident_info.age,
       t_resident_info.age_unit,
       t_resident_info.long_term_out_patient);
    select nvl(max(seq), 0) + 1
      into v_next_seq
      from change_dept_info
     where residentid = t_resident_info.residentid;
  
    insert into change_dept_info
      (residentid,
       seq,
       in_date,
       out_date,
       out_deptid,
       in_days,
       out_record_no,
       in_record_no)
    values
      (t_resident_info.residentid,
       v_next_seq,
       t_resident_info.in_dept_date,
       sysdate,
       t_resident_info.deptid,
       trunc(sysdate) - trunc(t_resident_info.in_dept_date),
       t_resident_info.record_no,
       t_record_no);
    if in_type in ('B')
    then
      for c in (select *
                  from hospital.mother_baby_relation
                 where mother_residentid = t_resident_info.residentid)
      loop
        prv_סԺ_ת��_����(c.baby_residentid,
                     in_deptid,
                     in_destination_deptid,
                     'A',
                     in_remark);
      end loop;
    end if;
  end prv_סԺ_ת��_����;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2010/08/06 - ֧��ĸӤͬʱת��
  --     tiger      2008/11/19 - ����Ϊ prv_סԺ_ת��_����
  --     tiger      2008/10/20 - ���������д
  --     tiger      2007/04/05 - �޸Ľ����е�BUG
  --     tiger      2007/04/02 - ȡ����Ժ��Ȩ����
  --     tiger      2006/06/24 - �����Żݼ۸�
  --     tiger      2006/05/09 -  ����ÿһ����ϸ�������� 
  --     tiger      2002/09/26 -  �����ֶ� ���㵥���͡�����ʱ��ͽ���Ա��Ϣ
  --     tiger      2000/10/01 -  �޸�CHARGE_ITEM��CHARGE_BILLID
  --     tiger      2000/09/25 -  ���ӽ��㷽ʽ���Է�/��ְҽ�Ʊ���/����ҽ�Ʊ���
  --     tiger      2000/09/22 -  ����ҽ�Ʊ����շ�/����֧��
  --     tiger      2000/08/19 -  REWRITE  �ϲ��� resident_register & resident_info
  procedure prv_סԺ_ת��_����(in_residentid in varchar2
                        ,in_deptid     in varchar2
                        ,in_type       in varchar2) is
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
    t_charge_billid    charge_bill.id%type;
    t_fee              number;
    --�Ѹò����ڸÿ��ҵ�����CHARGE_ITEM�鵽�µĽ��ʵ�����
    v_discount      number := 0;
    v_discount_type varchar2(10);
    t_verify_fee    number;
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
  
    t_charge_billid := get_next_charge_billid;
    t_fee           := 0;
    v_discount      := 0;
    v_discount_type := discount_man.get_סԺ����_�Ż����(t_resident_info.residentid);
    for c1 in (select sum(fee) fee,
                      patientid,
                      residentid,
                      doctorid,
                      fee_type,
                      patient_deptid,
                      write_deptid,
                      execute_deptid,
                      nbmam_list_item_type,
                      ratio,
                      sum(discount) discount,
                      sum(self_pay) self_pay,
                      sum(in_fund_pay) in_fund_pay
                 from (select round(nvl(amount, 0) * round(nvl(price, 0), 3),
                                    2) fee,
                              id,
                              patientid,
                              residentid,
                              doctorid,
                              fee_type,
                              patient_deptid,
                              write_deptid,
                              execute_deptid,
                              nbmam_list_item_type,
                              ratio,
                              round(nvl(amount, 0) *
                                    round(nvl(discount, 0), 3),
                                    2) discount,
                              self_pay,
                              in_fund_pay
                         from charge_item
                        where residentid = t_resident_info.residentid
                          and patient_deptid = in_deptid
                          and charge_billid is null)
                group by patientid,
                         residentid,
                         doctorid,
                         fee_type,
                         patient_deptid,
                         write_deptid,
                         execute_deptid,
                         nbmam_list_item_type,
                         ratio)
    loop
      insert into charge_fee
        (id,
         charge_billid,
         patientid,
         registerid,
         residentid,
         patient_deptid,
         doctorid,
         fee_type,
         fee,
         write_deptid,
         execute_deptid,
         attribute,
         status,
         operator,
         update_date,
         update_reason,
         remark,
         nbmam_list_item_type,
         ratio,
         type,
         balance_workerid,
         balance_date,
         discount,
         discount_type,
         self_pay,
         in_fund_pay)
      values
        (get_next_charge_feeid,
         t_charge_billid,
         c1.patientid,
         null, --REGISTERID
         c1.residentid,
         c1.patient_deptid,
         c1.doctorid,
         c1.fee_type,
         c1.fee,
         c1.write_deptid,
         c1.execute_deptid,
         'ACCOUNT',
         'WAIT_PAY',
         hospital.login.get_workerid,
         null,
         null,
         null,
         c1.nbmam_list_item_type,
         c1.ratio,
         'DEPT',
         hospital.login.get_workerid,
         sysdate,
         c1.discount,
         v_discount_type,
         c1.self_pay,
         c1.in_fund_pay);
      t_fee      := t_fee + c1.fee;
      v_discount := v_discount + c1.discount;
    end loop;
    insert into charge_bill
      (id,
       attribute,
       patientid,
       fee,
       status,
       remark,
       residentid,
       update_reason,
       medical_care_pay_formulaid,
       type,
       balance_workerid,
       balance_date,
       discount)
    values
      (t_charge_billid,
       'ACCOUNT',
       t_resident_info.patientid,
       t_fee,
       'WAIT_PAY',
       substrb(get_dept_name(in_deptid), 1, 30),
       t_resident_info.residentid,
       null, --in_update_reason,
       null,
       'DEPT',
       hospital.login.get_workerid,
       sysdate,
       v_discount);
    update charge_item
       set charge_billid = t_charge_billid
     where residentid = t_resident_info.residentid
       and patient_deptid = in_deptid
       and charge_billid is null;
  
    update resident_info
       set finish_flag      = 'WAIT_DEPT',
           process_date     = sysdate,
           process_operator = hospital.login.get_workerid,
           update_date      = sysdate
     where record_no = t_resident_patient.record_no;
    update resident_patient
       set status = 'WAIT_DEPT'
     where residentid = in_residentid;
    --��֤ CHARGE_BILL,CHARGE_FEE ,CHARGE_ITEM�Ľ��������
    select sum(fee)
      into t_verify_fee
      from charge_fee
     where residentid = in_residentid
       and charge_billid = t_charge_billid;
    if nvl(t_fee, 0) <> nvl(t_verify_fee, 0)
    then
      raise_application_error(-20001,
                              '����������charge_fee��charge_bill��ͬ');
    end if;
  
    select sum(round(round(price, 3) * amount, 2))
      into t_verify_fee
      from charge_item
     where residentid = in_residentid
       and charge_billid = t_charge_billid;
    if nvl(t_fee, 0) <> nvl(t_verify_fee, 0)
    then
      raise_application_error(-20001,
                              '����������charge_item��charge_bill��ͬ');
    end if;
  
    if in_type = 'B'
    then
      for c in (select *
                  from mother_baby_relation
                 where mother_residentid = t_resident_info.residentid)
      loop
        prv_סԺ_ת��_����(c.baby_residentid, in_deptid, 'A');
      end loop;
    end if;
  end prv_סԺ_ת��_����;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2010/08/06 - ֧��ĸӤͬʱת��
  --     tiger      2008/11/19 - ����Ϊ prv_סԺ_ת��_����_ȡ��
  --     tiger      2008/10/20 - ���������д
  --     tiger      2007/04/02 - ȡ����Ժ��Ȩ����
  --     tiger      2002/09/26 -  �����ֶ� ���㵥���͡�����ʱ��ͽ���Ա��Ϣ
  --     tiger      2000/10/01 -  ��û�н��ʵĽ��㵥�ݲſ�����ȡ������
  --                              ��û�д����ʵĽ��㵥�ݺ�ſ���ȡ��ת�ƽ���
  --     tiger      2000/08/19 -  REWRITE  �ϲ��� resident_register & resident_info
  procedure prv_סԺ_ת��_����_ȡ��(in_residentid in varchar2
                           ,in_type       in varchar2) is
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    if t_resident_info.process_reason = 'OUT'
    then
      raise_application_error(-20001,
                              '�ò����Ѿ����˳�Ժ����,����ȡ��ת�ƽ���.;');
    elsif t_resident_info.process_reason = 'CHANGEDEPT'
    then
      if t_resident_info.finish_flag = 'WAIT_ACC'
      then
        raise_application_error(-20001,
                                '��סԺ��Ϊ( ' || t_resident_info.residentid ||
                                ' )�Ĳ��˻�û����ת�ƽ���.;');
      elsif t_resident_info.finish_flag = 'WAIT_DEPT'
      then
        if t_resident_patient.status = 'WAIT_DEPT'
        then
          null;
        else
          raise_application_error(-20001,
                                  '�Ƿ��Ĳ���״̬(' || t_resident_patient.status ||
                                  ').;');
        end if;
      elsif t_resident_info.finish_flag = 'FINISHED'
      then
        raise_application_error(-20001,
                                '�ò����Ѿ�����ת�ƽ���,����ȡ��ת�ƽ���.;');
      else
        raise_application_error(-20001,
                                '�Ƿ���ת�Ʋ���״̬(' || t_resident_info.finish_flag ||
                                ').;');
      end if;
    elsif t_resident_info.process_reason in ('IN', 'NEW')
    then
      raise_application_error(-20001,
                              '�ò��˻�û����ת�ƽ���,����ȡ��ת�ƽ���.;');
    else
      raise_application_error(-20001,
                              '�Ƿ���סԺ����ԭ��(' ||
                              t_resident_info.process_reason || '.;');
    end if;
  
    for c in (select *
                from charge_bill
               where residentid = t_resident_info.residentid
                 and type = 'DEPT'
                 and status = 'WAIT_PAY')
    loop
      update charge_item
         set charge_billid = null
       where residentid = t_resident_info.residentid
         and charge_billid = c.id;
      delete from charge_fee where charge_billid = c.id;
      delete from charge_bill where id = c.id;
      insert into hospital.deleted_records_
        (schema_name, table_name, id, delete_date)
      values
        ('HOSPITAL', 'CHARGE_BILL', c.id, sysdate);
    end loop;
    update resident_info
       set finish_flag = 'WAIT_ACC',
           update_date = sysdate
     where record_no = t_resident_patient.record_no;
    update resident_patient
       set status = 'WAIT_DEPT'
     where residentid = in_residentid;
    if in_type = 'B'
    then
      for c in (select *
                  from mother_baby_relation
                 where mother_residentid = t_resident_info.residentid)
      loop
        prv_סԺ_ת��_����_ȡ��(c.baby_residentid, 'A');
      end loop;
    end if;
  end prv_סԺ_ת��_����_ȡ��;
  ---------------------------------------------------------------------------
  procedure prv_ack_���������޸�(in_id       in varchar2
                          ,in_old_name in varchar2
                          ,in_new_name in varchar2);
  ---------------------------------------------------------------------------
  procedure prv_סԺ_ת��_ת��(in_residentid in varchar2
                        ,in_deptid     in varchar2
                        ,in_type       in varchar2);
  ---------------------------------------------------------------------------
  procedure prv_סԺ_ת��_����_ȡ��(in_residentid in varchar2
                           ,in_type       in varchar2);

  ---------------------------------------------------------------------------
  procedure prv_סԺ_�������(in_attribute  in varchar2
                       ,in_patientid  in varchar2
                       ,in_residentid in varchar2
                       ,in_diseaseid  in varchar2
                       ,in_remark     in varchar2) is
    t_disease          disease%rowtype;
    i                  number;
    t_id               diagnose.id%type;
    t_resident_info    resident_info%rowtype;
    t_resident_patient resident_patient%rowtype;
    --t_case_page1       case_page1%rowtype;
  begin
    verify_field_dict('DIAGNOSE', 'ATTRIBUTE', in_attribute, '�������');
    if in_attribute not in ('A', 'B')
    then
      raise_application_error(-20001,
                              'ֻ��������"����(����)���"��"��Ժ���".;');
    end if;
    verify_patient(in_patientid);
    verify_disease(in_diseaseid);
    verify_length(in_remark, 20, '��ע');
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    begin
      select 2
        into i
        from diagnose
       where attribute = in_attribute
         and diseaseid = in_diseaseid
         and residentid = t_resident_info.residentid
         and rownum = 1;
      raise_application_error(-20001,
                              get_field_dict_name('DIAGNOSE',
                                                  'ATTRIBUTE',
                                                  in_attribute) || 'Ϊ' ||
                              get_disease_name(in_diseaseid) || '�ļ�¼�Ѿ�����.;');
    exception
      when no_data_found then
        null;
    end;
    select * into t_disease from disease where id = in_diseaseid;
    t_id := get_next_diagnoseid;
    insert into diagnose
      (residentid,
       diagnose_date,
       treat_result,
       id,
       doctorid,
       diseaseid,
       patientid,
       registerid,
       attribute,
       operator,
       update_date,
       remark)
    values
      (t_resident_info.residentid,
       sysdate,
       null,
       t_id,
       hospital.login.get_workerid,
       in_diseaseid,
       in_patientid,
       null,
       in_attribute,
       hospital.login.get_workerid,
       sysdate,
       in_remark);
    if in_attribute = 'B'
    then
      update resident_patient
         set diagnose = substrb(t_disease.name, 1, 100)
       where patientid = in_patientid
         and residentid = in_residentid;
    end if;
  end prv_סԺ_�������;
  ---------------------------------------------------------------------------
  procedure prv_����_��Ŀ_�������(in_attribute  in varchar2
                          ,in_patientid  in varchar2
                          ,in_residentid in varchar2
                          ,in_diseaseid  in varchar2
                          ,in_remark     in varchar2) is
    t_disease          disease%rowtype;
    i                  number;
    t_id               diagnose.id%type;
    t_resident_info    resident_info%rowtype;
    t_resident_patient resident_patient%rowtype;
    --t_case_page1       case_page1%rowtype;
  begin
    verify_field_dict('DIAGNOSE', 'ATTRIBUTE', in_attribute, '�������');
    if in_attribute not in ('A', 'B')
    then
      raise_application_error(-20001,
                              'ֻ��������"����(����)���"��"��Ժ���".;');
    end if;
    verify_patient(in_patientid);
    verify_disease(in_diseaseid);
    verify_length(in_remark, 20, '��ע');
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    begin
      select 2
        into i
        from diagnose_catalog_
       where attribute = in_attribute
         and diseaseid = in_diseaseid
         and residentid = t_resident_info.residentid
         and rownum = 1;
      raise_application_error(-20001,
                              get_field_dict_name('DIAGNOSE',
                                                  'ATTRIBUTE',
                                                  in_attribute) || 'Ϊ' ||
                              get_disease_name(in_diseaseid) || '�ļ�¼�Ѿ�����.;');
    exception
      when no_data_found then
        null;
    end;
    select * into t_disease from disease where id = in_diseaseid;
    t_id := get_next_diagnoseid;
    insert into diagnose_catalog_
      (residentid,
       diagnose_date,
       treat_result,
       id,
       doctorid,
       diseaseid,
       patientid,
       registerid,
       attribute,
       operator,
       update_date,
       remark)
    values
      (t_resident_info.residentid,
       sysdate,
       null,
       t_id,
       hospital.login.get_workerid,
       in_diseaseid,
       in_patientid,
       null,
       in_attribute,
       hospital.login.get_workerid,
       sysdate,
       in_remark);
    if in_attribute = 'B'
    then
      update resident_patient
         set diagnose = substrb(t_disease.name, 1, 100)
       where patientid = in_patientid
         and residentid = in_residentid;
    end if;
  end prv_����_��Ŀ_�������;
  ---------------------------------------------------------------------------
  procedure s_סԺ_��Ժ_ת��nc(in_residentid in varchar2);
  ---------------------------------------------------------------------------
  --     tiger      2008/10/16 - ���������д
  --     tiger      2007/10/22 - ������ʾ��Ϣ:�Ҳ�����λ�ѻ��߱���Ϊxxx���ӷ�
  --     tiger      2007/04/02 - ȡ����Ժ��Ȩ����
  --     tiger      2006/03/12 - ��ѯ��λ�ѣ����û������Ϊ"��λ��"���ӷѣ��������
  --     tiger      2006/01/24 - ���Ӵ�λ�ѵ��� s_ҽ��_��ҽ��_�ӷ�_����,ʹ�ô�λ�ѿ��Ը�����ҽ��.
  --     tiger      2005/11/10 - Ҫֹͣ�Ĵ�λ�ѱ�Ŵ�ԭ���Ĵ�λ��Ϣ�ж�ȡ
  --     tiger      2005/04/11 - ҽ���Զ���λ���ӷѴ�bed���ж�ȡ��
  --     tiger      2004/12/01 - ���� rpt_dr.s_arrange_bedͳ������ҽʦ���˶�̬����
  --     tiger      2001/06/07 - ���û�в�����ҳ��Ϣ�����Զ�����֮
  --     tiger      2000/08/19 -  REWRITE  �ϲ��� resident_register & resident_info
  procedure s_סԺ_���Ŵ�λ(in_patientid       in varchar2
                     ,in_residentid      in varchar2
                     ,in_charge_doctorid in varchar2
                     ,in_bedid           in varchar2) is
    i                     number;
    t_bed                 bed%rowtype;
    t_resident_info       resident_info%rowtype;
    t_resident_patient    resident_patient%rowtype;
    v_gender              patient.gender%type;
    v_order_listid        order_list.id%type;
    v_input_deptid        all_department.id%type;
    v_origin_sundry_feeid all_sundry_fee.id%type;
    v_new_sundry_feeid    all_sundry_fee.id%type;
    v_price               number;
    v_add_supply          varchar2(10);
  begin
    verify_patient(in_patientid);
    verify_not_null(in_charge_doctorid, '����ҽʿ');
    user_permit.s_ack_����Ȩ(in_charge_doctorid);
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
  
    if nvl(t_resident_info.bedid, 'xxx') = in_bedid
       and t_resident_patient.status <> 'WAIT_BED'
       and nvl(t_resident_info.charge_doctorid, 'yyy') = in_charge_doctorid
    then
      return; --��λ��ҽ����ͬ�����谲��
    end if;
  
    if t_resident_info.bedid is not null
    then
      lock_res.lock_bed(t_resident_info.deptid,
                        t_resident_info.bedid,
                        null);
    end if;
    if in_bedid <> t_resident_info.bedid
    then
      lock_res.lock_bed(t_resident_info.deptid, in_bedid, 'EMPTY');
    else
      lock_res.lock_bed(t_resident_info.deptid, in_bedid, null);
    end if;
  
    if t_resident_info.mother_patientid is not null
    then
      return;
      raise_application_error(-20001,
                              'Ӥ���Ĵ�λ����ĸ���ߣ����ܵ������Ŵ�λ.;');
    end if;
  
    if t_resident_info.process_reason = 'OUT'
    then
      raise_application_error(-20001, '�ò��ڵȴ���Ժ�����ܰ��Ŵ�λ.;');
    elsif t_resident_info.process_reason = 'IN'
    then
      null;
    elsif t_resident_info.process_reason = 'CHANGEDEPT'
    then
      if t_resident_info.finish_flag = 'FINISHED'
      then
        if t_resident_patient.status = 'WAIT_DEPT'
        then
          raise_application_error(-20001, '�ò��ڵȴ�ת�ƣ����ܰ��Ŵ�λ.;');
        elsif t_resident_patient.status in ('NORMAL', 'WAIT_BED')
        then
          null;
        else
          raise_application_error(-20001,
                                  '�Ƿ��Ĳ���״̬' || t_resident_patient.status || '.;');
        end if;
      elsif t_resident_info.finish_flag = 'WAIT_ACC'
      then
        if t_resident_patient.status = 'WAIT_ACC'
        then
          raise_application_error(-20001,
                                  '�������ڵȴ�ת�ƽ��㣬���ܰ��Ŵ�λ.;');
        else
          raise_application_error(-20001,
                                  '�Ƿ��Ĳ���״̬'
                                  
                                  || t_resident_patient.status || '.;');
        end if;
      else
        raise_application_error(-20001,
                                '�Ƿ���FINISH_FLAG״̬' ||
                                t_resident_info.finish_flag || '.;');
      end if;
    else
      raise_application_error(-20001,
                              '�Ƿ���PROCESS_REASON' ||
                              t_resident_info.process_reason || '.;');
    end if;
  
    --�жϴ�λ�Ա���Ϣ
    select gender into v_gender from patient where id = in_patientid;
    select *
      into t_bed
      from bed
     where id = in_bedid
       and deptid = t_resident_info.deptid;
    if t_bed.gender = 'A'
    then
      null;
    elsif t_bed.gender = 'F'
    then
      if v_gender = 'M'
      then
        raise_application_error(-20001,
                                '�ò��������ԣ���λ��Ů��,������������.;');
      end if;
    elsif t_bed.gender = 'M'
    then
      if v_gender = 'F'
      then
        raise_application_error(-20001,
                                '�ò�����Ů�ԣ���λ���д�,������������.;');
      end if;
    end if;
  
    v_input_deptid := hospital.login.get_deptid;
    if nvl(t_resident_info.deptid, '2') <> nvl(v_input_deptid, '1')
    then
      if is_worker_login_dept(hospital.login.get_workerid,
                              t_resident_info.deptid) <> 0
      then
        raise_application_error(-20001,
                                '����������' || get_dept_name(v_input_deptid) ||
                                '����ݵ�¼,�������' ||
                                get_dept_name(t_resident_info.deptid) ||
                                '����ҽ�����д��� .;');
      else
        raise_application_error(-20001,
                                '���ٴ����Һ͸������Ҳ���¼��ҽ����');
      end if;
    end if;
  
    verify_worker(in_charge_doctorid, '����ҽʦ');
    s_ack_סԺ����ҽ��ͬ����(t_resident_info.residentid,
                    in_charge_doctorid,
                    '����ҽʦѡ������');
  
    if t_resident_info.bedid <> in_bedid
       and t_bed.status like 'A%'
    then
      raise_application_error(-20001, '�ô�λ(' || in_bedid || ')����ס.;');
    end if;
  
    --ȡ��סԺ��Ȩ����
    --checkout.s_�ж�_�Ƿ���ȡ����Ժ����(t_resident_info.residentid);
  
    if t_resident_info.baby_patientid is not null
    then
      for c in (select b.record_no
                  from resident_patient a, resident_info b
                 where b.mother_patientid = t_resident_info.patientid
                   and a.record_no = b.record_no)
      loop
        update resident_info
           set bedid           = in_bedid,
               charge_doctorid = in_charge_doctorid,
               update_date     = sysdate
         where record_no = c.record_no;
      end loop;
    end if;
  
    if t_resident_patient.status = 'WAIT_BED'
    then
      update resident_patient
         set status = 'NORMAL'
       where patientid = in_patientid
         and residentid = in_residentid;
    end if;
    update resident_info
       set bedid           = in_bedid,
           charge_doctorid = in_charge_doctorid,
           in_date         = sysdate,
           in_dept_date    = nvl(in_dept_date, sysdate),
           update_date     = sysdate
     where record_no = t_resident_info.record_no;
    --����ĳ������ȣ����ܲ���������ҳ�������ǰ������ҳ��������
    --����������ҳ��ǰ����ֹ�����Զ�¼��ҽ���ȴ��󣬵��²��ܲ���������ҳ
    begin
      select 2
        into i
        from case_page1
       where residentid = t_resident_info.residentid
         and rownum = 1
         for update nowait;
      update case_page1
         set in_room         = in_bedid,
             charge_doctorid = in_charge_doctorid,
             reason          = 'S_סԺ_���Ŵ�λ',
             home_bed        = decode(t_bed.attribute, 'C', 1, 0)
       where residentid = t_resident_info.residentid;
    exception
      when no_data_found then
        prv_סԺ_������ҳ_����(t_resident_info.residentid, 'S_סԺ_���Ŵ�λ');
        update case_page1
           set in_room         = in_bedid,
               charge_doctorid = in_charge_doctorid,
               reason          = 'S_סԺ_���Ŵ�λ',
               home_bed        = decode(t_bed.attribute, 'C', 1, 0)
         where residentid = t_resident_info.residentid;
      when others then
        raise_application_error(-20001,
                                '���������ڲ���סԺ��Ϊ( ' ||
                                t_resident_info.residentid ||
                                ' )�Ĳ�����ҳ,���Ժ�����.;');
    end;
  
    --δţ�Ŵ�λ���ߣ�ֱ��ת�ƣ���ɼ�¼������IN����Ժʱ��Ϊ��ֵ
    if t_resident_info.process_reason <> 'IN'
    then
      update resident_info
         set in_date     = nvl(in_date, sysdate),
             update_date = sysdate
       where residentid = t_resident_info.residentid
         and process_reason = 'IN'
         and in_date is null;
    end if;
    if t_resident_info.bedid is not null
    then
      begin
        select 2
          into i
          from resident_patient
         where resident_info_deptid = t_resident_info.deptid
           and resident_info_bedid = t_resident_info.bedid
           and residentid <> t_resident_info.residentid
           and resident_info_process_reason in ('IN', 'CHANGEDEPT')
           and resident_info_finish_flag <> 'WAIT_BED'
           and rownum = 1;
        null;
      exception
        when no_data_found then
          update bed
             set status = 'B'
           where id = t_resident_info.bedid
             and deptid = t_resident_info.deptid;
      end;
    end if;
    update bed
       set status = 'A'
     where id = in_bedid
       and deptid = t_resident_info.deptid;
    rpt_dr.s_arrange_bed(t_resident_info.process_reason,
                         nvl(t_resident_info.in_dept_date, sysdate),
                         t_resident_info.charge_doctorid,
                         in_charge_doctorid);
    if nvl(get_system_option('���Ŵ�λʱ�Զ�¼�봲λ��'), 'Y') = 'Y'
    then
      -- ֹͣ��ǰ�Ĵ�λ�ѡ������µĴ�λ��
      begin
        select sundry_feeid
          into v_origin_sundry_feeid
          from bed
         where id = t_resident_info.bedid
           and deptid = t_resident_info.deptid
           and rownum = 1;
      exception
        when no_data_found then
          null;
      end;
      if v_origin_sundry_feeid is null
      then
        begin
          select id
            into v_origin_sundry_feeid
            from sundry_fee
           where name = '��λ��'
             and rownum = 1;
        exception
          when no_data_found then
            v_origin_sundry_feeid := null;
        end;
      end if;
      if nvl(v_origin_sundry_feeid, '1') <> nvl(t_bed.sundry_feeid, '2')
      then
        for c in (select *
                    from order_list
                   where ownerid = t_resident_info.residentid
                     and long_flag = 'A'
                     and status in ('NORMAL', 'WAIT_ACK', 'WAIT_CHECK')
                     and materialid is null
                     and sundry_feeid = v_origin_sundry_feeid)
        loop
          if c.status in ('WAIT_CHECK')
          then
            ol_input.s_ҽ��_ҽ��_ȷ��_ȡ��nc(c.id, 'NURSE');
            ol_input.s_ҽ��_ҽ��_����_ȡ��_nc(c.id);
          else
            if c.status in ('WAIT_ACK')
            then
              ol_input.s_ҽ��_ҽ��_����_ȡ��_nc(c.id);
            else
              if c.status1 = 'WAIT_EXEC'
              then
                ol_exec.s_ҽ��_ҽ��_ִ��nc(c.id);
              end if;
              ol_stop.s_ҽ��_ҽ��_ֹͣnc(c.id,
                                   sysdate,
                                   c.start_workerid,
                                   hospital.login.get_workerid);
            end if;
          end if;
        end loop;
      
        --�����µĴ�λ��
        if t_bed.sundry_feeid is not null
           and nvl(t_bed.sundry_feeid, 1) <> nvl(v_origin_sundry_feeid, 2)
        then
          v_new_sundry_feeid := t_bed.sundry_feeid;
          begin
            select price
              into v_price
              from sundry_fee_config
             where hospid = hospital.login.get_hospid
               and sundry_feeid = t_bed.sundry_feeid;
          exception
            when no_data_found then
              raise_application_error(-20001,
                                      '�Ҳ������Ϊ( ' || t_bed.sundry_feeid ||
                                      ' )���ӷ�.;');
          end;
          ol_input.s_ҽ��_��ҽ��_�ӷ�_����_nc(null,
                                     'A',
                                     null,
                                     in_charge_doctorid,
                                     t_resident_info.residentid,
                                     t_resident_info.deptid,
                                     v_new_sundry_feeid,
                                     v_price,
                                     1,
                                     'NURSE',
                                     v_add_supply,
                                     v_order_listid,
                                     null,
                                     null,
                                     null);
        
        else
          if nvl(get_system_option('¼���ӷ�����Ϊ��λ�ѵ�ҽ��'), 'Y') = 'Y'
          then
            begin
              select id
                into v_new_sundry_feeid
                from sundry_fee
               where name = '��λ��'
                 and rownum = 1;
            exception
              when no_data_found then
                raise_application_error(-20001,
                                        '�Ҳ�������Ϊ��λ�ѵ��ӷ�.;');
            end;
            v_price := t_bed.price;
            ol_input.s_ҽ��_��ҽ��_�ӷ�_����_nc(null,
                                       'A',
                                       null,
                                       in_charge_doctorid,
                                       t_resident_info.residentid,
                                       t_resident_info.deptid,
                                       v_new_sundry_feeid,
                                       v_price,
                                       1,
                                       'NURSE',
                                       v_add_supply,
                                       v_order_listid,
                                       null,
                                       null,
                                       null);
          
          end if;
        end if;
      
        if nvl(get_system_option('���Ŵ�λ��ȷ��ҽ��'), 'Y') = 'Y'
           and v_order_listid is not null
        then
          ol_input.s_ҽ��_ҽ��_ȷ��_nc(v_order_listid, 'NURSE');
        end if;
      end if;
    end if;
  
    for c in (select baby_residentid, baby_patientid, b.record_no
                from mother_baby_relation a, resident_patient b
               where a.mother_patientid = in_patientid
                 and a.baby_residentid = b.residentid
                 and b.resident_info_process_reason <> 'OUT'
                 and b.residentid = in_residentid)
    loop
    
      update resident_patient
         set status = 'NORMAL'
       where residentid = c.baby_residentid;
    
      update resident_info
         set bedid       = in_bedid,
             update_date = sysdate
       where residentid = c.baby_residentid
         and record_no = c.record_no;
    end loop;
    commit;
    rabbitmq.publish_arrange_bed_msg(in_residentid => in_residentid,
                                     in_old_bedid  => t_resident_info.bedid);
  end s_סԺ_���Ŵ�λ;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2011/06/23 - �����д�ȷ�ϡ������ˡ�δֹͣҽ���ģ���ʾ�����δ����ҽ������
  --                             ����ϵͳѡ�� ID=��Ժ����_��ʱҽ������Ҫִ�� NAME=Y/N default=N
  --     tiger      2010/09/20 - ���ӳ�Ժ��Ȩ ID='��Ժ����_��Ҫҽʦ��Ȩ'  name= {Y,N} default = N
  --     tiger      2008/10/21 - ����ϵͳѡ�� ID = '��Ժ����_�ж�ҽ����ҩ�Ѿ�����' name = {Y,N}  DEFAULT=N 
  --     tiger      2008/10/16 - ���������д
  --     tiger      2007/10/11 - ��ǰ�޸�ת�Ʋ��˾���Ϣ�еĳ���ʱ�䣬Ȼ�������µļ�¼ 
  --     tiger      2007/01/14 - ɾ��dr_order_list_info��Ϣ
  --     tiger      2006/10/31 - ֹͣ���еĹ̶�ҽ��(E,F)
  --     tiger      2006/09/21 - �޸Ĳ�����ҳ��Ժʱ�� = nvl(out_date,sysdate)
  --     tiger      2006/06/01 - �޸�סԺ���̣�����ҽ�Ʊ��ղ�������ҽ����˹���
  --     tiger      2004/12/02 - ����rpt_dr.s_out_requestͳ������ҽʦ���˶�̬����
  --     tiger      2004/05/25 - ������󣬶��Ӥ�����ִ��󣬷��ض���
  --     tiger      2003/08/16 - ȡ���ı䲡����ҳ��״̬
  --     TIGER      2001/11/03 - �޸Ĵ���״̬Ϊ WAIT_ACK , WAIT_PAY, WAIT_MIX, FINISHED ,WITHDRAWED
  --     tiger      2001/10/15 - ����ְԱ�ĵ�¼���š�������㲿�ź�סԺ���㲿�Ź���
  --     tiger      2001/05/16 -  ���û�в�����ҳ��Ϣ����������һ��. 
  --     tiger      2000/08/27 -  ��Ժ����ʱ�������޸Ĳ�����ҳ�е�����.
  --     tiger      2000/08/19 -  REWRITE  �ϲ��� resident_register & resident_info
  procedure s_סԺ_��Ժ����(in_patientid         in varchar2
                     ,in_residentid        in varchar2
                     ,in_in_state          in varchar2
                     ,in_definite_date     in varchar2
                     ,in_blood_type        in varchar2
                     ,in_rescue_times      in varchar2
                     ,in_success_times     in varchar2
                     ,in_follow_flag       in varchar2
                     ,in_follow_date       in varchar2
                     ,in_open_body         in varchar2
                     ,in_teach_flag        in varchar2
                     ,in_sample_quality    in varchar2
                     ,in_direct_doctorid   in varchar2
                     ,in_charge_doctorid   in varchar2
                     ,in_resident_doctorid in varchar2
                     ,in_practice_doctorid in varchar2
                     ,in_out_date          in varchar2) is
    t_resident_patient        resident_patient%rowtype;
    t_resident_info           resident_info%rowtype;
    i                         number;
    t_record_no               resident_patient.record_no%type;
    t_definite_date           date;
    t_follow_date             date;
    v_worker_attr             worker.attribute%type;
    t_case_page1              case_page1%rowtype;
    v_circulation_ticketid    circulation_ticket.id%type;
    v_circulation_ticket_type circulation_ticket.type%type;
    v_dept_attr               all_department.attribute%type;
    t_dept_name               varchar2(2000);
    v_in_date                 date;
  begin
    verify_patient(in_patientid);
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    if t_resident_info.process_reason = 'OUT'
    then
      raise_application_error(-20001, '�ò����Ѿ����˳�Ժ����.;');
    elsif t_resident_info.process_reason = 'CHANGEDEPT'
    then
      if t_resident_info.finish_flag = 'WAIT_ACC'
      then
        raise_application_error(-20001,
                                '�ò����Ѿ�����ת���������ڵȴ�ת�ƽ��㣬��������Ժ����.;');
      elsif t_resident_info.finish_flag = 'FINISHED'
      then
        if t_resident_patient.status in ('WAIT_BED', 'NORMAL')
        then
          null;
        elsif t_resident_patient.status = 'WAIT_DEPT'
        then
          raise_application_error(-20001,
                                  '�ò����Ѿ�����ת�ƽ��㣬���ڵȴ�ת���������ң���������Ժ����.;');
        else
          raise_application_error(-20001,
                                  '�Ƿ���RESIDENT_PATIENT״̬' ||
                                  t_resident_patient.status || '.;');
        end if;
      else
        raise_application_error(-20001,
                                '�Ƿ���FINISH_FLAG״̬' ||
                                t_resident_info.finish_flag || '.;');
      end if;
    elsif t_resident_info.process_reason in ('IN', 'NEW')
    then
      null;
    else
      raise_application_error(-20001,
                              '�Ƿ���PROCESS_REASON״̬' ||
                              t_resident_info.process_reason || '.;');
    end if;
    prv_��֤_סԺ����_δ���(t_resident_patient.residentid);
  
    if nvl(get_system_option('��Ժ����_Ƿ�ѻ��߲������Ժ����'), 'N') = 'Y'
    then
      s_ack_סԺ�����㹻(t_resident_info, 0);
    end if;
  
    begin
      select 2
        into i
        from hospital.patient_pathway
       where residentid = t_resident_info.residentid
         and status = 'NORMAL'
         and rownum = 1;
      raise_application_error(-20001, '���˳��ٴ�·����������Ժ����.;');
    exception
      when no_data_found then
        null;
    end;
  
    if nvl(get_system_option('��Ժ����_��Ҫҽʦ��Ȩ'), 'N') = 'Y'
    then
      begin
        select 2
          into i
          from resident_patient_out_authorize
         where residentid = t_resident_patient.residentid
           and rownum = 1;
      exception
        when no_data_found then
          raise_application_error(-20001, '�ò��˻�û����Ȩ�����ܳ�Ժ.;');
      end;
    end if;
  
    select attribute
      into v_worker_attr
      from worker
     where id = hospital.login.get_workerid;
    user_permit.s_ack_��Ժ����(t_resident_info.deptid, v_worker_attr);
  
    begin
      select 2
        into i
        from (select a.residentid
                from resident_info a, mother_baby_relation b
               where a.process_reason = 'OUT'
                 and a.mother_patientid = t_resident_info.patientid
                 and a.residentid = b.baby_residentid) out_baby,
             mother_baby_relation b
       where b.mother_residentid = t_resident_info.residentid
         and b.baby_residentid = out_baby.residentid(+)
         and out_baby.residentid is null
         and rownum = 1;
      raise_application_error(-20001,
                              '�����ȸ�����������Ժ,Ȼ��ĸ�ײ��ܱ���Ժ.;');
    exception
      when no_data_found then
        null;
    end;
  
    t_dept_name := null;
    for c in (select get_dept_name(execute_deptid) dept_name, count(*)
                from order_list
               where ownerid = t_resident_info.residentid
                 and status = 'WAIT_ACK'
               group by execute_deptid)
    loop
      t_dept_name := t_dept_name || c.dept_name || chr(10);
    end loop;
    if t_dept_name is not null
    then
    
      raise_application_error(-20001,
                              '���¿��һ��д�ȷ�ϵ�ҽ��:' || chr(10) || t_dept_name ||
                              '���ȴ�����Щҽ��.;');
    end if;
  
    t_dept_name := null;
    for c in (select get_dept_name(execute_deptid) dept_name, count(*)
                from order_list
               where ownerid = t_resident_info.residentid
                 and long_flag = 'A'
                 and (status = 'NORMAL' or
                     status = 'STOPPED' and status1 = 'WAIT_ACK')
               group by execute_deptid)
    loop
      t_dept_name := t_dept_name || c.dept_name || chr(10);
    end loop;
    if t_dept_name is not null
    then
    
      raise_application_error(-20001,
                              '���¿��һ���δֹͣ�ĳ���ҽ��:' || chr(10) || t_dept_name ||
                              '���ȴ�����Щҽ��.;');
    end if;
  
    t_dept_name := null;
    for c in (select get_dept_name(execute_deptid) dept_name, count(*)
                from order_list
               where ownerid = t_resident_info.residentid
                 and long_flag = 'B'
                 and status = 'NORMAL'
                 and status1 = 'WAIT_ACC'
               group by execute_deptid)
    loop
      t_dept_name := t_dept_name || c.dept_name || chr(10);
    end loop;
    if t_dept_name is not null
    then
    
      raise_application_error(-20001,
                              '���¿��һ�����δ���ʵ���ʱҽ��:' || chr(10) || t_dept_name ||
                              '���ȴ�����Щҽ��.;');
    end if;
  
    if nvl(get_system_option('��Ժ����_��ʱҽ������Ҫִ��'), 'N') = 'Y'
    then
      t_dept_name := null;
      for c in (select get_dept_name(execute_deptid) dept_name, count(*)
                  from order_list
                 where ownerid = t_resident_info.residentid
                   and long_flag = 'B'
                   and status = 'NORMAL'
                   and status1 = 'WAIT_EXEC'
                 group by execute_deptid)
      loop
        t_dept_name := t_dept_name || c.dept_name || chr(10);
      end loop;
      if t_dept_name is not null
      then
        raise_application_error(-20001,
                                '���¿��һ�����δִ�е���ʱҽ��:' || chr(10) ||
                                t_dept_name || '���ȴ�����Щҽ��.;');
      end if;
    end if;
  
    begin
      select 2
        into i
        from prescription
       where residentid = t_resident_info.residentid
         and status = 'WAIT_MIX'
         and rownum = 1;
      raise_application_error(-20001,
                              '�ò��˻��д����Ѿ�����,����û�г���.;');
    exception
      when no_data_found then
        null;
    end;
  
    if nvl(get_system_option('��Ժ����_�ж�ҽ����ҩ�Ѿ�����'), 'N') = 'Y'
    then
      begin
        select a.id, a.type
          into v_circulation_ticketid, v_circulation_ticket_type
          from circulation_ticket a, circulation_detail b
         where a.type in ('E', 'F')
           and a.attribute in ('WAIT_ACK', 'WAIT_OUT')
           and a.id = b.circulation_ticketid
           and b.residentid = t_resident_info.residentid
           and rownum = 1;
        raise_application_error(-20001,
                                '���ݱ��Ϊ( ' || v_circulation_ticketid ||
                                ' )��' ||
                                hospital.get_field_dict_name('CIRCULATION_TICKET',
                                                             'TYPE',
                                                             v_circulation_ticket_type) ||
                                '����Ҫ��Ժ���˵�ҩƷ����û����ҩ�����ȴ���õ���,;');
      exception
        when no_data_found then
          null;
      end;
    end if;
  
    if nvl(get_system_option('��Ժ����_�жϳ�Ժ��Ҫ����Ѿ�¼��'), 'N') = 'Y'
       and t_resident_patient.resident_info_mother_patientid is null
    then
      begin
        select 2
          into i
          from resident_info
         where residentid = t_resident_patient.residentid
           and process_reason = 'NEW'
           and rownum = 1;
      exception
        when no_data_found then
          begin
            select 2
              into i
              from hospital.diagnose
             where residentid = t_resident_patient.residentid
               and attribute = 'C'
               and rownum = 1;
          exception
            when no_data_found then
              raise_application_error(-20001,
                                      '�û��ߵĳ�Ժ��Ҫ��ϻ�û��¼��,���ܳ�Ժ.;');
          end;
      end;
    end if;
  
    --ִ�����еĹ̶�ҽ�� E��F
    for c in (select *
                from order_list
               where ownerid = t_resident_info.residentid
                 and long_flag in ('E', 'F')
                 and status = 'NORMAL'
                 and status1 = 'WAIT_EXEC')
    loop
      ol_acc.s_ҽ��_�̶�ҽ��_ִ��nc(c);
    end loop;
    --ֹͣ���еĹ̶�ҽ�� F
    for c in (select a.id
                from order_list a
               where a.ownerid = t_resident_info.residentid
                 and a.long_flag = 'F'
                 and a.status = 'NORMAL'
                 and a.status1 = 'WAIT_ACC')
    loop
      ol_acc.s_ҽ��_�̶�ҽ��_ֹͣnc(c.id);
    end loop;
    select attribute
      into v_dept_attr
      from all_department
     where id = t_resident_info.deptid;
  
    begin
      select 2
        into i
        from case_page1
       where residentid = t_resident_info.residentid
         and rownum = 1
         for update nowait;
      lock_res.lock_case_page1(t_resident_info.residentid, t_case_page1);
    exception
      when no_data_found then
        prv_סԺ_������ҳ_����(t_resident_info.residentid, 'S_סԺ_��Ժ����');
        lock_res.lock_case_page1(t_resident_info.residentid, t_case_page1);
      when others then
        raise_application_error(-20001, '���������ڲ�������,������.;');
    end;
  
    verify_field_dict('CASE_PAGE1', 'IN_STATE', in_in_state, '��Ժʱ���');
    verify_not_null(in_definite_date, '��Ժ��ȷ������');
  
    begin
      select to_number(in_definite_date) into i from dual;
      t_definite_date := trunc(t_resident_info.in_date) + i;
    exception
      when others then
        verify_valid_date(in_definite_date, '��Ժ��ȷ������');
        t_definite_date := get_date_from_str(in_definite_date);
    end;
    if in_blood_type is not null
    then
      verify_field_dict('PATIENT', 'BLOOD_TYPE', in_blood_type, 'Ѫ��');
    end if;
    verify_field_dict('CASE_PAGE1',
                      'SAMPLE_QUALITY',
                      in_sample_quality,
                      '��������');
    verify_valid_number(in_rescue_times, '���ȴ���');
    verify_valid_number(in_success_times, '�ɹ�����');
    if in_rescue_times is not null
    then
      verify_not_null(in_success_times, '�ɹ�����');
    end if;
    if nvl(to_number(in_rescue_times), 0) <
       nvl(to_number(in_success_times), 0)
    then
      raise_application_error(-20001, '�ɹ��������ܴ������ȴ���.;');
    end if;
    verify_field_dict('CASE_PAGE1',
                      'FOLLOW_FLAG',
                      in_follow_flag,
                      '�Ƿ�����');
    if in_follow_flag = '1'
    then
      verify_not_null(in_follow_date, '��������');
      begin
        select to_number(in_follow_date) into i from dual;
        t_follow_date := trunc(sysdate) + i;
      exception
        when others then
          verify_valid_date(in_follow_date, '��������');
          t_follow_date := get_date_from_str(in_follow_date);
      end;
    else
      if in_follow_date is not null
      then
        raise_application_error(-20001, '�벻Ҫ������������.;');
      end if;
    end if;
    verify_field_dict('CASE_PAGE1', 'OPEN_BODY', in_open_body, '�Ƿ�ʬ��');
    verify_field_dict('CASE_PAGE1',
                      'TEACH_FLAG',
                      in_teach_flag,
                      'ʾ�̲���');
    verify_worker(in_direct_doctorid, '����ҽʦ');
    verify_worker(in_charge_doctorid, '����ҽʦ');
    if in_resident_doctorid is not null
    then
      verify_worker(in_resident_doctorid, 'סԺҽʦ');
    end if;
    if in_practice_doctorid is not null
    then
      verify_worker(in_practice_doctorid, 'ʵϰҽʦ');
    end if;
    verify_not_null(in_out_date, '��Ժ����');
    verify_valid_date(in_out_date, '��Ժ����');
    if get_date_from_str(in_out_date) > sysdate
    then
      raise_application_error(-20001, '��Ժ���ڲ��ܴ��ڽ���');
    end if;
  
    select in_date
      into v_in_date
      from case_page1
     where residentid = t_resident_info.residentid;
  
    if trunc(get_date_from_str(in_out_date)) < trunc(v_in_date)
    then
      raise_application_error(-20001, '��Ժ���ڲ���С����Ժ����');
    end if;
  
    update case_page1
       set out_deptid        = t_resident_info.deptid,
           out_date          = get_date_from_str(in_out_date),
           out_room          = t_resident_info.bedid,
           in_days           = trunc(nvl(out_date, sysdate)) -
                               trunc(t_resident_info.in_date),
           in_state          = in_in_state,
           definite_date     = t_definite_date,
           blood_type        = nvl(in_blood_type, blood_type),
           sample_quality    = in_sample_quality,
           rescue_times      = in_rescue_times,
           success_times     = in_success_times,
           follow_flag       = in_follow_flag,
           follow_date       = t_follow_date,
           open_body         = in_open_body,
           teach_flag        = in_teach_flag,
           direct_doctorid   = in_direct_doctorid,
           charge_doctorid   = in_charge_doctorid,
           resident_doctorid = in_resident_doctorid,
           practice_doctorid = in_practice_doctorid,
           operator          = hospital.login.get_workerid,
           update_date       = sysdate,
           reason            = 'S_סԺ_��Ժ����'
     where residentid = t_resident_info.residentid;
  
    update resident_info
       set out_dept_date = get_date_from_str(in_out_date), --sysdate
           update_date   = sysdate
     where record_no = t_resident_info.record_no;
  
    t_record_no := get_next_resident_infoid;
    update resident_patient
       set record_no = t_record_no
     where patientid = t_resident_patient.patientid
       and residentid = t_resident_patient.residentid;
  
    insert into resident_info
      (record_no,
       patientid,
       baby_patientid,
       mother_patientid,
       residentid,
       seq,
       attribute,
       pay_method,
       pre_pay_limit,
       deptid,
       bedid,
       in_date,
       in_state,
       out_date,
       charge_billid,
       definite_date,
       charge_doctorid,
       tend_level,
       operation_date,
       ill_status,
       operator,
       update_date,
       remark,
       process_reason,
       process_date,
       process_operator,
       finish_flag,
       age,
       age_unit,
       long_term_out_patient)
    values
      (t_record_no,
       t_resident_info.patientid,
       t_resident_info.baby_patientid,
       t_resident_info.mother_patientid,
       t_resident_info.residentid,
       t_resident_info.seq,
       t_resident_info.attribute,
       t_resident_info.pay_method,
       t_resident_info.pre_pay_limit,
       t_resident_info.deptid,
       t_resident_info.bedid,
       t_resident_info.in_date,
       t_resident_info.in_state,
       get_date_from_str(in_out_date), --sysdate,
       null,
       t_resident_info.definite_date,
       t_resident_info.charge_doctorid,
       t_resident_info.tend_level,
       t_resident_info.operation_date,
       t_resident_info.ill_status,
       t_resident_info.operator,
       sysdate,
       t_resident_info.remark,
       'OUT',
       sysdate,
       hospital.login.get_workerid,
       decode(t_resident_patient.account_type,
              'NORMAL',
              'WAIT_ACC',
              'WAIT_AUDIT'),
       t_resident_info.age,
       t_resident_info.age_unit,
       t_resident_info.long_term_out_patient);
    begin
      select 2
        into i
        from resident_patient
       where (resident_info_process_reason in ('IN', 'CHANGEDEPT') and
             resident_info_finish_flag not in ('WAIT_BED') or
             resident_info_process_reason = 'NEW')
         and resident_info_bedid = t_resident_info.bedid
         and resident_info_deptid = t_resident_info.deptid
         and patientid <> in_patientid
         and rownum = 1;
    exception
      when no_data_found then
        update bed
           set status = 'B'
         where id = t_resident_info.bedid
           and deptid = t_resident_info.deptid;
    end;
  
    update resident_patient
       set record_no = t_record_no,
           status    = decode(t_resident_patient.account_type,
                              'NORMAL',
                              'WAIT_ACC',
                              'WAIT_AUDIT')
     where patientid = t_resident_patient.patientid
       and residentid = t_resident_patient.residentid;
    rpt_dr.s_out_request('OUT', sysdate, t_resident_info.charge_doctorid);
    delete from dr_order_list_info
     where residentid = t_resident_info.residentid;
    /*
    begin
      select mother_residentid
        into v_mother_residentid
        from hospital.stable_mother_baby_relation
       where baby_residentid = t_resident_patient.residentid
         and rownum = 1;
      prv_סԺ_ȡ��ĸӤ��ϵ(v_mother_residentid,
                            t_resident_info.residentid);
    exception
      when no_data_found then
        null;
    end;
    delete from mother_baby_relation
     where baby_patientid = in_patientid
       and baby_residentid = t_resident_patient.residentid;
    */
    qci.s_ͳ��_סԺ������ҩ(t_resident_info.residentid);
    commit;
    rabbitmq.publish_adt_message(in_event      => events.adt_discharge_reguest,
                                 in_residentid => in_residentid);
  end s_סԺ_��Ժ����;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/16 - ���������д
  --     tiger      2007/04/02 - ȡ����Ժ��Ȩ����
  --     tiger      2006/06/01 - �޸�סԺ���̣�����ҽ�Ʊ��ղ�������ҽ����˹���
  --     tiger      2004/12/02 - ����rpt_dr.s_out_requestͳ������ҽʦ���˶�̬����
  --     tiger      2000/12/18 - ���������ҳ�г�Ժ��Ϣ 
  --     tiger      2000/05/04 - ��Ժ����ȡ���󣬲��Զ����Ŵ�λ
  --     tiger      2000/08/19 -  REWRITE  �ϲ��� resident_register & resident_info
  procedure s_סԺ_��Ժ����_ȡ��(in_patientid  in varchar2
                        ,in_residentid in varchar2
                        ,in_remark     in varchar2) is
    i                   number;
    t_resident_patient  resident_patient%rowtype;
    t_resident_info     resident_info%rowtype;
    t_record_no         resident_patient.record_no%type;
    t_status            resident_patient.status%type;
    v_worker_attr       worker.attribute%type;
    v_mother_bedid      bed.id%type;
    v_mother_residentid resident_info.residentid%type;
  begin
    verify_patient(in_patientid);
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    if t_resident_info.process_reason in ('IN', 'NEW', 'CHANGEDEPT')
    then
      raise_application_error(-20001,
                              '�ò���(' || t_resident_info.residentid ||
                              ')û������Ժ����,����ȡ����Ժ����.;');
    elsif t_resident_info.process_reason = 'OUT'
    then
      if t_resident_info.finish_flag = 'FINISHED'
      then
        raise_application_error(-20001,
                                '�ò����Ѿ����˳�Ժ����,����ȡ��ת��.;');
      elsif t_resident_info.finish_flag in ('WAIT_ACC', 'WAIT_AUDIT')
      then
        null;
      else
        raise_application_error(-20001, '�Ƿ���FINISH_FLAG.;');
      end if;
    else
      raise_application_error(-20001,
                              '�Ƿ���PROCESS_REASON״̬' ||
                              t_resident_info.process_reason || '.;');
    end if;
    select attribute
      into v_worker_attr
      from worker
     where id = hospital.login.get_workerid;
    user_permit.s_ack_��Ժ����(t_resident_info.deptid, v_worker_attr);
    begin
      select a.record_no
        into t_record_no
        from resident_info a
       where a.patientid = in_patientid
         and a.residentid = t_resident_info.residentid
         and a.process_date in
             (select max(process_date)
                from resident_info b
               where b.patientid = in_patientid
                 and b.residentid = t_resident_info.residentid
                 and b.record_no <> t_resident_info.record_no);
    exception
      when no_data_found then
        raise_application_error(-20001,
                                'û���ҵ��ò�����ǰ��סԺ�Ǽ���Ϣ������ȡ����Ժ;');
    end;
  
    begin
      select 2
        into i
        from mother_baby_relation a, resident_info b
       where a.baby_patientid = in_patientid
         and a.mother_residentid = b.residentid
         and b.process_reason = 'OUT'
         and rownum = 1;
      raise_application_error(-20001, '�����ȸ�ĸ��ȡ����Ժ.;');
    exception
      when no_data_found then
        null;
    end;
  
    /*
    if t_resident_info.mother_patientid is not null then
      begin
        select 2
          into i
          from resident_info
         where patientid = t_resident_info.mother_patientid
           and process_reason = 'OUT'
           and residentid =
               substrb(t_resident_info.residentid, length(residentid))
           and rownum = 1;
        raise_application_error(-20001, '�����ȸ�ĸ��ȡ����Ժ.;');
      exception
        when no_data_found then
          null;
      end;
    end if;
    */
    begin
      select 2
        into i
        from resident_info
       where record_no = t_record_no
         and residentid = t_resident_info.residentid
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                'û���ҵ��ò��˳�Ժ����ʱ�Ĳ�����Ϣ.;');
      when too_many_rows then
        raise_application_error(-20001,
                                '�ҵ��ò��˳�Ժ����ʱ�Ķ���������Ϣ.;');
      when others then
        raise_application_error(-20001, '���������ڲ�����������.;');
    end;
  
    delete from resident_info
     where record_no = t_resident_patient.record_no;
    insert into hospital.deleted_records_
      (schema_name, table_name, id, delete_date)
    values
      ('HOSPITAL', 'RESIDENT_INFO', t_resident_patient.record_no, sysdate);
    t_status := 'WAIT_BED';
  
    update resident_patient
       set record_no = t_record_no,
           status    = t_status
     where patientid = in_patientid
       and residentid = in_residentid;
  
    update resident_info
       set out_dept_date = null,
           remark        = substrb(in_remark, 1, 20),
           update_date   = sysdate
     where record_no = t_record_no;
    --ȡ����Ժ�����޸�ҽ��״̬Ϊ�����  
    update resident_medcare_info
       set account_status = 'WAIT_AUDIT'
     where residentid = t_resident_info.residentid;
  
    begin
      select 2
        into i
        from case_page1
       where residentid = t_resident_info.residentid
         for update nowait;
    exception
      when no_data_found then
        null;
      when others then
        raise_application_error(-20001, '���������ڲ�����������.;');
    end;
    update case_page1
       set out_date   = null,
           out_deptid = null,
           reason     = 'S_��Ժ����_ȡ��'
     where residentid = t_resident_info.residentid;
  
    rpt_dr.s_out_request('CANCEL_OUT',
                         t_resident_info.out_date,
                         t_resident_info.charge_doctorid);
  
    --�����Ӥ�������Ƚ���ĸӤ��ϵ 
    begin
      select bedid, residentid
        into v_mother_bedid, v_mother_residentid
        from resident_info
       where residentid in
             (select mother_residentid
                from hospital.stable_mother_baby_relation
               where baby_patientid = in_patientid
                 and baby_residentid = t_resident_info.residentid)
         and rownum = 1;
      update resident_info
         set bedid       = v_mother_bedid,
             update_date = sysdate
       where residentid = t_resident_info.residentid
         and process_reason = 'NEW';
      prv_סԺ_����ĸӤ��ϵ(v_mother_residentid, t_resident_info.residentid);
    exception
      when no_data_found then
        null;
    end;
    qci.s_ȡ��ͳ��_סԺ������ҩ(t_resident_info.residentid);
    commit;
    rabbitmq.publish_adt_message(in_event      => events.adt_discharge_reguest_cancel,
                                 in_residentid => in_residentid);
  end s_סԺ_��Ժ����_ȡ��;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/16 - ���������д
  --     tiger      2006/06/02 -  �޸Ŀط�ʱ�� ����s_do_ҽ�Ʊ���_�޸Ĳ����Է�����
  --     tiger      2006/03/17 -  ���������ֵ� resident_patient.account_type.remark 
  --                              ����� patient.attributeһ�£��ſ������÷��ÿ���
  --     tiger      2006/03/17 -  ����ϵͳѡ�'���ÿ����벡��������һ��'
  --     tiger      2006/01/25 -  ���ݲ��˵�attribute�жϷ��ÿ���
  --     tiger      2003/08/24 -  ���ӿ��Ʒ��õ��ʻ�֧�������޶�
  --     tiger      2003/06/12 -  create
  procedure s_סԺ_���ʷ��ÿ���(in_patientid     in varchar2
                       ,in_residentid    in varchar2
                       ,in_account_type  in varchar2
                       ,in_pay_limit     in number
                       ,in_control_limit in number) is
    v_patient_attr     patient.attribute%type;
    v_dict_attr        patient.attribute%type;
    t_resident_info    resident_info%rowtype;
    t_resident_patient resident_patient%rowtype;
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
  
    begin
      select attribute
        into v_patient_attr
        from patient
       where id = in_patientid;
    exception
      when no_data_found then
        raise_application_error(-20001, 'û�ҵ�������Ϣ');
    end;
  
    begin
      select remark
        into v_dict_attr
        from field_dict
       where table_name = 'RESIDENT_PATIENT'
         and field_name = 'ACCOUNT_TYPE'
         and field_value = in_account_type;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '�Ƿ����˷��ÿ����ֵ�( ' || in_account_type || ' ).;');
    end;
  
    if nvl(get_system_option('���ÿ����벡��������һ��'), 'Y') = 'Y'
    then
      if in_account_type in ('NORMAL')
      then
        if v_patient_attr not in ('OWN', 'PUBLIC', 'NEW', 'NA')
        then
          raise_application_error(-20001,
                                  '���˵����(' || v_patient_attr ||
                                  ')�����ԷѲ���,�������÷��ÿ���Ϊ�Է�.;' ||
                                  in_account_type);
        end if;
      else
        if v_patient_attr <> v_dict_attr
        then
          raise_application_error(-20001,
                                  '���˵����(' || v_patient_attr || ')����' ||
                                  get_field_dict_name('PATIENT',
                                                      'ATTRIBUTE',
                                                      v_dict_attr) ||
                                  ',�������÷��ÿ���Ϊ�Է�.;' || in_account_type);
        end if;
      end if;
    end if;
    update resident_patient
       set account_type  = in_account_type,
           pay_limit     = in_pay_limit,
           control_limit = in_control_limit
     where patientid = in_patientid
       and residentid = in_residentid;
    s_do_ҽ�Ʊ���_�޸Ĳ����Է�����(t_resident_info.residentid,
                       in_patientid,
                       v_patient_attr);
    update charge_item
       set mc_generate_type = mc_generate_type
     where patientid = in_patientid
       and residentid = in_residentid;
    calc_resident_account(in_patientid, in_residentid);
    commit;
  end s_סԺ_���ʷ��ÿ���;
  -----------------------------------------------------------------------------------------------------
  --     tiger   2010/08/06  ֧�ֶ��baby
  --     tiger      2008/10/16 - ���������д
  --     tiger      2001/07/31 -  create 
  procedure prv_סԺ_����ĸӤ��ϵ(in_mother_residentid in varchar2
                         ,in_baby_residentid   in varchar2) is
    t_mother_resident_patient resident_patient%rowtype;
    t_baby_resident_patient   resident_patient%rowtype;
    t_mother_resident_info    resident_info%rowtype;
    t_baby_resident_info      resident_info%rowtype;
  begin
    lock_res.lock_resident_by_rid(in_mother_residentid,
                                  t_mother_resident_patient,
                                  t_mother_resident_info);
    lock_res.lock_resident_by_rid(in_baby_residentid,
                                  t_baby_resident_patient,
                                  t_baby_resident_info);
    update resident_info
       set baby_patientid = t_baby_resident_patient.patientid,
           update_date    = sysdate
     where residentid = in_mother_residentid;
  
    update resident_info
       set mother_patientid = t_mother_resident_patient.patientid,
           bedid            = t_mother_resident_info.bedid,
           update_date      = sysdate
     where residentid = in_baby_residentid;
  
    insert into mother_baby_relation
      (mother_residentid,
       baby_residentid,
       mother_patientid,
       baby_patientid)
    values
      (t_mother_resident_info.residentid,
       t_baby_resident_info.residentid,
       t_mother_resident_info.patientid,
       t_baby_resident_info.patientid);
  end prv_סԺ_����ĸӤ��ϵ;
  -----------------------------------------------------------------------------------------------------

  procedure s_סԺ_����ĸӤ��ϵ(in_mother_residentid in varchar2
                       ,in_baby_residentid   in varchar2) is
  begin
    prv_סԺ_����ĸӤ��ϵ(in_mother_residentid, in_baby_residentid);
    commit;
  end s_סԺ_����ĸӤ��ϵ;
  -----------------------------------------------------------------------------------------------------
  --     tiger   2010/08/06  ֧�ֶ��baby
  procedure prv_סԺ_ȡ��ĸӤ��ϵ(in_mother_residentid in varchar2
                         ,in_baby_residentid   in varchar2) is
    t_mother_resident_patient resident_patient%rowtype;
    t_baby_resident_patient   resident_patient%rowtype;
    t_mother_resident_info    resident_info%rowtype;
    t_baby_resident_info      resident_info%rowtype;
    i                         number;
    v_new_baby_patientid      patient.id%type;
  begin
    lock_res.lock_resident_by_rid(in_mother_residentid,
                                  t_mother_resident_patient,
                                  t_mother_resident_info);
    lock_res.lock_resident_by_rid(in_baby_residentid,
                                  t_baby_resident_patient,
                                  t_baby_resident_info);
    begin
      select 2
        into i
        from resident_info
       where residentid = in_mother_residentid
         and baby_patientid = t_baby_resident_patient.patientid
         and rownum = 1;
    exception
      when no_data_found then
        begin
          select 2
            into i
            from resident_info
           where residentid = in_baby_residentid
             and mother_patientid = t_mother_resident_patient.patientid
             and rownum = 1;
        exception
          when no_data_found then
            raise_application_error(-20001,
                                    'סԺ��Ϊ' || in_mother_residentid ||
                                    '��סԺ��Ϊ' || in_baby_residentid ||
                                    '����û��ĸӤ��ϵ.;');
        end;
    end;
  
    begin
      select baby_patientid
        into v_new_baby_patientid
        from mother_baby_relation
       where mother_residentid = t_mother_resident_info.residentid
         and baby_residentid <> t_baby_resident_info.residentid
         and rownum = 1;
    exception
      when no_data_found then
        v_new_baby_patientid := null;
    end;
  
    update resident_info
       set baby_patientid = v_new_baby_patientid,
           update_date    = sysdate
     where residentid = in_mother_residentid;
    update resident_info
       set mother_patientid = null,
           update_date      = sysdate
     where residentid = in_baby_residentid;
  
    delete from mother_baby_relation
     where mother_residentid = t_mother_resident_info.residentid
       and baby_residentid = t_baby_resident_info.residentid;
  end prv_סԺ_ȡ��ĸӤ��ϵ;
  -----------------------------------------------------------------------------------------------------
  procedure s_סԺ_ȡ��ĸӤ��ϵ(in_mother_residentid in varchar2
                       ,in_baby_residentid   in varchar2) is
  begin
    prv_סԺ_ȡ��ĸӤ��ϵ(in_mother_residentid, in_baby_residentid);
    commit;
  end s_סԺ_ȡ��ĸӤ��ϵ;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/16 - ���������д
  --     tiger      2007/12/18 - �����µ�δ��Ժ���ʵĳ�Ժ���㵥�޸�Ϊ���½��㵥 
  --     tiger      2006/05/09 - ����ÿһ����ϸ�������� 
  --     tiger      2002/09/26 -  create
  procedure s_סԺ_����_���� is
    v_begin_date    date;
    v_end_date      date;
    v_balance_date  date;
    v_charge_billid charge_bill.id%type;
    i               number;
    t_fee           number;
  begin
    lock table charge_bill in exclusive mode nowait;
    select trunc(trunc(sysdate, 'MM') - 1, 'MM'),
           trunc(sysdate, 'MM'),
           trunc(sysdate, 'MM') - 1
      into v_begin_date, v_end_date, v_balance_date
      from dual;
  
    --����δ���ʵĳ�Ժ���㵥��
    if v_balance_date < to_date('2008/01/01', 'yyyy/mm/dd')
    then
      update charge_bill
         set type         = 'MONTH',
             balance_date = v_balance_date,
             remark       = 'ԭʱ��:' || to_char(balance_date, 'yyyy/mm/dd') ||
                            '��Ժ�����Ϊÿ�½���'
       where residentid is not null
         and status in ('WAIT_PAY')
         and type = 'OUT'
         and balance_date < v_end_date;
    else
      update charge_bill
         set type   = 'MONTH',
             remark = 'ԭʱ��:' || to_char(balance_date, 'yyyy/mm/dd') ||
                      '��Ժ�����Ϊÿ�½���'
       where residentid is not null
         and status in ('WAIT_PAY')
         and type = 'OUT'
         and balance_date < v_end_date;
    end if;
    --�������½���
    for c in (select b.residentid, b.patientid
                from resident_patient a, resident_info b
               where a.record_no = b.record_no
                 and a.status not in ('WAIT_PAY', 'WAIT_OUT'))
    loop
      for dept in (select distinct deptid
                     from resident_info
                    where residentid = c.residentid)
      loop
        begin
          select 2
            into i
            from charge_item
           where residentid = c.residentid
             and patient_deptid = dept.deptid
             and charge_billid is null
             and update_date >= v_begin_date
             and update_date < v_end_date
             and rownum = 1;
          v_charge_billid := get_next_charge_billid;
          t_fee           := 0;
          for c1 in (select sum(round(nvl(amount, 0) *
                                      round(nvl(price, 0), 3),
                                      2)) fee,
                            patientid,
                            residentid,
                            doctorid,
                            fee_type,
                            patient_deptid,
                            write_deptid,
                            execute_deptid,
                            nbmam_list_item_type,
                            ratio,
                            sum(round(nvl(amount, 0) *
                                      round(nvl(discount, 0), 3),
                                      2)) discount
                       from charge_item
                      where residentid = c.residentid
                        and patient_deptid = dept.deptid
                        and charge_billid is null
                        and update_date >= v_begin_date
                        and update_date < v_end_date
                      group by patientid,
                               residentid,
                               doctorid,
                               fee_type,
                               patient_deptid,
                               write_deptid,
                               execute_deptid,
                               nbmam_list_item_type,
                               ratio)
          loop
            insert into charge_fee
              (id,
               charge_billid,
               patientid,
               registerid,
               residentid,
               patient_deptid,
               doctorid,
               fee_type,
               fee,
               write_deptid,
               execute_deptid,
               attribute,
               status,
               operator,
               update_date,
               update_reason,
               remark,
               nbmam_list_item_type,
               ratio,
               type,
               balance_workerid,
               balance_date,
               discount)
            values
              (get_next_charge_feeid,
               v_charge_billid,
               c1.patientid,
               null, --REGISTERID
               c1.residentid,
               c1.patient_deptid,
               c1.doctorid,
               c1.fee_type,
               c1.fee,
               c1.write_deptid,
               c1.execute_deptid,
               'ACCOUNT',
               'WAIT_PAY',
               hospital.login.get_workerid,
               null,
               null,
               null,
               c1.nbmam_list_item_type,
               c1.ratio,
               'MONTH',
               hospital.login.get_workerid,
               v_balance_date,
               c1.discount);
            t_fee := nvl(t_fee, 0) + nvl(c1.fee, 0);
          end loop;
          insert into charge_bill
            (id,
             attribute,
             patientid,
             fee,
             status,
             remark,
             residentid,
             update_reason,
             medical_care_pay_formulaid,
             type,
             balance_date,
             balance_workerid)
          values
            (v_charge_billid,
             'ACCOUNT',
             c.patientid,
             t_fee,
             'WAIT_PAY',
             substrb(get_dept_name(dept.deptid), 1, 30),
             c.residentid,
             'A',
             null,
             'MONTH',
             v_balance_date,
             hospital.login.get_workerid);
          update charge_item
             set charge_billid = v_charge_billid,
                 remark        = nvl(remark, ' ')
           where residentid = c.residentid
             and patient_deptid = dept.deptid
             and charge_billid is null
             and update_date >= v_begin_date
             and update_date < v_end_date;
        exception
          when no_data_found then
            null;
        end;
      end loop;
      commit;
    end loop;
  end s_סԺ_����_����;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/16 - ���������д
  --     tiger      2007/12/18 - �����µ�δ��Ժ���ʵĳ�Ժ���㵥�޸�Ϊ���½��㵥 
  --     tiger      2006/05/09 - ����ÿһ����ϸ�������� 
  --     tiger      2002/09/26 -  create
  procedure s_סԺ_����_����_����(in_residentid in varchar2) is
    v_begin_date    date;
    v_end_date      date;
    v_balance_date  date;
    v_charge_billid charge_bill.id%type;
    i               number;
    t_fee           number;
  begin
    lock table charge_bill in exclusive mode nowait;
    select trunc(trunc(sysdate, 'MM') - 1, 'MM'),
           trunc(sysdate, 'MM'),
           trunc(sysdate, 'MM') - 1
      into v_begin_date, v_end_date, v_balance_date
      from dual;
  
    --����δ���ʵĳ�Ժ���㵥��
    if v_balance_date < to_date('2008/01/01', 'yyyy/mm/dd')
    then
      update charge_bill
         set type         = 'MONTH',
             balance_date = v_balance_date,
             remark       = 'ԭʱ��:' || to_char(balance_date, 'yyyy/mm/dd') ||
                            '��Ժ�����Ϊÿ�½���'
       where residentid is not null
         and residentid = in_residentid
         and status in ('WAIT_PAY')
         and type = 'OUT'
         and balance_date < v_end_date;
    else
      update charge_bill
         set type   = 'MONTH',
             remark = 'ԭʱ��:' || to_char(balance_date, 'yyyy/mm/dd') ||
                      '��Ժ�����Ϊÿ�½���'
       where residentid is not null
         and residentid = in_residentid
         and status in ('WAIT_PAY')
         and type = 'OUT'
         and balance_date < v_end_date;
    end if;
    --�������½���
    for c in (select b.residentid, b.patientid
                from resident_patient a, resident_info b
               where a.record_no = b.record_no
                 and a.status not in ('WAIT_PAY', 'WAIT_OUT')
                 and a.residentid = in_residentid)
    loop
      for dept in (select distinct deptid
                     from resident_info
                    where residentid = c.residentid)
      loop
        begin
          select 2
            into i
            from charge_item
           where residentid = c.residentid
             and patient_deptid = dept.deptid
             and charge_billid is null
             and update_date >= v_begin_date
             and update_date < v_end_date
             and rownum = 1;
          v_charge_billid := get_next_charge_billid;
          t_fee           := 0;
          for c1 in (select sum(round(nvl(amount, 0) *
                                      round(nvl(price, 0), 3),
                                      2)) fee,
                            patientid,
                            residentid,
                            doctorid,
                            fee_type,
                            patient_deptid,
                            write_deptid,
                            execute_deptid,
                            nbmam_list_item_type,
                            ratio,
                            sum(round(nvl(amount, 0) *
                                      round(nvl(discount, 0), 3),
                                      2)) discount
                       from charge_item
                      where residentid = c.residentid
                        and patient_deptid = dept.deptid
                        and charge_billid is null
                        and update_date >= v_begin_date
                        and update_date < v_end_date
                      group by patientid,
                               residentid,
                               doctorid,
                               fee_type,
                               patient_deptid,
                               write_deptid,
                               execute_deptid,
                               nbmam_list_item_type,
                               ratio)
          loop
            insert into charge_fee
              (id,
               charge_billid,
               patientid,
               registerid,
               residentid,
               patient_deptid,
               doctorid,
               fee_type,
               fee,
               write_deptid,
               execute_deptid,
               attribute,
               status,
               operator,
               update_date,
               update_reason,
               remark,
               nbmam_list_item_type,
               ratio,
               type,
               balance_workerid,
               balance_date,
               discount)
            values
              (get_next_charge_feeid,
               v_charge_billid,
               c1.patientid,
               null, --REGISTERID
               c1.residentid,
               c1.patient_deptid,
               c1.doctorid,
               c1.fee_type,
               c1.fee,
               c1.write_deptid,
               c1.execute_deptid,
               'ACCOUNT',
               'WAIT_PAY',
               'SPITAL',
               null,
               null,
               null,
               c1.nbmam_list_item_type,
               c1.ratio,
               'MONTH',
               'SPITAL',
               v_balance_date,
               c1.discount);
            t_fee := nvl(t_fee, 0) + nvl(c1.fee, 0);
          end loop;
          insert into charge_bill
            (id,
             attribute,
             patientid,
             fee,
             status,
             remark,
             residentid,
             update_reason,
             medical_care_pay_formulaid,
             type,
             balance_date,
             balance_workerid)
          values
            (v_charge_billid,
             'ACCOUNT',
             c.patientid,
             t_fee,
             'WAIT_PAY',
             substrb(get_dept_name(dept.deptid), 1, 30),
             c.residentid,
             'A',
             null,
             'MONTH',
             v_balance_date,
             'SPITAL');
          update charge_item
             set charge_billid = v_charge_billid,
                 remark        = nvl(remark, ' ')
           where residentid = c.residentid
             and patient_deptid = dept.deptid
             and charge_billid is null
             and update_date >= v_begin_date
             and update_date < v_end_date;
        exception
          when no_data_found then
            null;
        end;
      end loop;
      commit;
    end loop;
  end s_סԺ_����_����_����;

  -------------------------------------------------------------------------------------------------  
  --����סԺ���˰��½������������ 
  procedure s_סԺ_����_����_����(in_residentid in varchar2) as
    v_begin_date         date;
    v_end_date           date;
    v_begin_balance_date date;
    v_end_balance_date   date;
    v_balance_date       date;
    v_charge_billid      charge_bill.id%type;
    i                    number;
    t_fee                number;
    v_status             hospital.resident_patient_.status%type;
  begin
    /*    begin
      select 2
        into i
        from hospital.charge_bill_
       where residentid = in_residentid
         for update;
    exception
      when no_data_found then
        null;
    end;*/
    begin
      select 2
        into i
        from hospital.charge_bill_
       where residentid = in_residentid
         and type = 'MONTH'
         and rownum = 1;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                'סԺ��Ϊ' || in_residentid ||
                                '�Ļ���û�в������½�����Ϣ,�������');
    end;
    begin
      select status, trunc(resident_info_in_date, 'MM')
        into v_status, v_begin_date
        from hospital.resident_patient_
       where residentid = in_residentid;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                'û���ҵ�סԺ��Ϊ' || in_residentid ||
                                '����Ժ��Ϣ,����סԺ�Ż��ߺ�ʵ�����Ƿ��Ѿ���Ժ');
    end;
  
    if v_status = 'WAIT_PAY'
    then
      raise_application_error(-20001,
                              'סԺ��Ϊ' || in_residentid ||
                              '�Ļ����Ѿ������Ժ���㲻�������������½���');
    elsif v_status = 'WAIT_OUT'
    then
      raise_application_error(-20001,
                              'סԺ��Ϊ' || in_residentid ||
                              '�Ļ����Ѿ������Ժ���˲��������������½���');
    end if;
  
    --���һ��߳�Ժʱ��
    begin
      select trunc(out_date, 'MM')
        into v_end_date
        from hospital.resident_info_
       where residentid = in_residentid
         and process_reason = 'OUT';
    exception
      when no_data_found then
        v_end_date := trunc(sysdate);
    end;
  
    if trunc(v_begin_date, 'MM') = trunc(v_end_date, 'MM')
    then
      raise_application_error(-20001,
                              'סԺ��Ϊ' || in_residentid ||
                              '�Ļ�����Ժʱ�����ǵ�ǰ�»�����Ժʱ��ͳ�Ժʱ����ͬһ����,����ʹ�ô˹��̵���');
    end if;
    --ɾ���½����������
    delete from hospital.charge_bill_
     where residentid = in_residentid
       and status = 'WAIT_PAY';
    update hospital.charge_item_
       set charge_billid = null
     where residentid = in_residentid
       and charge_billid is not null
       and status = 'WAIT_PAY';
    delete from hospital.charge_fee_
     where residentid = in_residentid
       and status = 'WAIT_PAY';
  
    v_begin_balance_date := v_begin_date;
    loop
      if v_begin_balance_date >= v_end_date
      then
        exit;
      end if;
      v_end_balance_date := trunc(add_months(v_begin_balance_date, 1), 'MM');
      v_balance_date     := v_end_balance_date - 1;
    
      --�������½���
      for c in (select b.residentid, b.patientid
                  from resident_patient a, resident_info b
                 where a.record_no = b.record_no
                   and a.residentid = in_residentid
                   and a.status not in ('WAIT_PAY', 'WAIT_OUT'))
      loop
        for dept in (select distinct deptid
                       from resident_info
                      where residentid = c.residentid)
        loop
          begin
            select 2
              into i
              from charge_item
             where residentid = c.residentid
               and patient_deptid = dept.deptid
               and charge_billid is null
               and update_date >= v_begin_balance_date
               and update_date < v_end_balance_date
               and rownum = 1;
            v_charge_billid := get_next_charge_billid;
            t_fee           := 0;
            for c1 in (select sum(round(nvl(amount, 0) *
                                        round(nvl(price, 0), 3),
                                        2)) fee,
                              patientid,
                              residentid,
                              doctorid,
                              fee_type,
                              patient_deptid,
                              write_deptid,
                              execute_deptid,
                              nbmam_list_item_type,
                              ratio,
                              sum(round(nvl(amount, 0) *
                                        round(nvl(discount, 0), 3),
                                        2)) discount
                         from charge_item
                        where residentid = c.residentid
                          and patient_deptid = dept.deptid
                          and charge_billid is null
                          and update_date >= v_begin_balance_date
                          and update_date < v_end_balance_date
                        group by patientid,
                                 residentid,
                                 doctorid,
                                 fee_type,
                                 patient_deptid,
                                 write_deptid,
                                 execute_deptid,
                                 nbmam_list_item_type,
                                 ratio)
            loop
              insert into charge_fee
                (id,
                 charge_billid,
                 patientid,
                 registerid,
                 residentid,
                 patient_deptid,
                 doctorid,
                 fee_type,
                 fee,
                 write_deptid,
                 execute_deptid,
                 attribute,
                 status,
                 operator,
                 update_date,
                 update_reason,
                 remark,
                 nbmam_list_item_type,
                 ratio,
                 type,
                 balance_workerid,
                 balance_date,
                 discount)
              values
                (get_next_charge_feeid,
                 v_charge_billid,
                 c1.patientid,
                 null, --REGISTERID
                 c1.residentid,
                 c1.patient_deptid,
                 c1.doctorid,
                 c1.fee_type,
                 c1.fee,
                 c1.write_deptid,
                 c1.execute_deptid,
                 'ACCOUNT',
                 'WAIT_PAY',
                 substrb(user, 3, 6),
                 null,
                 null,
                 null,
                 c1.nbmam_list_item_type,
                 c1.ratio,
                 'MONTH',
                 substrb(user, 3, 6),
                 v_balance_date,
                 c1.discount);
              t_fee := nvl(t_fee, 0) + nvl(c1.fee, 0);
            end loop;
            insert into charge_bill
              (id,
               attribute,
               patientid,
               fee,
               status,
               remark,
               residentid,
               update_reason,
               medical_care_pay_formulaid,
               type,
               balance_date,
               balance_workerid)
            values
              (v_charge_billid,
               'ACCOUNT',
               c.patientid,
               t_fee,
               'WAIT_PAY',
               substrb(get_dept_name(dept.deptid), 1, 30),
               c.residentid,
               'A',
               null,
               'MONTH',
               v_balance_date,
               substrb(user, 3, 6));
            update charge_item
               set charge_billid = v_charge_billid,
                   remark        = nvl(remark, ' ')
             where residentid = c.residentid
               and patient_deptid = dept.deptid
               and charge_billid is null
               and update_date >= v_begin_balance_date
               and update_date < v_end_balance_date;
          exception
            when no_data_found then
              null;
          end;
        end loop;
        commit;
      end loop;
      v_begin_balance_date := v_end_balance_date;
    end loop;
  
  end;

  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/16 - ���������д
  --     tiger      2000/06/29 -  record overdraw
  procedure s_סԺ_����͸֧��(in_patientid  in varchar2
                      ,in_residentid in varchar2
                      ,in_fee        in varchar2) is
    i                  number;
    t_real_fee         number;
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    verify_valid_number(in_fee, '͸֧���');
    select to_number(in_fee) into i from dual;
    if i < 0
    then
      raise_application_error(-20001, '͸֧����С����');
    end if;
  
    select sum(round(round(nvl(price, 0), 3) * nvl(amount, 0), 2))
      into t_real_fee
      from charge_item
     where residentid = t_resident_info.residentid
       and attribute = 'ACCOUNT';
  
    update overdraw
       set stop_date     = sysdate,
           stop_workerid = hospital.login.get_workerid,
           end_acc_fee   = t_real_fee
     where residentid = t_resident_info.residentid
       and stop_date is null;
    if in_fee is not null
       and to_number(in_fee) <> 0
    then
      insert into overdraw
        (patientid,
         residentid,
         type,
         fee,
         operator,
         operator_date,
         stop_workerid,
         stop_date,
         beg_acc_fee,
         end_acc_fee,
         remark)
      values
        (in_patientid,
         t_resident_info.residentid,
         'OVERDRAW',
         to_number(in_fee),
         hospital.login.get_workerid,
         sysdate,
         null,
         null,
         t_real_fee,
         null,
         null);
    end if;
    update resident_patient
       set overdraw = to_number(in_fee),
           reserve  = null
     where patientid = in_patientid
       and residentid = in_residentid;
    commit;
  end s_סԺ_����͸֧��;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/16 - ���������д
  --     tiger      2000/06/29 -  record in overdraw
  procedure s_סԺ_����Ԥ����(in_patientid  in varchar2
                      ,in_residentid in varchar2
                      ,in_fee        in varchar2) is
    i                  number;
    t_real_fee         number;
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    verify_valid_number(in_fee, 'Ԥ�����');
    select to_number(in_fee) into i from dual;
    if i < 0
    then
      raise_application_error(-20001, 'Ԥ������С����');
    end if;
    select sum(round(round(nvl(price, 0), 3) * nvl(amount, 0), 2))
      into t_real_fee
      from charge_item
     where residentid = t_resident_info.residentid
       and attribute = 'ACCOUNT';
    update overdraw
       set stop_date     = sysdate,
           stop_workerid = hospital.login.get_workerid,
           end_acc_fee   = t_real_fee
     where residentid = t_resident_info.residentid
       and stop_date is null;
    if in_fee is not null
       and to_number(in_fee) <> 0
    then
      insert into overdraw
        (patientid,
         residentid,
         type,
         fee,
         operator,
         operator_date,
         stop_workerid,
         stop_date,
         beg_acc_fee,
         end_acc_fee,
         remark)
      values
        (in_patientid,
         t_resident_info.residentid,
         'RESERVE',
         to_number(in_fee),
         hospital.login.get_workerid,
         sysdate,
         null,
         null,
         t_real_fee,
         null,
         null);
    end if;
    update resident_patient
       set reserve  = to_number(in_fee),
           overdraw = null
     where patientid = in_patientid
       and residentid = in_residentid;
    commit;
  end s_סԺ_����Ԥ����;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/16 - ���������д
  --     tiger      2004/11/28  ���Ԥ������
  --     tiger      2002/09/01  create
  procedure s_סԺ_��Ѻ��(in_patientid  in varchar2
                    ,in_residentid in varchar2
                    ,in_fee_flag   in varchar2
                    ,in_use_fee    in varchar2
                    ,in_fee        in varchar2
                    ,in_bill_type  in varchar2
                    ,in_bill_no    in varchar2
                    ,in_remark     in varchar2
                    ,out_id        out varchar2) is
  begin
    s_סԺ_��Ѻ��nc(in_patientid,
               in_residentid,
               in_fee_flag,
               in_use_fee,
               in_fee,
               in_bill_type,
               in_bill_no,
               in_remark,
               out_id);
    commit;
  end s_סԺ_��Ѻ��;
  -----------------------------------------------------------------------------------------------------
  procedure s_סԺ_��Ѻ��nc(in_patientid  in varchar2
                      ,in_residentid in varchar2
                      ,in_fee_flag   in varchar2
                      ,in_use_fee    in varchar2
                      ,in_fee        in varchar2
                      ,in_bill_type  in varchar2
                      ,in_bill_no    in varchar2
                      ,in_remark     in varchar2
                      ,out_id        out varchar2) is
  begin
    prv_סԺ_��Ѻ��_����(in_patientid,
                  in_residentid,
                  in_fee_flag,
                  in_use_fee,
                  in_fee,
                  in_bill_type,
                  in_bill_no,
                  in_remark,
                  out_id);
  end s_סԺ_��Ѻ��nc;

  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/16 - ���������д
  --     tiger      2007/04/04 - סԺ��Ѻ��(A,B,C,BANK)��Ҫ����Ȩ
  --                             ����ϵͳѡ�� id="סԺ��Ѻ��_������Ȩ" name= {Y/N} default=N
  --     tiger      2006/06/07 - ��ֹ�� ��Ժ����ȡ��������Ԥ���𵥾� ��־=remark='����ȡ���Զ�����'
  --     tiger      2005/08/08 - ����sysopt סԺǷ�Ѳ���������Ԥ���� ,�������ֽ�
  --     tiger      2005/05/24 - ��ֹ���ֽ������˵���
  --     tiger      2004/12/06 - ��Ժ����ͽ��ʲ��˽�ֹ��Ѻ��;Ƿ�Ѳ��˽�ֹ��Ѻ��
  --     tiger      2002/10/27 - Ѻ���������ʱ�־

  --     tiger      2001/10/15 - ����ְԱ�ĵ�¼���š�������㲿�ź�סԺ���㲿�Ź���
  --     tiger      2001/09/11 - ��resident_patient_�м�¼Ѻ�����
  procedure s_סԺ_��Ѻ��(in_patientid  in varchar2
                    ,in_residentid in varchar2
                    ,in_pre_payid  in varchar2
                    ,in_remark     in varchar2) is
  begin
    s_סԺ_��Ѻ��nc(in_patientid, in_residentid, in_pre_payid, in_remark);
    commit;
  end s_סԺ_��Ѻ��;
  -----------------------------------------------------------------------------------------------------
  procedure s_סԺ_��Ѻ��nc(in_patientid  in varchar2
                      ,in_residentid in varchar2
                      ,in_pre_payid  in varchar2
                      ,in_remark     in varchar2) is
    t_pre_pay          pre_pay%rowtype;
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
  begin
    verify_patient(in_patientid);
    verify_pre_pay(in_pre_payid);
    verify_length(in_remark, 100, '��ע');
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    if t_resident_info.process_reason = 'OUT'
       and t_resident_info.finish_flag in ('WAIT_PAY', 'FINISHED')
    then
      raise_application_error(-20001,
                              '�ò����Ѿ����˳�Ժ���㣬������Ԥ����.;');
    end if;
    if t_resident_info.process_reason = 'OUT'
       and t_resident_info.finish_flag in ('FINISHED')
    then
      raise_application_error(-20001,
                              '�ò����Ѿ����˳�Ժ���㣬������Ԥ����.;');
    end if;
  
    begin
      select *
        into t_pre_pay
        from pre_pay
       where id = in_pre_payid
         for update of id, fee nowait;
    exception
      when others then
        raise_application_error(-20001,
                                '���������ڶԴμ�¼����,���Ժ�����.;');
    end;
    if t_pre_pay.remark = '����ȡ���Զ�����'
    then
      raise_application_error(-20001, '����ȡ�����ʲ����ĵ��ݣ�������.;');
    end if;
    if t_pre_pay.patientid <> in_patientid
    then
      raise_application_error(-20001, '�ⲻ�Ǹò��˵�Ԥ����.;');
    end if;
    if t_pre_pay.attribute = 'B'
    then
      raise_application_error(-20001, '�ÿ����Ѿ��˳�.;');
    elsif t_pre_pay.attribute = 'C'
    then
      raise_application_error(-20001, '�ÿ����Ѿ�����.;');
    end if;
  
    if nvl(get_system_option('Ԥ�����˷�_ֻ�������Լ����շ�'), 'N') = 'Y'
    then
      if hospital.login.get_workerid <> t_pre_pay.fee_operator
      then
        raise_application_error(-20001, '�����Լ��յ�Ԥ����,������.');
      end if;
    else
      if nvl(get_system_option('Ԥ�����˷�_ֻ�����˱����ŵ��շ�'), 'Y') = 'Y'
      then
        if is_same_login_dept(hospital.login.get_workerid,
                              t_pre_pay.fee_operator) = 0
        then
          raise_application_error(-20001,
                                  '�ⲻ��' || get_dept_name(get_login_deptid) ||
                                  '�յ�Ԥ����,��������.;');
        end if;
      end if;
    
    end if;
  
    if t_pre_pay.bill_type in
       ('A', 'B', 'C', 'BANK', 'BANK1', 'BANK2', 'BANK3', 'BANK4')
    then
      if nvl(get_system_option('סԺ��Ѻ��_������Ȩ'), 'N') = 'Y'
      then
        if t_pre_pay.grant_operator is null
           or t_pre_pay.grant_date is null
           or t_pre_pay.withdraw_reason is null
        then
          raise_application_error(-20001,
                                  '�ñ�Ѻ���û����Ȩ�˿������Ȩ��Ϣ����ȫ�������˿�.;');
        end if;
      end if;
    else
      if nvl(get_system_option('סԺ�˵���Ѻ��_������Ȩ'), 'N') = 'Y'
      then
        if t_pre_pay.grant_operator is null
           or t_pre_pay.grant_date is null
           or t_pre_pay.withdraw_reason is null
        then
          raise_application_error(-20001,
                                  '�ñʵ���Ѻ���û����Ȩ�˿������Ȩ��Ϣ����ȫ�������˿�.;');
        end if;
      end if;
    end if;
  
    if t_pre_pay.bill_type in
       ('A', 'B', 'C', 'BANK', 'BANK1', 'BANK2', 'BANK3', 'BANK4')
       and t_resident_patient.account >= t_resident_patient.pre_pay_fee
    then
      if nvl(get_system_option('סԺǷ�Ѳ���������Ԥ����'), 'N') = 'N'
      then
        raise_application_error(-20001, '�ò����Ѿ�Ƿ��,������Ԥ����');
      end if;
    end if;
  
    --ȡ��סԺ��Ȩ����
    checkout.s_�ж�_�Ƿ���ȡ����Ժ����(t_resident_info.residentid);
  
    update pre_pay
       set withdraw_date = sysdate,
           withdrawer    = hospital.login.get_workerid,
           attribute     = 'B',
           update_date   = sysdate
     where id = in_pre_payid;
    calc_pre_pay(in_patientid, t_pre_pay.residentid);
  end s_סԺ_��Ѻ��nc;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/16 - ���������д
  --     tiger      2007/04/04 - create
  procedure s_סԺ_��Ѻ��_��Ȩ(in_patientid       in varchar2
                       ,in_residentid      in varchar2
                       ,in_pre_payid       in varchar2
                       ,in_withdraw_reason in varchar2) is
    t_pre_pay          pre_pay%rowtype;
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
  begin
    verify_patient(in_patientid);
    verify_pre_pay(in_pre_payid);
    verify_not_null(in_withdraw_reason, '�˿�ԭ��');
    verify_length(in_withdraw_reason, 100, '�˿�ԭ��');
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    begin
      select *
        into t_pre_pay
        from pre_pay
       where id = in_pre_payid
         for update of id, fee nowait;
    exception
      when others then
        raise_application_error(-20001,
                                '���������ڶԴμ�¼����,���Ժ�����.;');
    end;
  
    if t_pre_pay.remark = '����ȡ���Զ�����'
    then
      raise_application_error(-20001, '����ȡ�����ʲ����ĵ��ݣ�������.;');
    end if;
  
    if t_pre_pay.patientid <> in_patientid
    then
      raise_application_error(-20001, '�ⲻ�Ǹò��˵�Ԥ����.;');
    end if;
  
    if t_pre_pay.attribute = 'B'
    then
      raise_application_error(-20001, '�ÿ����Ѿ��˳�.;');
    elsif t_pre_pay.attribute = 'C'
    then
      raise_application_error(-20001, '�ÿ����Ѿ�����.;');
    end if;
  
    if t_pre_pay.grant_operator is not null
       and t_pre_pay.grant_date is not null
       and t_pre_pay.withdraw_reason is not null
    then
      raise_application_error(-20001,
                              '�ñ�Ѻ���Ѿ���Ȩ�˿�����ظ���Ȩ.;');
    end if;
    update pre_pay
       set grant_date      = sysdate,
           grant_operator  = hospital.login.get_workerid,
           withdraw_reason = in_withdraw_reason,
           update_date     = sysdate
     where id = in_pre_payid;
    commit;
  end s_סԺ_��Ѻ��_��Ȩ;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/16 - ���������д
  --     tiger      2007/04/04 - create
  procedure s_סԺ_��Ѻ��_��Ȩ_ȡ��(in_patientid  in varchar2
                          ,in_residentid in varchar2
                          ,in_pre_payid  in varchar2) is
    t_pre_pay          pre_pay%rowtype;
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
  begin
    verify_patient(in_patientid);
    verify_pre_pay(in_pre_payid);
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    begin
      select *
        into t_pre_pay
        from pre_pay
       where id = in_pre_payid
         for update of id, fee nowait;
    exception
      when others then
        raise_application_error(-20001,
                                '���������ڶԴμ�¼����,���Ժ�����.;');
    end;
  
    if t_pre_pay.remark = '����ȡ���Զ�����'
    then
      raise_application_error(-20001, '����ȡ�����ʲ����ĵ��ݣ����ܲ���.;');
    end if;
  
    if t_pre_pay.patientid <> in_patientid
    then
      raise_application_error(-20001, '�ⲻ�Ǹò��˵�Ԥ����.;');
    end if;
  
    if t_pre_pay.attribute = 'B'
    then
      raise_application_error(-20001, '�ÿ����Ѿ��˳�.;');
    elsif t_pre_pay.attribute = 'C'
    then
      raise_application_error(-20001, '�ÿ����Ѿ�����.;');
    end if;
  
    if t_pre_pay.grant_operator is null
       and t_pre_pay.grant_date is null
       and t_pre_pay.withdraw_reason is null
    then
      raise_application_error(-20001, '�ñ�Ѻ��û����Ȩ�˿�.;');
    end if;
  
    if nvl(t_pre_pay.grant_operator, hospital.login.get_workerid) <>
       hospital.login.get_workerid
    then
      raise_application_error(-20001,
                              '�ñ�Ѻ��������Ȩ�ģ��㲻��ȡ����Ȩ.;');
    end if;
  
    update pre_pay
       set grant_date      = null,
           grant_operator  = null,
           withdraw_reason = null,
           update_date     = sysdate
     where id = in_pre_payid;
  
    commit;
  end s_סԺ_��Ѻ��_��Ȩ_ȡ��;
  -----------------------------------------------------------------------------------------------------
  procedure sp_סԺԤ��_������_���_begin(in_app_id         in varchar2
                                ,in_patientid      in varchar2
                                ,in_residentid     in varchar2
                                ,in_fee_flag       in varchar2
                                ,in_use_fee        in varchar2
                                ,in_fee            in varchar2
                                ,in_bill_type      in varchar2
                                ,in_bill_no        in varchar2
                                ,in_remark         in varchar2
                                ,in_login_hospid   in varchar2
                                ,in_login_deptid   in varchar2
                                ,in_login_workerid in varchar2
                                ,out_id            out varchar2) is
    i                  number;
    t_pre_payid        pre_pay.id%type;
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
    t_bill_no          pre_pay.bill_no%type;
    v_companyid        all_department.companyid%type;
    v_ticket_no        number;
    v_limit            number;
    v_withdraw_date    date;
    v_limittype        varchar2(30);
  
  begin
    hospital.login.login(in_login_hospid,
                         in_login_deptid,
                         in_login_workerid);
  
    --��֤app_id
  
    verify_patient(in_patientid);
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    verify_valid_number(in_fee, '���');
    verify_field_dict('PRE_PAY', 'BILL_TYPE', in_bill_type, '�ɷѷ�ʽ');
    begin
      select field_value
        into v_limittype
        from hospital.field_dict_
       where table_name = 'PRE_PAY'
         and field_name = 'BILL_TYPE'
         and remark = 'ʱ�޿���'
         and field_value = in_bill_type;
      hospital.verify_not_null(in_fee_flag, '����ʱ��');
      verify_valid_date(in_fee_flag, '������ֹʱ��');
      v_withdraw_date := get_date_from_str(in_fee_flag);
      if v_withdraw_date <= sysdate
      then
        raise_application_error(-20001, '����ʱ�ޱ�����ڵ�ǰʱ��.;');
      end if;
    exception
      when no_data_found then
        null;
    end;
    if in_bill_type not in (v_limittype)
    then
      verify_field_dict('PRE_PAY', 'FEE_FLAG', in_fee_flag, '������Ʒ�ʽ');
    end if;
    verify_length(in_remark, 100, '��ע');
    if in_bill_type in ('A',
                        'B',
                        'C',
                        'BANK',
                        'BANK1',
                        'BANK2',
                        'BANK3',
                        'BANK4',
                        'BANK5',
                        'USER_DEF1',
                        'USER_DEF2',
                        'USER_DEF3',
                        'USER_DEF4',
                        'USER_DEF5',
                        'USER_DEF6',
                        'USER_DEF7',
                        'USER_DEF8',
                        'USER_DEF9')
       and nvl(to_number(in_fee), 0) = 0
    then
      return;
    end if;
    if in_bill_type in ('A',
                        'B',
                        'C',
                        'BANK',
                        'BANK1',
                        'BANK2',
                        'BANK3',
                        'BANK4',
                        'BANK5',
                        'USER_DEF1',
                        'USER_DEF2',
                        'USER_DEF3',
                        'USER_DEF4',
                        'USER_DEF5',
                        'USER_DEF6',
                        'USER_DEF7',
                        'USER_DEF8',
                        'USER_DEF9')
    then
      if to_number(nvl(in_fee, 0)) <= 0
      then
        raise_application_error(-20001, 'Ԥ�����������0');
      end if;
      if to_number(nvl(in_use_fee, 0)) <> 0
      then
        raise_application_error(-20001, '����������Ϊ0');
      end if;
    elsif in_bill_type in ('D', 'E', 'F', 'G', 'H')
    then
      if to_number(nvl(in_use_fee, 0)) < 0
      then
        raise_application_error(-20001, '�������������0');
      end if;
      if to_number(nvl(in_fee, 0)) <> 0
      then
        raise_application_error(-20001, 'Ԥ��������Ϊ0');
      end if;
    end if;
    if nvl(get_system_option('Ԥ����_�����������'), 'Y') = 'N'
    then
      if t_resident_info.process_reason = 'OUT'
         and t_resident_info.finish_flag in ('WAIT_PAY', 'FINISHED')
      then
        raise_application_error(-20001,
                                '�ò����Ѿ����˳�Ժ���㣬���ܽ���Ԥ����.;');
      end if;
    end if;
    if nvl(get_system_option('Ԥ����_���ʺ�������'), 'Y') = 'N'
    then
      if t_resident_info.process_reason = 'OUT'
         and t_resident_info.finish_flag in ('FINISHED')
      then
        raise_application_error(-20001,
                                '�ò����Ѿ����˳�Ժ���㣬���ܽ���Ԥ����.;');
      end if;
    end if;
    if in_bill_type in ('A',
                        'B',
                        'C',
                        'BANK',
                        'BANK1',
                        'BANK2',
                        'BANK3',
                        'BANK4',
                        'BANK5',
                        'USER_DEF1',
                        'USER_DEF2',
                        'USER_DEF3',
                        'USER_DEF4',
                        'USER_DEF5',
                        'USER_DEF6',
                        'USER_DEF7',
                        'USER_DEF8',
                        'USER_DEF9')
    then
      if get_system_option('���չ����ص���䷢Ʊ�Ŷ�סԺԤ����') = 'Y'
      then
        invoice_man.s_ʹ�÷�Ʊ('סԺԤ����', v_ticket_no);
        t_bill_no := lpad(ltrim(rtrim(to_char(v_ticket_no))), 10, '0');
      elsif get_system_option('����ְԱ���䷢Ʊ�Ŷ�סԺԤ����') = 'Y'
      then
        invoice_man.s_ʹ�÷�Ʊ('סԺԤ����', v_ticket_no);
        t_bill_no := lpad(ltrim(rtrim(to_char(v_ticket_no))), 10, '0');
      elsif get_system_option('����Զ�����_�ֽ�Ԥ�����վݺ�') = 'Y'
      then
        t_bill_no := s_Ԥ����_���_��ȡ;
        s_Ԥ����_���_ʹ��(t_bill_no);
      elsif get_system_option('����Զ�����_��˾_�ֽ�Ԥ�����վݺ�') = 'Y'
      then
        select companyid
          into v_companyid
          from all_department
         where id = t_resident_info.deptid;
        t_bill_no := s_Ԥ����_��˾_��Ŷ�ȡ(v_companyid);
        s_Ԥ����_��˾_���_ʹ��(v_companyid);
      elsif get_system_option('����Զ�����_��Ʊ��=ID��') = 'Y'
      then
        null;
      else
        verify_not_null(in_bill_no, 'Ԥ�����վݺ�');
        begin
          select 2
            into i
            from pre_pay
           where bill_no = in_bill_no
             and rownum = 1;
          raise_application_error(-20001,
                                  '�վݺ�Ϊ' || in_bill_no ||
                                  '���վ��Ѿ�����,�����»�һ�����.;');
        exception
          when no_data_found then
            null;
        end;
        t_bill_no := in_bill_no;
      end if;
    end if;
  
    begin
      v_limit := to_number(nvl(get_system_option('Ԥ����_����Ԥ��������޶�'),
                               '10000'));
    exception
      when others then
        raise_application_error(-20001,
                                'ϵͳѡ�����ô�������ϵϵͳ����Ա.;');
    end;
    if in_fee > v_limit
    then
      raise_application_error(-20001,
                              '����Ԥ��������޶�Ϊ( ' || v_limit || ' Ԫ).;');
    end if;
  
    t_pre_payid := get_next_pre_payid;
    t_bill_no   := nvl(t_bill_no, t_pre_payid);
    insert into pre_pay
      (id,
       attribute,
       patientid,
       residentid,
       deptid,
       fee_flag,
       use_fee,
       fee,
       bill_type,
       bill_no,
       fee_date,
       fee_operator,
       withdrawer,
       withdraw_date,
       update_date,
       remark,
       app_id)
    values
      (t_pre_payid,
       attribute_��ʼ���,
       in_patientid,
       t_resident_info.residentid,
       t_resident_info.deptid,
       decode(in_bill_type, v_limittype, 'REAL_FEE', in_fee_flag),
       to_number(in_use_fee),
       to_number(in_fee),
       in_bill_type,
       t_bill_no,
       sysdate,
       hospital.login.get_workerid,
       decode(in_bill_type, v_limittype, hospital.login.get_workerid, null),
       decode(in_bill_type, v_limittype, v_withdraw_date, null),
       sysdate,
       in_remark,
       in_app_id);
    out_id := t_pre_payid;
  
  end sp_סԺԤ��_������_���_begin;
  -----------------------------------------------------------------------------------------------------
  procedure sp_סԺԤ��_������_���_end(in_app_id         in varchar2
                              ,in_patientid      in varchar2
                              ,in_residentid     in varchar2
                              ,in_prepay_id      in varchar2
                              ,in_is_success     in varchar2
                              ,in_login_hospid   in varchar2
                              ,in_login_deptid   in varchar2
                              ,in_login_workerid in varchar2) is
    v_pre_pay hospital.pre_pay_%rowtype;
  begin
    hospital.login.login(in_login_hospid,
                         in_login_deptid,
                         in_login_workerid);
    begin
      select *
        into v_pre_pay
        from hospital.pre_pay_ a
       where id = in_prepay_id
         and a.residentid = in_residentid
         and a.patientid = in_patientid;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '���Ϊ' || in_prepay_id ||
                                '��״̬��������״̬���߲����ڣ�����');
      
    end;
    if v_pre_pay.app_id <> in_app_id
    then
      raise_application_error(-20001,
                              'Ԥ������Ϊ:' || in_prepay_id || '���ɱ��Ϊ' ||
                              v_pre_pay.app_id || '��Ӧ�ò�����,�봫��ı��' ||
                              in_app_id || '����,�������.;');
    
    end if;
  
    if v_pre_pay.attribute not in (attribute_��ʼ���, attribute_���ʧ��)
    then
    
      raise_application_error(-20001,
                              'Ԥ������Ϊ' || in_prepay_id ||
                              '�ĳ�ֵ��¼���ǿ�ʼ����״̬�����ܽ�������.;');
    end if;
  
    if in_is_success not in (in_success_ok, in_success_fail)
    then
      raise_application_error(-20001,
                              '����ĳɹ���־in_is_success:' || in_is_success ||
                              '�������.;');
    end if;
  
    if in_is_success = in_success_ok
    then
      update hospital.pre_pay_
         set attribute = attribute_����
       where id = in_prepay_id
         and patientid = in_patientid
         and residentid = in_residentid;
      calc_pre_pay(in_patientid, in_residentid);
    else
      update hospital.pre_pay_
         set attribute = attribute_���ʧ��
       where id = in_prepay_id
         and patientid = in_patientid
         and residentid = in_residentid;
    end if;
    commit;
  end sp_סԺԤ��_������_���_end;
  ----------------------------------------------------------------------------------------------------
  procedure sp_סԺԤ��_������_����_begin(in_app_id     in varchar2
                                ,in_patientid  in varchar2
                                ,in_residentid in varchar2
                                ,in_pre_payid  in varchar2
                                ,in_remark     in varchar2) is
    t_pre_pay          pre_pay%rowtype;
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
  begin
    --��֤app
    verify_patient(in_patientid);
    verify_pre_pay(in_pre_payid);
    verify_length(in_remark, 100, '��ע');
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    if t_resident_info.process_reason = 'OUT'
       and t_resident_info.finish_flag in ('WAIT_PAY', 'FINISHED')
    then
      raise_application_error(-20001,
                              '�ò����Ѿ����˳�Ժ���㣬������Ԥ����.;');
    end if;
    if t_resident_info.process_reason = 'OUT'
       and t_resident_info.finish_flag in ('FINISHED')
    then
      raise_application_error(-20001,
                              '�ò����Ѿ����˳�Ժ���㣬������Ԥ����.;');
    end if;
  
    begin
      select *
        into t_pre_pay
        from pre_pay
       where id = in_pre_payid
         for update of id, fee nowait;
    exception
      when others then
        raise_application_error(-20001,
                                '���������ڶԴμ�¼����,���Ժ�����.;');
    end;
    if t_pre_pay.remark = '����ȡ���Զ�����'
    then
      raise_application_error(-20001, '����ȡ�����ʲ����ĵ��ݣ�������.;');
    end if;
    if t_pre_pay.patientid <> in_patientid
    then
      raise_application_error(-20001, '�ⲻ�Ǹò��˵�Ԥ����.;');
    end if;
    if t_pre_pay.attribute = 'B'
    then
      raise_application_error(-20001, '�ÿ����Ѿ��˳�.;');
    elsif t_pre_pay.attribute = 'C'
    then
      raise_application_error(-20001, '�ÿ����Ѿ�����.;');
    end if;
  
    /*    if nvl(get_system_option('Ԥ�����˷�_ֻ�������Լ����շ�'), 'N') = 'Y'
    then
      if hospital.login.get_workerid <> t_pre_pay.fee_operator
      then
        raise_application_error(-20001, '�����Լ��յ�Ԥ����,������.');
      end if;
    else
      if nvl(get_system_option('Ԥ�����˷�_ֻ�����˱����ŵ��շ�'), 'Y') = 'Y'
      then
        if is_same_login_dept(hospital.login.get_workerid,
                              t_pre_pay.fee_operator) = 0
        then
          raise_application_error(-20001,
                                  '�ⲻ��' ||
                                  get_dept_name(get_login_deptid) ||
                                  '�յ�Ԥ����,��������.;');
        end if;
      end if;    
    end if;*/
  
    if t_pre_pay.bill_type in ('A',
                               'B',
                               'C',
                               'BANK',
                               'BANK1',
                               'BANK2',
                               'BANK3',
                               'BANK4',
                               'BANK5',
                               'USER_DEF1',
                               'USER_DEF2',
                               'USER_DEF3',
                               'USER_DEF4',
                               'USER_DEF5',
                               'USER_DEF6',
                               'USER_DEF7',
                               'USER_DEF8',
                               'USER_DEF9')
    then
      if nvl(get_system_option('סԺ��Ѻ��_������Ȩ'), 'N') = 'Y'
      then
        if t_pre_pay.grant_operator is null
           or t_pre_pay.grant_date is null
           or t_pre_pay.withdraw_reason is null
        then
          raise_application_error(-20001,
                                  '�ñ�Ѻ���û����Ȩ�˿������Ȩ��Ϣ����ȫ�������˿�.;');
        end if;
      end if;
    else
      if nvl(get_system_option('סԺ�˵���Ѻ��_������Ȩ'), 'N') = 'Y'
      then
        if t_pre_pay.grant_operator is null
           or t_pre_pay.grant_date is null
           or t_pre_pay.withdraw_reason is null
        then
          raise_application_error(-20001,
                                  '�ñʵ���Ѻ���û����Ȩ�˿������Ȩ��Ϣ����ȫ�������˿�.;');
        end if;
      end if;
    end if;
  
    if t_pre_pay.bill_type in ('A',
                               'B',
                               'C',
                               'BANK',
                               'BANK1',
                               'BANK2',
                               'BANK3',
                               'BANK4',
                               'BANK5',
                               'USER_DEF1',
                               'USER_DEF2',
                               'USER_DEF3',
                               'USER_DEF4',
                               'USER_DEF5',
                               'USER_DEF6',
                               'USER_DEF7',
                               'USER_DEF8',
                               'USER_DEF9')
       and t_resident_patient.account >= t_resident_patient.pre_pay_fee
    then
      if nvl(get_system_option('סԺǷ�Ѳ���������Ԥ����'), 'N') = 'N'
      then
        raise_application_error(-20001, '�ò����Ѿ�Ƿ��,������Ԥ����');
      end if;
    end if;
  
    if t_pre_pay.app_id <> in_app_id
    then
      raise_application_error(-20001,
                              '�ñʽ������ɱ��Ϊ' || t_pre_pay.app_id ||
                              '��Ӧ����ɵ�,����ʹ�ñ��Ϊ' || in_app_id || '��Ԥ����');
    
    end if;
  
    update hospital.pre_pay_
       set attribute = attribute_��ʼ����
     where id = in_pre_payid
       and patientid = in_patientid
       and residentid = in_residentid;
  
  end sp_סԺԤ��_������_����_begin;

  -----------------------------------------------------------------------------------------------------
  procedure sp_סԺԤ��_������_����_end(in_app_id         in varchar2
                              ,in_patientid      in varchar2
                              ,in_residentid     in varchar2
                              ,in_prepay_id      in varchar2
                              ,in_is_success     in varchar2
                              ,in_login_hospid   in varchar2
                              ,in_login_deptid   in varchar2
                              ,in_login_workerid in varchar2
                              ,in_his_tsn        in varchar2) is
    v_pre_pay hospital.pre_pay_%rowtype;
  begin
    hospital.login.login(in_login_hospid,
                         in_login_deptid,
                         in_login_workerid);
    begin
      select *
        into v_pre_pay
        from hospital.pre_pay_ a
       where id = in_prepay_id
         and a.residentid = in_residentid
         and a.patientid = in_patientid;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '���Ϊ' || in_prepay_id ||
                                '��״̬��������״̬���߲����ڣ�����');
      
    end;
    if v_pre_pay.app_id <> in_app_id
    then
      raise_application_error(-20001,
                              'Ԥ������Ϊ:' || in_prepay_id || '���ɱ��Ϊ' ||
                              v_pre_pay.app_id || '��Ӧ�ò�����,�봫��ı��' ||
                              in_app_id || '����,�������.;');
    
    end if;
  
    if v_pre_pay.attribute <> attribute_��ʼ����
    then
    
      raise_application_error(-20001,
                              'Ԥ������Ϊ' || in_prepay_id ||
                              '�ĳ�ֵ��¼���ǿ�ʼ����״̬�����ܽ�������.;');
    end if;
  
    if in_is_success not in (in_success_ok, in_success_fail)
    then
      raise_application_error(-20001,
                              '����ĳɹ���־in_is_success:' || in_is_success ||
                              '�������.;');
    end if;
  
    if in_is_success = in_success_ok
    then
      update hospital.pre_pay_
         set attribute = attribute_����
       where id = in_prepay_id
         and patientid = in_patientid
         and residentid = in_residentid;
      --ȡ��סԺ��Ȩ����
      checkout.s_�ж�_�Ƿ���ȡ����Ժ����(in_residentid);
    else
      if in_his_tsn is not null
      then
        delete from hospital.app_transaction_record_ where id = in_his_tsn;
      end if;
      update hospital.pre_pay_
         set attribute = attribute_����
       where id = in_prepay_id
         and patientid = in_patientid
         and residentid = in_residentid;
    end if;
    commit;
  end sp_סԺԤ��_������_����_end;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/16 - ���������д,�ѳ�Ժ��ת�����ݷֿ����ӿ��Ժ�ٶ�
  --     tiger      2007/04/02 - ȡ����Ժ��Ȩ����,����worker_cancel_out_role set status ='out'
  --     tiger      2006/01/26 - ��ҽ�������ɾ���ո���ǵ���Ŀ
  --     tiger      2000/12/12 - �ӵ�ǰ���˱���ɾ��
  --     tiger      2000/08/19 -  REWRITE  �ϲ��� resident_register & resident_info
  procedure s_סԺ_��Ժ(in_patientid  in varchar2
                   ,in_residentid in varchar2) is
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    pres.s_סԺ_��Ժnc(in_patientid, in_residentid);
  
    rabbitmq.publish_adt_message(in_event            => events.adt_discharge_out,
                                 in_resident_patient => t_resident_patient);
    commit;
  end s_סԺ_��Ժ;
  -----------------------------------------------------------------------------------------------------
  procedure s_סԺ_��Ժnc(in_patientid  in varchar2
                     ,in_residentid in varchar2) is
    t_resident_patient  resident_patient%rowtype;
    t_resident_info     resident_info%rowtype;
    t_record_no         resident_patient.record_no%type;
    t_mother_residentid stable_mother_baby_relation.mother_residentid%type;
  begin
    --�ó�Ժ�����¼Ϊ���
    --ɾ��סԺ���˱��¼
    verify_patient(in_patientid);
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    if t_resident_info.process_reason in ('IN', 'CHANGEDEPT')
    then
      raise_application_error(-20001,
                              '�ò���û��������Ժ����,���ܽ��г�Ժ����.;');
    elsif t_resident_info.process_reason = 'OUT'
    then
      if t_resident_info.finish_flag = 'WAIT_ACC'
      then
        raise_application_error(-20001, '�ò��˻�û������Ժ����.;');
      elsif t_resident_info.finish_flag = 'FINISHED'
      then
        if t_resident_patient.status = 'WAIT_OUT'
        then
          null;
        else
          raise_application_error(-20001,
                                  '�Ƿ���RESIDENT_PATIENT.STATUS' ||
                                  t_resident_patient.status || '.;');
        end if;
      else
        raise_application_error(-20001,
                                '�Ƿ���FINISH_FLAG' ||
                                t_resident_info.finish_flag || '.;');
      end if;
    else
      raise_application_error(-20001,
                              '�Ƿ���PROCESS_REASON' ||
                              t_resident_info.process_reason || '.;');
    end if;
    if t_resident_info.mother_patientid is not null
    then
      begin
        select mother_residentid
          into t_mother_residentid
          from stable_mother_baby_relation a
         where a.baby_residentid = t_resident_info.residentid;
      exception
        when no_data_found then
          null;
        when too_many_rows then
          raise_application_error(-20001, '�ҵ�����������ĸ�׵�סԺ��Ϣ.;');
      end;
      if t_mother_residentid is not null
      then
        begin
          select record_no
            into t_record_no
            from resident_patient a
           where residentid = t_mother_residentid
             and resident_info_deptid = t_resident_info.deptid; -- ���ĸ����ҽԺ�ж�����Ժ��¼������
          update resident_info
             set baby_patientid = null,
                 update_date    = sysdate
           where record_no = t_record_no;
        exception
          when no_data_found then
            null;
          when too_many_rows then
            raise_application_error(-20001,
                                    '�ҵ�����������ĸ�׵�סԺ��Ϣ.;');
        end;
      end if;
      update resident_info
         set mother_patientid = null,
             baby_patientid   = null,
             update_date      = sysdate
       where residentid = t_resident_info.residentid;
    end if;
    if t_resident_info.baby_patientid is not null
    then
      begin
        select record_no
          into t_record_no
          from resident_patient a
         where patientid = t_resident_info.baby_patientid;
        update resident_info
           set mother_patientid = null,
               update_date      = sysdate
         where record_no = t_record_no;
      exception
        when no_data_found then
          null;
        when too_many_rows then
          raise_application_error(-20001, '�ҵ�������������סԺ��Ϣ.;');
      end;
      update resident_info
         set mother_patientid = null,
             baby_patientid   = null,
             update_date      = sysdate
       where residentid = t_resident_info.residentid;
    end if;
  
    delete from resident_patient
     where patientid = in_patientid
       and residentid = in_residentid;
    --2010/12/11 ɾ��0���õĲ�����ҳ��
    --select sum(nvl(account, 0))
    --  into v_total
    --  from out_balance_info
    -- where residentid = t_resident_info.residentid;
    --if v_total = 0
    --then
    --  delete from case_page1_
    --   where residentid = t_resident_info.residentid;
    --end if;
    --
  
    --s_delete_patient(in_patientid);
    checkout.s_ȡ����Ժ����_���(t_resident_info.residentid);
    update resident_info
       set finish_flag = 'WAIT_TRANS',
           update_date = sysdate
     where record_no = t_resident_info.record_no;
    insert into trans_resident_out
      (residentid)
    values
      (t_resident_info.residentid);
  
    --ʵʱת��סԺ��������  ����ȡ����Ժ
    s_סԺ_��Ժ_ת��nc(in_residentid);
  
  end s_סԺ_��Ժnc;

  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/17 - ������ʵ�ְѳ�Ժ������Ϣת����ʷ��
  --
  procedure s_סԺ_��Ժ�Ǽ�_ȡ��_ת��nc(in_residentid in varchar2) is
    v_rowid rowid;
  begin
    begin
      select rowid
        into v_rowid
        from resident_info
       where residentid = in_residentid
         and process_reason = 'IN'
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '�Ҳ���סԺ��Ϊ( ' || in_residentid ||
                                ' ) ��Ժת�����ݼ�¼.;');
      when others then
        raise_application_error(-20001, '���������ڲ��������Ժ�����.;');
    end;
    s_ת��_�ʵ�_ס��(in_residentid);
    s_ת��_ס��_����(in_residentid);
    s_ת��_ҽ��(in_residentid);
    --ȡ��סԺ��Ȩ����
    delete from audit_order_list
     where ownerid = in_residentid
       and operator = hospital.login.get_workerid
       and update_date >= sysdate - 1 / 24 * 60;
    update resident_info
       set finish_flag = 'FINISHED',
           update_date = sysdate
     where rowid = v_rowid;
    delete from trans_resident_out where residentid = in_residentid;
  end s_סԺ_��Ժ�Ǽ�_ȡ��_ת��nc;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/17 - ������ʵ�ְѳ�Ժ������Ϣת����ʷ��
  --
  procedure s_סԺ_��Ժ_ת��nc(in_residentid in varchar2) is
    v_rowid rowid;
  begin
    begin
      select rowid
        into v_rowid
        from resident_info
       where residentid = in_residentid
         and process_reason = 'OUT'
         and finish_flag = 'WAIT_TRANS'
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '�Ҳ���סԺ��Ϊ( ' || in_residentid ||
                                ' ) ��Ժת�����ݼ�¼.;');
      when others then
        raise_application_error(-20001, '���������ڲ��������Ժ�����.;');
    end;
    s_ת��_�ʵ�_ס��(in_residentid);
    s_ת��_ס��_����(in_residentid);
    s_ת��_ҽ��(in_residentid);
    --ȡ��סԺ��Ȩ����
    delete from audit_order_list
     where ownerid = in_residentid
       and operator = hospital.login.get_workerid
       and update_date >= sysdate - 1 / 24 * 60;
    update resident_info
       set finish_flag = 'FINISHED',
           update_date = sysdate
     where rowid = v_rowid;
    delete from trans_resident_out where residentid = in_residentid;
  end s_סԺ_��Ժ_ת��nc;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/17 - ������ʵ�ְѳ�Ժ������Ϣת����ʷ��
  --
  procedure s_סԺ_��Ժ_ת��(in_residentid in varchar2) is
  begin
    s_סԺ_��Ժ_ת��nc(in_residentid);
    commit;
  end s_סԺ_��Ժ_ת��;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/17 - ���������д
  --     tiger      2006/12/20 - ����סԺ��
  --     tiger      2006/06/24 - �����Żݼ۸�
  --     tiger      2003/08/25 - ����calc_resident_account����resident_patient�ĸ��ַ��á�
  --     tiger      2003/06/11 - ����ʱ��resident_patient�зֱ��¼���˵ļ��ࡢ������Էѷ��á�
  --     tiger      2003/03/05 - �޸Ĵ��󣬴�����޸�resident_patient��Ԥ�����־�ͷ���
  --     tiger      2001/09/11 - ��resident_patient���м�¼���˵ļ������
  --     tiger      2001/04/02 - ��ʱ��ֹ�˷Ǳ��½��ʲ��˷��ù���
  --     tiger      2000/12/12 - ���ӵ�ǰ���˱�
  --     tiger      2000/12/06 - �����˷Ǳ��½��ʲ��˷��ù���
  --     tiger      2000/08/19 - REWRITE  �ϲ��� resident_register & resident_info
  procedure s_סԺ_��Ժ_ȡ��(in_process_no in varchar2
                      ,in_residentid in varchar2) is
    i                  number;
    t_resident_info    resident_info%rowtype;
    v_out_balance_info out_balance_info%rowtype;
  begin
    begin
      select *
        into t_resident_info
        from resident_info
       where record_no = in_process_no
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001, 'û���ҵ����˵�סԺ��Ϣ.;');
      when others then
        raise_application_error(-20001, '���������ڲ�����������.;');
    end;
    if t_resident_info.process_reason <> 'OUT'
    then
      raise_application_error(-20001, '���ǳ�Ժ��¼������ȡ����Ժ.;');
    end if;
    if t_resident_info.finish_flag = 'WAIT_TRANS'
    then
      raise_application_error(-20001,
                              '�ò����Ѿ���Ժ������ת������,����ȡ����Ժ.;');
    end if;
    if t_resident_info.finish_flag <> 'FINISHED'
    then
      raise_application_error(-20001, '�ò��˻�û�г�Ժ������ȡ����Ժ.;');
    end if;
    begin
      select 2
        into i
        from resident_patient
       where record_no = t_resident_info.record_no;
      raise_application_error(-20001, '�ò��˻�û�г�Ժ������ȡ����Ժ.;');
    exception
      when no_data_found then
        null;
    end;
    begin
      select 2
        into i
        from resident_patient
       where patientid = t_resident_info.patientid
         and residentid = t_resident_info.residentid;
      raise_application_error(-20001, '�ò����Ѿ�סԺ������ȡ��סԺ.;');
    exception
      when no_data_found then
        null;
    end;
    --ȡ��סԺ��Ȩ����
    checkout.s_����_ȡ����Ժ(t_resident_info.residentid);
  
    begin
      select *
        into v_out_balance_info
        from out_balance_info
       where residentid = in_residentid
         and update_date =
             (select max(update_date)
                from out_balance_info
               where residentid = in_residentid);
    exception
      when no_data_found then
        v_out_balance_info.discount_type := '1';
        v_out_balance_info.patient_type  := 'NORMAL';
    end;
    insert into resident_patient
      (record_no,
       patientid,
       status,
       account_type,
       discount_type,
       residentid)
    values
      (t_resident_info.record_no,
       t_resident_info.patientid,
       'WAIT_OUT',
       decode(v_out_balance_info.patient_type,
              'A',
              'NORMAL',
              v_out_balance_info.patient_type),
       v_out_balance_info.discount_type,
       t_resident_info.residentid);
    s_ת��_�ʵ�_ס��_ȡ��(t_resident_info.residentid);
    s_ת��_ס��_����_ȡ��(t_resident_info.residentid);
    s_ת��_ҽ��_ȡ��(t_resident_info.residentid);
    s_copy_patient(t_resident_info.patientid);
  
    calc_pre_pay(t_resident_info.patientid, t_resident_info.residentid);
    calc_resident_account(t_resident_info.patientid,
                          t_resident_info.residentid);
    update resident_info
       set remark      = remark,
           update_date = sysdate
     where record_no = t_resident_info.record_no;
    commit;
    rabbitmq.publish_adt_message(in_event      => events.adt_discharge_out_cancel,
                                 in_residentid => in_residentid);
  end s_סԺ_��Ժ_ȡ��;
  -----------------------------------------------------------------------------------------------------  

  procedure s_סԺ_��Ժ_ȡ��nc(in_process_no in varchar2
                        ,in_residentid in varchar2) is
    i                  number;
    t_resident_info    resident_info%rowtype;
    v_out_balance_info out_balance_info%rowtype;
  begin
    begin
      select *
        into t_resident_info
        from resident_info
       where record_no = in_process_no
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001, 'û���ҵ����˵�סԺ��Ϣ.;');
      when others then
        raise_application_error(-20001, '���������ڲ�����������.;');
    end;
    if t_resident_info.process_reason <> 'OUT'
    then
      raise_application_error(-20001, '���ǳ�Ժ��¼������ȡ����Ժ.;');
    end if;
    if t_resident_info.finish_flag = 'WAIT_TRANS'
    then
      raise_application_error(-20001,
                              '�ò����Ѿ���Ժ������ת������,����ȡ����Ժ.;');
    end if;
    if t_resident_info.finish_flag <> 'FINISHED'
    then
      raise_application_error(-20001, '�ò��˻�û�г�Ժ������ȡ����Ժ.;');
    end if;
    begin
      select 2
        into i
        from resident_patient
       where record_no = t_resident_info.record_no;
      raise_application_error(-20001, '�ò��˻�û�г�Ժ������ȡ����Ժ.;');
    exception
      when no_data_found then
        null;
    end;
    begin
      select 2
        into i
        from resident_patient
       where patientid = t_resident_info.patientid
         and residentid = t_resident_info.residentid;
      raise_application_error(-20001, '�ò����Ѿ�סԺ������ȡ��סԺ.;');
    exception
      when no_data_found then
        null;
    end;
    --ȡ��סԺ��Ȩ����
    checkout.s_����_ȡ����Ժ(t_resident_info.residentid);
  
    begin
      select *
        into v_out_balance_info
        from out_balance_info
       where residentid = in_residentid
         and update_date =
             (select max(update_date)
                from out_balance_info
               where residentid = in_residentid);
    exception
      when no_data_found then
        v_out_balance_info.discount_type := '1';
        v_out_balance_info.patient_type  := 'NORMAL';
    end;
    insert into resident_patient
      (record_no,
       patientid,
       status,
       account_type,
       discount_type,
       residentid)
    values
      (t_resident_info.record_no,
       t_resident_info.patientid,
       'WAIT_OUT',
       decode(v_out_balance_info.patient_type,
              'A',
              'NORMAL',
              v_out_balance_info.patient_type),
       v_out_balance_info.discount_type,
       t_resident_info.residentid);
    s_ת��_�ʵ�_ס��_ȡ��(t_resident_info.residentid);
    s_ת��_ס��_����_ȡ��(t_resident_info.residentid);
    s_ת��_ҽ��_ȡ��(t_resident_info.residentid);
    s_copy_patient(t_resident_info.patientid);
  
    calc_pre_pay(t_resident_info.patientid, t_resident_info.residentid);
    calc_resident_account(t_resident_info.patientid,
                          t_resident_info.residentid);
    update resident_info
       set remark      = remark,
           update_date = sysdate
     where record_no = t_resident_info.record_no;
  end s_סԺ_��Ժ_ȡ��nc;
  -----------------------------------------------------------------------------------------------------
  --סԺ������صĲ���
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/20 - ���������д
  --     tiger      2006/11/29 - �������ʱ��ͳ��Ժ�ڸ�Ⱦ���
  procedure s_סԺ_���ɾ��(in_residentid in varchar2
                     ,in_diagnoseid in varchar2) is
    t_diagnose   diagnose%rowtype;
    t_case_page1 case_page1%rowtype;
  begin
    lock_res.lock_resident_patient_by_rid(in_residentid);
    lock_res.lock_case_page1(in_residentid, t_case_page1);
    lock_res.lock_diagnose(in_diagnoseid, t_diagnose);
  
    if t_diagnose.attribute not in ('A', 'B')
    then
      raise_application_error(-20001,
                              '����ɾ��"����(����)���"��"��Ժ���".;');
    end if;
    if t_diagnose.treat_result is null
    then
      delete from diagnose where id = in_diagnoseid;
      insert into hospital.deleted_records_
        (schema_name, table_name, id, delete_date)
      values
        ('HOSPITAL', 'DIAGNOSE', in_diagnoseid, sysdate);
    else
      raise_application_error(-20001,
                              '����סԺ�Ǽ�¼�����ϣ���ֹ������ɾ��.;');
    end if;
    commit;
  end s_סԺ_���ɾ��;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/20 - ���������д
  --     tiger      2006/11/29 - �������ʱ��ͳ��Ժ�ڸ�Ⱦ���
  --     tiger      2003/08/16 - ֻ��������"�������"��"�������"��"��Ժ���";
  procedure s_סԺ_�������(in_attribute  in varchar2
                     ,in_patientid  in varchar2
                     ,in_residentid in varchar2
                     ,in_diseaseid  in varchar2
                     ,in_remark     in varchar2) is
  begin
    prv_סԺ_�������(in_attribute,
                in_patientid,
                in_residentid,
                in_diseaseid,
                in_remark);
    commit;
  end s_סԺ_�������;
  --��������Ժ��صĲ���
  ------------------------------------------------------------------------------------------------------
  procedure s_����_��Ŀ_���ɾ��(in_residentid in varchar2
                        ,in_diagnoseid in varchar2) is
    t_diagnose   diagnose_catalog_%rowtype;
    t_case_page1 case_page1%rowtype;
  begin
    lock_res.lock_resident_patient_by_rid(in_residentid);
    lock_res.lock_case_page1(in_residentid, t_case_page1);
    lock_res.lock_diagnose_catalog(in_diagnoseid, t_diagnose);
  
    if t_diagnose.attribute not in ('A', 'B')
    then
      raise_application_error(-20001,
                              '����ɾ��"����(����)���"��"��Ժ���".;');
    end if;
    if t_diagnose.treat_result is null
    then
      delete from diagnose_catalog_ where id = in_diagnoseid;
      insert into hospital.deleted_records_
        (schema_name, table_name, id, delete_date)
      values
        ('HOSPITAL', 'DIAGNOSE', in_diagnoseid, sysdate);
    else
      raise_application_error(-20001,
                              '����סԺ�Ǽ�¼�����ϣ���ֹ������ɾ��.;');
    end if;
    commit;
  end s_����_��Ŀ_���ɾ��;
  ------------------------------------------------------------------------------------------------------
  procedure s_����_��Ŀ_�������(in_attribute  in varchar2
                        ,in_patientid  in varchar2
                        ,in_residentid in varchar2
                        ,in_diseaseid  in varchar2
                        ,in_remark     in varchar2) is
  begin
    prv_����_��Ŀ_�������(in_attribute,
                   in_patientid,
                   in_residentid,
                   in_diseaseid,
                   in_remark);
    commit;
  end s_����_��Ŀ_�������;
  ------------------------------------------------------------------------------------------------------
  --     tiger      2010/08/23 -  ����ָ��סԺ�Ǽǲ���������
  --     tiger      2009/01/17 -  ����in_patientidΪ�յĲ���������Ƚ����²��˵Ǽǣ�Ȼ�����סԺ�Ǽ�
  --     tiger      2008/10/20 -  ���������д
  --     tiger      2008/08/29 -  ������������䵥λ,ȡ���Բ�����Ϣ������޸�
  --     tiger      2008/07/23 -  סԺ�Ǽǲ��޸Ĳ��˵�����
  --     tiger      2008/04/24 -  ����Ϊ��ʹ�ò�ѯ����<>N ,������Ų�Ϊ�գ������ۿ� 
  --     tiger      2007/04/04 -  �Զ�����סԺ��ʱ������ļ�¼Ϊ�����סԺ��
  --     tiger      2007/04/02 -  ȡ����Ժ��Ȩ����
  --     tiger      2006/12/20 -  ����סԺ��
  --     tiger      2006/07/17 -  �����Ż���Ϣ�Ǽ�
  --     tiger      2006/06/24 -  �����Żݼ۸�
  --     tiger      2004/11/28 -  ���Ԥ������
  --     tiger      2003/03/11 -  ���Ӽ�ͥ������־ 
  --     tiger      2003/06/12 -  ���ӱ�־�жϲ��˼��ʷ��ÿ��Ʒ�ʽ(�ԷѺ�ҽ�Ʊ���)
  --     tiger      2002/08/29 -  ���Ӳ�ѯ������
  --     tiger      2000/12/12 -  ���ӵ�ǰ����
  --     tiger      2000/08/28 -  ����סԺ�Ǽ�ʱ������Ϣ��
  --     tiger      2000/08/19 -  REWRITE  �ϲ��� resident_register & resident_info
  procedure s_סԺ_סԺ�Ǽ�(out_patientid              out varchar2
                     ,out_residentid             out varchar2
                     ,in_hosp_id                 in varchar2
                     ,in_patientid               in varchar2
                     ,in_residentid              in varchar2
                     ,in_deptid                  in varchar2
                     ,in_bill_type               in varchar2
                     ,in_pre_pay                 in varchar2
                     ,in_pre_pay_bill_no         in varchar2
                     ,in_office_address          in varchar2
                     ,in_birthday                in varchar2
                     ,in_gender                  in varchar2
                     ,in_birth_province          in varchar2
                     ,in_birth_county            in varchar2
                     ,in_profession              in varchar2
                     ,in_doctorid                in varchar2
                     ,in_warrantor               in varchar2
                     ,in_remark                  in varchar2
                     ,in_resident_info_attribute in varchar2 --סԺ�������
                     ,in_office_tele             in varchar2
                     ,in_office_zip              in varchar2
                     ,in_home_address            in varchar2
                     ,in_home_zip                in varchar2
                     ,in_asso_name               in varchar2
                     ,in_asso_relation           in varchar2
                     ,in_asso_address            in varchar2
                     ,in_asso_tele               in varchar2
                     ,in_qc_id                   in varchar2
                     ,in_home_bed                in number
                     ,in_age                     in varchar2 --��Ժ����
                     ,in_age_unit                in varchar2 --��Ժ���䵥λ
                     ,out_pre_payid              out varchar2
                     ,in_education               in varchar2
                     ,in_regionid                in varchar2
                     ,in_case_page1_pay_method   in varchar2 default null
                     ,in_patient_attribute       in varchar2 default null
                     ,in_identification          in varchar2 default null
                     ,in_marry_status            in varchar2 default null
                     ,in_race                    in varchar2 default null
                     ,in_blood_type              in varchar2 default null
                     ,in_free_no                 in varchar2 default null
                     ,in_home_tele               in varchar2 default null
                     ,in_asso_zip                in varchar2 default null
                     ,in_name                    in varchar2 default null
                     ,in_pinyin                  in varchar2 default null
                     ,in_country                 in varchar2 default null
                     ,in_diagnose_attribute      in varchar2 default null
                     ,in_diagnose_diseaseid      in varchar2 default null
                     ,in_diagnose_remark         in varchar2 default null
                     ,in_seq                     in varchar2 default null --�ڼ���סԺ
                     ,in_confirm_seq             in varchar2 default null
                     ,in_long_term_out_patient   in varchar2 default null) is
    --ȷ���޸���ʷ סԺ��Ϣ
    i                      number;
    t_patient              patient%rowtype;
    t_record_no            resident_info.record_no%type;
    t_department_attribute all_department.attribute%type;
    t_residentid           resident_info.residentid%type;
    v_discount_type        resident_patient.discount_type%type;
    v_sysopt               varchar2(10);
    v_patientid            patient.id%type;
    v_age                  resident_info.age%type;
    v_age_unit             resident_info.age_unit%type;
    v_max_bed_num          number;
    v_identification_is_in number;
    v_seq                  varchar2(10);
    v_new_residentid       hospital.resident_info_.residentid%type;
  begin
    if in_patientid is not null
    then
      verify_patient(in_patientid);
    end if;
    --����20150925
    if nvl(get_system_option('סԺ�Ǽ�_ͬһ���֤��������������Ժ����'),
           'N') = 'Y'
    then
      begin
        select 1
          into v_identification_is_in
          from hospital.current_patient_ a, hospital.resident_patient_ b
         where a.identification = in_identification
           and a.id = b.patientid
           and rownum = 1;
        raise_application_error(-20001,
                                '���֤Ϊ[' || in_identification ||
                                ']�Ĳ��˻���סԺ,������Ǽ����֤��ͬ������סԺ����!;');
      exception
        when no_data_found then
          null;
      end;
    end if;
  
    if nvl(get_system_option('����סԺһ��ͨ'), 'N') = 'Y'
    then
      qcc.s_��֤���￨��Ч(in_patientid);
    end if;
    begin
      select 1
        into i
        from hospital.resident_patient a, hospital.resident_info c
       where a.patientid = in_patientid
         and c.process_reason in ('NEW', 'IN', 'CHANGEDEPT')
         and a.record_no = c.record_no
         and rownum = 1
       group by a.patientid;
      raise_application_error(-20001,
                              '���߱��Ϊ[' || in_patientid ||
                              ']�Ĳ��˻���סԺ,�������ٵǼ�סԺ!;');
    exception
      when no_data_found then
        null;
    end;
    if nvl(get_system_option('סԺ�Ǽ�_֧��һ��סԺ�Ŷ����Ժ'), 'N') = 'Y'
    then
      verify_not_null(in_seq, '�ڼ���סԺ');
      verify_valid_number(in_seq, '�ڼ���סԺ');
      begin
        select 2
          into i
          from resident_info
         where residentid like in_residentid�� || '%'
           and seq = nvl(in_seq, 'x')
           and in_seq is not null
           and rownum = 1;
        raise_application_error(-20001, 'סԺ�ź�סԺ�����ظ�.;');
      exception
        when no_data_found then
          null;
      end;
      --�����סԺ�Ų��ǵ�һ����Ժ��Ҫ�ж�
      --��1�����סԺ���ǼǵĲ��˱��Ҫһ��
      begin
        select patientid
          into v_patientid
          from resident_info
         where residentid like in_residentid || �� '%'
           and rownum = 1;
        if in_patientid <> nvl(in_patientid, 'x')
        then
          raise_application_error(-20001,
                                  '���סԺӦ�ò�����ͬ�Ĳ��˱��' || chr(10) ||
                                  '�ϴεĲ��˱��Ϊ( ' || v_patientid || ' ).;');
        end if;
      exception
        when no_data_found then
          null;
      end;
    
      qcc.s_��֤���￨��Ч(in_patientid);
    
      if in_seq is not null
         and in_confirm_seq is not null
      then
        begin
          select seq
            into i
            from resident_info
           where residentid = in_residentid
             and rownum = 1;
          prv_�޸�סԺ��(in_residentid,
                    in_residentid || '.' || to_char(i, 'FM99'));
        exception
          when no_data_found then
            null;
        end;
      end if;
      v_seq := in_seq;
    else
      v_seq := '1';
    end if;
  
    if nvl(get_system_option('סԺ������Ϣ_��ͥ�绰����Ϊ��'), 'Y') = 'Y'
       and (in_home_tele is null or length(in_home_tele) < 6)
    then
      raise_application_error(-20001, '��ͥ��ϵ�绰����Ϊ�գ�');
    end if;
    if nvl(get_system_option('סԺ������Ϣ_��Ժ��ϲ���Ϊ��'), 'Y') = 'Y'
       and (in_diagnose_diseaseid is null)
    then
      raise_application_error(-20001, '��Ժ��ϲ���Ϊ�գ�');
    end if;
  
    if nvl(get_system_option('סԺ�Ǽ�_���ձ��ƴ�λ���Ǽ�'), 'N') = 'Y'
    then
      select count(*)
        into i
        from hospital.resident_patient
       where resident_info_deptid = in_deptid
         and resident_info_process_reason not in ('OUT', 'NEW');
    
      select max_bed_num
        into v_max_bed_num
        from hospital.all_department
       where id = in_deptid;
    
      if nvl(v_max_bed_num, 0) > 0
         and nvl(v_max_bed_num, 0) <= i
      then
        raise_application_error(-20001,
                                '�����ҵ�ǰסԺ�����Ѿ������涨������( ' || v_max_bed_num ||
                                ') �����ٵǼ��µĻ����ˡ�');
      
      end if;
    end if;
  
    if in_case_page1_pay_method is not null
       or nvl(get_system_option('������ҳ_PAY_METHOD_Ĭ��ֵ'), '4') = '��ѡ��'
    then
      verify_field_dict('CASE_PAGE1',
                        'PAY_METHOD',
                        in_case_page1_pay_method,
                        '������ҳ֧����ʽ');
    end if;
    if nvl(in_case_page1_pay_method, '��ѡ��') not in
       ('1', '2', '3', '4', '5', '6', '7', '8', '9')
    then
      raise_application_error(-20001, '��ѡ�񲡰���ҳҽ�Ƹ��ʽ');
    end if;
  
    if in_patientid is null
    then
      if in_age is null
         and in_birthday is null
      then
        raise_application_error(-20001, '���պ����䲻��ͬʱΪ��.;');
      end if;
      change_patient_nc('I',
                        out_patientid,
                        null,
                        in_pinyin,
                        in_name,
                        in_patient_attribute,
                        in_gender,
                        in_birthday,
                        in_profession,
                        in_country --����
                       ,
                        in_identification,
                        in_marry_status,
                        in_birth_province,
                        in_birth_county,
                        in_race,
                        in_blood_type,
                        in_free_no,
                        in_home_address,
                        in_home_tele,
                        in_home_zip,
                        in_office_address,
                        in_office_tele,
                        in_office_zip,
                        in_asso_name,
                        in_asso_relation,
                        in_asso_address,
                        in_asso_tele,
                        in_asso_zip,
                        null,
                        null,
                        null,
                        null,
                        in_age,
                        in_age_unit,
                        in_education,
                        in_regionid, --regionid
                        null);
    else
      select *
        into t_patient
        from hospital.patient
       where id = in_patientid;
      change_patient_nc('U',
                        out_patientid,
                        in_patientid,
                        nvl(in_pinyin, t_patient.pinyin),
                        nvl(in_name, t_patient.name),
                        nvl(in_patient_attribute, t_patient.attribute),
                        nvl(in_gender, t_patient.gender),
                        nvl(in_birthday,
                            to_char(t_patient.birthday, 'YYYY/MM/DD')),
                        nvl(in_profession, t_patient.profession),
                        nvl(in_country, t_patient.country), --����
                        nvl(in_identification, t_patient.identification),
                        nvl(in_marry_status, t_patient.marry_status),
                        nvl(in_birth_province, t_patient.birth_province),
                        nvl(in_birth_county, t_patient.birth_county),
                        nvl(in_race, t_patient.race),
                        nvl(in_blood_type, t_patient.blood_type),
                        nvl(in_free_no, t_patient.free_no),
                        nvl(in_home_address, t_patient.home_address),
                        nvl(in_home_tele, t_patient.home_tele),
                        nvl(in_home_zip, t_patient.home_zip),
                        nvl(in_office_address, t_patient.office_address),
                        nvl(in_office_tele, t_patient.office_tele),
                        nvl(in_office_zip, t_patient.office_zip),
                        nvl(in_asso_name, t_patient.asso_name),
                        nvl(in_asso_relation, t_patient.asso_relation),
                        nvl(in_asso_address, t_patient.asso_address),
                        nvl(in_asso_tele, t_patient.asso_tele),
                        nvl(in_asso_zip, t_patient.asso_zip),
                        null,
                        null,
                        null,
                        null,
                        in_age,
                        in_age_unit,
                        t_patient.education,
                        t_patient.regionid,
                        t_patient.religion);
    end if;
  
    begin
      select attribute
        into t_department_attribute
        from all_department
       where id = in_deptid;
      if substrb(nvl(t_department_attribute, '   '), 3, 1) <> 'A'
      then
        raise_application_error(-20001,
                                get_dept_name(in_deptid) ||
                                '����סԺ����,���ܽ���סԺ����.;');
      end if;
    exception
      when no_data_found then
        raise_application_error(-20001, 'סԺ���Ҳ�����.;');
    end;
  
    if in_doctorid is not null
    then
      verify_worker(in_doctorid, '����ҽ��');
    end if;
  
    begin
      select residentid
        into t_residentid
        from resident_patient
       where patientid = out_patientid
         and residentid = out_residentid;
      raise_application_error(-20001,
                              '���˱��Ϊ( ' || out_patientid || ' )�Ĳ���' ||
                              get_patient_name(out_patientid) ||
                              '�Ѿ�סԺ, ��סԺ��Ϊ( ' || t_residentid || ' ).;');
    exception
      when no_data_found then
        null;
    end;
  
    verify_length(in_remark, 20, '��ע');
    verify_field_dict('PRE_PAY', 'BILL_TYPE', in_bill_type, '���ʽ');
    verify_length(in_gender, 1, '�Ա�');
    verify_length(in_birth_province, 40, '����ʡ��');
    --verify_patient(in_patientid);
    if in_resident_info_attribute is not null
    then
      verify_field_dict('RESIDENT_INFO',
                        'ATTRIBUTE',
                        in_resident_info_attribute,
                        'סԺ�������');
    end if;
    verify_length(in_office_tele, 20, '������λ�绰');
    verify_length(in_office_zip, 20, '������λ��������');
    verify_length(in_home_address, 200, '���ڵ�ַ');
    verify_length(in_home_zip, 6, '��ͥ��������');
    verify_length(in_asso_name, 80, '��ϵ������');
    verify_length(in_asso_relation, 10, '����ϵ�˹�ϵ');
    verify_length(in_asso_address, 200, '��ϵ�˵�ַ');
    verify_length(in_asso_tele, 20, '��ϵ�˵绰');
    verify_length(in_age, 10, '����');
    verify_field_dict('RESIDENT_INFO', 'AGE_UNIT', in_age_unit, '���䵥λ');
    if in_home_bed not in (0, 1)
    then
      raise_application_error(-20001, '�����趨�����Ƿ�Ϊ��ͥ����.;');
    end if;
    if nvl(get_system_option('�Զ�����סԺ��'), ' ') = 'Y'
    then
      --��֤����סԺ�Ź���
      prv_סԺ��_���_��֤;
      i := 0;
      loop
        t_residentid := prv_סԺ��_���_��ȡ;
        i            := i + 1;
        begin
          select 2
            into i
            from resident_info
           where residentid = t_residentid
             and rownum = 1;
          prv_סԺ��_���_ʹ��(t_residentid);
          if i > 5
          then
            raise_application_error(-20001, sqlerrm);
          end if;
        exception
          when no_data_found then
            exit;
        end;
      end loop;
    else
      verify_not_null(in_residentid, 'סԺ��');
      verify_valid_residentid(in_residentid);
      begin
        select 2
          into i
          from resident_info
         where (residentid = in_residentid or
               residentid like
               hospital.login.get_hospid || '.' || in_residentid || '%')
           and rownum = 1;
        raise_application_error(-20001,
                                'סԺ��' || in_residentid || '�Ѿ���ʹ��');
      exception
        when no_data_found then
          null;
      end;
      t_residentid := in_residentid;
    end if;
    v_new_residentid := in_hosp_id || '.' || t_residentid || '.' ||
                        nvl(v_seq, 1);
    --ȡ��סԺ��Ȩ����
    checkout.s_�ж�_�Ƿ���ȡ����Ժ����(v_new_residentid);
  
    select * into t_patient from patient where id = out_patientid;
  
    t_record_no := get_next_resident_infoid;
    discount_man.set_��סԺ����_�Ż����(v_new_residentid);
  
    v_discount_type := discount_man.get_סԺ����_�Ż����(v_new_residentid);
  
    insert into resident_patient
      (record_no,
       patientid,
       status,
       account_type,
       pay_limit,
       discount_type,
       residentid)
    values
      (t_record_no,
       out_patientid,
       'WAIT_BED',
       'NORMAL',
       0,
       v_discount_type,
       v_new_residentid);
  
    prv_get_age(t_patient.birthday, v_age, v_age_unit, sysdate);
    insert into resident_info
      (in_date,
       attribute,
       patientid,
       residentid,
       seq,
       deptid,
       record_no,
       process_reason,
       process_date,
       process_operator,
       process_doctorid,
       finish_flag,
       finish_date,
       finish_operator,
       in_dept_date,
       age,
       age_unit,
       remark,
       update_date,
       pay_method,
       long_term_out_patient)
    values
      (sysdate, --sysdate,��Ժ����Ϊ���Ŵ�λ��ʱ��  --�������ҽ����Ҫ���Ŵ�λǰ����Ժ�Ǽǵ�����
       in_resident_info_attribute,
       out_patientid,
       v_new_residentid,
       nvl(v_seq, 1),
       in_deptid,
       t_record_no,
       'IN',
       sysdate,
       hospital.login.get_workerid,
       in_doctorid,
       'FINISHED',
       sysdate,
       hospital.login.get_workerid,
       null, --sysdate,��Ժ����Ϊ���Ŵ�λ��ʱ��
       v_age,
       v_age_unit,
       in_remark,
       sysdate,
       in_case_page1_pay_method,
       nvl(in_long_term_out_patient, 0));
  
    out_residentid := v_new_residentid;
    s_copy_patient(out_patientid);
    v_sysopt := nvl(get_system_option('�Զ�����סԺ��'), ' ');
    if v_sysopt = 'Y'
    then
      prv_סԺ��_���_ʹ��(t_residentid);
    end if;
    if nvl(get_system_option('����סԺһ��ͨ'), 'N') = 'Y'
    then
      --ɾ���ϴ���Ժ�Ĳ�ѯ����¼
      delete from qc_in_use
       where id in (select id
                      from hospital.qc_clinic
                     where patientid = in_patientid
                    union
                    select id
                      from hospital.qc_in_use_
                     where seq = in_patientid);
      --�����µĲ�ѯ����¼
      insert into qc_in_use
        (id, vk, vm, residentid, price, update_date, operator, seq, vn)
        select id,
               vk,
               vm,
               t_residentid,
               0,
               sysdate,
               hospital.login.get_workerid,
               in_patientid,
               vn
          from hospital.qc_clinic
         where patientid = in_patientid;
    else
      v_sysopt := nvl(get_system_option('ָ�����Ҳ���סԺ��' || in_deptid),
                      'N');
      if v_sysopt = 'N'
      then
      
        v_sysopt := nvl(get_system_option('ʹ�ò�ѯ��'), 'S');
        if v_sysopt = 'Y'
        then
          qc.sale(in_qc_id, t_residentid);
        elsif v_sysopt = 'S'
        then
          if in_qc_id is not null
          then
            qc.sale(in_qc_id, t_residentid);
          end if;
        else
          begin
            select 2 into i from qc_inventory where id = in_qc_id;
          exception
            when no_data_found then
              raise_application_error(-20001, '��������ȷ�Ŀ���.;');
          end;
        end if;
      end if;
    end if;
    prv_סԺ_��Ѻ��_����(out_patientid,
                  v_new_residentid,
                  'REAL_FEE',
                  0,
                  in_pre_pay,
                  in_bill_type,
                  in_pre_pay_bill_no,
                  in_warrantor,
                  out_pre_payid);
    --������Ժʱ�䰴�հ��Ŵ�λ��ʱ����㣬ʵ����Ժ�ǼǺ�Ҳ������������ҳ��Ϣ
    --�������Ĺ��̱�ע�͵�                     
    --prv_סԺ_������ҳ_����(t_residentid, 'S_סԺ_סԺ�Ǽ�');
    --update case_page1
    --   set home_bed   = in_home_bed,
    --       reason     = 'S_סԺ_סԺ�Ǽ�',
    --       pay_method = nvl(in_case_page1_pay_method, '6')
    -- where residentid = t_residentid;
  
    if in_diagnose_attribute is not null
       and in_diagnose_diseaseid is not null
    then
      prv_סԺ_�������(in_diagnose_attribute,
                  out_patientid,
                  v_new_residentid,
                  in_diagnose_diseaseid,
                  in_diagnose_remark);
    end if;
    commit;
    rabbitmq.publish_adt_message(events.adt_admission, v_new_residentid);
  end s_סԺ_סԺ�Ǽ�;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2016/08/31 - ����õĻ����޸�סԺ��,����ȡ����Ժ
  --     tiger      2008/10/20 - ���������д
  --     tiger      2007/11/26 -  ����ϵͳѡ��"סԺ�Ǽ�ȡ��"
  --     tiger      2006/07/18 -  ɾ���Ż���Ϣ
  --     tiger      2004/11/17 -  s_qc.cancel_sale��ɾ�������µ��� qc.cancel_sale,
  --     tiger      2002/10/27 -  ��ɾ��������Ϣ��Ԥ������Ϣ,�Զ���Ԥ����.
  --     tiger      2000/12/12 -  ɾ����ǰ������Ϣ
  --     tiger      2000/08/19 -  REWRITE  �ϲ��� resident_register & resident_info
  --     TIGER      2000/08/11 -  �޸Ĵ������ô�λΪ��
  --     TIGER      2000/04/10 -  20000410_BED
  procedure s_סԺ_סԺ�Ǽ�_ȡ��(in_patientid  in varchar2
                        ,in_residentid in varchar2) is
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
    i                  number;
    v_qc_in_use        qc_in_use%rowtype;
    v_residentid       hospital.resident_patient_.residentid%type;
    v_hosp_id          hsemr.patient_visit_.hosp_id%type;
    v_visit_id         hsemr.patient_visit_.visit_id%type;
    v_total_fee        number;
    v_new_residentid   hospital.resident_patient_.residentid%type;
  begin
    verify_patient(in_patientid);
    verify_not_null(in_residentid, 'סԺ��');
    v_residentid := hospital.pres.get_resident_id(in_residentid);
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
  
    if t_resident_info.process_operator <> hospital.login.get_workerid
    then
      if nvl(get_system_option('סԺ�Ǽ�ȡ��_����ȡ���Ǳ��˵Ǽǲ���'), 'N') = 'Y'
      then
        null;
      else
        raise_application_error(-20001,
                                '����' ||
                                get_worker_name(t_resident_info.process_operator) ||
                                '����סԺ���˵Ǽǣ�������ȡ��.;');
      end if;
    end if;
  
    if t_resident_info.bedid is not null
    then
      lock_res.lock_bed(t_resident_info.deptid,
                        t_resident_info.bedid,
                        'FULL');
    end if;
    if t_resident_info.process_reason <> 'IN'
    then
      raise_application_error(-20001,
                              'û�иò�����Ժ�Ǽ���Ϣ,����ȡ��סԺ.;');
    end if;
    if t_resident_info.residentid <> in_residentid
    then
      raise_application_error(-20001,
                              '����Ĳ�����' || get_patient_name(in_patientid) ||
                              '����סԺ��Ϊ' || v_residentid || '�Ĳ�����' ||
                              get_patient_name(t_resident_info.patientid) || '.;');
    end if;
  
    begin
      select 2
        into i
        from pre_pay
       where patientid = in_patientid
         and residentid = in_residentid
         and (bill_type in ('A', 'B', 'C') or bill_type like 'BANK%')
         and attribute = 'A';
      raise_application_error(-20001,
                              '�ò��˻���Ԥ����û����,����ȡ��סԺ�Ǽ�.;');
    exception
      when no_data_found then
        null;
    end;
  
    begin
      select sum(fee)
        into v_total_fee
        from (select round(round(nvl(price, 0), 3) * nvl(amount, 0), 2) fee
                from hospital.charge_item_
               where residentid = in_residentid
              union all
              select round(round(nvl(price, 0), 3) * nvl(amount, 0), 2) fee
                from hospital.charge_item_a01_
               where residentid = in_residentid);
    exception
      when no_data_found then
        v_total_fee := 0;
    end;
    if v_total_fee <> 0
    then
      raise_application_error(-20001, '�ò��������ܽ�Ϊ��,������Ժ.;');
    end if;
  
    begin
      select sum(fee)
        into v_total_fee
        from (select fee
                from hospital.charge_bill_
               where residentid = in_residentid
              union all
              select fee
                from hospital.charge_bill_a01_
               where residentid = in_residentid);
    exception
      when no_data_found then
        v_total_fee := 0;
    end;
    if v_total_fee <> 0
    then
      raise_application_error(-20001, '�ò����˵��ܽ�Ϊ��,������Ժ.;');
    end if;
  
    begin
      select sum(fee)
        into v_total_fee
        from hospital.charge_fee_
       where residentid = in_residentid;
    exception
      when no_data_found then
        v_total_fee := 0;
    end;
    if v_total_fee <> 0
    then
      raise_application_error(-20001, '�ò��˷����ܽ�Ϊ��,������Ժ.;');
    end if;
  
    begin
      select *
        into v_qc_in_use
        from qc_in_use
       where residentid = v_residentid
         and rownum = 1;
      begin
        select 2 into i from qc_clinic where id = v_qc_in_use.id;
        --����סԺһ��ͨ��
        delete from hospital.qc_in_use where residentid = v_residentid;
      exception
        when no_data_found then
          --סԺ��ѯ��
          qc.cancel_sale(v_qc_in_use.id, v_residentid);
      end;
    exception
      when no_data_found then
        null;
    end;
  
    --ɾ��������ҳ��¼
    delete from hospital.case_page1_ where residentid = in_residentid;
    --���Ӳ���ȡ����Ժ
    begin
      select hosp_id, visit_id
        into v_hosp_id, v_visit_id
        from hsemr.patient_visit_
       where resident_id = in_residentid
         and patient_id = in_patientid;
      hsemr.pck_pv.s_nc_��Ժȡ��(v_hosp_id, in_residentid, v_visit_id);
    exception
      when no_data_found then
        null;
    end;
  
    v_new_residentid := prv_סԺ��_���_ȡ������(in_residentid);
  
    prv_�޸�סԺ��(in_residentid, v_new_residentid);
  
    if t_resident_info.bedid is not null
    then
      update bed
         set status = 'B'
       where id = t_resident_info.bedid
         and deptid = t_resident_info.deptid;
    end if;
  
    if nvl(get_system_option('�Զ�����סԺ��'), ' ') = 'Y'
    then
      prv_סԺ��_���_����(v_residentid);
    end if;
  
    s_סԺ_��Ժ�Ǽ�_ȡ��_ת��nc(v_new_residentid);
  
    update hospital.resident_info_
       set process_reason   = 'CANCEL',
           process_operator = hospital.login.get_workerid,
           process_date     = sysdate
     where residentid = v_new_residentid;
  
    delete from hospital.resident_patient_
     where residentid = v_new_residentid;
    --hospital.s_����_סԺ�Ǽ�_ȡ��(in_patientid, in_residentid);
    --hospital.s_����_סԺ�Ǽ�_ȡ��(in_patientid, in_residentid);
    commit;
    rabbitmq.publish_adt_message(in_event            => events.adt_admission_cancel,
                                 in_resident_patient => t_resident_patient);
  end s_סԺ_סԺ�Ǽ�_ȡ��;

  -----------------------------------------------------------------------------------------------------
  --       tiger      2008/10/20 - ���������д
  --       tiger      2006/11/13 - ��ͬ���˵Ǽǣ������޸Ŀ���
  --       tiger      2002/10/26 create
  procedure s_סԺ_סԺ�Ǽ�_�޸ĿƱ�(in_patientid  in varchar2
                          ,in_residentid in varchar2
                          ,in_new_deptid in varchar2) is
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
    i                  number;
    v_dept_attr        all_department.attribute%type;
    --t_case_page1       case_page1%rowtype;
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    if t_resident_info.bedid is not null
    then
      lock_res.lock_bed(t_resident_info.deptid,
                        t_resident_info.bedid,
                        'FULL');
    end if;
    begin
      select attribute
        into v_dept_attr
        from all_department
       where id = in_new_deptid;
      if substrb(nvl(v_dept_attr, '   '), 3, 1) <> 'A'
      then
        raise_application_error(-20001, '�µĿ��Ҳ���סԺ���Ҳ����޸�.;');
      end if;
    exception
      when no_data_found then
        raise_application_error(-20001, 'סԺ���Ҳ�����.;');
    end;
  
    if t_resident_info.process_reason <> 'IN'
    then
      raise_application_error(-20001,
                              'û�иò�����Ժ�Ǽ���Ϣ,�����޸���Ժ����.;');
    end if;
  
    if t_resident_info.residentid <> in_residentid
    then
      raise_application_error(-20001,
                              '����Ĳ�����' || get_patient_name(in_patientid) ||
                              '����סԺ��' || in_residentid || '���Ǹò��˵�סԺ��.;');
    end if;
  
    begin
      select 2
        into i
        from order_list
       where ownerid = in_residentid
         and rownum = 1;
      raise_application_error(-20001, '�ò����Ѿ�¼��ҽ���������޸ĿƱ�.;');
    exception
      when no_data_found then
        null;
    end;
  
    begin
      select 2
        into i
        from charge_bill
       where residentid = in_residentid
         and rownum = 1;
      raise_application_error(-20001, '�ò����Ѿ��н��ʵ��ݲ����޸ĿƱ�.;');
    exception
      when no_data_found then
        null;
    end;
  
    begin
      select 2
        into i
        from charge_item
       where residentid = in_residentid
         and rownum = 1;
      raise_application_error(-20001, '�ò����Ѿ��м�����ϸ�����޸ĿƱ�.;');
    exception
      when no_data_found then
        null;
    end;
  
    begin
      select 2
        into i
        from charge_fee
       where residentid = in_residentid
         and rownum = 1;
      raise_application_error(-20001, '�ò����Ѿ��н�����ò����޸ĿƱ�.;');
    exception
      when no_data_found then
        null;
    end;
  
    if t_resident_info.process_operator <> hospital.login.get_workerid
    then
      if nvl(get_system_option('���������޸�סԺ���˿���'), 'N') = 'N'
      then
        raise_application_error(-20001,
                                '����' ||
                                get_worker_name(t_resident_info.process_operator) ||
                                '����סԺ���˵Ǽǣ��������޸ĿƱ�.;');
      end if;
    end if;
  
    if t_resident_info.bedid is not null
    then
      update bed
         set status = 'B'
       where id = t_resident_info.bedid
         and deptid = t_resident_info.deptid;
    end if;
  
    update pre_pay
       set deptid      = in_new_deptid,
           update_date = sysdate
     where residentid = in_residentid;
  
    update resident_info
       set deptid      = in_new_deptid,
           bedid       = null,
           update_date = sysdate
     where residentid = in_residentid;
  
    update resident_patient
       set status = 'WAIT_BED'
     where patientid = in_patientid
       and residentid = in_residentid;
  
    update case_page1
       set in_deptid = in_new_deptid,
           reason    = 'S_סԺ_סԺ�Ǽ�_�޸ĿƱ�'
     where residentid = in_residentid;
    commit;
    rabbitmq.publish_update_in_deptid(in_residentid => in_residentid,
                                      in_old_deptid => t_resident_info.bedid);
  end s_סԺ_סԺ�Ǽ�_�޸ĿƱ�;
  -----------------------------------------------------------------------------------------------------
  procedure s_סԺ_��Ժ����_�޸�(in_patientid  in varchar2
                        ,in_residentid in varchar2
                        ,in_new_date   in varchar2) is
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
    v_date_scope       varchar2(10);
    v_current_date     date;
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    if t_resident_info.bedid is not null
    then
      lock_res.lock_bed(t_resident_info.deptid,
                        t_resident_info.bedid,
                        'FULL');
    end if;
  
    select hospital.get_system_option('�����޸���Ժʱ�䷶Χ')
      into v_date_scope
      from dual;
    if v_date_scope is null
    then
      raise_application_error(-20001, 'û�п�ͨ�޸���Ժ�Ǽ�ʱ�书��.;');
    end if;
  
    if t_resident_info.in_date is null
    then
      v_current_date := sysdate;
    else
      v_current_date := t_resident_info.in_date;
    end if;
  
    if abs((v_current_date - to_date(in_new_date, 'YYYY-MM-DD HH24:MI:SS')) * 24) >
       v_date_scope
    then
      raise_application_error(-20001,
                              '�����޸���Ժʱ��Ϊ' || v_date_scope || '֮ǰ.;');
    end if;
  
    update resident_info
       set in_date     = to_date(in_new_date, 'YYYY-MM-DD HH24:MI:SS'),
           update_date = sysdate
     where residentid = in_residentid;
  
    --�޸����µ�
    hsemr.pck_vs.s_������Ϣ_��Ժ�����޸�nc(in_residentid,
                                 in_new_date,
                                 hospital.login.get_hospid,
                                 hospital.login.get_deptid,
                                 hospital.login.workerid);
    commit;
  end s_סԺ_��Ժ����_�޸�;

  -----------------------------------------------------------------------------------------------------
  --     tiger      2013/09/11 - ����Ӥ�����գ���Ժʱ�� = Ӥ������,����Ҫ������ yyyy/mm/dd hh24:mis�ľ�ȷ��
  --     tiger      2008/10/20 - ���������д
  --     tiger      2008/08/29 -  ������Ժ��������䵥λ,ȡ���Բ�����Ϣ������޸�
  --     tiger      2006/12/20 -  ����סԺ��
  --     tiger      2003/06/12 -  ���ӱ�־�жϲ��˼��ʷ��ÿ��Ʒ�ʽ(�ԷѺ�ҽ�Ʊ���)
  --     tiger      2000/12/12 -  ���ӵ�ǰ���� 
  --     tiger      2000/08/19 -  REWRITE  �ϲ��� resident_register & resident_info
  procedure s_סԺ_�������Ǽ�(in_mother_residentid in varchar2
                      ,in_residentid        in varchar2
                      ,in_name              in varchar2
                      ,in_pinyin            in varchar2
                      ,in_birthday          in varchar2
                      ,in_gender            in varchar2
                      ,in_remark            in varchar2
                      ,out_patientid        out varchar2
                      ,out_residentid       out varchar2) is
    t_resident_info      resident_info%rowtype;
    t_resident_patient   resident_patient%rowtype;
    t_patientid          patient.id%type;
    t_record_no          resident_info.record_no%type;
    t_residentid         resident_info.residentid%type;
    i                    number;
    t_mother_patient     patient%rowtype;
    v_add_supply         varchar2(10);
    v_order_listid       order_list.id%type;
    v_order_list_groupid hospital.order_list_group_.id%type;
  begin
    lock_res.lock_resident_by_rid(in_mother_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    if t_resident_info.mother_patientid is not null
    then
      raise_application_error(-20001, '���ܸ��������Ǽ�������.;');
    end if;
    if hospital.get_patient_gender(t_resident_patient.patientid) = 'M'
    then
      raise_application_error(-20002,
                              '�û���Ϊ��ʿ������Ϊ�佨��ĸӤ��ϵ��');
    end if;
    begin
      select 2
        into i
        from resident_info
       where residentid = in_residentid
         and rownum = 1;
      raise_application_error(-20001,
                              'סԺ��(' || in_residentid || ')����ʹ��,�뻻һ�����.;');
    exception
      when no_data_found then
        null;
    end;
    verify_not_null(in_birthday, '����');
    verify_valid_date(in_birthday, '����');
    verify_valid_residentid(in_residentid);
    verify_patient(t_resident_patient.patientid);
    verify_field_dict('PATIENT', 'GENDER', in_gender, '�Ա�');
    verify_not_null(in_name, '����');
    verify_length(in_name, 40, '����');
    verify_length(in_pinyin, 20, 'ƴ��');
    if get_resident_id(t_resident_info.residentid) <>
       substrb(in_residentid,
               1,
               length(get_resident_id(t_resident_info.residentid)))
    then
      raise_application_error(-20001, '�Ƿ���Ӥ��סԺ��');
    end if;
  
    select *
      into t_mother_patient
      from patient
     where id = t_resident_patient.patientid;
  
    t_patientid  := get_next_patientid;
    t_record_no  := get_next_resident_infoid;
    t_residentid := hospital.login.get_hospid || '.' || in_residentid || '.' || '1';
    if (t_residentid = in_mother_residentid)
    then
      raise_application_error(-20001, 'Ӥ��סԺ�Ų�����ĸ����ͬ');
    end if;
    insert into patient
      (id,
       name,
       pinyin,
       birthday,
       profession,
       gender,
       marry_status,
       attribute,
       blood_type,
       home_address,
       home_tele,
       home_zip,
       update_date)
    values
      (t_patientid,
       in_name,
       in_pinyin,
       get_date_from_str(in_birthday),
       '������',
       in_gender,
       'B',
       'NEW',
       'NA',
       t_mother_patient.home_address,
       t_mother_patient.home_tele,
       t_mother_patient.home_zip,
       sysdate);
    insert into resident_patient
      (record_no, patientid, status, account_type, pay_limit, residentid)
    values
      (t_record_no, t_patientid, 'NORMAL', 'NORMAL', 0, t_residentid);
    insert into resident_info
      (in_date,
       attribute,
       patientid,
       residentid,
       deptid,
       charge_doctorid,
       bedid,
       record_no,
       mother_patientid,
       process_reason,
       process_date,
       process_operator,
       finish_flag,
       in_dept_date,
       age,
       age_unit,
       remark,
       update_date)
    values
      (get_date_from_str(in_birthday),
       null,
       t_patientid,
       t_residentid,
       t_resident_info.deptid,
       t_resident_info.charge_doctorid,
       t_resident_info.bedid,
       t_record_no,
       t_resident_patient.patientid,
       'NEW',
       sysdate,
       hospital.login.get_workerid,
       'FINISHED',
       sysdate,
       1,
       '5', --Ĭ��Ϊ1Сʱ
       substrb(in_remark, 1, 20),
       sysdate);
    update resident_info
       set baby_patientid = t_patientid,
           update_date    = sysdate
     where record_no = t_resident_info.record_no;
    insert into mother_baby_relation
      (mother_residentid,
       baby_residentid,
       mother_patientid,
       baby_patientid)
    values
      (t_resident_info.residentid,
       t_residentid,
       t_resident_info.patientid,
       t_patientid);
    insert into stable_mother_baby_relation
      (mother_residentid,
       baby_residentid,
       mother_patientid,
       baby_patientid)
    values
      (t_resident_info.residentid,
       t_residentid,
       t_resident_info.patientid,
       t_patientid);
    --������סԺ�Ǽ��Զ�¼��ҽ��
    if nvl(get_system_option('������סԺ�Ǽ��Զ�¼��ҽ��'), 'N') = 'Y'
    then
      begin
        select a.id
          into v_order_list_groupid
          from hospital.order_list_group_ a, hospital.all_worker_ b
         where a.name = '������סԺ�Ǽ��Զ�¼��ҽ��'
           and a.doctorid = b.id
           and b.hospid = get_login_hospid
           and rownum = 1
         order by a.update_date desc;
      exception
        when no_data_found then
          raise_application_error(-20001,
                                  '�Ҳ�������Ϊ:������סԺ�Ǽ��Զ�¼��ҽ�� ��ģ��.;');
      end;
      for c in (select b.sundry_feeid,
                       b.price,
                       b.long_flag,
                       b.execute_deptid
                  from hospital.order_list_group_      a,
                       hospital.order_list_group_item_ b
                 where a.id = b.groupid
                   and a.id = v_order_list_groupid)
      loop
        ol_input.s_ҽ��_��ҽ��_�ӷ�_����_nc(null,
                                   c.long_flag,
                                   null,
                                   t_resident_info.charge_doctorid,
                                   t_residentid,
                                   c.execute_deptid,
                                   c.sundry_feeid,
                                   c.price,
                                   1,
                                   'NURSE',
                                   v_add_supply,
                                   v_order_listid,
                                   null,
                                   login.get_hospid,
                                   null);
      
        if nvl(get_system_option('������סԺ�Ǽ�ȷ��ҽ��'), 'N') = 'Y'
           and v_order_listid is not null
        then
          ol_input.s_ҽ��_ҽ��_ȷ��_nc(v_order_listid, 'NURSE');
        end if;
      end loop;
    end if;
    s_copy_patient(t_patientid);
    out_patientid  := t_patientid;
    out_residentid := t_residentid;
    commit;
    rabbitmq.publish_adt_message(in_event      => events.adt_admission,
                                 in_residentid => t_residentid);
  end s_סԺ_�������Ǽ�;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/20 - ���������д
  --     tiger      2000/12/12 -  ȡ����ǰ����
  --     tiger      2000/09/25 -  ȡ���ǼǺ��޸�ĸ�׵���Ϣ
  --     tiger      2000/08/19 -  REWRITE  �ϲ��� resident_register & resident_info
  procedure s_סԺ_�������Ǽ�_ȡ��(in_patientid         in varchar2
                         ,in_residentid        in varchar2
                         ,in_mother_residentid in varchar2) is
    v_hosp_id            hsemr.patient_visit_.hosp_id%type;
    v_visit_id           hsemr.patient_visit_.visit_id%type;
    t_resident_info      resident_info%rowtype;
    t_mother_info        resident_info%rowtype;
    t_resident_patient   resident_patient%rowtype;
    t_record_no          resident_patient.record_no%type;
    v_new_baby_patientid patient.id%type;
    i                    number;
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
  
    if t_resident_info.mother_patientid is null
    then
      raise_application_error(-20001, '�ⲻ������������û���ҵ�ĸ������.;');
    end if;
    if t_resident_info.residentid <> in_residentid
    then
      raise_application_error(-20001, '�����������.;');
    end if;
  
    begin
      select 2
        into i
        from order_list
       where ownerid = in_residentid
         and rownum = 1;
      raise_application_error(-20001, '���������Ѿ���ҽ��.;');
    exception
      when no_data_found then
        null;
    end;
  
    begin
      select record_no
        into t_record_no
        from resident_patient
       where patientid = t_resident_info.mother_patientid
         and residentid = in_mother_residentid;
    exception
      when no_data_found then
        raise_application_error(-20001, 'û���ҵ�������ĸ�׵�סԺ��Ϣ.;');
      when too_many_rows then
        raise_application_error(-20001, '�ҵ�������ĸ�׵Ķ���סԺ��Ϣ.;');
    end;
  
    begin
      select *
        into t_mother_info
        from resident_info b
       where record_no = t_record_no;
    exception
      when no_data_found then
        raise_application_error(-20001, 'û���ҵ�������ĸ�׵�סԺ��Ϣ.;');
      when too_many_rows then
        raise_application_error(-20001, '�ҵ�������ĸ�׵Ķ���סԺ��Ϣ.;');
    end;
  
    delete from resident_info where residentid = in_residentid;
    insert into hospital.deleted_records_
      (schema_name, table_name, id, delete_date)
    values
      ('HOSPITAL', 'RESIDENT_INFO', t_resident_info.record_no, sysdate);
  
    delete from resident_patient
     where patientid = in_patientid
       and residentid = in_residentid;
  
    delete from mother_baby_relation
     where mother_residentid = t_mother_info.residentid
       and baby_residentid = in_residentid;
    delete from stable_mother_baby_relation
     where mother_residentid = t_mother_info.residentid
       and baby_residentid = in_residentid;
  
    begin
      select baby_patientid
        into v_new_baby_patientid
        from mother_baby_relation
       where mother_residentid = t_mother_info.residentid
         and baby_residentid <> in_residentid
         and rownum = 1;
    exception
      when no_data_found then
        v_new_baby_patientid := null;
    end;
  
    update resident_info
       set baby_patientid = v_new_baby_patientid,
           update_date    = sysdate
     where residentid = t_mother_info.residentid;
    --hospital.s_����_סԺ�Ǽ�_ȡ��(in_patientid, in_residentid);
    --hospital.s_����_סԺ�Ǽ�_ȡ��(in_patientid, in_residentid);
  
    --���Ӳ�����Ժȡ��
    begin
      select hosp_id, visit_id
        into v_hosp_id, v_visit_id
        from hsemr.patient_visit_
       where resident_id = in_residentid
         and patient_id = in_patientid;
      hsemr.pck_pv.s_nc_��Ժȡ��(v_hosp_id, in_residentid, v_visit_id);
    exception
      when no_data_found then
        null;
    end;
    commit;
    rabbitmq.publish_adt_message(in_event            => events.adt_admission_cancel,
                                 in_resident_patient => t_resident_patient);
  end s_סԺ_�������Ǽ�_ȡ��;
  -----------------------------------------------------------------------------------------------------
  procedure s_סԺ_�޸���������Ϣ(in_residentid in varchar2
                        ,in_name       in varchar2
                        ,in_pinyin     in varchar2
                        ,in_birthday   in varchar2
                        ,in_gender     in varchar2) is
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
    i                  number;
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    verify_not_null(in_birthday, '����');
    verify_valid_date(in_birthday, '����');
    verify_field_dict('PATIENT', 'GENDER', in_gender, '�Ա�');
    verify_not_null(in_name, '����');
    verify_length(in_name, 40, '����');
    verify_length(in_pinyin, 20, 'ƴ��');
    begin
      select 2
        into i
        from hospital.resident_info
       where residentid = in_residentid
         and process_reason = 'NEW';
      null;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                'סԺ��Ϊ( ' || in_residentid || ' )�Ļ��߲���������.;');
    end;
    update patient
       set name     = in_name,
           pinyin   = in_pinyin,
           birthday = get_date_from_str(in_birthday),
           gender   = in_gender
     where id = t_resident_patient.patientid;
  
    update current_patient
       set name     = in_name,
           pinyin   = in_pinyin,
           birthday = get_date_from_str(in_birthday),
           gender   = in_gender
     where id = t_resident_patient.patientid;
  
    update case_page1
       set name     = in_name,
           birthday = get_date_from_str(in_birthday),
           gender   = in_gender
     where residentid = in_residentid;
  
    update resident_info
       set in_date     = get_date_from_str(in_birthday),
           update_date = sysdate
     where residentid = in_residentid
       and in_date <> get_date_from_str(in_birthday);
  
    --�޸����µ�
    hsemr.pck_vs.s_������Ϣ_��Ժ�����޸�nc(in_residentid,
                                 in_birthday,
                                 hospital.login.get_hospid,
                                 hospital.login.get_deptid,
                                 hospital.login.workerid);
    commit;
  end s_סԺ_�޸���������Ϣ;
  --���²�����ר����صĲ���                                     
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/11/19 - �� prv_סԺ_ת��_���� ��ʵ�ִ���
  --     tiger      2008/10/20 - ���������д
  --     tiger      2007/04/05 - �޸Ľ����е�BUG
  --     tiger      2007/04/02 - ȡ����Ժ��Ȩ����
  --     tiger      2006/06/24 - �����Żݼ۸�
  --     tiger      2006/05/09 -  ����ÿһ����ϸ�������� 
  --     tiger      2002/09/26 -  �����ֶ� ���㵥���͡�����ʱ��ͽ���Ա��Ϣ
  --     tiger      2000/10/01 -  �޸�CHARGE_ITEM��CHARGE_BILLID
  --     tiger      2000/09/25 -  ���ӽ��㷽ʽ���Է�/��ְҽ�Ʊ���/����ҽ�Ʊ���
  --     tiger      2000/09/22 -  ����ҽ�Ʊ����շ�/����֧��
  --     tiger      2000/08/19 -  REWRITE  �ϲ��� resident_register & resident_info
  /*
  procedure s_סԺ_ת��_����(in_patientid     in varchar2
                            ,in_deptid        in varchar2
                            ,in_update_reason in varchar2) is
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
  begin
    raise_application_error(-20001, '�ù����Ѿ�����');
    commit;
  end s_סԺ_ת��_����;
  */
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/11/19 - �� prv_סԺ_ת��_����_ȡ�� ��ʵ�ִ���
  --     tiger      2008/10/20 - ���������д
  --     tiger      2007/04/02 - ȡ����Ժ��Ȩ����
  --     tiger      2002/09/26 -  �����ֶ� ���㵥���͡�����ʱ��ͽ���Ա��Ϣ
  --     tiger      2000/10/01 -  ��û�н��ʵĽ��㵥�ݲſ�����ȡ������
  --                              ��û�д����ʵĽ��㵥�ݺ�ſ���ȡ��ת�ƽ���
  --     tiger      2000/08/19 -  REWRITE  �ϲ��� resident_register & resident_info
  procedure s_סԺ_ת��_����_ȡ��(in_patientid     in varchar2
                         ,in_residentid    in varchar2
                         ,in_charge_billid in varchar2) is
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    if t_resident_info.mother_patientid is not null
    then
      raise_application_error(-20001, '�����ĸ��.;');
    end if;
    prv_סԺ_ת��_����_ȡ��(in_residentid, in_charge_billid);
    commit;
  end s_סԺ_ת��_����_ȡ��;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2013/08/08 - ת������ʱ��ָ����ת�����,ת�������ֱ�ӽ���ת�ƽ���
  --     tiger      2008/11/19 - 1  �����ʵ�ֹ��̣�����prv_סԺ_ת��_����
  --                             2  ʵ��ר�ƽ���Ĺ���
  --     tiger      2008/10/20 - ���������д
  --     tiger      2007/10/22 - ���޸�resident_patient.record_no,Ȼ���޸�(����)residentid_info
  --     tiger      2007/04/02 - ȡ����Ժ��Ȩ����
  --     tiger      2006/10/31 - ֹͣ���еĹ̶�ҽ��(E,F)
  --     tiger      2003/10/15 - ��¼change_dept_info��Ϣ
  --     tiger      2003/08/15 - ��ֹ�����ʹ�ô˹��� 
  --     tiger      2000/08/19 - REWRITE  �ϲ��� resident_register  resident_info
  --     TIGER      2000/04/10 - 20000410_BED
  procedure s_סԺ_ת��_����(in_residentid         in varchar2
                      ,in_deptid             in varchar2
                      ,in_destination_deptid in varchar2 --��ת�����
                      ,in_type               in varchar2 --ת�����ͣ�A ��ͨת�� B ĸӤͬʱת�� C ĸ��ת�ơ�Ӥ����ר�� D Ӥ��ת�ơ�ĸ�ײ�ת��
                      ,in_remark             in varchar2) is
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
    v_dept_attr        all_department.attribute%type;
    i                  number;
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    if t_resident_info.process_reason = 'IN'
       and t_resident_info.finish_flag = 'WAIT_BED'
    then
      raise_application_error(-20001,
                              '�ò��˻�û�а��Ŵ�λ����ֱ��Ҫ��סԺ���޸���Ժ����.;');
    end if;
    if t_resident_info.bedid is not null
       and t_resident_info.mother_patientid is null
    then
      lock_res.lock_bed(t_resident_info.deptid,
                        t_resident_info.bedid,
                        'IGNORE');
    end if;
  
    if nvl(in_type, '1') not in ('A', 'B', 'C', 'D')
    then
      raise_application_error(-20001,
                              '�Ƿ���ת�Ʊ�־( ' || in_type || ' ).;');
    end if;
  
    verify_department(in_deptid);
    select attribute
      into v_dept_attr
      from all_department
     where id = in_deptid;
    if substrb(v_dept_attr, 5, 1) = 'A'
       and nvl(get_system_option('����ƻ��߽�ֹת������'), 'N') = 'N'
    then
      raise_application_error(-20001, '����Ʋ��˽�ֹת����������.;');
    end if;
  
    verify_department(in_destination_deptid);
    select attribute
      into v_dept_attr
      from all_department
     where id = in_destination_deptid;
    if substrb(v_dept_attr, 5, 1) = 'A'
    then
      raise_application_error(-20001, '����Ʋ�����Ϊת�ƽ��տ���.;');
    end if;
  
    if in_type = 'D'
    then
      begin
        select 2
          into i
          from resident_info
         where residentid = t_resident_info.residentid
           and process_reason = 'NEW';
      exception
        when no_data_found then
          raise_application_error(-20001, '����������,����ת��.;');
      end;
    end if;
  
    user_permit.s_ack_ת������(t_resident_info.deptid);
  
    prv_סԺ_ת��_����_ǰ���ж�(in_residentid,
                      in_deptid,
                      in_destination_deptid,
                      in_type,
                      in_remark);
  
    prv_סԺ_ת��_����(in_residentid,
                 in_deptid,
                 in_destination_deptid,
                 in_type,
                 in_remark);
  
    prv_סԺ_ת��_����(in_residentid, in_deptid, in_type);
    insert into hospital.changing_dept
      (id, type, source_deptid, destination_deptid, residentid)
    values
      (get_next_help_msgid,
       in_type,
       in_deptid,
       in_destination_deptid,
       t_resident_info.residentid);
    commit;
    rabbitmq.publish_adt_message(in_event      => events.adt_transfer,
                                 in_residentid => in_residentid);
  end s_סԺ_ת��_����;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2010/08/06 - ֧��ĸӤͬʱת��
  --     tiger      2008/10/20 - ���������д
  --     TIGER      2000/05/04 - ת��ȡ���󣬲��Զ����Ŵ�λ.
  --     TIGER      2000/04/10 - 20000410_BED
  procedure s_סԺ_ת��_����_ȡ��(in_residentid in varchar2) is
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
    t_type             changing_dept.type%type;
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    begin
      select type
        into t_type
        from changing_dept
       where residentid = in_residentid;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                'û���ҵ�סԺ��Ϊ( ' || in_residentid ||
                                ' )�Ļ���ת��������Ϣ�����ܽ���ת������ȡ��.;');
    end;
    prv_סԺ_ת��_����_ȡ��(in_residentid, t_type);
    commit;
    rabbitmq.publish_adt_message(in_event      => events.adt_transfer_cancel,
                                 in_residentid => in_residentid);
  end s_סԺ_ת��_����_ȡ��;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2010/08/06 - �״����룺 ֧��ĸӤͬʱת��
  procedure prv_סԺ_ת��_����_ȡ��(in_residentid in varchar2
                           ,in_type       in varchar2) is
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
    t_record_no        resident_patient.record_no%type;
    t_status           resident_patient.status%type;
    t_charge_billid    charge_bill.id%type;
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
  
    --    user_permit.s_ack_ת������(t_resident_info.deptid);
    if t_resident_info.process_reason in ('IN', 'NEW')
    then
      raise_application_error(-20001,
                              '�ò���û����ת������,����ȡ��ת������.;');
    elsif t_resident_info.process_reason = 'OUT'
    then
      raise_application_error(-20001,
                              '�ò����Ѿ����˳�Ժ����,����ȡ��ת��.;');
    elsif t_resident_info.process_reason = 'CHANGEDEPT'
    then
      if t_resident_info.finish_flag = 'WAIT_ACC'
      then
        null;
      elsif t_resident_info.finish_flag = 'WAIT_DEPT'
      then
        begin
          select a.id
            into t_charge_billid
            from charge_bill a
           where a.residentid = t_resident_info.residentid
             and a.type = 'DEPT'
             and a.status = 'WAIT_PAY'
             and a.balance_date in
                 (select max(balance_date)
                    from charge_bill
                   where residentid = t_resident_info.residentid
                     and type = 'DEPT')
             and rownum = 1;
          prv_סԺ_ת��_����_ȡ��(in_residentid, t_charge_billid);
        exception
          when no_data_found then
            null; --û��ר�ƽ��㵥
        end;
      elsif t_resident_info.finish_flag = 'FINISHED'
      then
        raise_application_error(-20001,
                                '�ò����Ѿ�����ת�ƽ���,����ȡ��ת��.;');
      else
        raise_application_error(-20001, '�Ƿ���FINISH_FLAG.;');
      end if;
    else
      raise_application_error(-20001,
                              '�Ƿ���PROCESS_REASON״̬' ||
                              t_resident_info.process_reason || '.;');
    end if;
  
    begin
      select b.record_no
        into t_record_no
        from resident_info b
       where b.residentid = t_resident_info.residentid
         and b.process_date in
             (select max(process_date)
                from resident_info b
               where b.residentid = t_resident_info.residentid
                 and b.record_no <> t_resident_info.record_no);
    exception
      when no_data_found then
        raise_application_error(-20001,
                                'û���ҵ��ò�����ǰ��סԺ�Ǽ���Ϣ������ȡ����Ժ;');
    end;
    begin
      select *
        into t_resident_info
        from resident_info
       where record_no = t_record_no
         and residentid = t_resident_info.residentid
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                'û���ҵ��ò��˳�Ժ����ʱ�Ĳ�����Ϣ.;');
      when too_many_rows then
        raise_application_error(-20001,
                                '�ҵ��ò��˳�Ժ����ʱ�Ķ���������Ϣ.;');
    end;
    delete from resident_info
     where record_no = t_resident_patient.record_no;
    insert into hospital.deleted_records_
      (schema_name, table_name, id, delete_date)
    values
      ('HOSPITAL', 'RESIDENT_INFO', t_resident_info.record_no, sysdate);
    t_status := 'WAIT_BED';
    update resident_patient
       set record_no = t_record_no,
           status    = t_status
     where residentid = in_residentid;
    update resident_info
       set out_dept_date = null,
           update_date   = sysdate
     where record_no = t_record_no;
    delete from change_dept_info
     where residentid = t_resident_info.residentid
       and in_deptid is null;
    delete from changing_dept where residentid = in_residentid;
    if in_type = 'B'
    then
      for c in (select *
                  from mother_baby_relation
                 where mother_residentid = t_resident_info.residentid)
      loop
        prv_סԺ_ת��_����_ȡ��(c.baby_residentid, 'A');
      end loop;
    end if;
  end prv_סԺ_ת��_����_ȡ��;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2010/08/06 - ֧��ĸӤͬʱת��
  --     tiger      2008/10/20 - ���������д
  --     tiger      2004/12/01 - ���� rpt_dr.s_change_dept_acceptͳ������ҽʦ���˶�̬����
  --     tiger      2004/03/11 - �޸�rpt_case.change_dept�ӿڵ��ò���
  --     tiger      2003/10/15 - ��¼ת����Ϣ:ת��Ʊ�
  --     tiger      2003/08/15 - ��ֹ�����ʹ�ô˹��� 
  --     tiger      2002/01/21 - rewrite �����޸Ĳ�����ҳ�ĸ�ʽ�� doc_no = 2002_01_21_001
  --     tiger      2001/08/14 - ���û�в�����ҳ�������һ��
  --     tiger      2000/08/19 - REWRITE  �ϲ��� resident_register & resident_info
  --     tiger      2007/01/14 - ɾ��dr_order_list_info�е���Ϣ
  procedure s_סԺ_ת��_ת��(in_residentid in varchar2) is
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
    t_changing_dept    changing_dept%rowtype;
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    begin
      select *
        into t_changing_dept
        from hospital.changing_dept
       where residentid = in_residentid
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                'û���ҵ�סԺ��Ϊ(' || in_residentid ||
                                ')��ת��������Ϣ�����ܽ���ת�ƽ���.;');
    end;
  
    if t_changing_dept.destination_deptid <> get_login_deptid
    then
      raise_application_error(-20001,
                              'ת�����( ' ||
                              get_dept_name(t_changing_dept.destination_deptid) ||
                              ')�͵�¼���Ҳ�ͬ�����ܽ���.;');
    end if;
    prv_סԺ_ת��_ת��(in_residentid,
                 t_changing_dept.destination_deptid,
                 t_changing_dept.type);
    commit;
    rabbitmq.publish_adt_message(in_event      => events.adt_transfer_reveive,
                                 in_residentid => in_residentid);
  end s_סԺ_ת��_ת��;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2010/08/06 - �״����룺֧��ĸӤͬʱת��
  procedure prv_סԺ_ת��_ת��(in_residentid in varchar2
                        ,in_deptid     in varchar2
                        ,in_type       in varchar2) is
    t_resident_patient  resident_patient%rowtype;
    t_resident_info     resident_info%rowtype;
    v_max_seq           number;
    v_change_dept_info  change_dept_info%rowtype;
    v_in_deptid         all_department.id%type;
    v_home_bed          number;
    v_baby_patientid    patient.id%type;
    v_mother_residentid resident_info.residentid%type;
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
  
    --�������ת�ƣ�����ĸӤͬʱת�ƣ��޸Ĵ�ά״̬
    if in_type in ('A', 'B')
    then
      update hospital.bed
         set status = 'B'
       where deptid = t_resident_info.deptid
         and id = t_resident_info.bedid;
    end if;
    update resident_patient
       set status = 'NORMAL'
     where residentid = in_residentid;
  
    update resident_info
       set deptid          = in_deptid,
           bedid           = null,
           charge_doctorid = null,
           update_date     = sysdate,
           operator        = hospital.login.get_workerid,
           finish_flag     = 'FINISHED'
     where record_no = t_resident_patient.record_no;
  
    delete from dr_order_list_info
     where residentid = t_resident_info.residentid;
  
    select max(seq)
      into v_max_seq
      from change_dept_info
     where residentid = t_resident_info.residentid
       and in_deptid is null;
  
    v_in_deptid := in_deptid;
    update change_dept_info a
       set a.in_deptid = v_in_deptid
     where a.residentid = t_resident_info.residentid
       and a.seq = v_max_seq;
    rpt_dr.s_change_dept_accept(sysdate, t_resident_info.charge_doctorid);
  
    begin
      select home_bed
        into v_home_bed
        from case_page1
       where residentid = t_resident_info.residentid
         and rownum = 1;
    exception
      when no_data_found then
        prv_סԺ_������ҳ_����(t_resident_info.residentid, 'S_סԺ_ת��_ת��');
    end;
    --Ҫ��ͳ��ת����Ϣ��Ȼ������޸Ĳ�����ҳ
    begin
      select *
        into v_change_dept_info
        from change_dept_info
       where residentid = t_resident_info.residentid
         and seq = v_max_seq
         and rownum = 1;
      rpt_case.change_dept(v_change_dept_info.in_date,
                           v_change_dept_info.out_date,
                           v_change_dept_info.out_deptid,
                           in_deptid,
                           v_change_dept_info.in_days,
                           nvl(v_home_bed, 0));
    exception
      when no_data_found then
        null;
    end;
  
    update case_page1
       set change_deptid = t_resident_info.deptid,
           change_room   = t_resident_info.bedid,
           reason        = 'S_סԺ_ת��_ת��'
     where residentid = t_resident_info.residentid;
  
    if in_type = 'B'
    then
      for c in (select *
                  from mother_baby_relation
                 where mother_residentid = t_resident_info.residentid)
      loop
        prv_סԺ_ת��_ת��(c.baby_residentid, in_deptid, 'A');
      end loop;
    end if;
    if in_type = 'C' --ĸ��ת�ƣ���������ת�ƣ�ȡ������ĸӤ��ϵ
    then
      --ȡ��ĸӤ��ϵ
      update resident_info
         set mother_patientid = null,
             update_date      = sysdate
       where residentid in
             (select baby_residentid
                from mother_baby_relation
               where mother_residentid = in_residentid);
      update resident_info
         set baby_patientid = null,
             update_date    = sysdate
       where residentid = in_residentid;
      delete from mother_baby_relation
       where mother_residentid = in_residentid;
    elsif in_type = 'D' --������ת�ƣ�ĸ�ײ�ת�ƣ�ȡ����ǰBABY��ĸӤ��ϵ
    then
      --ȡ��ĸӤ��ϵ
      update resident_info
         set mother_patientid = null,
             update_date      = sysdate
       where residentid = in_residentid;
    
      select mother_residentid
        into v_mother_residentid
        from mother_baby_relation
       where baby_residentid = in_residentid;
    
      delete from mother_baby_relation
       where baby_residentid = in_residentid;
    
      begin
        select baby_patientid
          into v_baby_patientid
          from hospital.mother_baby_relation
         where mother_residentid = v_mother_residentid
           and rownum = 1;
      exception
        when no_data_found then
          null;
      end;
    
      update resident_info
         set baby_patientid = v_baby_patientid,
             update_date    = sysdate
       where residentid = in_residentid;
    end if;
  
    delete from changing_dept where residentid = in_residentid;
  end prv_סԺ_ת��_ת��;
  -----------------------------------------------------------------------------------------------------
  procedure s_סԺ_ת��_�ܾ�ת��(in_residentid in varchar2) is
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
    t_changing_dept    changing_dept%rowtype;
  
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    begin
      select *
        into t_changing_dept
        from changing_dept
       where residentid = in_residentid
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                'û���ҵ�סԺ��Ϊ(' || in_residentid ||
                                ')��ת��������Ϣ�����ܽ���ת�ƽ���.;');
    end;
    --
    if t_changing_dept.destination_deptid <> get_login_deptid
    then
      if is_worker_login_dept(hospital.login.get_workerid,
                              t_changing_dept.destination_deptid) <> 0
      then
        raise_application_error(-20001,
                                '����ת��' ||
                                get_dept_name(t_changing_dept.destination_deptid) ||
                                '�Ļ���,����' || get_dept_name(get_login_deptid) ||
                                '��ݵ�¼,���ܾܾ�.;');
      else
        raise_application_error(-20001,
                                '����ת��' ||
                                get_dept_name(t_changing_dept.destination_deptid) ||
                                '�Ļ��ߣ������ܾܾ�.;');
      end if;
    end if;
    --
    prv_סԺ_ת��_����_ȡ��(in_residentid, t_changing_dept.type);
    commit;
    rabbitmq.publish_adt_message(in_event      => events.adt_transfer_reject,
                                 in_residentid => in_residentid);
  end s_סԺ_ת��_�ܾ�ת��;
  -----------------------------------------------------------------------------------------------------
  procedure s_סԺ_������ҳ_����(in_residentid in varchar2
                        ,in_reason     in varchar2) is
  begin
    prv_סԺ_������ҳ_����(in_residentid, in_reason);
    commit;
  end;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/20 - ���������д
  --  2005/03/25  tiger  - ���Ӱ󶨱���
  --  2005/03/10  tiger  - ֱ��ʹ��table_name,��ֹ����
  --  2002/08/11  tiger  - �޸�case_page1 set id = residentid
  --  2001/08/14  tiger 
  procedure prv_�޸�סԺ��(in_old_residentid in varchar2
                     ,in_new_residentid in varchar2) as
    i                number;
    t_new_residentid hospital.resident_info_.residentid%type;
    type tab_columns_type is record(
      table_name  varchar2(100),
      column_name varchar2(100));
    tab_column tab_columns_type;
    cursor c_tab is
      select distinct a.owner || '.' || a.table_name as table_name
        from all_tab_columns a, all_tables b
       where a.owner in ('HOSPITAL', 'HSECASE', 'HSTEND')
         and a.column_name = 'RESIDENTID'
         and a.table_name not in ('RESIDENT_INFO_',
                                  'ORDER_LIST_',
                                  'CASE_PAGE1_',
                                  'AUDIT$CASE_PAGE1_')
         and a.table_name not like 'BIN$%$0'
         and a.table_name = b.table_name
         and b.owner in ('HOSPITAL', 'HSECASE', 'HSTEND');
    cursor t_tab is
      select distinct a.owner || '.' || a.table_name as table_name,
                      a.column_name
        from all_tab_columns a, all_tables b
       where a.owner in ('HOSPITAL', 'HSEMR', 'HSOIS')
         and (a.column_name = 'RESIDENTID' or a.column_name = 'RESIDENT_ID')
         and a.table_name not in ('RESIDENT_INFO_',
                                  'ORDER_LIST_',
                                  'CASE_PAGE1_',
                                  'AUDIT$CASE_PAGE1_')
         and a.table_name not like 'BIN$%$0'
         and a.table_name = b.table_name
         and b.owner in ('HOSPITAL', 'HSEMR', 'HSOIS');
    tab_name varchar2(60);
    t_sql    varchar2(2000);
  begin
    lock_res.lock_resident_info(in_old_residentid);
    verify_not_null(in_new_residentid, '��סԺ��');
    --��֤סԺ���м䲿�ֵ�����
    verify_valid_residentid(get_resident_id(in_new_residentid));
    if hospital.pres.get_is_new_residentid_rule(in_old_residentid) = 'Y'
    then
      begin
        select 2
          into i
          from resident_info
         where residentid like hospital.pres.get_resident_hosp_id(in_old_residentid) || '.' ||
               in_new_residentid || '.' || '%'
           and rownum = 1;
        raise_application_error(-20001,
                                '��סԺ��' || in_new_residentid || '�Ѿ���������ʹ��.;');
      exception
        when no_data_found then
          null;
      end;
      t_new_residentid := hospital.pres.get_resident_hosp_id(in_old_residentid) || '.' ||
                          hospital.pres.get_resident_id(in_new_residentid) || '.' ||
                          hospital.pres.get_resident_visit_id(in_old_residentid);
    else
      begin
        select 2
          into i
          from resident_info
         where residentid = in_new_residentid
           and rownum = 1;
        raise_application_error(-20001,
                                '��סԺ��' || in_new_residentid || '�Ѿ���������ʹ��.;');
      exception
        when no_data_found then
          null;
      end;
      t_new_residentid := in_new_residentid;
    end if;
  
    begin
      update resident_info
         set residentid  = t_new_residentid,
             update_date = sysdate
       where residentid = in_old_residentid;
    
      update order_list
         set ownerid = t_new_residentid
       where ownerid = in_old_residentid;
    
      update order_list_a01
         set ownerid = t_new_residentid
       where ownerid = in_old_residentid;
      begin
        select 2
          into i
          from hospital.resident_info_ a
         where a.residentid = in_old_residentid
           and a.residentid not like '%.%.%';
        open c_tab;
        loop
          fetch c_tab
            into tab_name;
          exit when c_tab%notfound;
          t_sql := 'UPDATE ' || tab_name ||
                   ' SET RESIDENTID = :in_new_residentid' ||
                   ' WHERE RESIDENTID = :in_old_residentid';
          execute immediate t_sql
            using t_new_residentid, in_old_residentid;
        end loop;
        close c_tab;
      exception
        when no_data_found then
          open t_tab;
          loop
            fetch t_tab
              into tab_column;
            exit when t_tab%notfound;
            t_sql := 'UPDATE ' || tab_column.table_name || ' SET ' ||
                     tab_column.column_name || ' = :in_new_residentid' ||
                     ' WHERE ' || tab_column.column_name ||
                     ' = :in_old_residentid';
            execute immediate t_sql
              using t_new_residentid, in_old_residentid;
          end loop;
          close t_tab;
      end;
    
      update case_page1
         set id         = t_new_residentid,
             residentid = in_new_residentid,
             reason     = 'S_�޸�סԺ��'
       where id = in_old_residentid;
      --hospital.s_����_�޸�סԺ��(in_old_residentid, t_new_residentid);
      --hospital.s_����_�޸�סԺ��(in_old_residentid, t_new_residentid);
    exception
      when others then
        raise_application_error(-20001, sqlerrm || t_sql);
    end;
  end;
  -----------------------------------------------------------------------------------------------------
  procedure s_�޸�סԺ��(in_old_residentid in varchar2
                   ,in_new_residentid in varchar2) as
  begin
    prv_�޸�סԺ��(in_old_residentid, in_new_residentid);
    commit;
    rabbitmq.publish_update_residentid(in_new_residentid  => in_new_residentid,
                                       in_old_residenteid => in_old_residentid);
  end;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/11/13 - create
  procedure s_סԺ_���������ƽ��(in_patientid  in varchar2
                        ,in_residentid in varchar2
                        ,in_fee        in varchar2
                        ,out_seq       out varchar2) is
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
    v_seq              number;
    v_control_limit    number;
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    verify_valid_number(in_fee, '���');
    select nvl(max(seq), 0) + 1
      into v_seq
      from account_limit
     where residentid = t_resident_patient.residentid;
    insert into account_limit
      (residentid, seq, patientid, fee, fee_operator, fee_date, status)
    values
      (t_resident_patient.residentid,
       v_seq,
       in_patientid,
       in_fee,
       hospital.login.get_workerid,
       sysdate,
       'FINISHED');
    select sum(fee)
      into v_control_limit
      from account_limit
     where residentid = t_resident_patient.residentid
       and status = 'FINISHED';
    update resident_patient
       set control_limit = v_control_limit
     where residentid = t_resident_patient.residentid;
    out_seq := v_seq;
    commit;
  end s_סԺ_���������ƽ��;
  -----------------------------------------------------------------------------------------------------
  procedure s_סԺ_�����Ժ_��Ȩ(in_residentid in varchar2) is
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
    i                  integer;
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    if t_resident_info.process_reason in ('OUT')
    then
      raise_application_error(-20001,
                              '�ò����Ѿ����˳�Ժ����,���������Ժ����.;');
    end if;
    begin
      select 2
        into i
        from resident_patient_out_authorize
       where residentid = in_residentid
         and rownum = 1;
      raise_application_error(-20001, '�ò����Ѿ������Ժ,�����ظ�����.;');
    exception
      when no_data_found then
        null;
    end;
    insert into resident_patient_out_authorize
      (residentid, workerid, update_date)
    values
      (in_residentid, hospital.login.get_workerid, sysdate);
    commit;
  end s_סԺ_�����Ժ_��Ȩ;
  -----------------------------------------------------------------------------------------------------
  procedure s_סԺ_�����Ժ_��Ȩȡ��(in_residentid in varchar2) is
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
    i                  integer;
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    if t_resident_info.process_reason in ('OUT')
    then
      raise_application_error(-20001,
                              '�ò����Ѿ����˳�Ժ����,����ȡ�������Ժ����.;');
    end if;
    begin
      select 2
        into i
        from resident_patient_out_authorize
       where residentid = in_residentid
         and rownum = 1;
      null;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                'û���ҵ��ò��������Ժ��Ȩ�Ĳ���,����ȡ��.;');
    end;
    delete from resident_patient_out_authorize
     where residentid = in_residentid;
    commit;
  end s_סԺ_�����Ժ_��Ȩȡ��;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/11/13 - create
  procedure s_סԺ_�˱������ƽ��(in_patientid  in varchar2
                        ,in_residentid in varchar2
                        ,in_seq        in varchar2) is
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
    v_status           account_limit.status%type;
    v_control_limit    number;
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    begin
      select status
        into v_status
        from account_limit
       where residentid = t_resident_patient.residentid
         and seq = in_seq
         for update nowait;
      if v_status = 'WITHDRAWED'
      then
        raise_application_error(-20001, '�����ظ���.;');
      end if;
    exception
      when no_data_found then
        raise_application_error(-20001, 'Ҫ�˷ѵĿطѽ���¼������.;');
      when others then
        raise_application_error(-20001, '���������ڲ�����������.;');
    end;
    update account_limit
       set status        = 'WITHDRAWED',
           withdrawer    = hospital.login.get_workerid,
           withdraw_date = sysdate
     where residentid = t_resident_patient.residentid
       and seq = in_seq;
    select sum(fee)
      into v_control_limit
      from account_limit
     where residentid = t_resident_patient.residentid
       and status = 'FINISHED';
    update resident_patient
       set control_limit = v_control_limit
     where residentid = t_resident_patient.residentid;
    commit;
  end s_סԺ_�˱������ƽ��;
  -----------------------------------------------------------------------------------------------------
  procedure verify_valid_���֤��(in_id in varchar2) is
    v_str varchar2(8);
  begin
    if lengthb(in_id) <> 15
       and lengthb(in_id) <> 18
    then
      raise_application_error(-20001,
                              '�Ƿ������֤���( ' || in_id || ' ).;');
    end if;
  
    if lengthb(in_id) = 18
    then
      v_str := substrb(in_id, 7, 8);
    else
      v_str := '19' || substrb(in_id, 7, 6);
    end if;
    verify_valid_date(v_str, 'ʡ��֤�����е�������Ϣ');
  end verify_valid_���֤��;
  -----------------------------------------------------------------------------------------------------
  function get_birthday_from_���֤��(in_id in varchar2) return varchar2 is
    v_str varchar2(8);
  begin
    if lengthb(in_id) = 18
    then
      v_str := substrb(in_id, 7, 8);
    else
      v_str := '19' || substrb(in_id, 7, 6);
    end if;
    return v_str;
  end get_birthday_from_���֤��;
  -----------------------------------------------------------------------------------------------------
  procedure prv_get_age(in_birthday  in date
                       ,out_age      out varchar2
                       ,out_age_unit out varchar2
                       ,in_from_date date default null) is
    v_age       varchar2(10);
    v_age_unit  varchar2(10);
    v_from_date date;
    v_months    number;
  begin
    if in_from_date is null
    then
      v_from_date := sysdate;
    else
      v_from_date := in_from_date;
    end if;
    if trunc(in_from_date) - trunc(in_birthday) < 31
    then
      v_age      := trunc(in_from_date) - trunc(in_birthday);
      v_age_unit := '4';
    else
      v_months := months_between(v_from_date, in_birthday);
      if v_months < 12
      then
        v_age      := trunc(v_months);
        v_age_unit := '2';
      else
        v_age      := round(v_months / 12);
        v_age_unit := '1';
      end if;
    end if;
    out_age      := v_age;
    out_age_unit := v_age_unit;
  end prv_get_age;
  -----------------------------------------------------------------------------------------------------
  procedure prv_���´�������(in_patientid in varchar2) is
    v_age      varchar2(10);
    v_age_unit varchar2(10);
    v_birthday date;
  begin
    if nvl(get_system_option('�޸Ļ�����Ϣ_�Զ����´�������'), 'N') = 'N'
    then
      return;
    end if;
    select birthday into v_birthday from patient where id = in_patientid;
    for c in (select id, write_date
                from hospital.prescription
               where patientid = in_patientid)
    loop
      prv_get_age(v_birthday, v_age, v_age_unit, c.write_date);
      update prescription
         set age      = v_age,
             age_unit = v_age_unit
       where id = c.id
         and (nvl(age, 'x') <> v_age or nvl(age_unit, 'y') <> v_age_unit);
    end loop;
  
    for c in (select id, write_date
                from hospital.prescription_a01
               where patientid = in_patientid)
    loop
      prv_get_age(v_birthday, v_age, v_age_unit, c.write_date);
      update prescription_a01
         set age      = v_age,
             age_unit = v_age_unit
       where id = c.id
         and (nvl(age, 'x') <> v_age or nvl(age_unit, 'y') <> v_age_unit);
    end loop;
  end prv_���´�������;
  -----------------------------------------------------------------------------------------------------
  procedure get_age(in_birthday  in date
                   ,in_from_date date
                   ,out_age      out varchar2
                   ,out_age_unit out varchar2) is
    v_birthday  date;
    v_from_date date;
  begin
    v_birthday  := in_birthday;
    v_from_date := in_from_date;
    prv_get_age(v_birthday, out_age, out_age_unit, v_from_date);
  end get_age;
  -----------------------------------------------------------------------------------------------------
  function get_is_new_residentid_rule(in_residentid in varchar2)
    return varchar2 is
    v_result hospital.hosp_.id%type default null;
  begin
    if in_residentid is null
    then
      v_result := 'N';
      return v_result;
    end if;
    if instr(in_residentid, '.', 1, 1) = 0
    then
      v_result := 'N';
    else
      v_result := 'Y';
    end if;
    return v_result;
  end get_is_new_residentid_rule;
  -----------------------------------------------------------------------------------------------------
  function get_resident_hosp_id(in_residentid in varchar2) return varchar2 is
    v_hosp_id hospital.hosp_.id%type default null;
  begin
    if instr(in_residentid, '.', 1, 1) = 0
    then
      begin
        select b.hospid
          into v_hosp_id
          from hospital.resident_info a, hospital.all_worker_ b
         where a.residentid = in_residentid
           and a.process_reason = 'IN'
           and a.finish_flag = 'FINISHED'
           and a.process_operator = b.id;
      exception
        when no_data_found then
          v_hosp_id := hospital.login.get_hospid;
      end;
    elsif instr(in_residentid, '.', 1, 2) > 0
    then
      v_hosp_id := substrb(in_residentid, 1, instr(in_residentid, '.') - 1);
    end if;
    return v_hosp_id;
  end get_resident_hosp_id;
  -----------------------------------------------------------------------------------------------------
  function get_resident_id(in_residentid in varchar2) return varchar2 is
    v_resident_id hospital.resident_info_.residentid%type default null;
  begin
    if instr(in_residentid, '.', 1, 1) = 0
    then
      v_resident_id := in_residentid;
    elsif instr(in_residentid, '.', 1, 2) > 0
    then
      v_resident_id := substrb(in_residentid,
                               instr(in_residentid, '.', 1, 1) + 1,
                               instr(in_residentid, '.', 1, 2) - 1 -
                               instr(in_residentid, '.', 1, 1));
    end if;
    return v_resident_id;
  end get_resident_id;

  -----------------------------------------------------------------------------------------------------
  function get_resident_times(in_patientid in varchar2) return varchar2 is
    v_resident_time varchar2(10);
  begin
    begin
      select count(*) + 1
        into v_resident_time
        from hospital.resident_info_ a
       where a.patientid = in_patientid
         and process_reason = 'IN'
         and finish_flag = 'FINISHED'
       group by a.patientid;
    exception
      when no_data_found then
        v_resident_time := 1;
    end;
    return v_resident_time;
  end get_resident_times;
  -----------------------------------------------------------------------------------------------------
  function get_resident_visit_id(in_residentid in varchar2) return varchar2 is
    v_seq hospital.resident_info_.seq%type;
  begin
    if instr(in_residentid, '.', 1, 1) = 0
    then
      begin
        select seq
          into v_seq
          from hospital.resident_info_
         where residentid = in_residentid
           and process_reason = 'IN'
           and finish_flag = 'FINISHED';
      exception
        when no_data_found then
          v_seq := 0;
      end;
    elsif instr(in_residentid, '.', 1, 2) > 0
    then
      v_seq := substrb(in_residentid, instr(in_residentid, '.', 1, 2) + 1);
    end if;
    return v_seq;
  end get_resident_visit_id;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2009/01/17 - ���������д,
  procedure change_patient_nc(in_op_type           in varchar2
                             ,out_id               out varchar2
                             ,in_id                in varchar2
                             ,in_pinyin            in varchar2
                             ,in_name              in varchar2
                             ,in_attribute         in varchar2
                             ,in_gender            in varchar2
                             ,in_birthday          in varchar2
                             ,in_profession        in varchar2
                             ,in_country           in varchar2
                             ,in_identification    in varchar2
                             ,in_marry_status      in varchar2
                             ,in_birth_province    in varchar2
                             ,in_birth_county      in varchar2
                             ,in_race              in varchar2
                             ,in_blood_type        in varchar2
                             ,in_free_no           in varchar2
                             ,in_home_address      in varchar2
                             ,in_home_tele         in varchar2
                             ,in_home_zip          in varchar2
                             ,in_office_address    in varchar2
                             ,in_office_tele       in varchar2
                             ,in_office_zip        in varchar2
                             ,in_asso_name         in varchar2
                             ,in_asso_relation     in varchar2
                             ,in_asso_address      in varchar2
                             ,in_asso_tele         in varchar2
                             ,in_asso_zip          in varchar2
                             ,in_clinic_fee_rate   in varchar2
                             ,in_resident_fee_type in varchar2
                             ,in_resident_fee_rate in varchar2
                             ,in_remark            in varchar2
                             ,in_age               in varchar2
                             ,in_age_unit          in varchar2
                             ,in_education         in varchar2
                             ,in_regionid          in varchar2
                             ,in_religion          in varchar2
                             ,in_residentid        in varchar2) as
    t_patient   patient%rowtype;
    i           number;
    t_id        patient.id%type;
    v_birthday  date;
    v_age       resident_info.age%type;
    v_age_unit  resident_info.age_unit%type;
    v_in_date   date;
    v_attribute patient.attribute%type;
    v_free_no   patient.free_no%type;
  begin
    if nvl(in_op_type, ' ') not in ('I', 'U', 'D')
    then
      raise_application_error(-20001, '��Ч��������.;');
    end if;
    if in_op_type in ('I', 'U')
    then
      verify_length(in_name, 40, '����');
      verify_not_null(in_name, '����');
      verify_length(in_pinyin, 100, 'ƴ��');
      verify_not_null(in_pinyin, 'ƴ��');
      verify_length(in_attribute, 10, '����');
      verify_field_dict('PATIENT', 'ATTRIBUTE', in_attribute, '�������');
      if in_attribute in
         ('ASSURANCE', 'INHABITANT', 'PUBLIC', 'COMEDICARE')
      then
        verify_valid_free_no(in_free_no);
      elsif in_free_no is not null
      then
        raise_application_error(-20001,
                                '����ҽ�Ʊ��ղ��ˣ�ҽ�Ʊ��պ������Ϊ��.;');
      end if;
      verify_length(in_gender, 1, '�Ա�');
      verify_field_dict('PATIENT', 'GENDER', in_gender, '�Ա�');
    
      if in_identification is not null
      then
        verify_valid_���֤��(in_identification);
        if lengthb(in_identification) = 15
        then
          v_birthday := get_date_from_str('19' ||
                                          substrb(in_identification, 7, 6));
        else
          v_birthday := get_date_from_str(substrb(in_identification, 7, 8));
        end if;
      
        v_age      := age(in_birthday => v_birthday);
        v_age_unit := '1';
      
      else
        --���պϷ�����֤
        if in_birthday is not null
        then
          verify_valid_date(in_birthday, '����');
          v_birthday := get_date_from_str(in_birthday);
        else
          if in_age is not null
             and in_age_unit is not null
          then
            verify_valid_number(in_age, '����');
            verify_positive_number(in_age, '����');
            verify_field_dict('RESIDENT_INFO',
                              'AGE_UNIT',
                              in_age_unit,
                              '���䵥λ');
            begin
              select in_date
                into v_in_date
                from resident_info
               where patientid = in_id
                 and residentid = in_residentid
                 and rownum = 1;
              if in_age_unit = '1'
              then
                select add_months(v_in_date, -12 * in_age)
                  into v_birthday
                  from dual;
              else
                select v_in_date - decode(in_age_unit,
                                          '2',
                                          in_age * 30,
                                          '3',
                                          in_age * 7,
                                          '4',
                                          in_age * 1)
                  into v_birthday
                  from dual;
              end if;
            exception
              when no_data_found then
                if in_age_unit = '1'
                then
                  select add_months(sysdate, -12 * in_age)
                    into v_birthday
                    from dual;
                else
                  select sysdate - decode(in_age_unit,
                                          '2',
                                          in_age * 30,
                                          '3',
                                          in_age * 7,
                                          '4',
                                          in_age * 1)
                    into v_birthday
                    from dual;
                end if;
            end;
          end if;
        end if;
      end if;
    
      if v_birthday is null
      then
        raise_application_error(-20001, '����������.;');
      end if;
      if v_birthday > trunc(sysdate) + 1
      then
        raise_application_error(-20001, '���ղ��ܴ��ڽ���.;');
      end if;
      if age(v_birthday) > 150
      then
        raise_application_error(-20001, '��������������.;');
      end if;
    
      verify_length(in_profession, 30, 'ְҵ');
      if nvl(get_system_option('�޸Ļ�����Ϣ_����¼��ְҵ'), 'N') = 'Y'
      then
        verify_not_null(in_profession, 'ְҵ');
      end if;
      verify_length(in_identification, 20, '���֤����');
    
      verify_length(in_marry_status, 2, '����״��');
      verify_field_dict('PATIENT',
                        'MARRY_STATUS',
                        in_marry_status,
                        '����״��');
      verify_length(in_birth_province, 40, '����ʡ��');
      verify_length(in_birth_county, 40, '��������');
      verify_length(in_race, 10, '����');
      verify_length(in_blood_type, 2, 'Ѫ��');
    
      if hospital.get_system_option('������Ϣ_��ַ����Ϊ��') = 'Y'
      then
        verify_not_null(in_home_address, '���ߵ�ַ');
      end if;
    
      if hospital.get_system_option('������Ϣ_�绰����Ϊ��') = 'Y'
      then
        verify_not_null(in_home_tele, '�绰');
      end if;
    
      verify_length(in_home_address, 200, '��ͥ��ַ');
      verify_length(in_home_tele, 20, '��ͥ�绰');
      verify_length(in_home_zip, 6, '��ͥ�ʱ�');
      verify_length(in_office_address, 200, '������ַ');
      verify_length(in_office_tele, 20, '�����绰');
      verify_length(in_office_zip, 6, '�����ʱ�');
      verify_length(in_asso_name, 80, '��ϵ��');
      verify_length(in_asso_relation, 10, '�벡�˹�ϵ');
      verify_length(in_asso_address, 200, '��ϵ�˵�ַ');
      verify_length(in_asso_tele, 20, '��ϵ�˵绰');
      verify_length(in_asso_zip, 6, '��ϵ���ʱ�');
      verify_valid_number(in_clinic_fee_rate, '�����շ���');
      verify_length(in_resident_fee_type, 2, 'סԺ�շ�����');
      verify_valid_number(in_resident_fee_rate, 'סԺ�շ���');
      verify_length(in_education, 30, '�����̶�');
      verify_length(in_remark, 30, '��ע');
      verify_length(in_religion, 40, '�ڽ�');
    
      if in_regionid is not null
         or nvl(get_system_option('����¼�뻼����������'), 'N') = 'Y'
      then
        verify_valid_region(in_regionid);
      end if;
    end if;
    if in_op_type = 'I'
    then
      if in_free_no is not null
      then
        begin
          select 2
            into i
            from patient
           where free_no is not null
             and free_no = in_free_no
             and rownum = 1;
          raise_application_error(-20001,
                                  'ҽ�Ʊ��պ�Ϊ' || in_free_no || '�Ĳ����Ѿ��Ǽ�.;');
        exception
          when no_data_found then
            null;
        end;
      end if;
      --�ж��Ƿ��Ѿ����벡�˱��(���������в��˱�����Ѿ����ɵ�)
      if in_id is not null
      then
        t_id := in_id;
      else
        t_id := get_next_patientid;
      end if;
    
      begin
        select * into t_patient from patient where id = t_id;
        raise_application_error(-20001, '�ñ����Ѿ�����,���ܲ���.;');
      exception
        when no_data_found then
          insert into patient
            (id,
             attribute,
             pinyin,
             name,
             gender,
             birthday,
             profession,
             country,
             identification,
             marry_status,
             birth_province,
             birth_county,
             race,
             blood_type,
             free_no,
             home_address,
             home_tele,
             home_zip,
             office_address,
             office_tele,
             office_zip,
             asso_name,
             asso_relation,
             asso_address,
             asso_tele,
             asso_zip,
             clinic_fee_rate,
             resident_fee_type,
             resident_fee_rate,
             operator,
             update_date,
             remark,
             education,
             regionid,
             religion)
          values
            (t_id,
             ltrim(rtrim(in_attribute)),
             ltrim(rtrim(upper(in_pinyin))),
             ltrim(rtrim(in_name)),
             ltrim(rtrim(in_gender)),
             v_birthday,
             ltrim(rtrim(in_profession)),
             ltrim(rtrim(in_country)),
             ltrim(rtrim(in_identification)),
             ltrim(rtrim(in_marry_status)),
             ltrim(rtrim(in_birth_province)),
             ltrim(rtrim(in_birth_county)),
             ltrim(rtrim(in_race)),
             trim(in_blood_type),
             ltrim(rtrim(in_free_no)),
             ltrim(rtrim(replace(in_home_address, '?'))),
             ltrim(rtrim(in_home_tele)),
             ltrim(rtrim(in_home_zip)),
             ltrim(rtrim(in_office_address)),
             ltrim(rtrim(in_office_tele)),
             ltrim(rtrim(in_office_zip)),
             ltrim(rtrim(in_asso_name)),
             ltrim(rtrim(in_asso_relation)),
             ltrim(rtrim(in_asso_address)),
             ltrim(rtrim(in_asso_tele)),
             ltrim(rtrim(in_asso_zip)),
             to_number(in_clinic_fee_rate),
             ltrim(rtrim(in_resident_fee_type)),
             to_number(in_resident_fee_rate),
             hospital.login.get_workerid,
             sysdate,
             in_remark,
             in_education,
             in_regionid,
             in_religion);
          insert into current_patient
            (id,
             attribute,
             pinyin,
             name,
             gender,
             birthday,
             profession,
             country,
             identification,
             marry_status,
             birth_province,
             birth_county,
             race,
             blood_type,
             free_no,
             home_address,
             home_tele,
             home_zip,
             office_address,
             office_tele,
             office_zip,
             asso_name,
             asso_relation,
             asso_address,
             asso_tele,
             asso_zip,
             clinic_fee_rate,
             resident_fee_type,
             resident_fee_rate,
             operator,
             update_date,
             remark,
             education,
             regionid,
             religion)
          values
            (t_id,
             ltrim(rtrim(in_attribute)),
             ltrim(rtrim(upper(in_pinyin))),
             ltrim(rtrim(in_name)),
             ltrim(rtrim(in_gender)),
             v_birthday,
             ltrim(rtrim(in_profession)),
             ltrim(rtrim(in_country)),
             ltrim(rtrim(in_identification)),
             ltrim(rtrim(in_marry_status)),
             ltrim(rtrim(in_birth_province)),
             ltrim(rtrim(in_birth_county)),
             ltrim(rtrim(in_race)),
             trim(in_blood_type),
             ltrim(rtrim(in_free_no)),
             ltrim(rtrim(in_home_address)),
             ltrim(rtrim(in_home_tele)),
             ltrim(rtrim(in_home_zip)),
             ltrim(rtrim(in_office_address)),
             ltrim(rtrim(in_office_tele)),
             ltrim(rtrim(in_office_zip)),
             ltrim(rtrim(in_asso_name)),
             ltrim(rtrim(in_asso_relation)),
             ltrim(rtrim(in_asso_address)),
             ltrim(rtrim(in_asso_tele)),
             ltrim(rtrim(in_asso_zip)),
             to_number(in_clinic_fee_rate),
             ltrim(rtrim(in_resident_fee_type)),
             to_number(in_resident_fee_rate),
             hospital.login.get_workerid,
             sysdate,
             in_remark,
             in_education,
             in_regionid,
             in_religion);
          out_id := t_id;
        when too_many_rows then
          raise_application_error(-20001, '�ж�����ͬ����ļ�¼.;');
      end;
    else
      begin
        select *
          into t_patient
          from patient
         where id = in_id
           for update of id, name nowait;
      exception
        when no_data_found then
          raise_application_error(-20001,
                                  '���˱��(' || in_id || ')������.;');
        when too_many_rows then
          raise_application_error(-20001, '�ж�����ͬ����ļ�¼.;');
      end;
      if in_op_type = 'D'
      then
        delete from patient where id = in_id;
        insert into hospital.deleted_records_
          (schema_name, table_name, id, delete_date)
        values
          ('HOSPITAL', 'PATIENT', in_id, sysdate);
      else
        if nvl(get_system_option('ҽ������ҽ�����ظ������޸�'), 'Y') = 'N'
        then
          begin
            select 2
              into i
              from patient
             where id <> in_id
               and free_no is not null
               and free_no = in_free_no
               and rownum = 1;
            raise_application_error(-20001,
                                    'ҽ�Ʊ��պ�' || in_free_no ||
                                    '���������˵ĺ���,�����޸�Ϊ�²��˵ĺ���.;');
          exception
            when no_data_found then
              null;
          end;
        else
          null;
        end if;
      
        if nvl(get_system_option('������Ϣ_ʹ��ҽ���ӿ�ǩԼҽ����'), 'Y') = 'N'
        then
          v_attribute := nvl(trim(in_attribute), t_patient.attribute);
          v_free_no   := trim(in_free_no);
        else
          v_attribute := t_patient.attribute;
          v_free_no   := t_patient.free_no;
        end if;
      
        --סԺ������Ϣ�޸���Ȩ����
        if t_patient.name <> in_name
        then
          prv_ack_���������޸�(in_id, t_patient.name, in_name);
        end if;
      
        update patient
           set attribute         = v_attribute,
               pinyin            = nvl(trim(in_pinyin), pinyin),
               name              = nvl(trim(in_name), name),
               gender            = nvl(trim(in_gender), gender),
               birthday          = nvl(v_birthday, birthday),
               profession        = nvl(trim(in_profession), profession),
               country           = nvl(trim(in_country), country),
               identification    = trim(in_identification),
               marry_status      = nvl(trim(in_marry_status), marry_status),
               birth_province    = nvl(trim(in_birth_province),
                                       birth_province),
               birth_county      = nvl(trim(in_birth_county), birth_county),
               race              = nvl(trim(in_race), race),
               blood_type        = nvl(trim(in_blood_type), blood_type),
               free_no           = v_free_no,
               home_address      = nvl(trim(in_home_address), home_address),
               home_tele         = trim(in_home_tele),
               home_zip          = trim(in_home_zip),
               office_address    = trim(in_office_address),
               office_tele       = trim(in_office_tele),
               office_zip        = trim(in_office_zip),
               asso_name         = trim(in_asso_name),
               asso_relation     = trim(in_asso_relation),
               asso_address      = trim(in_asso_address),
               asso_tele         = trim(in_asso_tele),
               asso_zip          = trim(in_asso_zip),
               clinic_fee_rate   = nvl(to_number(in_clinic_fee_rate),
                                       clinic_fee_rate),
               resident_fee_type = ltrim(rtrim(nvl(in_resident_fee_type,
                                                   resident_fee_type))),
               resident_fee_rate = ltrim(rtrim(nvl(to_number(in_resident_fee_rate),
                                                   resident_fee_rate))),
               operator          = hospital.login.get_workerid,
               update_date       = sysdate,
               education         = nvl(in_education, education),
               regionid          = nvl(in_regionid, regionid),
               remark            = to_char(sysdate, 'yyyy/mm/dd hh24:mi:ss') --in_remark
         where id = in_id;
        --
        prv_���´�������(in_id);
        --
        begin
          select in_date
            into v_in_date
            from resident_info
           where patientid = in_id
             and residentid = in_residentid
             and process_reason in ('IN', 'NEW')
             and rownum = 1;
          prv_get_age(v_birthday, v_age, v_age_unit, v_in_date);
          if in_age_unit = '5'
             and v_age = 0
             and v_age_unit = '4'
             and in_age is not null
          then
            --���������ǳ���Сʱ�����Ҽ����������0�죬�����û������Сʱ��¼���䡣
            v_age_unit := '5';
            v_age      := in_age;
          end if;
          update case_page1
             set name           = nvl(trim(in_name), name),
                 gender         = nvl(trim(in_gender), gender),
                 birthday       = nvl(v_birthday, birthday),
                 profession     = nvl(trim(in_profession), profession),
                 country        = nvl(trim(in_country), country),
                 identification = nvl(trim(in_identification),
                                      identification),
                 marry_status   = nvl(trim(in_marry_status), marry_status),
                 birth_province = nvl(trim(in_birth_province),
                                      birth_province),
                 birth_county   = nvl(trim(in_birth_county), birth_county),
                 race           = nvl(trim(in_race), race),
                 blood_type     = nvl(trim(in_blood_type), blood_type),
                 home_address   = nvl(trim(in_home_address), home_address),
                 home_tele      = nvl(trim(in_home_tele), home_tele),
                 home_zip       = nvl(trim(in_home_zip), home_zip),
                 office_address = nvl(trim(in_office_address),
                                      office_address),
                 office_tele    = nvl(trim(in_office_tele), office_tele),
                 office_zip     = nvl(trim(in_office_zip), office_zip),
                 asso_name      = nvl(trim(in_asso_name), asso_name),
                 asso_relation  = nvl(trim(in_asso_relation), asso_relation),
                 asso_address   = nvl(trim(in_asso_address), asso_address),
                 asso_tele      = nvl(trim(in_asso_tele), asso_tele),
                 age            = v_age,
                 age_unit       = v_age_unit,
                 reason         = '�޸Ĳ�����Ϣ',
                 regionid       = nvl(in_regionid, regionid)
           where residentid = in_residentid;
          update resident_info
             set age         = v_age,
                 age_unit    = v_age_unit,
                 update_date = sysdate
           where residentid = in_residentid;
        exception
          when no_data_found then
            null;
        end;
      end if;
      out_id := in_id;
    end if;
  
    if in_op_type = 'U'
    then
      begin
        select 2 into i from current_patient where id = in_id;
        s_copy_patient(in_id);
      exception
        when others then
          null;
      end;
    end if;
  
  end change_patient_nc;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2009/01/17 - ���������д,
  --
  -- 2006/11/08 -  �����޸Ĳ��������������Ϣ
  -- 2006/03/16  - ��������Ĺ淶Ϊ:1 ������     ��������   1998/12/21 
  --                                2 ����       ��������   35    ��ʾ35��
  --                                3 ����/12    �����·�   7/12  ��ʾ�߸���
  --                                  ����M      �����·�   7M    ��ʾ�߸���
  --                                  ����Y      �����·�   7Y    ��ʾ�߸���
  --                                4 ����/30    ��������   8/30  ��ʾ����
  --                                4 ����T      ��������   8T    ��ʾ����
  --                                4 ����D      ��������   8D    ��ʾ����
  --                               5 ����M����D ��������   7M8D  ��ʾ�߸��°���
  --                                5 ����Y����T ��������   7Y8T  ��ʾ�߸��°���
  --
  --
  -- 2005/06/23  - ���ڳֿ��Ĳ��ˣ���������޸Ĳ�������������з�Ʊ���ڣ���ֹ�޸Ĳ�����Ϣ��
  -- 2001/06/06  - ���� change_field_knowledge ���� in_type 
  -- 2000/12/12  - ���޸�ʱ�������ǰ���˱��д���,���޸�
  --
  procedure change_patient(in_op_type           in varchar2
                          ,out_id               out varchar2
                          ,in_id                in varchar2
                          ,in_pinyin            in varchar2
                          ,in_name              in varchar2
                          ,in_attribute         in varchar2
                          ,in_gender            in varchar2
                          ,in_birthday          in varchar2
                          ,in_profession        in varchar2
                          ,in_country           in varchar2
                          ,in_identification    in varchar2
                          ,in_marry_status      in varchar2
                          ,in_birth_province    in varchar2
                          ,in_birth_county      in varchar2
                          ,in_race              in varchar2
                          ,in_blood_type        in varchar2
                          ,in_free_no           in varchar2
                          ,in_home_address      in varchar2
                          ,in_home_tele         in varchar2
                          ,in_home_zip          in varchar2
                          ,in_office_address    in varchar2
                          ,in_office_tele       in varchar2
                          ,in_office_zip        in varchar2
                          ,in_asso_name         in varchar2
                          ,in_asso_relation     in varchar2
                          ,in_asso_address      in varchar2
                          ,in_asso_tele         in varchar2
                          ,in_asso_zip          in varchar2
                          ,in_clinic_fee_rate   in varchar2
                          ,in_resident_fee_type in varchar2
                          ,in_resident_fee_rate in varchar2
                          ,in_remark            in varchar2
                          ,in_age               in varchar2 default null
                          ,in_age_unit          in varchar2 default null
                          ,in_education         in varchar2 default null
                          ,in_regionid          in varchar2 default null
                          ,in_religion          in varchar2 default null
                          ,in_residentid        in varchar2 default null) as
  begin
    change_patient_nc(in_op_type,
                      out_id,
                      in_id,
                      in_pinyin,
                      in_name,
                      in_attribute,
                      in_gender,
                      in_birthday,
                      in_profession,
                      in_country,
                      in_identification,
                      in_marry_status,
                      in_birth_province,
                      in_birth_county,
                      in_race,
                      in_blood_type,
                      in_free_no,
                      in_home_address,
                      in_home_tele,
                      in_home_zip,
                      in_office_address,
                      in_office_tele,
                      in_office_zip,
                      in_asso_name,
                      in_asso_relation,
                      in_asso_address,
                      in_asso_tele,
                      in_asso_zip,
                      in_clinic_fee_rate,
                      in_resident_fee_type,
                      in_resident_fee_rate,
                      in_remark,
                      in_age,
                      in_age_unit,
                      in_education,
                      in_regionid,
                      in_religion,
                      in_residentid);
    commit;
  end;
  -----------------------------------------------------------------------------------------
  --
  --  2009/01/17 - TIGER  - �����
  --  2001/12/19 - TIGER  - ת��ƴ��Ϊ��д
  --
  procedure change_field_knowledge_nc(in_op_type     in varchar2
                                     ,in_table_name  in varchar2
                                     ,in_field_name  in varchar2
                                     ,in_field_value in varchar2
                                     ,in_pinyin      in varchar2
                                     ,in_frequence   in varchar2
                                     ,in_type        in varchar2
                                     ,in_attribute   in varchar2
                                     ,in_status      in varchar2) as
    t_field_knowledge field_knowledge%rowtype;
  begin
    if ltrim(rtrim(in_field_value)) is null
    then
      return;
    end if;
    if nvl(in_op_type, ' ') not in ('I', 'U', 'D')
    then
      raise_application_error(-20001,
                              '�Ƿ��Ĳ�������(' || in_op_type || ').;');
    end if;
    if in_op_type in ('I', 'U')
    then
      verify_length(in_table_name, 30, '����');
      verify_length(in_field_name, 30, '�ֶ���');
      verify_length(in_field_value, 255, '�ֶ�ֵ');
      verify_valid_number(in_frequence, 'Ƶ��');
    end if;
    if in_op_type = 'I'
    then
      begin
        select *
          into t_field_knowledge
          from field_knowledge
         where table_name = upper(in_table_name)
           and field_name = upper(in_field_name)
           and field_value = ltrim(rtrim(in_field_value))
           and rownum = 1;
        return;
      exception
        when too_many_rows then
          raise_application_error(-20005, '����: �ж����ͬ��¼.;');
        when no_data_found then
          insert into field_knowledge
            (table_name,
             field_name,
             field_value,
             pinyin,
             frequence,
             type,
             attribute,
             status)
          values
            (upper(in_table_name),
             upper(in_field_name),
             ltrim(rtrim(in_field_value)),
             upper(ltrim(rtrim(substrb(in_pinyin, 1, 30)))),
             1,
             in_type,
             in_attribute,
             in_status);
      end;
    else
      return;
    end if;
  end change_field_knowledge_nc;
  ---------------------------------------------------------
  procedure change_field_knowledge(in_op_type     in varchar2
                                  ,in_table_name  in varchar2
                                  ,in_field_name  in varchar2
                                  ,in_field_value in varchar2
                                  ,in_pinyin      in varchar2
                                  ,in_frequence   in varchar2
                                  ,in_type        in varchar2
                                  ,in_attribute   in varchar2
                                  ,in_status      in varchar2) is
  begin
    change_field_knowledge_nc(in_op_type,
                              in_table_name,
                              in_field_name,
                              in_field_value,
                              in_pinyin,
                              in_frequence,
                              in_type,
                              in_attribute,
                              in_status);
    commit;
  end change_field_knowledge;
  ---------------------------------------------------------
  procedure prv_ack_���������޸�(in_id       in varchar2
                          ,in_old_name in varchar2
                          ,in_new_name in varchar2) is
    i        number;
    sysopt   varchar2(100);
    v_date   date;
    v_status hospital.auth_modify_patient_name_.status%type;
  begin
    if nvl(get_system_option('���������޸��������￨��' || in_id), 'N') = 'Y'
    then
      return;
    end if;
    --�ж��Ƿ�����Ȩ��Ϣ������У�����  
    begin
      select status
        into v_status
        from hospital.auth_modify_patient_name
       where patientid = in_id
         and old_name = in_old_name
         and new_name = in_new_name
         and rownum = 1
       order by update_date desc;
      if v_status = '��ʹ��'
      then
        update hospital.auth_modify_patient_name
           set status = '�����'
         where patientid = in_id
           and old_name = in_old_name
           and new_name = in_new_name;
        return;
      else
        raise_application_error(-20001,
                                '���Ϊ( ' || in_id ||
                                ' )�Ĳ����޸�������Ȩ�Ѿ�ʹ��,�����Ҫ�ٴ��޸�,��������Ȩ!.;');
      end if;
    exception
      when no_data_found then
        null;
    end;
  
    --�жϲ������(���ﲡ�ˡ�סԺ����)  
    begin
      select 2
        into i
        from resident_info
       where patientid = in_id
         and rownum = 1;
      sysopt := nvl(get_system_option('סԺ���������޸�����ʱ��'), 48);
      select min(in_date)
        into v_date
        from resident_info
       where patientid = in_id;
      if nvl(v_date, sysdate) > sysdate - to_number(sysopt) / 24
      then
        null;
      else
        raise_application_error(-20001,
                                '������Ϊ( ' || in_id || ' )�Ĳ�����Ժ�ǼǾ�����( ' ||
                                sysopt || ' )Сʱ�������޸Ĳ��������������Ҫ�޸�����ϵ������Ա!.;');
      end if;
      --סԺ����
    exception
      when no_data_found then
        --���ﲡ��
        select min(fee_date)
          into v_date
          from (select min(fee_date) fee_date
                  from charge_bill
                 where patientid = in_id
                union
                select min(fee_date) fee_date
                  from charge_bill_a01
                 where patientid = in_id);
        sysopt := nvl(get_system_option('���ﲡ�������޸�����ʱ��'), 48);
        if nvl(v_date, sysdate) > sysdate - to_number(sysopt) / 24
        then
          null;
        else
          raise_application_error(-20001,
                                  '������Ϊ( ' || in_id || ' )�Ĳ��˵�һ�ν����Ѿ�����( ' ||
                                  sysopt ||
                                  ' )Сʱ�������޸Ĳ��������������Ҫ�޸�����ϵ������Ա!.;');
        end if;
    end;
  end prv_ack_���������޸�;
  ---------------------------------------------------------
  procedure s_�޸Ĳ���������Ȩ(in_patientid in varchar2
                      ,in_old_name  in varchar2
                      ,in_new_name  in varchar2) is
  
    v_seq number;
  begin
    verify_patient(in_patientid);
    verify_length(in_old_name, 40, '����');
    verify_not_null(in_new_name, '��Ȩ�޸�����');
    verify_length(in_new_name, 40, '��Ȩ�޸�����');
    begin
      select seq
        into v_seq
        from hospital.auth_modify_patient_name_
       where patientid = in_patientid
         and status = '��ʹ��';
      raise_application_error(-20001,
                              '���˱��Ϊ( ' || in_patientid || ' )�Ĳ��˴������Ϊ( ' ||
                              v_seq || ' )����Ȩ,��ʹ�û���ɾ���Ѿ����ڵ���Ȩ!.;');
    exception
      when no_data_found then
        null;
    end;
  
    select nvl(max(seq), 0) + 1
      into v_seq
      from hospital.auth_modify_patient_name
     where patientid = in_patientid;
  
    insert into hospital.auth_modify_patient_name
      (patientid, seq, old_name, new_name, status, operator, update_date)
    values
      (in_patientid,
       v_seq,
       in_old_name,
       in_new_name,
       '��ʹ��',
       hospital.login.get_workerid,
       sysdate);
    commit;
  end s_�޸Ĳ���������Ȩ;
  ---------------------------------------------------------
  procedure s_�޸Ĳ���������Ȩ_ȡ��(in_patientid in varchar2
                         ,in_seq       in varchar2) is
  
    v_status hospital.auth_modify_patient_name_.status%type;
  begin
    verify_patient(in_patientid);
    begin
      select status
        into v_status
        from hospital.auth_modify_patient_name
       where patientid = in_patientid
         and seq = in_seq;
      if v_status = '�����'
      then
        raise_application_error(-20001,
                                '���˱��Ϊ' || in_patientid || '���Ϊ' || in_seq ||
                                '����Ȩ��Ϣ�Ѿ���ʹ��,����ɾ��!');
      end if;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                'δ�ҵ����˱��Ϊ' || in_patientid || '���Ϊ' ||
                                in_seq || '����Ȩ��Ϣ');
    end;
    delete from hospital.auth_modify_patient_name
     where patientid = in_patientid
       and seq = in_seq;
    commit;
  end s_�޸Ĳ���������Ȩ_ȡ��;
  ---------------------------------------------------------
  --���ﲡ����־�Ǽ�
  --2011/05/10 
  --horse 
  procedure change_clinic_log_register(in_op_type              in varchar2
                                      ,in_patientid            in varchar2
                                      ,in_fertility            in varchar2
                                      ,in_onset_date           in date
                                      ,in_onset_address        in varchar2
                                      ,in_diagnose_status      in varchar2
                                      ,in_diagnose1            in varchar2
                                      ,in_diagnose1_icd10      in varchar2
                                      ,in_diagnose2            in varchar2
                                      ,in_diagnose2_icd10      in varchar2
                                      ,in_diagnose3            in varchar2
                                      ,in_diagnose3_icd10      in varchar2
                                      ,in_other_diagnose       in varchar2
                                      ,in_other_diagnose_icd10 in varchar2
                                      ,in_diagnostic_basis     in varchar2
                                      ,in_diagnose_result      in varchar2
                                      ,in_remark               in varchar2
                                      ,in_id                   in varchar2 default null
                                      ,in_temperature_flag     in varchar2 default null
                                      ,in_Ѫѹ��ѹֵ           in varchar2 default null
                                      ,in_Ѫѹ��ѹֵ           in varchar2 default null
                                      ,in_Ѫѹ��λ             in varchar2 default null
                                      ,in_Ѫ��ֵ               in varchar2 default null
                                      ,in_Ѫ�ǵ�λ             in varchar2 default null
                                      ,in_revise_reason        in varchar2 default null) is
    v_id       clinic_log_register.id%type;
    i          number;
    v_birthday date;
    v_days     number;
    v_date     date;
  begin
    if nvl(in_op_type, ' ') not in ('I', 'D', 'TITLE', 'REVISE')
    then
      raise_application_error(-20001,
                              '��Ч��������.I����,Dɾ��,TITLE�޸ķ������Ϣ.;');
    end if;
    verify_patient(in_patientid);
  
    if in_temperature_flag is not null
    then
      verify_field_dict('CLINIC_LOG_REGISTER',
                        'TEMPERATURE_FLAG',
                        in_temperature_flag,
                        '���±�־');
    end if;
  
    if nvl(get_system_option('������־_35�꼰����¼��Ѫѹ'), 'N') = 'Y'
    then
      select birthday into v_birthday from patient where id = in_patientid;
      if v_birthday < sysdate - 34 * 365
      then
        verify_not_null(in_Ѫѹ��ѹֵ, 'Ѫѹ��ѹֵ');
        verify_not_null(in_Ѫѹ��ѹֵ, 'Ѫѹ��ѹֵ');
      end if;
    end if;
  
    if in_Ѫѹ��ѹֵ is not null
    then
      verify_valid_number(in_Ѫѹ��ѹֵ, 'Ѫѹ��ѹֵ');
    end if;
  
    if in_Ѫѹ��ѹֵ is not null
    then
      verify_valid_number(in_Ѫѹ��ѹֵ, 'Ѫѹ��ѹֵ');
    end if;
    if in_Ѫѹ��λ is not null
    then
      verify_field_dict('CLINIC_LOG_REGISTER',
                        'Ѫѹ��λ',
                        in_Ѫѹ��λ,
                        'Ѫѹ��λ');
    end if;
  
    if in_Ѫ��ֵ is not null
    then
      verify_valid_number(in_Ѫ��ֵ, 'Ѫ��ֵ');
    end if;
    if in_Ѫ�ǵ�λ is not null
    then
      verify_field_dict('CLINIC_LOG_REGISTER',
                        'Ѫ�ǵ�λ',
                        in_Ѫ�ǵ�λ,
                        'Ѫ�ǵ�λ');
    end if;
    if in_op_type = 'D'
    then
      v_days := to_number(nvl(get_system_option('������־_����ɾ����־�������'),
                              '0'));
      begin
        select update_date
          into v_date
          from clinic_log_register
         where id = in_id
           for update nowait;
        if v_date >= trunc(sysdate) - v_days
        then
          delete from clinic_log_register where id = in_id;
        else
          raise_application_error(-20001,
                                  '����ɾ��(' || v_days || ')����ǰ��������־��Ϣ.;');
        end if;
      exception
        when no_data_found then
          raise_application_error(-20001,
                                  '�Ҳ������Ϊ(' || in_id || ')��������־��¼.;');
      end;
    elsif in_op_type = 'I'
    then
      begin
        select 2
          into i
          from hospital.disease
         where icd_9 = in_diagnose1_icd10
           and rownum = 1;
      exception
        when no_data_found then
          raise_application_error(-20001, '��׼�ĳ������һ���;');
      end;
      begin
        --clinic_log_registerû�����ݲ��� �������޸�
        select id
          into v_id
          from clinic_log_register
         where patientid = in_patientid
           and workerid = hospital.login.get_workerid
           and update_date > trunc(sysdate)
           and rownum = 1;
        update clinic_log_register
           set onset_date           = in_onset_date,
               onset_address        = in_onset_address,
               fertility            = in_fertility,
               diagnose_status      = in_diagnose_status,
               diagnose1            = in_diagnose1,
               diagnose1_icd10      = in_diagnose1_icd10,
               diagnose2            = in_diagnose2,
               diagnose2_icd10      = in_diagnose2_icd10,
               diagnose3            = in_diagnose3,
               diagnose3_icd10      = in_diagnose3_icd10,
               other_diagnose       = in_other_diagnose,
               other_diagnose_icd10 = in_other_diagnose_icd10,
               diagnostic_basis     = in_diagnostic_basis,
               diagnose_result      = in_diagnose_result,
               operator             = hospital.login.get_workerid,
               update_date          = sysdate,
               remark               = in_remark,
               temperature_flag     = in_temperature_flag,
               Ѫѹ��ѹֵ           = in_Ѫѹ��ѹֵ,
               Ѫѹ��ѹֵ           = in_Ѫѹ��ѹֵ,
               Ѫѹ��λ             = in_Ѫѹ��λ,
               Ѫ��ֵ               = in_Ѫ��ֵ,
               Ѫ�ǵ�λ             = in_Ѫ�ǵ�λ
         where id = v_id;
      exception
        when no_data_found then
          select to_char(sysdate, 'YYYYMMDD') ||
                 lpad(seq_clinic_log_registerid.nextval, 4, '0')
            into v_id
            from dual;
          insert into clinic_log_register_
            (id,
             patientid,
             registerid,
             fertility,
             onset_date,
             onset_address,
             diagnose_status,
             diagnose1,
             diagnose1_icd10,
             diagnose2,
             diagnose2_icd10,
             diagnose3,
             diagnose3_icd10,
             other_diagnose,
             other_diagnose_icd10,
             diagnostic_basis,
             diagnose_result,
             workerid,
             register_date,
             operator,
             update_date,
             remark,
             temperature_flag,
             Ѫѹ��ѹֵ,
             Ѫѹ��ѹֵ,
             Ѫѹ��λ,
             Ѫ��ֵ,
             Ѫ�ǵ�λ)
          values
            (v_id,
             in_patientid,
             null,
             in_fertility,
             in_onset_date,
             in_onset_address,
             in_diagnose_status,
             in_diagnose1,
             in_diagnose1_icd10,
             in_diagnose2,
             in_diagnose2_icd10,
             in_diagnose3,
             in_diagnose3_icd10,
             in_other_diagnose,
             in_other_diagnose_icd10,
             in_diagnostic_basis,
             in_diagnose_result,
             hospital.login.get_workerid,
             sysdate,
             hospital.login.get_workerid,
             sysdate,
             in_remark,
             in_temperature_flag,
             in_Ѫѹ��ѹֵ,
             in_Ѫѹ��ѹֵ,
             in_Ѫѹ��λ,
             in_Ѫ��ֵ,
             in_Ѫ�ǵ�λ);
      end;
      if in_fertility is not null
      then
        update patient
           set fertility = in_fertility
         where id = in_patientid;
        update current_patient
           set fertility = in_fertility
         where id = in_patientid;
      end if;
    else
      if in_op_type = 'TITLE'
      then
        --�޸������Ϣ:ֻ���޸ĵ������Ϣ,���޸��������
        begin
          --clinic_log_registerû�����ݲ��� �������޸�
          select id
            into v_id
            from clinic_log_register
           where patientid = in_patientid
             and workerid = hospital.login.get_workerid
             and update_date > trunc(sysdate)
             and rownum = 1;
          update clinic_log_register
             set onset_date       = in_onset_date,
                 onset_address    = in_onset_address,
                 fertility        = in_fertility,
                 diagnose_status  = in_diagnose_status,
                 diagnostic_basis = in_diagnostic_basis,
                 diagnose_result  = in_diagnose_result,
                 operator         = hospital.login.get_workerid,
                 update_date      = sysdate,
                 remark           = in_remark,
                 temperature_flag = in_temperature_flag,
                 Ѫѹ��ѹֵ       = in_Ѫѹ��ѹֵ,
                 Ѫѹ��ѹֵ       = in_Ѫѹ��ѹֵ,
                 Ѫѹ��λ         = in_Ѫѹ��λ,
                 Ѫ��ֵ           = in_Ѫ��ֵ,
                 Ѫ�ǵ�λ         = in_Ѫ�ǵ�λ
           where id = v_id;
        exception
          when no_data_found then
            select to_char(sysdate, 'YYYYMMDD') ||
                   lpad(seq_clinic_log_registerid.nextval, 4, '0')
              into v_id
              from dual;
            insert into clinic_log_register_
              (id,
               patientid,
               registerid,
               fertility,
               onset_date,
               onset_address,
               diagnose_status,
               temperature_flag,
               workerid,
               register_date,
               operator,
               update_date,
               Ѫѹ��ѹֵ,
               Ѫѹ��ѹֵ,
               Ѫѹ��λ,
               Ѫ��ֵ,
               Ѫ�ǵ�λ)
            values
              (v_id,
               in_patientid,
               null,
               in_fertility,
               in_onset_date,
               in_onset_address,
               in_diagnose_status,
               in_temperature_flag,
               hospital.login.get_workerid,
               sysdate,
               hospital.login.get_workerid,
               sysdate,
               in_Ѫѹ��ѹֵ,
               in_Ѫѹ��ѹֵ,
               in_Ѫѹ��λ,
               in_Ѫ��ֵ,
               in_Ѫ�ǵ�λ);
        end;
        if in_fertility is not null
        then
          update patient
             set fertility = in_fertility
           where id = in_patientid;
          update current_patient
             set fertility = in_fertility
           where id = in_patientid;
        end if;
      else
        verify_not_null(in_revise_reason, '�޶�ԭ��');
        verify_length(in_revise_reason, 200, '�޶�ԭ��');
        begin
          --clinic_log_registerû�����ݲ��� �������޸�
          select id
            into v_id
            from clinic_log_register
           where id = in_id
             and rownum = 1;
          update clinic_log_register
             set onset_date           = in_onset_date,
                 onset_address        = in_onset_address,
                 fertility            = in_fertility,
                 diagnose_status      = in_diagnose_status,
                 diagnose1            = in_diagnose1,
                 diagnose1_icd10      = in_diagnose1_icd10,
                 diagnose2            = in_diagnose2,
                 diagnose2_icd10      = in_diagnose2_icd10,
                 diagnose3            = in_diagnose3,
                 diagnose3_icd10      = in_diagnose3_icd10,
                 other_diagnose       = in_other_diagnose,
                 other_diagnose_icd10 = in_other_diagnose_icd10,
                 diagnostic_basis     = in_diagnostic_basis,
                 diagnose_result      = in_diagnose_result,
                 operator             = hospital.login.get_workerid,
                 update_date          = sysdate,
                 remark               = in_remark,
                 temperature_flag     = in_temperature_flag,
                 Ѫѹ��ѹֵ           = in_Ѫѹ��ѹֵ,
                 Ѫѹ��ѹֵ           = in_Ѫѹ��ѹֵ,
                 Ѫѹ��λ             = in_Ѫѹ��λ,
                 Ѫ��ֵ               = in_Ѫ��ֵ,
                 Ѫ�ǵ�λ             = in_Ѫ�ǵ�λ,
                 revise_workerid      = hospital.login.get_workerid,
                 revise_date          = sysdate,
                 revise_reason        = substrb(in_revise_reason, 1, 200)
           where id = v_id;
        exception
          when no_data_found then
            raise_application_error(-20001,
                                    'Ҫ�޶��ı��Ϊ(' || in_id || ')��������־��¼������.;');
        end;
      end if;
    end if;
    commit;
  end change_clinic_log_register;
  -----------------------------------------------------------------------------------------------------
  procedure prv_����������_�������(in_patientid in varchar2
                          ,in_date      in date
                          ,in_diagnose  in varchar2
                          ,in_icd_code  in varchar2) is
    v_seq number;
  begin
    if in_diagnose is not null
       and in_icd_code is not null
    then
      begin
        select 2
          into v_seq
          from prescription_recent_diagnose
         where patientid = in_patientid
           and update_date = trunc(in_date)
           and new_diagnose_icd10 = in_icd_code
           and new_diagnose = in_diagnose
           and rownum = 1;
      exception
        when no_data_found then
          select max(seq)
            into v_seq
            from prescription_recent_diagnose
           where patientid = in_patientid
             and update_date = trunc(in_date);
          v_seq := nvl(v_seq, 0) + 1;
          insert into prescription_recent_diagnose
            (patientid, new_diagnose, new_diagnose_icd10, update_date, seq)
          values
            (in_patientid, in_diagnose, in_icd_code, trunc(in_date), v_seq);
      end;
    end if;
  end prv_����������_�������;
  -----------------------------------------------------------------------------------------------------
  procedure s_������־_����(in_id     in varchar2
                     ,in_status in varchar2) is
    t_clinic_log_register clinic_log_register%rowtype;
  begin
    verify_field_dict('CLINIC_LOG_REGISTER',
                      'STATUS',
                      in_status,
                      '��־״̬');
    select *
      into t_clinic_log_register
      from clinic_log_register
     where id = in_id
       for update nowait;
    update clinic_log_register set status = in_status where id = in_id;
    if in_status = 'ENABLED'
    then
      prv_����������_�������(t_clinic_log_register.patientid,
                     t_clinic_log_register.update_date,
                     t_clinic_log_register.diagnose1,
                     t_clinic_log_register.diagnose1_icd10);
      prv_����������_�������(t_clinic_log_register.patientid,
                     t_clinic_log_register.update_date,
                     t_clinic_log_register.diagnose2,
                     t_clinic_log_register.diagnose2_icd10);
      prv_����������_�������(t_clinic_log_register.patientid,
                     t_clinic_log_register.update_date,
                     t_clinic_log_register.diagnose3,
                     t_clinic_log_register.diagnose3_icd10);
      prv_����������_�������(t_clinic_log_register.patientid,
                     t_clinic_log_register.update_date,
                     t_clinic_log_register.other_diagnose,
                     t_clinic_log_register.other_diagnose_icd10);
    else
      --DISABLED   
      delete from prescription_recent_diagnose
       where patientid = t_clinic_log_register.patientid
         and update_date = trunc(t_clinic_log_register.update_date)
         and (new_diagnose = t_clinic_log_register.diagnose1 and
             new_diagnose_icd10 = t_clinic_log_register.diagnose1_icd10 or
             new_diagnose = t_clinic_log_register.diagnose2 and
             new_diagnose_icd10 = t_clinic_log_register.diagnose2_icd10 or
             new_diagnose = t_clinic_log_register.diagnose3 and
             new_diagnose_icd10 = t_clinic_log_register.diagnose3_icd10 or
             new_diagnose = t_clinic_log_register.other_diagnose and
             new_diagnose_icd10 =
             t_clinic_log_register.other_diagnose_icd10);
    end if;
  end s_������־_����;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2011/06/27 - �����
  --     tiger      2006/06/24 - �����Żݼ۸�
  --     tiger      2006/05/09 - ����ÿһ����ϸ�������� 
  --     tiger      2003/08/04 - ���ӽ������ͣ�����Ա�ͽ���ʱ����Ϣ
  --     tiger      2000/10/01 -  create
  procedure s_סԺ_���ڽ���(in_patientid      in varchar2
                     ,in_residentid     in varchar2
                     ,in_balance_date   in varchar2 default null
                     ,out_charge_billid out varchar2) as
    i                            number;
    t_resident_patient           resident_patient%rowtype;
    t_resident_info              resident_info%rowtype;
    t_fee                        number;
    t_charge_billid              charge_bill.id%type;
    t_medical_care_pay_formulaid medical_care_pay_formula.id%type;
    t_bill_date                  date;
    v_discount                   number := 0;
    v_discount_type              varchar2(10);
  begin
    verify_patient(in_patientid);
  
    if in_balance_date is not null
    then
      verify_not_null(in_balance_date, '��������');
      verify_valid_date(in_balance_date, '��������');
      t_bill_date := trunc(get_date_from_str(in_balance_date));
    else
      t_bill_date := trunc(sysdate);
    end if;
    if t_bill_date > trunc(sysdate)
    then
      t_bill_date := sysdate; --raise_application_error(-20001, '�����ֹ���ڲ��ܴ��ڽ���.;');
    end if;
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    if t_resident_info.process_reason in ('IN', 'NEW')
    then
      null;
    elsif t_resident_info.process_reason = 'CHANGEDEPT'
          and t_resident_info.finish_flag <> 'FINISHED'
    then
      raise_application_error(-20001,
                              '�ò����Ѿ�����ת������,���ܽ������ڽ���,��ʹ��ת�ƽ���.;');
    elsif t_resident_info.process_reason = 'CHANGEDEPT'
          and t_resident_info.finish_flag = 'FINISHED'
    then
      null;
    elsif t_resident_info.process_reason = 'OUT'
    then
      raise_application_error(-20001,
                              '�ò����Ѿ����˳�Ժ����,���ܽ������ڽ���,��ʹ�ó�Ժ����.;');
    else
      raise_application_error(-20001,
                              '�Ƿ���PROCESS_REASON' ||
                              t_resident_info.process_reason || '.;');
    end if;
    begin
      select 2
        into i
        from charge_item
       where residentid = t_resident_info.residentid
         and charge_billid is null
         and update_date < t_bill_date
         and rownum = 1;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '�ò���û�м�����ϸ������û��δ����ļ�����ϸ,���������ڽ���.;');
    end;
    --ȡ��סԺ��Ȩ����
    checkout.s_�ж�_�Ƿ���ȡ����Ժ����(t_resident_info.residentid);
  
    v_discount_type := discount_man.get_סԺ����_�Ż����(t_resident_info.residentid);
    begin
      select 2
        into i
        from charge_item
       where residentid = t_resident_info.residentid
         and update_date < t_bill_date
         and charge_billid is null
         and rownum = 1;
      t_charge_billid := get_next_charge_billid;
      t_fee           := 0;
      v_discount      := 0;
      for c1 in (select sum(fee) fee,
                        sum(in_fund_pay) in_fund_pay,
                        sum(self_pay) self_pay,
                        patientid,
                        residentid,
                        doctorid,
                        fee_type,
                        patient_deptid,
                        write_deptid,
                        execute_deptid,
                        nbmam_list_item_type,
                        ratio,
                        sum(discount) discount
                   from (select round(nvl(amount, 0) *
                                      round(nvl(price, 0), 3),
                                      2) fee,
                                nvl(in_fund_pay, 0) in_fund_pay,
                                nvl(self_pay, 0) self_pay,
                                id,
                                patientid,
                                residentid,
                                doctorid,
                                fee_type,
                                patient_deptid,
                                write_deptid,
                                execute_deptid,
                                nbmam_list_item_type,
                                ratio,
                                round(nvl(amount, 0) *
                                      round(nvl(discount, 0), 3),
                                      2) discount
                           from charge_item
                          where residentid = t_resident_info.residentid
                            and charge_billid is null
                            and update_date < t_bill_date)
                  group by patientid,
                           residentid,
                           doctorid,
                           fee_type,
                           patient_deptid,
                           write_deptid,
                           execute_deptid,
                           nbmam_list_item_type,
                           ratio)
      
      loop
        insert into charge_fee
          (id,
           charge_billid,
           patientid,
           registerid,
           residentid,
           patient_deptid,
           doctorid,
           fee_type,
           fee,
           in_fund_pay,
           self_pay,
           write_deptid,
           execute_deptid,
           attribute,
           status,
           operator,
           update_date,
           update_reason,
           remark,
           nbmam_list_item_type,
           ratio,
           type,
           balance_date,
           balance_workerid,
           discount,
           discount_type)
        values
          (get_next_charge_feeid,
           t_charge_billid,
           c1.patientid,
           null, --REGISTERID
           c1.residentid,
           c1.patient_deptid,
           c1.doctorid,
           c1.fee_type,
           c1.fee,
           c1.in_fund_pay,
           c1.self_pay,
           c1.write_deptid,
           c1.execute_deptid,
           'ACCOUNT',
           'WAIT_PAY',
           hospital.login.get_workerid,
           null,
           null,
           null,
           c1.nbmam_list_item_type,
           c1.ratio,
           'MIDDLE',
           sysdate,
           hospital.login.get_workerid,
           c1.discount,
           v_discount_type);
        t_fee      := t_fee + c1.fee;
        v_discount := v_discount + c1.discount;
      end loop;
      insert into charge_bill
        (id,
         attribute,
         patientid,
         fee,
         status,
         remark,
         residentid,
         update_reason,
         medical_care_pay_formulaid,
         type,
         balance_date,
         balance_workerid,
         discount)
      values
        (t_charge_billid,
         'ACCOUNT',
         t_resident_info.patientid,
         t_fee,
         'WAIT_PAY',
         null,
         t_resident_info.residentid,
         'A',
         t_medical_care_pay_formulaid,
         'MIDDLE',
         sysdate,
         hospital.login.get_workerid,
         v_discount);
      update charge_item
         set charge_billid = t_charge_billid
       where residentid = t_resident_info.residentid
         and update_date < t_bill_date
         and charge_billid is null;
    exception
      when no_data_found then
        null;
    end;
    out_charge_billid := t_charge_billid;
    commit;
  end;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2011/06/27 - �����
  --     tiger      2003/08/04 - ���ӽ������ͣ�����Ա�ͽ���ʱ����Ϣ
  --     tiger      2000/10/01 -  create
  procedure s_סԺ_���ڽ���_ȡ��(in_patientid     in varchar2
                        ,in_residentid    in varchar2
                        ,in_charge_billid in varchar2) as
    t_resident_patient   resident_patient%rowtype;
    t_resident_info      resident_info%rowtype;
    t_charge_bill_status charge_bill.status%type;
    v_charge_bill_type   charge_bill.type%type;
  begin
    verify_patient(in_patientid);
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    if t_resident_info.process_reason = 'OUT'
    then
      raise_application_error(-20001,
                              '�ò����Ѿ����˳�Ժ,����ȡ�����ڽ���.;');
    end if;
    begin
      select status, type
        into t_charge_bill_status, v_charge_bill_type
        from charge_bill
       where id = in_charge_billid;
    exception
      when no_data_found then
        raise_application_error(-20001, '��ȡ������ʱ��û���ҵ��ʵ�.;');
      when too_many_rows then
        raise_application_error(-20001, '���ֶ�������ͬ���ʵ�.;');
    end;
    if v_charge_bill_type <> 'MIDDLE'
    then
      raise_application_error(-20001,
                              '�õ��ݲ������ڽ��㵥������ȡ������.;');
    end if;
    if t_charge_bill_status = 'WAIT_PAY'
    then
      update charge_item
         set charge_billid = null
       where residentid = t_resident_info.residentid
         and charge_billid = in_charge_billid;
      delete from charge_fee where charge_billid = in_charge_billid;
      delete from charge_bill where id = in_charge_billid;
      insert into hospital.deleted_records_
        (schema_name, table_name, id, delete_date)
      values
        ('HOSPITAL', 'CHARGE_BILL', in_charge_billid, sysdate);
    elsif t_charge_bill_status = 'FINISHED'
    then
      raise_application_error(-20001, '�ý��㵥���Ѿ�����,����ȡ������.;');
    else
      raise_application_error(-20001,
                              '�Ƿ��Ľ��㵥��״̬' || t_charge_bill_status || '.;');
    end if;
    commit;
  end;
  -----------------------------------------------------------------------------------------------
  --    modified   (yyyy/mm/dd)   reason
  --     tiger      2011/06/30 - �����
  --     tiger      2003/08/04 - ȡ���ó���Ĺ���
  --     tiger      2002/06/14 -  �޸Ĵ���,���ڽ���ʱ�����޸�charge_fee,charge_item״̬����.
  --     tiger      2000/10/01 -  create
  procedure s_סԺ_���ڽ���_����(in_patientid         in varchar2
                        ,in_residentid        in varchar2
                        ,in_charge_billid     in varchar2
                        ,in_status            in varchar2
                        ,in_patient_type      in varchar2
                        ,in_pay_bill_type     in varchar2
                        ,in_account_receiable in number --Ӧ��סԺ���ܶ�  Account_receiable
                        ,in_total_fee         in number --ʵ�� Total_fee
                        ,in_pre_pay           in number --Ԥ������  Pre_pay
                        ,in_pay_lack          in number --������� Pay_lack
                        ,in_back_fee          in number --�˿��� Back_fee
                        ,in_diff_fee          in number --Ƿ�ѽ�� Diff_fee
                        ,in_account           in number --��ϸ��Ŀ����  Account
                        ,in_account_pay       in number --�������� Account_pay
                        ,in_self_pay          in number --����֧��self_pay
                        ,in_third_assure      in number --�������������
                        ,in_third_info        in varchar2 --������������Ϣ
                        ,in_hospital_pay      in number) as
    t_resident_patient   resident_patient%rowtype;
    t_resident_info      resident_info%rowtype;
    t_charge_bill        charge_bill%rowtype;
    v_out_balance_infoid out_balance_info.id%type;
  begin
    verify_patient(in_patientid);
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    verify_field_dict('OUT_BALANCE_INFO',
                      'PATIENT_TYPE',
                      in_patient_type,
                      '�������');
    if t_resident_info.process_reason = 'OUT'
    then
      raise_application_error(-20001,
                              '�ò����Ѿ����˳�Ժ����,���ܽ������ڽ���.;');
    end if;
    lock_res.lock_charge_bill(in_charge_billid, t_charge_bill);
    if t_charge_bill.type <> 'MIDDLE'
    then
      raise_application_error(-20001, '�������ڽ���,���ܽ���.;');
    end if;
    if t_charge_bill.attribute <> 'ACCOUNT'
    then
      raise_application_error(-20001, '���ʵ����Ǽ��ʵ�,���ܽ���.;');
    end if;
    if t_charge_bill.status = 'FINISHED'
    then
      raise_application_error(-20001, '���ʵ��Ѿ�����.;');
    elsif t_charge_bill.status = 'WAIT_PAY'
    then
      null;
    else
      raise_application_error(-20001,
                              '�Ƿ����ʵ�״̬(' || t_charge_bill.status || ').;');
    end if;
  
    --�ж�ƽ��
    if in_total_fee <> in_self_pay
    then
      raise_application_error(-20001, 'ʵ��<>����֧��');
    end if;
  
    if nvl(in_account_pay, 0) + nvl(in_self_pay, 0) <> in_account
    then
      raise_application_error(-20001, '����+����֧��<>����');
    end if;
  
    if nvl(in_back_fee, 0) <> 0
       and nvl(in_pre_pay, 0) - nvl(in_total_fee, 0) <> nvl(in_back_fee, 0)
    then
      raise_application_error(-20001, 'Ԥ��-ʵ��<>�˿�');
    end if;
  
    if nvl(in_pay_lack, 0) <> 0
       and nvl(in_total_fee, 0) - nvl(in_pre_pay, 0) <> nvl(in_pay_lack, 0)
    then
      raise_application_error(-20001, 'ʵ��-Ԥ��<>����');
    end if;
  
    if nvl(in_pay_lack, 0) = 0
       and nvl(in_back_fee, 0) = 0
       and nvl(in_total_fee, 0) - nvl(in_pre_pay, 0) <> 0
    then
      raise_application_error(-20001, '�˿���߲����������.;');
    end if;
  
    if in_account_receiable <> in_account
    then
      raise_application_error(-20001,
                              'Ӧ��(' || in_account_receiable || ' <>����(' ||
                              in_account || ' ).;');
    end if;
  
    update charge_bill
       set fee_operator = hospital.login.get_workerid,
           fee_date     = sysdate,
           status       = 'FINISHED'
     where id = in_charge_billid;
    update charge_fee
       set status       = 'FINISHED',
           patient_type = in_patient_type,
           update_date  = sysdate,
           operator     = hospital.login.get_workerid
     where charge_billid = in_charge_billid;
    update charge_item
       set status = 'FINISHED'
     where charge_billid = in_charge_billid;
  
    select to_char(sysdate, 'yyyy') ||
           lpad(ltrim(rtrim(to_char(seq_out_balance_info.nextval, '999999'))),
                6,
                '0')
      into v_out_balance_infoid
      from dual;
  
    update pre_pay
       set attribute          = 'C',
           unkeep_workerid    = hospital.login.get_workerid,
           unkeep_date        = sysdate,
           out_balance_infoid = v_out_balance_infoid,
           update_date        = sysdate
     where patientid = in_patientid
       and residentid = t_resident_info.residentid
       and bill_type in
           ('A', 'B', 'C', 'BANK', 'BANK1', 'BANK2', 'BANK3', 'BANK4')
       and attribute = 'A';
  
    insert into out_balance_info
      (id,
       residentid,
       out_deptid,
       patient_type,
       total_fee,
       pre_pay,
       pay_bill_type,
       pay_lack,
       back_fee,
       diff_fee,
       status,
       operator,
       update_date,
       self_pay,
       account_pay,
       discount,
       top_fee,
       discount1,
       account_receiable,
       total_discount,
       discount2,
       account,
       third_assurance,
       third_info,
       hospital_pay)
    values
      (v_out_balance_infoid,
       t_resident_info.residentid,
       t_resident_info.deptid,
       in_patient_type,
       in_total_fee,
       in_pre_pay,
       in_pay_bill_type,
       in_pay_lack,
       in_back_fee,
       in_diff_fee,
       in_status,
       hospital.login.get_workerid,
       sysdate,
       in_self_pay,
       in_account_pay,
       0,
       0,
       0,
       in_account_receiable,
       0,
       0,
       in_account,
       in_third_assure,
       in_third_info,
       in_hospital_pay);
  
    update charge_bill
       set out_balance_infoid = v_out_balance_infoid
     where id = in_charge_billid;
  
    insert into charge_bill_a01
      (id,
       ticket_no,
       attribute,
       patientid,
       registerid,
       residentid,
       prescriptionid,
       fee,
       status,
       fee_operator,
       fee_date,
       withdrawer,
       withdraw_date,
       update_reason,
       medical_care_pay_formulaid,
       remark,
       balance_date,
       balance_workerid,
       type,
       discount,
       out_balance_infoid)
      select id,
             ticket_no,
             attribute,
             patientid,
             registerid,
             residentid,
             prescriptionid,
             fee,
             status,
             fee_operator,
             fee_date,
             withdrawer,
             withdraw_date,
             update_reason,
             medical_care_pay_formulaid,
             remark,
             balance_date,
             balance_workerid,
             type,
             discount,
             out_balance_infoid
        from charge_bill
       where id = in_charge_billid;
    delete from charge_bill where id = in_charge_billid;
    insert into charge_item_a01
      (id,
       charge_billid,
       patientid,
       registerid,
       residentid,
       doctorid,
       fee_type,
       patient_deptid,
       write_deptid,
       execute_deptid,
       attribute,
       itemid,
       unit,
       amount,
       price,
       payer,
       status,
       operator,
       update_date,
       update_reason,
       nbmam_list_item_type,
       ratio,
       remark,
       order_listid,
       account_seq,
       sundry_feeid,
       sundry_fee_detail_seq,
       purchaseid,
       self_pay,
       preferential_price,
       mc_update_date,
       in_fund_pay_self,
       second_in_fund_pay,
       discount,
       norm_price,
       packageid,
       mc_generate_type,
       back_charge_itemid,
       in_fund_pay,
       mc_operator,
       materialid,
       in_fund_pay_method,
       medcare_formulaid,
       in_fund_pay_pay,
       partial_in_fund_pay)
      select id,
             charge_billid,
             patientid,
             registerid,
             residentid,
             doctorid,
             fee_type,
             patient_deptid,
             write_deptid,
             execute_deptid,
             attribute,
             itemid,
             unit,
             amount,
             price,
             payer,
             status,
             operator,
             update_date,
             update_reason,
             nbmam_list_item_type,
             ratio,
             remark,
             order_listid,
             account_seq,
             sundry_feeid,
             sundry_fee_detail_seq,
             purchaseid,
             self_pay,
             preferential_price,
             mc_update_date,
             in_fund_pay_self,
             second_in_fund_pay,
             discount,
             norm_price,
             packageid,
             mc_generate_type,
             back_charge_itemid,
             in_fund_pay,
             mc_operator,
             materialid,
             in_fund_pay_method,
             medcare_formulaid,
             in_fund_pay_pay,
             partial_in_fund_pay
        from charge_item
       where charge_billid = in_charge_billid;
    delete from charge_item where charge_billid = in_charge_billid;
    calc_resident_account(in_patientid, in_residentid);
    calc_pre_pay(t_resident_patient.patientid,
                 t_resident_patient.residentid);
    commit;
  end;
  -----------------------------------------------------------------------------------------------
  --  ע�⣺���ڽ��ˣ���֧�ֽ��˳���
  --
  procedure s_סԺ_���ڽ���_����_ȡ��(in_patientid     in varchar2
                           ,in_residentid    in varchar2
                           ,in_charge_billid in varchar2) is
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
    t_charge_bill      charge_bill%rowtype;
  begin
    verify_patient(in_patientid);
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    lock_res.lock_charge_bill(in_charge_billid, t_charge_bill);
    if t_charge_bill.type <> 'MIDDLE'
    then
      raise_application_error(-20001, '�������ڽ���,���ܽ���.;');
    end if;
    if t_charge_bill.attribute <> 'ACCOUNT'
    then
      raise_application_error(-20001, '���ʵ����Ǽ��ʵ�,���ܽ���.;');
    end if;
    if t_charge_bill.status = 'FINISHED'
    then
      null;
    elsif t_charge_bill.status = 'WAIT_PAY'
    then
      raise_application_error(-20001, '���ʵ���û�н���.;');
    else
      raise_application_error(-20001,
                              '�Ƿ����ʵ�״̬(' || t_charge_bill.status || ').;');
    end if;
  
    if t_charge_bill.fee_operator <> hospital.login.get_workerid
    then
      raise_application_error(-20001, '���������ʣ��㲻��ȡ������.;');
    end if;
    update charge_bill
       set fee_operator       = null,
           fee_date           = null,
           status             = 'WAIT_PAY',
           out_balance_infoid = null
     where id = in_charge_billid;
    update charge_fee
       set status      = 'WAIT_PAY',
           update_date = null,
           operator    = null
     where charge_billid = in_charge_billid;
    update charge_item
       set status = 'WAIT_PAY'
     where charge_billid = in_charge_billid;
  
    update pre_pay
       set attribute          = 'A',
           unkeep_workerid    = null,
           unkeep_date        = null,
           out_balance_infoid = null,
           update_date        = sysdate
     where residentid = t_resident_info.residentid
       and bill_type in
           ('A', 'B', 'C', 'BANK', 'BANK1', 'BANK2', 'BANK3', 'BANK4')
       and attribute = 'C'
       and out_balance_infoid = t_charge_bill.out_balance_infoid;
  
    delete from out_balance_info
     where id = t_charge_bill.out_balance_infoid;
    insert into hospital.deleted_records_
      (schema_name, table_name, id, delete_date)
    values
      ('HOSPITAL',
       'OUT_BALANCE_INFO',
       t_charge_bill.out_balance_infoid,
       sysdate);
    commit;
  end s_סԺ_���ڽ���_����_ȡ��;
  -----------------------------------------------------------------------------------------------
  procedure prv_ͳ��סԺ���������Ϣ(in_deptid in varchar2) is
    i      number;
    v_date date;
    --    v_former    integer;
    --    v_leave_num integer;
    --    v_back_num  integer;
    v_remain integer;
  begin
    begin
      select 2
        into i
        from rpt_resident_leave_info
       where deptid = in_deptid
         and rownum = 1;
    exception
      when no_data_found then
        insert into rpt_resident_leave_info
          (rpt_date, deptid, former, leave_num, back_num, remain)
        values
          (trunc(sysdate), in_deptid, 0, 0, 0, 0);
    end;
    select max(rpt_date)
      into v_date
      from rpt_resident_leave_info
     where deptid = in_deptid;
    begin
      select remain
        into v_remain
        from rpt_resident_leave_info
       where deptid = in_deptid
         and rpt_date = v_date
         for update nowait;
    exception
      when others then
        raise_application_error(-20001, '���������ڲ��������Ժ�����.;');
    end;
    loop
      if v_date >= trunc(sysdate)
      then
        exit;
      end if;
      v_date := v_date + 1;
      insert into rpt_resident_leave_info
        (rpt_date, deptid, former, leave_num, back_num, remain)
      values
        (v_date, in_deptid, v_remain, 0, 0, v_remain);
    end loop;
  end prv_ͳ��סԺ���������Ϣ;
  -----------------------------------------------------------------------------------------------
  procedure s_סԺ_���(in_residentid in varchar2
                   ,in_reason     in varchar2) is
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
    t_dept_name        varchar2(2000);
    v_seq              integer;
    i                  number;
  begin
    verify_length(in_reason, 1, 200);
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    if t_resident_patient.leave_flag = 'LEAVE'
    then
      raise_application_error(-20001, '�ò����Ѿ����,�����ظ�����.;');
    end if;
    if t_resident_info.process_reason = 'OUT'
    then
      raise_application_error(-20001, '�ò����Ѿ����˳�Ժ����.;');
    end if;
  
    t_dept_name := null;
    for c in (select get_dept_name(execute_deptid) dept_name, count(*)
                from order_list
               where ownerid = t_resident_info.residentid
                 and status = 'WAIT_ACK'
               group by execute_deptid)
    loop
      t_dept_name := t_dept_name || c.dept_name || chr(10);
    end loop;
    if t_dept_name is not null
    then
    
      raise_application_error(-20001,
                              '���¿��һ��д�ȷ�ϵ�ҽ��:' || chr(10) || t_dept_name ||
                              '���ȴ�����Щҽ��.;');
    end if;
  
    t_dept_name := null;
    for c in (select get_dept_name(execute_deptid) dept_name, count(*)
                from order_list
               where ownerid = t_resident_info.residentid
                 and long_flag = 'A'
                 and sundry_feeid not like '1109%'
                 and (status = 'NORMAL' or
                     status = 'STOPPED' and status1 = 'WAIT_ACK')
               group by execute_deptid)
    loop
      t_dept_name := t_dept_name || c.dept_name || chr(10);
    end loop;
    if t_dept_name is not null
    then
      raise_application_error(-20001,
                              '���¿��һ���δֹͣ�ĳ���ҽ��:' || chr(10) || t_dept_name ||
                              '���ȴ�����Щҽ��.;');
    end if;
  
    t_dept_name := null;
    for c in (select get_dept_name(execute_deptid) dept_name, count(*)
                from order_list
               where ownerid = t_resident_info.residentid
                 and long_flag = 'B'
                 and status = 'NORMAL'
                 and status1 = 'WAIT_ACC'
               group by execute_deptid)
    loop
      t_dept_name := t_dept_name || c.dept_name || chr(10);
    end loop;
    if t_dept_name is not null
    then
      raise_application_error(-20001,
                              '���¿��һ�����δ���ʵ���ʱҽ��:' || chr(10) || t_dept_name ||
                              '���ȴ�����Щҽ��.;');
    end if;
  
    --��־�����Ѿ����  
    update resident_patient
       set leave_flag = 'LEAVE'
     where residentid = in_residentid;
  
    select max(seq)
      into v_seq
      from resident_leave_info
     where residentid = in_residentid;
    v_seq := nvl(v_seq, 0) + 1;
    insert into resident_leave_info
      (residentid, seq, leave_date, leave_reason)
    values
      (in_residentid, v_seq, sysdate, in_reason);
  
    begin
      select 2
        into i
        from rpt_resident_leave_info
       where rpt_date = trunc(sysdate)
         and deptid = t_resident_info.deptid
         for update nowait;
    exception
      when no_data_found then
        prv_ͳ��סԺ���������Ϣ(t_resident_info.deptid);
    end;
  
    begin
      select 2
        into i
        from rpt_resident_leave_info
       where rpt_date = trunc(sysdate)
         and deptid = t_resident_info.deptid
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '��ͳ��סԺ������Ϣʱ�����ڲ�����.;');
    end;
  
    update rpt_resident_leave_info
       set leave_num = leave_num + 1,
           remain    = remain + 1
     where rpt_date = trunc(sysdate)
       and deptid = t_resident_info.deptid;
    commit;
  end s_סԺ_���;
  -----------------------------------------------------------------------------------------------
  procedure s_סԺ_���_����(in_residentid in varchar2) is
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
    v_seq              integer;
    i                  number;
    v_date             date;
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    if t_resident_patient.leave_flag = 'LEAVE'
    then
      null;
    else
      raise_application_error(-20001, '�ò���û����٣���������.;');
    end if;
  
    update resident_patient
       set leave_flag = 'NO'
     where residentid = in_residentid;
  
    select max(seq)
      into v_seq
      from resident_leave_info
     where residentid = in_residentid;
  
    begin
      select leave_date
        into v_date
        from resident_leave_info
       where residentid = in_residentid
         and seq = v_seq
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                'û���ҵ��ò��˵���ټ�¼���޷��������');
    end;
  
    if v_date >= trunc(sysdate)
    then
      --�������٣�ɾ�������Ϣ
      delete from resident_leave_info
       where residentid = in_residentid
         and seq = v_seq;
      update rpt_resident_leave_info
         set leave_num = leave_num - 1,
             remain    = remain - 1
       where rpt_date = trunc(sysdate)
         and deptid = t_resident_info.deptid;
    else
      update resident_leave_info
         set back_date = sysdate
       where residentid = in_residentid
         and seq = v_seq;
      begin
        select 2
          into i
          from rpt_resident_leave_info
         where rpt_date = trunc(sysdate)
           and deptid = t_resident_info.deptid
           for update nowait;
      exception
        when no_data_found then
          prv_ͳ��סԺ���������Ϣ(t_resident_info.deptid);
      end;
    
      begin
        select 2
          into i
          from rpt_resident_leave_info
         where rpt_date = trunc(sysdate)
           and deptid = t_resident_info.deptid
           for update nowait;
      exception
        when no_data_found then
          raise_application_error(-20001,
                                  '��ͳ��סԺ������Ϣʱ�����ڲ�����.;');
      end;
    
      update rpt_resident_leave_info
         set back_num = back_num + 1,
             remain   = remain - 1
       where rpt_date = trunc(sysdate)
         and deptid = t_resident_info.deptid;
    
    end if;
    commit;
  end s_סԺ_���_����;
  -----------------------------------------------------------------------------------------------
  procedure s_����_��סԺ������־(in_patientid  in varchar2
                         ,in_residentid in varchar2
                         ,in_no_pre_pay in varchar2) is
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    verify_field_dict('RESIDENT_INFO',
                      'NO_PRE_PAY',
                      in_no_pre_pay,
                      '��סԺ������־');
    update resident_info_
       set no_pre_pay  = in_no_pre_pay,
           update_date = sysdate
     where residentid = t_resident_patient.residentid;
    commit;
  end s_����_��סԺ������־;
  ----------------------------------------------------------------------------------------------- 
  procedure s_סԺ����_ҽ����չ��Ϣ(in_residentid           in varchar2
                         ,in_סԺ����             in varchar2
                         ,in_������ۼ�ͳ��       in varchar2
                         ,in_������ۼƹ���Ա���� in varchar2
                         ,in_���ܳ��������־     in varchar2
                         ,in_���ܹ���Ա������־   in varchar2
                         ,in_ҽ���չ����         in varchar2) is
    t_resident_info    resident_info%rowtype;
    t_resident_patient resident_patient%rowtype;
    i                  number;
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    verify_valid_number(in_סԺ����, 'סԺ����');
    verify_valid_number(in_������ۼ�ͳ��, '������ۼ�ͳ��');
    verify_valid_number(in_������ۼƹ���Ա����, '������ۼƹ���Ա����');
    verify_field_dict('RESIDENT_MEDCARE_EXTEND_INFO',
                      'F���ܳ��������־',
                      in_���ܳ��������־,
                      '���ܳ��������־');
    verify_field_dict('RESIDENT_MEDCARE_EXTEND_INFO',
                      'F���ܹ���Ա������־',
                      in_���ܹ���Ա������־,
                      '���ܹ���Ա������־');
    verify_field_dict('RESIDENT_MEDCARE_EXTEND_INFO',
                      'Fҽ���չ����',
                      in_ҽ���չ����,
                      'ҽ���չ����');
    select 2
      into i
      from hospital.resident_medcare_extend_info
     where residentid = in_residentid
       for update nowait;
    update hospital.resident_medcare_extend_info
       set fסԺ����             = in_סԺ����,
           f������ۼ�ͳ��       = in_������ۼ�ͳ��,
           f������ۼƹ���Ա���� = in_������ۼƹ���Ա����,
           f���ܳ��������־     = in_���ܳ��������־,
           f���ܹ���Ա������־   = in_���ܹ���Ա������־,
           fҽ���չ����         = in_ҽ���չ����
     where residentid = in_residentid;
  exception
    when no_data_found then
      insert into hospital.resident_medcare_extend_info
        (residentid,
         fסԺ����,
         f������ۼ�ͳ��,
         f������ۼƹ���Ա����,
         f���ܳ��������־,
         f���ܹ���Ա������־,
         fҽ���չ����)
      values
        (in_residentid,
         in_סԺ����,
         in_������ۼ�ͳ��,
         in_������ۼƹ���Ա����,
         in_���ܳ��������־,
         in_���ܹ���Ա������־,
         in_���ܹ���Ա������־);
  end s_סԺ����_ҽ����չ��Ϣ;
  --------------------------------------------------------------------------------------------- 
  --create sequence seq_resident_certificate_id start with 1 maxvalue 99999999 cache 10 cycle; 
  procedure s_�½�_סԺ֤(in_patientid in varchar2
                    ,out_id       out varchar2) is
    v_id       hospital.resident_certificate.id%type;
    v_patient  hospital.patient_%rowtype;
    v_age      hospital.resident_certificate.age%type;
    v_age_unit hospital.resident_certificate.age_unit%type;
  begin
    begin
      select *
        into v_patient
        from hospital.patient_
       where id = in_patientid;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '���Ϊ( ' || in_patientid ||
                                ' )�Ļ�����Ϣ������,�����½�סԺ֤;');
      
    end;
    v_age := case
               when trunc(sysdate) - trunc(v_patient.birthday) > 365 then
                round(trunc(trunc(sysdate) - trunc(v_patient.birthday)) / 365)
               when trunc(sysdate) - trunc(v_patient.birthday) < 365
                    and trunc(sysdate) - trunc(v_patient.birthday) > 30 then
                round((trunc(sysdate) - trunc(v_patient.birthday)) / 30)
               when trunc(sysdate) - trunc(v_patient.birthday) < 30 then
                trunc(sysdate) - trunc(v_patient.birthday)
             end;
    v_age_unit := case
                    when trunc(sysdate) - trunc(v_patient.birthday) > 365 then
                     '1'
                    when trunc(sysdate) - trunc(v_patient.birthday) < 365
                         and trunc(sysdate) - trunc(v_patient.birthday) > 30 then
                     '2'
                    when trunc(sysdate) - trunc(v_patient.birthday) < 30 then
                     '4'
                  end;
    select to_char(sysdate, 'yyyymm') ||
           lpad(seq_resident_certificate_id.nextval, 8, '0')
      into v_id
      from dual;
    insert into hospital.resident_certificate_
      (id,
       patientid,
       name,
       pinyin,
       attribute,
       gender,
       age,
       age_unit,
       birthday,
       profession,
       country,
       identification,
       marry_status,
       birth_province,
       birth_county,
       race,
       free_no,
       home_address,
       home_tele,
       home_zip,
       office_address,
       office_tele,
       office_zip,
       asso_name,
       asso_relation,
       asso_address,
       asso_tele,
       asso_zip,
       operator,
       update_date,
       remark,
       education,
       regionid,
       status)
    values
      (v_id,
       in_patientid,
       v_patient.name,
       v_patient.pinyin,
       v_patient.attribute,
       v_patient.gender,
       v_age,
       v_age_unit,
       v_patient.birthday,
       v_patient.profession,
       v_patient.country,
       v_patient.identification,
       v_patient.marry_status,
       v_patient.birth_province,
       v_patient.birth_county,
       v_patient.race,
       v_patient.free_no,
       v_patient.home_address,
       v_patient.home_tele,
       v_patient.home_zip,
       v_patient.office_address,
       v_patient.office_tele,
       v_patient.office_zip,
       v_patient.asso_name,
       v_patient.asso_relation,
       v_patient.asso_address,
       v_patient.asso_tele,
       v_patient.asso_zip,
       hospital.login.get_workerid,
       sysdate,
       v_patient.remark,
       v_patient.education,
       v_patient.regionid,
       '��ȷ��');
    out_id := v_id;
    commit;
  end s_�½�_סԺ֤;
  ---------------------------------------------------------------------------------------------     
  procedure s_�޸�_סԺ֤(in_id              in varchar2
                    ,in_patientid       in varchar2
                    ,in_name            in varchar2
                    ,in_pinyin          in varchar2
                    ,in_attribute       in varchar2
                    ,in_gender          in varchar2
                    ,in_age             in varchar2
                    ,in_age_unit        in varchar2
                    ,in_birthday        in varchar2
                    ,in_profession      in varchar2
                    ,in_country         in varchar2
                    ,in_identification  in varchar2
                    ,in_marry_status    in varchar2
                    ,in_birth_province  in varchar2
                    ,in_birth_county    in varchar2
                    ,in_race            in varchar2
                    ,in_free_no         in varchar2
                    ,in_home_address    in varchar2
                    ,in_home_tele       in varchar2
                    ,in_home_zip        in varchar2
                    ,in_office_address  in varchar2
                    ,in_office_tele     in varchar2
                    ,in_office_zip      in varchar2
                    ,in_asso_name       in varchar2
                    ,in_asso_relation   in varchar2
                    ,in_asso_address    in varchar2
                    ,in_asso_tele       in varchar2
                    ,in_asso_zip        in varchar2
                    ,in_remark          in varchar2
                    ,in_education       in varchar2
                    ,in_regionid        in varchar2
                    ,in_in_diagnose_id  in varchar2
                    ,in_resident_deptid in varchar2) is
    v_birthday date;
    i          number;
  begin
    verify_length(in_name, 40, '����');
    verify_not_null(in_name, '����');
    verify_length(in_pinyin, 10, 'ƴ��');
    verify_not_null(in_pinyin, 'ƴ��');
    verify_length(in_attribute, 10, '����');
    verify_field_dict('PATIENT', 'ATTRIBUTE', in_attribute, '�������');
    if in_attribute in ('ASSURANCE', 'INHABITANT', 'PUBLIC', 'COMEDICARE')
    then
      verify_valid_free_no(in_free_no);
    elsif in_free_no is not null
    then
      raise_application_error(-20001,
                              '����ҽ�Ʊ��ղ��ˣ�ҽ�Ʊ��պ������Ϊ��.;');
    end if;
  
    if in_identification is not null
    then
      verify_valid_���֤��(in_identification);
      if lengthb(in_identification) = 15
      then
        v_birthday := get_date_from_str('19' ||
                                        substrb(in_identification, 7, 6));
      else
        v_birthday := get_date_from_str(substrb(in_identification, 7, 8));
      end if;
    else
      --���պϷ�����֤
      if in_birthday is not null
      then
        verify_valid_date(in_birthday, '����');
        v_birthday := get_date_from_str(in_birthday);
      else
        if in_age is not null
           and in_age_unit is not null
        then
          verify_valid_number(in_age, '����');
          verify_positive_number(in_age, '����');
          verify_field_dict('RESIDENT_INFO',
                            'AGE_UNIT',
                            in_age_unit,
                            '���䵥λ');
        end if;
      end if;
    end if;
    if v_birthday is null
    then
      raise_application_error(-20001, '����������.;');
    end if;
    if v_birthday > trunc(sysdate) + 1
    then
      raise_application_error(-20001, '���ղ��ܴ��ڽ���.;');
    end if;
    if age(v_birthday) > 150
    then
      raise_application_error(-20001, '��������������.;');
    end if;
  
    verify_length(in_profession, 30, 'ְҵ');
    if nvl(get_system_option('�޸Ļ�����Ϣ_����¼��ְҵ'), 'N') = 'Y'
    then
      verify_not_null(in_profession, 'ְҵ');
    end if;
    verify_length(in_identification, 20, '���֤����');
    verify_length(in_birth_province, 40, '����ʡ��');
    verify_length(in_birth_county, 40, '��������');
    verify_length(in_race, 10, '����');
    verify_length(in_home_address, 200, '��ͥ��ַ');
    verify_length(in_home_tele, 20, '��ͥ�绰');
    verify_length(in_home_zip, 6, '��ͥ�ʱ�');
    verify_length(in_office_address, 200, '������ַ');
    verify_length(in_office_tele, 20, '�����绰');
    verify_length(in_office_zip, 6, '�����ʱ�');
    verify_length(in_asso_name, 80, '��ϵ��');
    verify_length(in_asso_relation, 10, '�벡�˹�ϵ');
    verify_length(in_asso_address, 200, '��ϵ�˵�ַ');
    verify_length(in_asso_tele, 20, '��ϵ�˵绰');
    verify_length(in_asso_zip, 6, '��ϵ���ʱ�');
    verify_length(in_education, 30, '�����̶�');
    verify_length(in_remark, 20, '��ע');
  
    if in_regionid is not null
       or nvl(get_system_option('����¼�뻼����������'), 'N') = 'Y'
    then
      verify_valid_region(in_regionid);
    end if;
    begin
      select 2 into i from hospital.resident_certificate_ where id = in_id;
      update hospital.resident_certificate_
         set attribute       = in_attribute,
             gender          = nvl(trim(in_gender), gender),
             birthday        = nvl(v_birthday, birthday),
             profession      = nvl(trim(in_profession), profession),
             country         = nvl(trim(in_country), country),
             identification  = trim(in_identification),
             marry_status    = nvl(trim(in_marry_status), marry_status),
             birth_province  = nvl(trim(in_birth_province), birth_province),
             birth_county    = nvl(trim(in_birth_county), birth_county),
             race            = nvl(trim(in_race), race),
             free_no         = in_free_no,
             home_address    = nvl(trim(in_home_address), home_address),
             home_tele       = trim(in_home_tele),
             home_zip        = trim(in_home_zip),
             office_address  = trim(in_office_address),
             office_tele     = trim(in_office_tele),
             office_zip      = trim(in_office_zip),
             asso_name       = trim(in_asso_name),
             asso_relation   = trim(in_asso_relation),
             asso_address    = trim(in_asso_address),
             asso_tele       = trim(in_asso_tele),
             asso_zip        = trim(in_asso_zip),
             operator        = hospital.login.get_workerid,
             update_date     = sysdate,
             education       = nvl(in_education, education),
             regionid        = nvl(in_regionid, regionid),
             remark          = in_remark,
             in_diagnose_id  = in_in_diagnose_id,
             resident_deptid = in_resident_deptid
       where id = in_id;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '�û���û��סԺ֤�Ǽ���Ϣ,���ȵǼ�;');
    end;
    commit;
  end s_�޸�_סԺ֤;

  procedure s_����_סԺ֤(in_id              in varchar2
                    ,in_doctor_id       in varchar2
                    ,in_patientid       in varchar2
                    ,in_name            in varchar2
                    ,in_pinyin          in varchar2
                    ,in_attribute       in varchar2
                    ,in_gender          in varchar2
                    ,in_age             in varchar2
                    ,in_age_unit        in varchar2
                    ,in_birthday        in varchar2
                    ,in_profession      in varchar2
                    ,in_country         in varchar2
                    ,in_identification  in varchar2
                    ,in_marry_status    in varchar2
                    ,in_birth_province  in varchar2
                    ,in_birth_county    in varchar2
                    ,in_race            in varchar2
                    ,in_free_no         in varchar2
                    ,in_home_address    in varchar2
                    ,in_home_tele       in varchar2
                    ,in_home_zip        in varchar2
                    ,in_office_address  in varchar2
                    ,in_office_tele     in varchar2
                    ,in_office_zip      in varchar2
                    ,in_asso_name       in varchar2
                    ,in_asso_relation   in varchar2
                    ,in_asso_address    in varchar2
                    ,in_asso_tele       in varchar2
                    ,in_asso_zip        in varchar2
                    ,in_remark          in varchar2
                    ,in_education       in varchar2
                    ,in_regionid        in varchar2
                    ,in_in_diagnose_id  in varchar2
                    ,in_resident_deptid in varchar2
                    ,out_id             out varchar2) is
    v_id       hospital.resident_certificate.id%type;
    v_patient  hospital.patient_%rowtype;
    v_age      hospital.resident_certificate.age%type;
    v_age_unit hospital.resident_certificate.age_unit%type;
    v_birthday date;
    i          number;
  begin
    begin
      select *
        into v_patient
        from hospital.patient_
       where id = in_patientid;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '���Ϊ( ' || in_patientid ||
                                ' )�Ļ�����Ϣ������,�����½�סԺ֤;');
      
    end;
  
    v_age := case
               when trunc(sysdate) - trunc(v_patient.birthday) > 365 then
                round(trunc(trunc(sysdate) - trunc(v_patient.birthday)) / 365)
               when trunc(sysdate) - trunc(v_patient.birthday) < 365
                    and trunc(sysdate) - trunc(v_patient.birthday) > 30 then
                round((trunc(sysdate) - trunc(v_patient.birthday)) / 30)
               when trunc(sysdate) - trunc(v_patient.birthday) < 30 then
                trunc(sysdate) - trunc(v_patient.birthday)
             end;
    v_age_unit := case
                    when trunc(sysdate) - trunc(v_patient.birthday) > 365 then
                     '1'
                    when trunc(sysdate) - trunc(v_patient.birthday) < 365
                         and trunc(sysdate) - trunc(v_patient.birthday) > 30 then
                     '2'
                    when trunc(sysdate) - trunc(v_patient.birthday) < 30 then
                     '4'
                  end;
    select to_char(sysdate, 'yyyymm') ||
           lpad(seq_resident_certificate_id.nextval, 8, '0')
      into v_id
      from dual;
    verify_length(in_name, 40, '����');
    verify_not_null(in_name, '����');
    verify_length(in_pinyin, 10, 'ƴ��');
    verify_not_null(in_pinyin, 'ƴ��');
    verify_length(in_attribute, 10, '����');
    verify_field_dict('PATIENT', 'ATTRIBUTE', in_attribute, '�������');
    if in_attribute in ('ASSURANCE', 'INHABITANT', 'PUBLIC', 'COMEDICARE')
    then
      verify_valid_free_no(in_free_no);
    elsif in_free_no is not null
    then
      raise_application_error(-20001,
                              '����ҽ�Ʊ��ղ��ˣ�ҽ�Ʊ��պ������Ϊ��.;');
    end if;
  
    if in_identification is not null
    then
      verify_valid_���֤��(in_identification);
      if lengthb(in_identification) = 15
      then
        v_birthday := get_date_from_str('19' ||
                                        substrb(in_identification, 7, 6));
      else
        v_birthday := get_date_from_str(substrb(in_identification, 7, 8));
      end if;
    else
      --���պϷ�����֤
      if in_birthday is not null
      then
        verify_valid_date(in_birthday, '����');
        v_birthday := get_date_from_str(in_birthday);
      else
        if in_age is not null
           and in_age_unit is not null
        then
          verify_valid_number(in_age, '����');
          verify_positive_number(in_age, '����');
          verify_field_dict('RESIDENT_INFO',
                            'AGE_UNIT',
                            in_age_unit,
                            '���䵥λ');
        end if;
      end if;
    end if;
    if v_birthday is null
    then
      raise_application_error(-20001, '����������.;');
    end if;
    if v_birthday > trunc(sysdate) + 1
    then
      raise_application_error(-20001, '���ղ��ܴ��ڽ���.;');
    end if;
    if age(v_birthday) > 150
    then
      raise_application_error(-20001, '��������������.;');
    end if;
  
    verify_length(in_profession, 30, 'ְҵ');
    if nvl(get_system_option('�޸Ļ�����Ϣ_����¼��ְҵ'), 'N') = 'Y'
    then
      verify_not_null(in_profession, 'ְҵ');
    end if;
    verify_length(in_identification, 20, '���֤����');
    verify_length(in_birth_province, 40, '����ʡ��');
    verify_length(in_birth_county, 40, '��������');
    verify_length(in_race, 10, '����');
    verify_length(in_home_address, 200, '��ͥ��ַ');
    verify_length(in_home_tele, 20, '��ͥ�绰');
    verify_length(in_home_zip, 6, '��ͥ�ʱ�');
    verify_length(in_office_address, 200, '������ַ');
    verify_length(in_office_tele, 20, '�����绰');
    verify_length(in_office_zip, 6, '�����ʱ�');
    verify_length(in_asso_name, 80, '��ϵ��');
    verify_length(in_asso_relation, 10, '�벡�˹�ϵ');
    verify_length(in_asso_address, 200, '��ϵ�˵�ַ');
    verify_length(in_asso_tele, 20, '��ϵ�˵绰');
    verify_length(in_asso_zip, 6, '��ϵ���ʱ�');
    verify_length(in_education, 30, '�����̶�');
    verify_length(in_remark, 20, '��ע');
  
    if in_regionid is not null
       or nvl(get_system_option('����¼�뻼����������'), 'N') = 'Y'
    then
      verify_valid_region(in_regionid);
    end if;
  
    begin
      select 2
        into i
        from hospital.resident_certificate_
       where patientid = in_patientid
         and operator = in_doctor_id
         and status = '����Ժ'
         and rownum = 1;
      begin
        select 2
          into i
          from hospital.resident_certificate_
         where id = in_id;
        update hospital.resident_certificate_
           set attribute       = in_attribute,
               gender          = nvl(trim(in_gender), gender),
               birthday        = nvl(v_birthday, birthday),
               profession      = nvl(trim(in_profession), profession),
               country         = nvl(trim(in_country), country),
               identification  = trim(in_identification),
               marry_status    = nvl(trim(in_marry_status), marry_status),
               birth_province  = nvl(trim(in_birth_province), birth_province),
               birth_county    = nvl(trim(in_birth_county), birth_county),
               race            = nvl(trim(in_race), race),
               free_no         = in_free_no,
               home_address    = nvl(trim(in_home_address), home_address),
               home_tele       = trim(in_home_tele),
               home_zip        = trim(in_home_zip),
               office_address  = trim(in_office_address),
               office_tele     = trim(in_office_tele),
               office_zip      = trim(in_office_zip),
               asso_name       = trim(in_asso_name),
               asso_relation   = trim(in_asso_relation),
               asso_address    = trim(in_asso_address),
               asso_tele       = trim(in_asso_tele),
               asso_zip        = trim(in_asso_zip),
               operator        = nvl(in_doctor_id,
                                     hospital.login.get_workerid),
               update_date     = sysdate,
               education       = nvl(in_education, education),
               regionid        = nvl(in_regionid, regionid),
               remark          = in_remark,
               in_diagnose_id  = in_in_diagnose_id,
               resident_deptid = in_resident_deptid
         where id = in_id;
        out_id := in_id;
      exception
        when no_data_found then
          raise_application_error(-20001,
                                  '�û���û��סԺ֤�Ǽ���Ϣ,���ȵǼ�;');
      end;
    exception
      when no_data_found then
        insert into hospital.resident_certificate_
          (id,
           patientid,
           name,
           pinyin,
           attribute,
           gender,
           age,
           age_unit,
           birthday,
           profession,
           country,
           identification,
           marry_status,
           birth_province,
           birth_county,
           race,
           free_no,
           home_address,
           home_tele,
           home_zip,
           office_address,
           office_tele,
           office_zip,
           asso_name,
           asso_relation,
           asso_address,
           asso_tele,
           asso_zip,
           operator,
           update_date,
           remark,
           education,
           regionid,
           in_diagnose_id,
           resident_deptid,
           status)
        values
          (v_id,
           in_patientid,
           v_patient.name,
           v_patient.pinyin,
           in_attribute,
           nvl(trim(in_gender), v_patient.gender),
           v_age,
           v_age_unit,
           nvl(v_birthday, v_patient.birthday),
           nvl(trim(in_profession), v_patient.profession),
           nvl(trim(in_country), v_patient.country),
           trim(in_identification),
           nvl(trim(in_marry_status), v_patient.marry_status),
           nvl(trim(in_birth_province), v_patient.birth_province),
           nvl(trim(in_birth_county), v_patient.birth_county),
           nvl(trim(in_race), v_patient.race),
           in_free_no,
           nvl(trim(in_home_address), v_patient.home_address),
           trim(in_home_tele),
           trim(in_home_zip),
           trim(in_office_address),
           trim(in_office_tele),
           trim(in_office_zip),
           trim(in_asso_name),
           trim(in_asso_relation),
           trim(in_asso_address),
           trim(in_asso_tele),
           trim(in_asso_zip),
           nvl(in_doctor_id, hospital.login.get_workerid),
           sysdate,
           in_remark,
           nvl(in_education, v_patient.education),
           nvl(in_regionid, v_patient.regionid),
           in_in_diagnose_id,
           in_resident_deptid,
           '����Ժ');
        out_id := v_id;
    end;
  end s_����_סԺ֤;
  ---------------------------------------------------------------------------------------------   
  procedure s_�޸�_סԺ֤״̬(in_id      in varchar2
                      ,in_op_flag in varchar2) is
    i number;
  begin
    if in_op_flag not in ('��Ժ�Ǽ�', 'ȡ����Ժ�Ǽ�')
    then
      raise_application_error(-20001, '�Ƿ���סԺ֤�޸ı�ʶ' || in_op_flag);
    end if;
    begin
      select 2
        into i
        from hospital.resident_certificate_
       where id = in_id
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                'û���ҵ�Ҫ�޸ĵ�IDΪ( ' || in_id || ' )��סԺ֤��Ϣ.;');
    end;
    if in_op_flag = '��Ժ�Ǽ�'
    then
      update hospital.resident_certificate_
         set status = '����Ժ'
       where id = in_id
         and status = '����Ժ';
    elsif in_op_flag = 'ȡ����Ժ�Ǽ�'
    then
      update hospital.resident_certificate_
         set status = '����Ժ'
       where id = in_id
         and status = '����Ժ';
    end if;
    commit;
  end;
  ---------------------------------------------------------------------------------------------   
  procedure s_ɾ��_סԺ֤(in_id in varchar2) is
    v_resident_certificate hospital.resident_certificate_%rowtype;
  begin
    begin
      select *
        into v_resident_certificate
        from hospital.resident_certificate_
       where id = in_id
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                'û���ҵ�Ҫ�޸ĵ�IDΪ( ' || in_id || ' )��סԺ֤��Ϣ.;');
    end;
    if v_resident_certificate.operator <> hospital.login.get_workerid
    then
      raise_application_error(-20001, '������¼���סԺ֤���������޸�.;');
    end if;
    delete from hospital.resident_certificate_ where id = in_id;
    commit;
  end s_ɾ��_סԺ֤;
  ---------------------------------------------------------------------------------------------   
end pres;
/
