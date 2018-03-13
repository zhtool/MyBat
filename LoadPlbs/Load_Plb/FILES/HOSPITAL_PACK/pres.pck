create or replace package pres is

  -- Author  : tiger
  -- Created : 2008/10/16 13:17:10
  -- Purpose : 把S_住院开始的存储过程收入并重写
  procedure s_住院_安排床位(in_patientid       in varchar2
                     ,in_residentid      in varchar2
                     ,in_charge_doctorid in varchar2
                     ,in_bedid           in varchar2);
  procedure s_住院_允许出院_授权(in_residentid in varchar2);
  procedure s_住院_允许出院_授权取消(in_residentid in varchar2);

  procedure s_住院_出院请求(in_patientid         in varchar2
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
  procedure s_住院_出院请求_取消(in_patientid  in varchar2
                        ,in_residentid in varchar2
                        ,in_remark     in varchar2);
  procedure s_住院_计帐费用控制(in_patientid     in varchar2
                       ,in_residentid    in varchar2
                       ,in_account_type  in varchar2
                       ,in_pay_limit     in number
                       ,in_control_limit in number);
  procedure s_住院_建立母婴关系(in_mother_residentid in varchar2
                       ,in_baby_residentid   in varchar2);
  procedure s_住院_取消母婴关系(in_mother_residentid in varchar2
                       ,in_baby_residentid   in varchar2);
  procedure s_住院_上月_结算;
  procedure s_住院_上月_结算_个人(in_residentid in varchar2);
  procedure s_住院_按月_结算_个人(in_residentid in varchar2);
  procedure s_住院_设置透支金(in_patientid  in varchar2
                      ,in_residentid in varchar2
                      ,in_fee        in varchar2);
  procedure s_住院_设置预留金(in_patientid  in varchar2
                      ,in_residentid in varchar2
                      ,in_fee        in varchar2);
  procedure s_住院_交押金(in_patientid  in varchar2
                    ,in_residentid in varchar2
                    ,in_fee_flag   in varchar2
                    ,in_use_fee    in varchar2
                    ,in_fee        in varchar2
                    ,in_bill_type  in varchar2
                    ,in_bill_no    in varchar2
                    ,in_remark     in varchar2
                    ,out_id        out varchar2);
  procedure s_住院_交押金nc(in_patientid  in varchar2
                      ,in_residentid in varchar2
                      ,in_fee_flag   in varchar2
                      ,in_use_fee    in varchar2
                      ,in_fee        in varchar2
                      ,in_bill_type  in varchar2
                      ,in_bill_no    in varchar2
                      ,in_remark     in varchar2
                      ,out_id        out varchar2);
  procedure s_住院_退押金(in_patientid  in varchar2
                    ,in_residentid in varchar2
                    ,in_pre_payid  in varchar2
                    ,in_remark     in varchar2);
  procedure s_住院_退押金nc(in_patientid  in varchar2
                      ,in_residentid in varchar2
                      ,in_pre_payid  in varchar2
                      ,in_remark     in varchar2);
  procedure s_住院_退押金_授权(in_patientid       in varchar2
                       ,in_residentid      in varchar2
                       ,in_pre_payid       in varchar2
                       ,in_withdraw_reason in varchar2);
  procedure s_住院_退押金_授权_取消(in_patientid  in varchar2
                          ,in_residentid in varchar2
                          ,in_pre_payid  in varchar2);
  -----------------------------------------------------------------------------------------------------
  procedure sp_住院预交_第三方_存款_begin(in_app_id         in varchar2
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
  procedure sp_住院预交_第三方_存款_end(in_app_id         in varchar2
                              ,in_patientid      in varchar2
                              ,in_residentid     in varchar2
                              ,in_prepay_id      in varchar2
                              ,in_is_success     in varchar2
                              ,in_login_hospid   in varchar2
                              ,in_login_deptid   in varchar2
                              ,in_login_workerid in varchar2);
  ----------------------------------------------------------------------------------------------------
  procedure sp_住院预交_第三方_冲账_begin(in_app_id     in varchar2
                                ,in_patientid  in varchar2
                                ,in_residentid in varchar2
                                ,in_pre_payid  in varchar2
                                ,in_remark     in varchar2);
  -----------------------------------------------------------------------------------------------------
  procedure sp_住院预交_第三方_冲账_end(in_app_id         in varchar2
                              ,in_patientid      in varchar2
                              ,in_residentid     in varchar2
                              ,in_prepay_id      in varchar2
                              ,in_is_success     in varchar2
                              ,in_login_hospid   in varchar2
                              ,in_login_deptid   in varchar2
                              ,in_login_workerid in varchar2
                              ,in_his_tsn        in varchar2);
  procedure s_住院_出院(in_patientid  in varchar2
                   ,in_residentid in varchar2);
  procedure s_住院_出院nc(in_patientid  in varchar2
                     ,in_residentid in varchar2);
  procedure s_住院_出院_转储(in_residentid in varchar2);
  procedure s_住院_出院_取消(in_process_no in varchar2
                      ,in_residentid in varchar2);
  procedure s_住院_出院_取消nc(in_process_no in varchar2
                        ,in_residentid in varchar2);
  --住院病例相关的部分
  procedure s_住院_诊断删除(in_residentid in varchar2
                     ,in_diagnoseid in varchar2);

  procedure s_住院_诊断增加(in_attribute  in varchar2
                     ,in_patientid  in varchar2
                     ,in_residentid in varchar2
                     ,in_diseaseid  in varchar2
                     ,in_remark     in varchar2);
  --以下是入院相关的部分
  procedure s_住院_住院登记(out_patientid              out varchar2
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
                     , --住院病人类别
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
                     , --入院年龄
                      in_age_unit                in varchar2
                     , --入院年龄单位
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
                     ,in_seq                     in varchar2 default null --第几次住院
                     ,in_confirm_seq             in varchar2 default null
                     ,in_long_term_out_patient   in varchar2 default null);

  procedure s_住院_住院登记_取消(in_patientid  in varchar2
                        ,in_residentid in varchar2);
  procedure s_住院_住院登记_修改科别(in_patientid  in varchar2
                          ,in_residentid in varchar2
                          ,in_new_deptid in varchar2);
  procedure s_住院_入院日期_修改(in_patientid  in varchar2
                        ,in_residentid in varchar2
                        ,in_new_date   in varchar2);
  procedure s_住院_新生儿登记(in_mother_residentid in varchar2
                      ,in_residentid        in varchar2
                      ,in_name              in varchar2
                      ,in_pinyin            in varchar2
                      ,in_birthday          in varchar2
                      ,in_gender            in varchar2
                      ,in_remark            in varchar2
                      ,out_patientid        out varchar2
                      ,out_residentid       out varchar2);
  procedure s_住院_修改新生儿信息(in_residentid in varchar2
                        ,in_name       in varchar2
                        ,in_pinyin     in varchar2
                        ,in_birthday   in varchar2
                        ,in_gender     in varchar2);
  procedure s_住院_新生儿登记_取消(in_patientid         in varchar2
                         ,in_residentid        in varchar2
                         ,in_mother_residentid in varchar2);
  --以下部分是转科相关的部分                                     
  procedure s_住院_转科_请求(in_residentid         in varchar2 --患者住院号
                      ,in_deptid             in varchar2 --转出科室
                      ,in_destination_deptid in varchar2 --拟转入科室
                      ,in_type               in varchar2 --转科类型：A 普通转科 B 母婴同时转科 C 母亲转科、婴儿不专科 D 婴儿转科、母亲不转科
                      ,in_remark             in varchar2);
  procedure s_住院_转科_请求_取消(in_residentid in varchar2 --患者住院号
                          );
  procedure s_住院_转科_转入(in_residentid in varchar2);
  procedure s_住院_转科_拒绝转入(in_residentid in varchar2);
  procedure s_住院_病历首页_生成(in_residentid in varchar2
                        ,in_reason     in varchar2);
  procedure s_修改住院号(in_old_residentid in varchar2
                   ,in_new_residentid in varchar2);
  --空费金额部分
  procedure s_住院_交报销控制金额(in_patientid  in varchar2
                        ,in_residentid in varchar2
                        ,in_fee        in varchar2
                        ,out_seq       out varchar2);
  procedure s_住院_退报销控制金额(in_patientid  in varchar2
                        ,in_residentid in varchar2
                        ,in_seq        in varchar2);
  --新病人登记
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
  --     tiger      2009/01/17 - 引入包并重写
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
  procedure s_修改病人姓名授权(in_patientid in varchar2
                      ,in_old_name  in varchar2
                      ,in_new_name  in varchar2);
  procedure s_修改病人姓名授权_取消(in_patientid in varchar2
                         ,in_seq       in varchar2);
  --知识字典维护                          
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
  --门诊病人日志登记
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
                                      ,in_血压高压值           in varchar2 default null
                                      ,in_血压低压值           in varchar2 default null
                                      ,in_血压单位             in varchar2 default null
                                      ,in_血糖值               in varchar2 default null
                                      ,in_血糖单位             in varchar2 default null
                                      ,in_revise_reason        in varchar2 default null);
  procedure s_门诊日志_禁用(in_id     in varchar2
                     ,in_status in varchar2);
  --中期结算
  procedure s_住院_中期结算(in_patientid      in varchar2
                     ,in_residentid     in varchar2
                     ,in_balance_date   in varchar2 default null
                     ,out_charge_billid out varchar2);
  procedure s_住院_中期结算_取消(in_patientid     in varchar2
                        ,in_residentid    in varchar2
                        ,in_charge_billid in varchar2);
  procedure s_住院_中期结算_结帐(in_patientid         in varchar2
                        ,in_residentid        in varchar2
                        ,in_charge_billid     in varchar2
                        ,in_status            in varchar2
                        ,in_patient_type      in varchar2
                        ,in_pay_bill_type     in varchar2
                        ,in_account_receiable in number --应收住院费总额  Account_receiable
                        ,in_total_fee         in number --实收 Total_fee
                        ,in_pre_pay           in number --预交款金额  Pre_pay
                        ,in_pay_lack          in number --补交金额 Pay_lack
                        ,in_back_fee          in number --退款金额 Back_fee
                        ,in_diff_fee          in number --欠费金额 Diff_fee
                        ,in_account           in number --明细项目记帐  Account
                        ,in_account_pay       in number --报销部分 Account_pay
                        ,in_self_pay          in number --个人支付self_pay
                        ,in_third_assure      in number --第三方担保金额
                        ,in_third_info        in varchar2 --第三方担保信息
                        ,in_hospital_pay      in number);
  procedure s_住院_中期结算_结帐_取消(in_patientid     in varchar2
                           ,in_residentid    in varchar2
                           ,in_charge_billid in varchar2);
  procedure s_住院_请假(in_residentid in varchar2
                   ,in_reason     in varchar2);
  procedure s_住院_请假_销假(in_residentid in varchar2);
  function get_住院病人_是否请假(in_residentid in varchar2) return integer;
  procedure verify_valid_身份证号(in_id in varchar2);
  function get_birthday_from_身份证号(in_id in varchar2) return varchar2;
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

  procedure s_设置_先住院后结算标志(in_patientid  in varchar2
                         ,in_residentid in varchar2
                         ,in_no_pre_pay in varchar2);
  procedure s_住院患者_医保扩展信息(in_residentid           in varchar2
                         ,in_住院次数             in varchar2
                         ,in_本年度累计统筹       in varchar2
                         ,in_本年度累计公务员补助 in varchar2
                         ,in_享受长期门诊标志     in varchar2
                         ,in_享受公务员补助标志   in varchar2
                         ,in_医疗照顾类别         in varchar2);
  procedure s_新建_住院证(in_patientid in varchar2
                    ,out_id       out varchar2);
  procedure s_修改_住院证(in_id              in varchar2
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

  procedure s_保存_住院证(in_id              in varchar2
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
  procedure s_修改_住院证状态(in_id      in varchar2
                      ,in_op_flag in varchar2);
  procedure s_删除_住院证(in_id in varchar2);
end pres;
/
create or replace package body pres is
  -- 定义 in_success 值常量
  in_success_ok   constant varchar2(1) := '0';
  in_success_fail constant varchar2(2) := '-1';
  -------------------------------------------------------------------------------------------------------------------
  -- 业务标记数据字典常量定义
  attribute_交款     constant varchar2(10) := 'A';
  attribute_已退     constant varchar2(10) := 'B';
  attribute_已下账   constant varchar2(10) := 'C';
  attribute_开始存款 constant varchar2(20) := 'CHARGE_BEGIN';
  attribute_存款失败 constant varchar2(20) := 'CHARGE_FAIL';
  attribute_开始冲账 constant varchar2(20) := 'WITHDRAW_BAGIN';
  -----------------------------------------------------------------------------------------------------
  --20160324  s_住院_新生儿登记_取消 调用以下函数
  --hospital.s_病历_住院登记_取消(in_patientid, in_residentid);
  --hospital.s_护理_住院登记_取消(in_patientid, in_residentid);
  procedure prv_修改住院号(in_old_residentid in varchar2
                     ,in_new_residentid in varchar2);
  procedure prv_get_age(in_birthday  in date
                       ,out_age      out varchar2
                       ,out_age_unit out varchar2
                       ,in_from_date date default null);
  -----------------------------------------------------------------------------------------------------
  procedure prv_住院_建立母婴关系(in_mother_residentid in varchar2
                         ,in_baby_residentid   in varchar2);
  -----------------------------------------------------------------------------------------------------
  procedure prv_住院_取消母婴关系(in_mother_residentid in varchar2
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
                              '非法的行政区域编码( ' || in_regionid || ' ).;');
  end;
  -----------------------------------------------------------------------------------------------------
  function get_住院病人_是否请假(in_residentid in varchar2) return integer is
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
  procedure prv_验证_住院病人_未请假(in_residentid in varchar2) is
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
                                '该病人已经请假,不能进行当前的操作.;');
      end if;
    exception
      when no_data_found then
        null;
    end;
  end;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/16 - 引入包并重写,病改名
  --     原名:  s_住院_病历首页_生成
  --     tiger      2013/08/05 - 所有患者均生成病案首页
  --     tiger      2008/09/16 - 取消提交
  --     tiger      2006/12/27 - 增加系统选项，设置部分值的默认值
  --     tiger      2006/06/08 - Blood_type 缺省为未查
  --     tiger      2006/05/27 - Rh缺省为 '0'=未做
  --     tiger      2005/01/17 - 修改一些缺省值: 西医院治疗方法缺省为西医 ,Rh=阳性                        
  --     tiger      2003/08/15 - 急诊科病人不需要病历首页 
  --     tiger      2000/12/21 - 新生儿不需要产生病例
  --     tiger      2000/08/19 - REWRITE  合并表 resident_register & resident_info
  procedure prv_住院_病历首页_生成(in_residentid in varchar2
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
                              '住院号为( ' || in_residentid || ' )的病例首页已经存在.;');
    exception
      when no_data_found then
        null;
    end;
  
    if instr(get_system_option('医院名称'), '中医') = 0
    then
      v_treat_type := '2'; --西医
    else
      v_treat_type := '1'; --中医
    end if;
    if in_residentid is null
    then
      raise_application_error(-20001, '住院号不能为空.;');
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
                                '住院号(' || in_residentid || ')不存在.;');
      when too_many_rows then
        raise_application_error(-20001,
                                '住院号(' || in_residentid || ')存在多条入院记录.;');
    end;
  
    if in_reason = 'S_住院_住院登记'
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
                                '编号为' || t_resident_info.patientid ||
                                '的病人信息不存在.;');
    end;
  
    v_sample_quality_doctorid := get_system_option('病案首页_质量控制医师');
    if v_sample_quality_doctorid is not null
    then
      verify_worker(v_sample_quality_doctorid, '质量控制医师');
    end if;
    v_sample_quality_nurseid := get_system_option('病案首页_质量控制护士');
    if v_sample_quality_nurseid is not null
    then
      verify_worker(v_sample_quality_doctorid, '质量控制护士');
    end if;
    v_case_trim_workerid := get_system_option('病案首页_病案整理者');
    if v_sample_quality_nurseid is not null
    then
      verify_worker(v_case_trim_workerid, '病案整理者');
    end if;
    v_code_workerid := get_system_option('病案首页_编码员');
    if v_sample_quality_nurseid is not null
    then
      verify_worker(v_code_workerid, '编码员');
    end if;
    v_hbsag := nvl(get_system_option('病案首页_HBSAG_默认值'), '1');
    v_hcvab := nvl(get_system_option('病案首页_HCVAB_默认值'), '1');
    v_hivab := nvl(get_system_option('病案首页_HIVAB_默认值'), '1');
    begin
      select pay_method
        into v_pay_method
        from hospital.resident_info
       where residentid = in_residentid
         and process_reason = 'IN';
    exception
      when no_data_found then
        v_pay_method := nvl(get_system_option('病案首页_PAY_METHOD_默认值'),
                            '4');
    end;
    if nvl(v_pay_method, '请选择') not in
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
       v_pay_method, --PAY_METHOD自费,
       t_patient.name,
       t_patient.gender,
       t_patient.birthday,
       t_resident_info.age,
       t_resident_info.age_unit,
       t_patient.marry_status,
       nvl(t_patient.profession,
           nvl(hospital.get_system_option('患者登记_默认职业'), '农民')),
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
       '3', --IN_STATE      一般                 ,
       '1', --IN_WAY        门诊                 ,
       '2', --TREATED_BEFORE_IN  无             ,
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
       '1', --USER_DEFINE2 病人来源-本市                  ,
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
  end prv_住院_病历首页_生成;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/16 - 引入包并重写,并改名
  --     原名:  s__住院_交押金_处理
  --   tiger  2009/09/17  T类型为限时担保，IN_BILL_NO ,是限定时间,如果不输入金额，默认为100000
  --   tiger  2008/04/11  bank类型的作为和现金同样处理编号
  --   tiger  2006/07/05  按照工作场所指定编号
  --   tiger  2004/11/28  输出预交金编号
  --   tiger  2002/09/13  --在resident_patient中引入字段assurance
  --                      --把预交金和担保分开处理
  --   tiger  2002/09/01  create
  procedure prv_住院_交押金_处理(in_patientid  in varchar2
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
    verify_valid_number(in_fee, '金额');
    verify_field_dict('PRE_PAY', 'BILL_TYPE', in_bill_type, '缴费方式');
    begin
      select field_value
        into v_limittype
        from hospital.field_dict_
       where table_name = 'PRE_PAY'
         and field_name = 'BILL_TYPE'
         and remark = '时限控制'
         and field_value = in_bill_type;
      hospital.verify_not_null(in_fee_flag, '担保时限');
      verify_valid_date(in_fee_flag, '担保截止时间');
      v_withdraw_date := get_date_from_str(in_fee_flag);
      if v_withdraw_date <= sysdate
      then
        raise_application_error(-20001, '担保时限必须大于当前时间.;');
      end if;
    exception
      when no_data_found then
        null;
    end;
    if in_bill_type not in (v_limittype)
    then
      verify_field_dict('PRE_PAY', 'FEE_FLAG', in_fee_flag, '金额限制方式');
    end if;
    verify_length(in_remark, 100, '备注');
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
        raise_application_error(-20001, '预交金额必须大于0');
      end if;
      if to_number(nvl(in_use_fee, 0)) <> 0
      then
        raise_application_error(-20001, '担保金额必须为0');
      end if;
    elsif in_bill_type in ('D', 'E', 'F', 'G', 'H')
    then
      if to_number(nvl(in_use_fee, 0)) < 0
      then
        raise_application_error(-20001, '担保金额必须大于0');
      end if;
      if to_number(nvl(in_fee, 0)) <> 0
      then
        raise_application_error(-20001, '预交金额必须为0');
      end if;
    end if;
    if nvl(get_system_option('预交金_结算后允许交纳'), 'Y') = 'N'
    then
      if t_resident_info.process_reason = 'OUT'
         and t_resident_info.finish_flag in ('WAIT_PAY', 'FINISHED')
      then
        raise_application_error(-20001,
                                '该病人已经作了出院结算，不能交纳预交金.;');
      end if;
    end if;
    if nvl(get_system_option('预交金_结帐后允许交纳'), 'Y') = 'N'
    then
      if t_resident_info.process_reason = 'OUT'
         and t_resident_info.finish_flag in ('FINISHED')
      then
        raise_application_error(-20001,
                                '该病人已经作了出院结算，不能交纳预交金.;');
      end if;
    end if;
    if in_bill_type in
       ('A', 'B', 'C', 'BANK', 'BANK1', 'BANK2', 'BANK3', 'BANK4')
    then
      if get_system_option('按照工作地点分配发票号段住院预交金') = 'Y'
      then
        invoice_man.s_使用发票('住院预交金', v_ticket_no);
        t_bill_no := lpad(ltrim(rtrim(to_char(v_ticket_no))), 10, '0');
      elsif get_system_option('按照职员分配发票号段住院预交金') = 'Y'
      then
        invoice_man.s_使用发票('住院预交金', v_ticket_no);
        t_bill_no := lpad(ltrim(rtrim(to_char(v_ticket_no))), 10, '0');
      elsif get_system_option('编号自动产生_现金预交款收据号') = 'Y'
      then
        t_bill_no := s_预交款_编号_读取;
        s_预交款_编号_使用(t_bill_no);
      elsif get_system_option('编号自动产生_公司_现金预交款收据号') = 'Y'
      then
        select companyid
          into v_companyid
          from all_department
         where id = t_resident_info.deptid;
        t_bill_no := s_预交款_公司_编号读取(v_companyid);
        s_预交款_公司_编号_使用(v_companyid);
      elsif get_system_option('编号自动产生_发票号=ID号') = 'Y'
      then
        null;
      else
        verify_not_null(in_bill_no, '预交款收据号');
        begin
          select 2
            into i
            from pre_pay
           where bill_no = in_bill_no
             and rownum = 1;
          raise_application_error(-20001,
                                  '收据号为' || in_bill_no ||
                                  '的收据已经存在,请重新换一个编号.;');
        exception
          when no_data_found then
            null;
        end;
        t_bill_no := in_bill_no;
      end if;
    end if;
  
    begin
      v_limit := to_number(nvl(get_system_option('预交金_单笔预交金最大限额'),
                               '10000'));
    exception
      when others then
        raise_application_error(-20001,
                                '系统选项设置错误，请联系系统管理员.;');
    end;
    if in_fee > v_limit
    then
      raise_application_error(-20001,
                              '单笔预交金最大限额为( ' || v_limit || ' 元).;');
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
  end prv_住院_交押金_处理;
  ---------------------------------------------------------------------------
  --     tiger      2008/10/21 - 引入包并重写,并改名
  --     原名:  S_住院号_编号_锁定
  --  tiger 2000/12/12 - create
  procedure prv_住院号_编号_锁定(in_id in varchar2) as
    t_table_nextid table_nextid%rowtype;
  begin
    verify_not_null(in_id, '住院号编号');
    begin
      select *
        into t_table_nextid
        from table_nextid
       where hospid = get_login_hospid
         and deptid is null
         and next_id_type = '住院号编号'
         and nextid = in_id
         and status = 'UNLOCKED'
         and record_type in ('DELETED', 'CATCHED')
         for update of status nowait;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '没找到需要锁定的住院号编号' || in_id || '.;');
      when too_many_rows then
        raise_application_error(-20001,
                                '找到多条需要锁定的住院号编号' || in_id || '.;');
      when others then
        raise_application_error(-20001,
                                '其他人正在操作,请等候一段时间执行.;');
    end;
    update table_nextid
       set status = 'LOCKED'
     where hospid = get_login_hospid
       and deptid is null
       and nextid = in_id
       and next_id_type = '住院号编号'
       and status = 'UNLOCKED'
       and record_type in ('DELETED', 'CATCHED');
  end prv_住院号_编号_锁定;
  ---------------------------------------------------------------------------
  procedure prv_住院号_编号_验证 as
    t_table_nextid table_nextid%rowtype;
    v_next_id      varchar2(20);
  begin
    if nvl(hospital.get_system_option('住院登记_住院号使用年份作为前缀'),
           'N') = 'Y'
    then
      begin
        select *
          into t_table_nextid
          from table_nextid
         where deptid is null
           and hospid = get_login_hospid
           and next_id_type = '住院号编号'
           and record_type = 'INDICATOR'
           for update nowait;
      exception
        when no_data_found then
          raise_application_error(-20001,
                                  '请在住院号管理中分配一段住院号.;');
        when too_many_rows then
          raise_application_error(-20001, '找到多个产生序号的标准.;');
        when others then
          raise_application_error(-20001, '其他人正在操作，请稍候重试.;');
      end;
      --当前缀年份相差一年时,自动变换年份
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
           and next_id_type = '住院号编号'
           and record_type = 'INDICATOR';
        --删除按照旧规则已经产生但未被使用的住院号
        delete from table_nextid
         where deptid is null
           and hospid = get_login_hospid
           and next_id_type = '住院号编号'
           and record_type = 'CATCHED'
           and status = 'UNLOCKED';
        commit;
      end if;
    end if;
  end prv_住院号_编号_验证;
  ---------------------------------------------------------------------------
  -- 2016/12/16  增加以年份作为前缀，并自动根据系统时间更新前缀
  --     tiger      2008/10/21 - 引入包并重写,并改名
  --     原名:  S_住院号_编号_产生
  --  tiger 2000/12/12 - create
  procedure prv_住院号_编号_产生(out_id out varchar2) as
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
         and next_id_type = '住院号编号'
         and record_type = 'INDICATOR'
         for update nowait;
    exception
      when no_data_found then
        raise_application_error(-20001, '请在住院号管理中分配一段住院号.;');
      when too_many_rows then
        raise_application_error(-20001, '找到多个产生序号的标准.;');
      when others then
        raise_application_error(-20001, '其他人正在操作，请稍候重试.;');
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
         '住院号编号',
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
         and next_id_type = '住院号编号'
         and record_type = 'INDICATOR';
    else
      delete from table_nextid
       where hospid = get_login_hospid
         and deptid is null
         and next_id_type = '住院号编号'
         and record_type = 'INDICATOR';
    end if;
  end prv_住院号_编号_产生;
  ---------------------------------------------------------------------------
  --     tiger      2008/10/21 - 引入包并重写,并改名
  --     原名:      s_住院号_编号_使用
  --     tiger      2000/12/12 - create
  procedure prv_住院号_编号_使用(in_id in varchar2) as
    t_table_nextid table_nextid%rowtype;
  begin
    verify_not_null(in_id, '住院号编号');
    begin
      select *
        into t_table_nextid
        from table_nextid
       where hospid = get_login_hospid
         and deptid is null
         and next_id_type = '住院号编号'
         and nextid = in_id
         and status = 'LOCKED'
         for update of status nowait;
    exception
      when no_data_found then
        raise_application_error(-20001, '没找到需要锁定的领物单编号.;');
      when too_many_rows then
        raise_application_error(-20001, '找到多条需要锁定的领物单编号.;');
      when others then
        raise_application_error(-20001,
                                '其他人正在操作,请等候一段时间执行.;');
    end;
    delete from table_nextid
     where hospid = get_login_hospid
       and deptid is null
       and next_id_type = '住院号编号'
       and nextid = in_id
       and status = 'LOCKED';
  end prv_住院号_编号_使用;
  ---------------------------------------------------------------------------
  --     tiger      2008/10/21 - 引入包并重写,并改名
  --     原名:      S_住院号_编号_回收
  --     tiger      2000/12/12 - create
  procedure prv_住院号_编号_回收(in_id in varchar2) as
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
         and next_id_type = '住院号编号'
         and rownum = 1;
      raise_application_error(-20001, '出现不该出现的住院号编号.;');
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
         and next_id_type = '住院号编号'
         and record_type = 'INDICATOR';
    exception
      when no_data_found then
        raise_application_error(-20001, '找不到产生住院号的标准.;');
      when too_many_rows then
        raise_application_error(-20001, '找到多个产生住院号的标准.;');
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
  end prv_住院号_编号_回收;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/21 - 引入包并重写,并改名
  --     原名:      S_住院号_编号_读取
  --     tiger      2000/12/12 - create
  function prv_住院号_编号_读取 return varchar2 as
    t_id resident_info.residentid%type;
    i    number;
  begin
    select count(*)
      into i
      from table_nextid
     where hospid = get_login_hospid
       and deptid is null
       and next_id_type = '住院号编号'
       and record_type in ('DELETED', 'CATCHED')
       and status = 'UNLOCKED';
    if i <= 1
    then
      prv_住院号_编号_产生(t_id);
    end if;
    select min(nextid)
      into t_id
      from table_nextid
     where hospid = get_login_hospid
       and deptid is null
       and next_id_type = '住院号编号'
       and record_type in ('DELETED', 'CATCHED')
       and status = 'UNLOCKED';
    prv_住院号_编号_锁定(t_id);
    return t_id;
  end prv_住院号_编号_读取;
  -----------------------------------------------------------------------------------------------------
  function prv_住院号_编号_取消产生(in_old_residentid in varchar2) return varchar2 as
    t_id resident_info.residentid%type;
  begin
    select hospital.login.get_hospid || '.' ||
           hospital.pres.get_resident_id(in_old_residentid) ||
           to_char(sysdate, 'yyyymmddhh24mmss') || '.1'
      into t_id
      from dual;
    return t_id;
  end prv_住院号_编号_取消产生;

  -------------------------------------------------------------------------------------
  --     tiger      2013/09/10 - 判断患者是否可以进行转科请求操作
  procedure prv_住院_转科_请求_前提判断(in_residentid         in varchar2
                             ,in_deptid             in varchar2
                             ,in_destination_deptid in varchar2 --拟转入科室
                             ,in_type               in varchar2 --转科类型：A 普通转科 B 母婴同时转科 C 母亲转科、婴儿不转科 D 婴儿转科、母亲不转科
                             ,in_remark             in varchar2) is
    i                  number;
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    --取消住院授权管理
    checkout.s_判断_是否有取消出院操作(t_resident_info.residentid);
    if t_resident_info.process_reason = 'OUT'
    then
      raise_application_error(-20001, '该病人已经做了出院请求,不能转科.;');
    elsif t_resident_info.process_reason = 'CHANGEDEPT'
    then
      if t_resident_info.finish_flag = 'WAIT_ACC'
      then
        raise_application_error(-20001, '该病人已经做了转科请求.;');
      elsif t_resident_info.finish_flag = 'FINISHED'
      then
        if t_resident_patient.status in ('WAIT_BED', 'NORMAL')
        then
          null;
        else
          raise_application_error(-20001, '该病人已经做了转科请求.;');
        end if;
      elsif t_resident_info.finish_flag = 'WAIT_DEPT'
      then
        raise_application_error(-20001,
                                '该病人已经做了转科请求,请做转科接收.;');
      else
        raise_application_error(-20001,
                                '非法的FINISH_FLAG( ' ||
                                t_resident_info.finish_flag || ' ).;');
      end if;
    elsif t_resident_info.process_reason in ('IN', 'NEW')
    then
      null;
    else
      raise_application_error(-20001, '非法的FINISH_FLAG.;');
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
                              '住院号为(' || in_residentid ||
                              ')的病人还有未确认和没有停止的长期医嘱，不能转科.;');
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
                              '住院号为(' || in_residentid ||
                              ')的病人还有未确认的临时医嘱，不能转科.;');
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
                              '住院号为(' || in_residentid ||
                              ')的病人还有未入帐的临时医嘱，不能转科.;');
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
        prv_住院_转科_请求_前提判断(c.baby_residentid,
                          in_deptid,
                          in_destination_deptid,
                          'A',
                          in_remark);
      end loop;
    end if;
  end prv_住院_转科_请求_前提判断;
  -------------------------------------------------------------------------------------
  --     tiger      2013/08/08 - 增加拟转入科室、转科类别
  --                
  --     tiger      2010/08/06 - 支持母婴同时转科
  --     tiger      2008/11/19 - 在这个过程中实现s_住院_转科_请求的功能
  --     原名:      s_住院_转科_请求
  procedure prv_住院_转科_请求(in_residentid         in varchar2
                        ,in_deptid             in varchar2
                        ,in_destination_deptid in varchar2 --拟转入科室
                        ,in_type               in varchar2 --转科类型：A 普通转科 B 母婴同时转科 C 母亲转科、婴儿不转科 D 婴儿转科、母亲不转科
                        ,in_remark             in varchar2) is
    t_record_no        resident_patient.record_no%type;
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
    v_next_seq         number;
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    --执行所有的固定医嘱 E，F
    for c in (select *
                from order_list
               where ownerid = t_resident_info.residentid
                 and long_flag in ('E', 'F')
                 and status = 'NORMAL'
                 and status1 = 'WAIT_EXEC')
    loop
      ol_acc.s_医嘱_固定医嘱_执行nc(c);
    
    end loop;
    --停止所有的固定医嘱 F
    for c in (select a.id
                from order_list a
               where a.ownerid = t_resident_info.residentid
                 and a.long_flag = 'F'
                 and a.status = 'NORMAL'
                 and a.status1 = 'WAIT_ACC')
    loop
      ol_acc.s_医嘱_固定医嘱_停止nc(c.id);
    
    end loop;
  
    /*  
    不释放床位，等到对方转科接收后再根据情况释放床位
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
        prv_住院_转科_请求(c.baby_residentid,
                     in_deptid,
                     in_destination_deptid,
                     'A',
                     in_remark);
      end loop;
    end if;
  end prv_住院_转科_请求;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2010/08/06 - 支持母婴同时转科
  --     tiger      2008/11/19 - 改名为 prv_住院_转科_结算
  --     tiger      2008/10/20 - 引入包并重写
  --     tiger      2007/04/05 - 修改结算中的BUG
  --     tiger      2007/04/02 - 取消出院授权管理
  --     tiger      2006/06/24 - 增加优惠价格
  --     tiger      2006/05/09 -  按照每一个明细四舍五入 
  --     tiger      2002/09/26 -  增加字段 结算单类型、结算时间和结算员信息
  --     tiger      2000/10/01 -  修改CHARGE_ITEM的CHARGE_BILLID
  --     tiger      2000/09/25 -  增加结算方式：自费/在职医疗保险/离休医疗保险
  --     tiger      2000/09/22 -  增加医疗保险收费/记帐支持
  --     tiger      2000/08/19 -  REWRITE  合并表 resident_register & resident_info
  procedure prv_住院_转科_结算(in_residentid in varchar2
                        ,in_deptid     in varchar2
                        ,in_type       in varchar2) is
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
    t_charge_billid    charge_bill.id%type;
    t_fee              number;
    --把该病人在该科室的所有CHARGE_ITEM归到新的结帐单具中
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
    v_discount_type := discount_man.get_住院病人_优惠类别(t_resident_info.residentid);
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
    --验证 CHARGE_BILL,CHARGE_FEE ,CHARGE_ITEM的结算金额相等
    select sum(fee)
      into t_verify_fee
      from charge_fee
     where residentid = in_residentid
       and charge_billid = t_charge_billid;
    if nvl(t_fee, 0) <> nvl(t_verify_fee, 0)
    then
      raise_application_error(-20001,
                              '结算程序错误，charge_fee和charge_bill金额不同');
    end if;
  
    select sum(round(round(price, 3) * amount, 2))
      into t_verify_fee
      from charge_item
     where residentid = in_residentid
       and charge_billid = t_charge_billid;
    if nvl(t_fee, 0) <> nvl(t_verify_fee, 0)
    then
      raise_application_error(-20001,
                              '结算程序错误，charge_item和charge_bill金额不同');
    end if;
  
    if in_type = 'B'
    then
      for c in (select *
                  from mother_baby_relation
                 where mother_residentid = t_resident_info.residentid)
      loop
        prv_住院_转科_结算(c.baby_residentid, in_deptid, 'A');
      end loop;
    end if;
  end prv_住院_转科_结算;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2010/08/06 - 支持母婴同时转科
  --     tiger      2008/11/19 - 改名为 prv_住院_转科_结算_取消
  --     tiger      2008/10/20 - 引入包并重写
  --     tiger      2007/04/02 - 取消出院授权管理
  --     tiger      2002/09/26 -  增加字段 结算单类型、结算时间和结算员信息
  --     tiger      2000/10/01 -  对没有结帐的结算单据才可以以取消结算
  --                              当没有待结帐的结算单据后才可以取消转科结算
  --     tiger      2000/08/19 -  REWRITE  合并表 resident_register & resident_info
  procedure prv_住院_转科_结算_取消(in_residentid in varchar2
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
                              '该病人已经做了出院请求,不能取消转科结算.;');
    elsif t_resident_info.process_reason = 'CHANGEDEPT'
    then
      if t_resident_info.finish_flag = 'WAIT_ACC'
      then
        raise_application_error(-20001,
                                '该住院号为( ' || t_resident_info.residentid ||
                                ' )的病人还没有做转科结算.;');
      elsif t_resident_info.finish_flag = 'WAIT_DEPT'
      then
        if t_resident_patient.status = 'WAIT_DEPT'
        then
          null;
        else
          raise_application_error(-20001,
                                  '非法的病人状态(' || t_resident_patient.status ||
                                  ').;');
        end if;
      elsif t_resident_info.finish_flag = 'FINISHED'
      then
        raise_application_error(-20001,
                                '该病人已经做了转科接收,不能取消转科结算.;');
      else
        raise_application_error(-20001,
                                '非法的转科操作状态(' || t_resident_info.finish_flag ||
                                ').;');
      end if;
    elsif t_resident_info.process_reason in ('IN', 'NEW')
    then
      raise_application_error(-20001,
                              '该病人还没有做转科结算,不能取消转科结算.;');
    else
      raise_application_error(-20001,
                              '非法的住院处理原因(' ||
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
        prv_住院_转科_结算_取消(c.baby_residentid, 'A');
      end loop;
    end if;
  end prv_住院_转科_结算_取消;
  ---------------------------------------------------------------------------
  procedure prv_ack_病人姓名修改(in_id       in varchar2
                          ,in_old_name in varchar2
                          ,in_new_name in varchar2);
  ---------------------------------------------------------------------------
  procedure prv_住院_转科_转入(in_residentid in varchar2
                        ,in_deptid     in varchar2
                        ,in_type       in varchar2);
  ---------------------------------------------------------------------------
  procedure prv_住院_转科_请求_取消(in_residentid in varchar2
                           ,in_type       in varchar2);

  ---------------------------------------------------------------------------
  procedure prv_住院_诊断增加(in_attribute  in varchar2
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
    verify_field_dict('DIAGNOSE', 'ATTRIBUTE', in_attribute, '诊断类型');
    if in_attribute not in ('A', 'B')
    then
      raise_application_error(-20001,
                              '只允许增加"门诊(急诊)诊断"和"入院诊断".;');
    end if;
    verify_patient(in_patientid);
    verify_disease(in_diseaseid);
    verify_length(in_remark, 20, '备注');
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
                                                  in_attribute) || '为' ||
                              get_disease_name(in_diseaseid) || '的记录已经加入.;');
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
  end prv_住院_诊断增加;
  ---------------------------------------------------------------------------
  procedure prv_病案_编目_诊断增加(in_attribute  in varchar2
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
    verify_field_dict('DIAGNOSE', 'ATTRIBUTE', in_attribute, '诊断类型');
    if in_attribute not in ('A', 'B')
    then
      raise_application_error(-20001,
                              '只允许增加"门诊(急诊)诊断"和"入院诊断".;');
    end if;
    verify_patient(in_patientid);
    verify_disease(in_diseaseid);
    verify_length(in_remark, 20, '备注');
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
                                                  in_attribute) || '为' ||
                              get_disease_name(in_diseaseid) || '的记录已经加入.;');
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
  end prv_病案_编目_诊断增加;
  ---------------------------------------------------------------------------
  procedure s_住院_出院_转储nc(in_residentid in varchar2);
  ---------------------------------------------------------------------------
  --     tiger      2008/10/16 - 引入包并重写
  --     tiger      2007/10/22 - 增加提示信息:找不到床位费或者编码为xxx的杂费
  --     tiger      2007/04/02 - 取消出院授权管理
  --     tiger      2006/03/12 - 查询床位费，如果没有名称为"床位费"的杂费，程序出错
  --     tiger      2006/01/24 - 增加床位费调用 s_医嘱_子医嘱_杂费_增加,使得床位费可以跟踪子医嘱.
  --     tiger      2005/11/10 - 要停止的床位费编号从原来的床位信息中读取
  --     tiger      2005/04/11 - 医嘱自动床位费杂费从bed表中读取，
  --     tiger      2004/12/01 - 调用 rpt_dr.s_arrange_bed统计主治医师病人动态数据
  --     tiger      2001/06/07 - 如果没有病历首页信息，请自动生成之
  --     tiger      2000/08/19 -  REWRITE  合并表 resident_register & resident_info
  procedure s_住院_安排床位(in_patientid       in varchar2
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
    verify_not_null(in_charge_doctorid, '主治医士');
    user_permit.s_ack_处方权(in_charge_doctorid);
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
  
    if nvl(t_resident_info.bedid, 'xxx') = in_bedid
       and t_resident_patient.status <> 'WAIT_BED'
       and nvl(t_resident_info.charge_doctorid, 'yyy') = in_charge_doctorid
    then
      return; --床位和医生相同，无需安排
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
                              '婴儿的床位跟着母亲走，不能单独安排床位.;');
    end if;
  
    if t_resident_info.process_reason = 'OUT'
    then
      raise_application_error(-20001, '该病在等待出院，不能安排床位.;');
    elsif t_resident_info.process_reason = 'IN'
    then
      null;
    elsif t_resident_info.process_reason = 'CHANGEDEPT'
    then
      if t_resident_info.finish_flag = 'FINISHED'
      then
        if t_resident_patient.status = 'WAIT_DEPT'
        then
          raise_application_error(-20001, '该病在等待转科，不能安排床位.;');
        elsif t_resident_patient.status in ('NORMAL', 'WAIT_BED')
        then
          null;
        else
          raise_application_error(-20001,
                                  '非法的病人状态' || t_resident_patient.status || '.;');
        end if;
      elsif t_resident_info.finish_flag = 'WAIT_ACC'
      then
        if t_resident_patient.status = 'WAIT_ACC'
        then
          raise_application_error(-20001,
                                  '病人正在等待转科结算，不能安排床位.;');
        else
          raise_application_error(-20001,
                                  '非法的病人状态'
                                  
                                  || t_resident_patient.status || '.;');
        end if;
      else
        raise_application_error(-20001,
                                '非法的FINISH_FLAG状态' ||
                                t_resident_info.finish_flag || '.;');
      end if;
    else
      raise_application_error(-20001,
                              '非法的PROCESS_REASON' ||
                              t_resident_info.process_reason || '.;');
    end if;
  
    --判断床位性别信息
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
                                '该病人是男性，床位是女床,不能这样安排.;');
      end if;
    elsif t_bed.gender = 'M'
    then
      if v_gender = 'F'
      then
        raise_application_error(-20001,
                                '该病人是女性，床位是男床,不能这样安排.;');
      end if;
    end if;
  
    v_input_deptid := hospital.login.get_deptid;
    if nvl(t_resident_info.deptid, '2') <> nvl(v_input_deptid, '1')
    then
      if is_worker_login_dept(hospital.login.get_workerid,
                              t_resident_info.deptid) <> 0
      then
        raise_application_error(-20001,
                                '你现在是以' || get_dept_name(v_input_deptid) ||
                                '的身份登录,不允许对' ||
                                get_dept_name(t_resident_info.deptid) ||
                                '病人医嘱进行处理 .;');
      else
        raise_application_error(-20001,
                                '非临床科室和辅助科室不能录入医嘱。');
      end if;
    end if;
  
    verify_worker(in_charge_doctorid, '主治医师');
    s_ack_住院病人医生同科室(t_resident_info.residentid,
                    in_charge_doctorid,
                    '主治医师选择有误');
  
    if t_resident_info.bedid <> in_bedid
       and t_bed.status like 'A%'
    then
      raise_application_error(-20001, '该床位(' || in_bedid || ')有人住.;');
    end if;
  
    --取消住院授权管理
    --checkout.s_判断_是否有取消出院操作(t_resident_info.residentid);
  
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
    --怀疑某种情况先，不能产生病案首页，因此提前病案首页产生过程
    --产生病案首页提前，防止后面自动录入医嘱等错误，导致不能产生病案首页
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
             reason          = 'S_住院_安排床位',
             home_bed        = decode(t_bed.attribute, 'C', 1, 0)
       where residentid = t_resident_info.residentid;
    exception
      when no_data_found then
        prv_住院_病历首页_生成(t_resident_info.residentid, 'S_住院_安排床位');
        update case_page1
           set in_room         = in_bedid,
               charge_doctorid = in_charge_doctorid,
               reason          = 'S_住院_安排床位',
               home_bed        = decode(t_bed.attribute, 'C', 1, 0)
         where residentid = t_resident_info.residentid;
      when others then
        raise_application_error(-20001,
                                '其他人正在操作住院号为( ' ||
                                t_resident_info.residentid ||
                                ' )的病案首页,请稍候重试.;');
    end;
  
    --未牛排床位患者，直接转科，造成记录号类型IN的入院时间为空值
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
    if nvl(get_system_option('安排床位时自动录入床位费'), 'Y') = 'Y'
    then
      -- 停止以前的床位费、增加新的床位费
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
           where name = '床位费'
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
            ol_input.s_医嘱_医嘱_确认_取消nc(c.id, 'NURSE');
            ol_input.s_医嘱_医嘱_增加_取消_nc(c.id);
          else
            if c.status in ('WAIT_ACK')
            then
              ol_input.s_医嘱_医嘱_增加_取消_nc(c.id);
            else
              if c.status1 = 'WAIT_EXEC'
              then
                ol_exec.s_医嘱_医嘱_执行nc(c.id);
              end if;
              ol_stop.s_医嘱_医嘱_停止nc(c.id,
                                   sysdate,
                                   c.start_workerid,
                                   hospital.login.get_workerid);
            end if;
          end if;
        end loop;
      
        --增加新的床位费
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
                                      '找不到编号为( ' || t_bed.sundry_feeid ||
                                      ' )的杂费.;');
          end;
          ol_input.s_医嘱_子医嘱_杂费_增加_nc(null,
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
          if nvl(get_system_option('录入杂费名称为床位费的医嘱'), 'Y') = 'Y'
          then
            begin
              select id
                into v_new_sundry_feeid
                from sundry_fee
               where name = '床位费'
                 and rownum = 1;
            exception
              when no_data_found then
                raise_application_error(-20001,
                                        '找不到名称为床位费的杂费.;');
            end;
            v_price := t_bed.price;
            ol_input.s_医嘱_子医嘱_杂费_增加_nc(null,
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
      
        if nvl(get_system_option('安排床位后确认医嘱'), 'Y') = 'Y'
           and v_order_listid is not null
        then
          ol_input.s_医嘱_医嘱_确认_nc(v_order_listid, 'NURSE');
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
  end s_住院_安排床位;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2011/06/23 - 对于有待确认、带入账、未停止医嘱的，提示具体的未处理医嘱科室
  --                             增加系统选项 ID=出院请求_临时医嘱必须要执行 NAME=Y/N default=N
  --     tiger      2010/09/20 - 增加出院授权 ID='出院请求_需要医师授权'  name= {Y,N} default = N
  --     tiger      2008/10/21 - 增加系统选项 ID = '出院请求_判断医嘱领药已经出库' name = {Y,N}  DEFAULT=N 
  --     tiger      2008/10/16 - 引入包并重写
  --     tiger      2007/10/11 - 提前修改转科病人旧信息中的出科时间，然后增加新的记录 
  --     tiger      2007/01/14 - 删除dr_order_list_info信息
  --     tiger      2006/10/31 - 停止所有的固定医嘱(E,F)
  --     tiger      2006/09/21 - 修改病案首页出院时间 = nvl(out_date,sysdate)
  --     tiger      2006/06/01 - 修改住院流程，对于医疗保险病人增加医保审核功能
  --     tiger      2004/12/02 - 调用rpt_dr.s_out_request统计主治医师病人动态数据
  --     tiger      2004/05/25 - 处理错误，多个婴儿出现错误，返回多行
  --     tiger      2003/08/16 - 取消改变病历首页的状态
  --     TIGER      2001/11/03 - 修改处方状态为 WAIT_ACK , WAIT_PAY, WAIT_MIX, FINISHED ,WITHDRAWED
  --     tiger      2001/10/15 - 增加职员的登录部门、门诊核算部门和住院核算部门管理
  --     tiger      2001/05/16 -  如果没有病历首页信息，重新生成一个. 
  --     tiger      2000/08/27 -  出院请求时，增加修改病案首页中的数据.
  --     tiger      2000/08/19 -  REWRITE  合并表 resident_register & resident_info
  procedure s_住院_出院请求(in_patientid         in varchar2
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
      raise_application_error(-20001, '该病人已经作了出院请求.;');
    elsif t_resident_info.process_reason = 'CHANGEDEPT'
    then
      if t_resident_info.finish_flag = 'WAIT_ACC'
      then
        raise_application_error(-20001,
                                '该病人已经作了转科请求，正在等待转科结算，不能做出院请求.;');
      elsif t_resident_info.finish_flag = 'FINISHED'
      then
        if t_resident_patient.status in ('WAIT_BED', 'NORMAL')
        then
          null;
        elsif t_resident_patient.status = 'WAIT_DEPT'
        then
          raise_application_error(-20001,
                                  '该病人已经作了转科结算，正在等待转入其他科室，不能做出院请求.;');
        else
          raise_application_error(-20001,
                                  '非法的RESIDENT_PATIENT状态' ||
                                  t_resident_patient.status || '.;');
        end if;
      else
        raise_application_error(-20001,
                                '非法的FINISH_FLAG状态' ||
                                t_resident_info.finish_flag || '.;');
      end if;
    elsif t_resident_info.process_reason in ('IN', 'NEW')
    then
      null;
    else
      raise_application_error(-20001,
                              '非法的PROCESS_REASON状态' ||
                              t_resident_info.process_reason || '.;');
    end if;
    prv_验证_住院病人_未请假(t_resident_patient.residentid);
  
    if nvl(get_system_option('出院请求_欠费患者不允许出院请求'), 'N') = 'Y'
    then
      s_ack_住院费用足够(t_resident_info, 0);
    end if;
  
    begin
      select 2
        into i
        from hospital.patient_pathway
       where residentid = t_resident_info.residentid
         and status = 'NORMAL'
         and rownum = 1;
      raise_application_error(-20001, '请退出临床路径后，再做出院请求.;');
    exception
      when no_data_found then
        null;
    end;
  
    if nvl(get_system_option('出院请求_需要医师授权'), 'N') = 'Y'
    then
      begin
        select 2
          into i
          from resident_patient_out_authorize
         where residentid = t_resident_patient.residentid
           and rownum = 1;
      exception
        when no_data_found then
          raise_application_error(-20001, '该病人还没有授权，不能出院.;');
      end;
    end if;
  
    select attribute
      into v_worker_attr
      from worker
     where id = hospital.login.get_workerid;
    user_permit.s_ack_出院请求(t_resident_info.deptid, v_worker_attr);
  
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
                              '必须先给新生儿报出院,然后母亲才能报出院.;');
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
                              '以下科室还有待确认的医嘱:' || chr(10) || t_dept_name ||
                              '请先处理这些医嘱.;');
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
                              '以下科室还有未停止的长期医嘱:' || chr(10) || t_dept_name ||
                              '请先处理这些医嘱.;');
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
                              '以下科室还有有未入帐的临时医嘱:' || chr(10) || t_dept_name ||
                              '请先处理这些医嘱.;');
    end if;
  
    if nvl(get_system_option('出院请求_临时医嘱必须要执行'), 'N') = 'Y'
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
                                '以下科室还有有未执行的临时医嘱:' || chr(10) ||
                                t_dept_name || '请先处理这些医嘱.;');
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
                              '该病人还有处方已经入帐,但是没有出库.;');
    exception
      when no_data_found then
        null;
    end;
  
    if nvl(get_system_option('出院请求_判断医嘱领药已经出库'), 'N') = 'Y'
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
                                '单据编号为( ' || v_circulation_ticketid ||
                                ' )的' ||
                                hospital.get_field_dict_name('CIRCULATION_TICKET',
                                                             'TYPE',
                                                             v_circulation_ticket_type) ||
                                '包括要出院病人的药品，还没有配药，请先处理该单据,;');
      exception
        when no_data_found then
          null;
      end;
    end if;
  
    if nvl(get_system_option('出院请求_判断出院主要诊断已经录入'), 'N') = 'Y'
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
                                      '该患者的出院主要诊断还没有录入,不能出院.;');
          end;
      end;
    end if;
  
    --执行所有的固定医嘱 E，F
    for c in (select *
                from order_list
               where ownerid = t_resident_info.residentid
                 and long_flag in ('E', 'F')
                 and status = 'NORMAL'
                 and status1 = 'WAIT_EXEC')
    loop
      ol_acc.s_医嘱_固定医嘱_执行nc(c);
    end loop;
    --停止所有的固定医嘱 F
    for c in (select a.id
                from order_list a
               where a.ownerid = t_resident_info.residentid
                 and a.long_flag = 'F'
                 and a.status = 'NORMAL'
                 and a.status1 = 'WAIT_ACC')
    loop
      ol_acc.s_医嘱_固定医嘱_停止nc(c.id);
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
        prv_住院_病历首页_生成(t_resident_info.residentid, 'S_住院_出院请求');
        lock_res.lock_case_page1(t_resident_info.residentid, t_case_page1);
      when others then
        raise_application_error(-20001, '其他人正在操作病案,请重试.;');
    end;
  
    verify_field_dict('CASE_PAGE1', 'IN_STATE', in_in_state, '入院时情况');
    verify_not_null(in_definite_date, '入院后确诊日期');
  
    begin
      select to_number(in_definite_date) into i from dual;
      t_definite_date := trunc(t_resident_info.in_date) + i;
    exception
      when others then
        verify_valid_date(in_definite_date, '入院后确诊日期');
        t_definite_date := get_date_from_str(in_definite_date);
    end;
    if in_blood_type is not null
    then
      verify_field_dict('PATIENT', 'BLOOD_TYPE', in_blood_type, '血型');
    end if;
    verify_field_dict('CASE_PAGE1',
                      'SAMPLE_QUALITY',
                      in_sample_quality,
                      '病案质量');
    verify_valid_number(in_rescue_times, '抢救次数');
    verify_valid_number(in_success_times, '成功次数');
    if in_rescue_times is not null
    then
      verify_not_null(in_success_times, '成功次数');
    end if;
    if nvl(to_number(in_rescue_times), 0) <
       nvl(to_number(in_success_times), 0)
    then
      raise_application_error(-20001, '成功次数不能大于抢救次数.;');
    end if;
    verify_field_dict('CASE_PAGE1',
                      'FOLLOW_FLAG',
                      in_follow_flag,
                      '是否随诊');
    if in_follow_flag = '1'
    then
      verify_not_null(in_follow_date, '随诊期限');
      begin
        select to_number(in_follow_date) into i from dual;
        t_follow_date := trunc(sysdate) + i;
      exception
        when others then
          verify_valid_date(in_follow_date, '随诊期限');
          t_follow_date := get_date_from_str(in_follow_date);
      end;
    else
      if in_follow_date is not null
      then
        raise_application_error(-20001, '请不要输入随诊期限.;');
      end if;
    end if;
    verify_field_dict('CASE_PAGE1', 'OPEN_BODY', in_open_body, '是否尸检');
    verify_field_dict('CASE_PAGE1',
                      'TEACH_FLAG',
                      in_teach_flag,
                      '示教病例');
    verify_worker(in_direct_doctorid, '主任医师');
    verify_worker(in_charge_doctorid, '主治医师');
    if in_resident_doctorid is not null
    then
      verify_worker(in_resident_doctorid, '住院医师');
    end if;
    if in_practice_doctorid is not null
    then
      verify_worker(in_practice_doctorid, '实习医师');
    end if;
    verify_not_null(in_out_date, '出院日期');
    verify_valid_date(in_out_date, '出院日期');
    if get_date_from_str(in_out_date) > sysdate
    then
      raise_application_error(-20001, '出院日期不能大于今天');
    end if;
  
    select in_date
      into v_in_date
      from case_page1
     where residentid = t_resident_info.residentid;
  
    if trunc(get_date_from_str(in_out_date)) < trunc(v_in_date)
    then
      raise_application_error(-20001, '出院日期不能小于入院日期');
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
           reason            = 'S_住院_出院请求'
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
      prv_住院_取消母婴关系(v_mother_residentid,
                            t_resident_info.residentid);
    exception
      when no_data_found then
        null;
    end;
    delete from mother_baby_relation
     where baby_patientid = in_patientid
       and baby_residentid = t_resident_patient.residentid;
    */
    qci.s_统计_住院合理用药(t_resident_info.residentid);
    commit;
    rabbitmq.publish_adt_message(in_event      => events.adt_discharge_reguest,
                                 in_residentid => in_residentid);
  end s_住院_出院请求;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/16 - 引入包并重写
  --     tiger      2007/04/02 - 取消出院授权管理
  --     tiger      2006/06/01 - 修改住院流程，对于医疗保险病人增加医保审核功能
  --     tiger      2004/12/02 - 调用rpt_dr.s_out_request统计主治医师病人动态数据
  --     tiger      2000/12/18 - 清除病理首页中出院信息 
  --     tiger      2000/05/04 - 出院请求取消后，不自动安排床位
  --     tiger      2000/08/19 -  REWRITE  合并表 resident_register & resident_info
  procedure s_住院_出院请求_取消(in_patientid  in varchar2
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
                              '该病人(' || t_resident_info.residentid ||
                              ')没有做出院请求,不能取消出院请求.;');
    elsif t_resident_info.process_reason = 'OUT'
    then
      if t_resident_info.finish_flag = 'FINISHED'
      then
        raise_application_error(-20001,
                                '该病人已经做了出院结算,不能取消转科.;');
      elsif t_resident_info.finish_flag in ('WAIT_ACC', 'WAIT_AUDIT')
      then
        null;
      else
        raise_application_error(-20001, '非法的FINISH_FLAG.;');
      end if;
    else
      raise_application_error(-20001,
                              '非法的PROCESS_REASON状态' ||
                              t_resident_info.process_reason || '.;');
    end if;
    select attribute
      into v_worker_attr
      from worker
     where id = hospital.login.get_workerid;
    user_permit.s_ack_出院请求(t_resident_info.deptid, v_worker_attr);
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
                                '没有找到该病人以前的住院登记信息，不能取消出院;');
    end;
  
    begin
      select 2
        into i
        from mother_baby_relation a, resident_info b
       where a.baby_patientid = in_patientid
         and a.mother_residentid = b.residentid
         and b.process_reason = 'OUT'
         and rownum = 1;
      raise_application_error(-20001, '请首先给母亲取消出院.;');
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
        raise_application_error(-20001, '请首先给母亲取消出院.;');
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
                                '没有找到该病人出院请求时的病人信息.;');
      when too_many_rows then
        raise_application_error(-20001,
                                '找到该病人出院请求时的多条病人信息.;');
      when others then
        raise_application_error(-20001, '其他人正在操作，请重试.;');
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
    --取消出院请求，修改医保状态为待审核  
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
        raise_application_error(-20001, '其他人正在操作，请重试.;');
    end;
    update case_page1
       set out_date   = null,
           out_deptid = null,
           reason     = 'S_出院请求_取消'
     where residentid = t_resident_info.residentid;
  
    rpt_dr.s_out_request('CANCEL_OUT',
                         t_resident_info.out_date,
                         t_resident_info.charge_doctorid);
  
    --如果是婴儿，首先建立母婴关系 
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
      prv_住院_建立母婴关系(v_mother_residentid, t_resident_info.residentid);
    exception
      when no_data_found then
        null;
    end;
    qci.s_取消统计_住院合理用药(t_resident_info.residentid);
    commit;
    rabbitmq.publish_adt_message(in_event      => events.adt_discharge_reguest_cancel,
                                 in_residentid => in_residentid);
  end s_住院_出院请求_取消;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/16 - 引入包并重写
  --     tiger      2006/06/02 -  修改控费时， 调用s_do_医疗保险_修改病人自费类型
  --     tiger      2006/03/17 -  根据数据字典 resident_patient.account_type.remark 
  --                              必须和 patient.attribute一致，才可以设置费用控制
  --     tiger      2006/03/17 -  引入系统选项，'费用控制与病人类别必须一致'
  --     tiger      2006/01/25 -  根据病人的attribute判断费用控制
  --     tiger      2003/08/24 -  增加控制费用的帐户支付控制限额
  --     tiger      2003/06/12 -  create
  procedure s_住院_计帐费用控制(in_patientid     in varchar2
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
        raise_application_error(-20001, '没找到病人信息');
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
                                '非法病人费用控制字典( ' || in_account_type || ' ).;');
    end;
  
    if nvl(get_system_option('费用控制与病人类别必须一致'), 'Y') = 'Y'
    then
      if in_account_type in ('NORMAL')
      then
        if v_patient_attr not in ('OWN', 'PUBLIC', 'NEW', 'NA')
        then
          raise_application_error(-20001,
                                  '病人的类别(' || v_patient_attr ||
                                  ')不是自费病人,不能设置费用控制为自费.;' ||
                                  in_account_type);
        end if;
      else
        if v_patient_attr <> v_dict_attr
        then
          raise_application_error(-20001,
                                  '病人的类别(' || v_patient_attr || ')不是' ||
                                  get_field_dict_name('PATIENT',
                                                      'ATTRIBUTE',
                                                      v_dict_attr) ||
                                  ',不能设置费用控制为自费.;' || in_account_type);
        end if;
      end if;
    end if;
    update resident_patient
       set account_type  = in_account_type,
           pay_limit     = in_pay_limit,
           control_limit = in_control_limit
     where patientid = in_patientid
       and residentid = in_residentid;
    s_do_医疗保险_修改病人自费类型(t_resident_info.residentid,
                       in_patientid,
                       v_patient_attr);
    update charge_item
       set mc_generate_type = mc_generate_type
     where patientid = in_patientid
       and residentid = in_residentid;
    calc_resident_account(in_patientid, in_residentid);
    commit;
  end s_住院_计帐费用控制;
  -----------------------------------------------------------------------------------------------------
  --     tiger   2010/08/06  支持多个baby
  --     tiger      2008/10/16 - 引入包并重写
  --     tiger      2001/07/31 -  create 
  procedure prv_住院_建立母婴关系(in_mother_residentid in varchar2
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
  end prv_住院_建立母婴关系;
  -----------------------------------------------------------------------------------------------------

  procedure s_住院_建立母婴关系(in_mother_residentid in varchar2
                       ,in_baby_residentid   in varchar2) is
  begin
    prv_住院_建立母婴关系(in_mother_residentid, in_baby_residentid);
    commit;
  end s_住院_建立母婴关系;
  -----------------------------------------------------------------------------------------------------
  --     tiger   2010/08/06  支持多个baby
  procedure prv_住院_取消母婴关系(in_mother_residentid in varchar2
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
                                    '住院号为' || in_mother_residentid ||
                                    '和住院号为' || in_baby_residentid ||
                                    '病人没有母婴关系.;');
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
  end prv_住院_取消母婴关系;
  -----------------------------------------------------------------------------------------------------
  procedure s_住院_取消母婴关系(in_mother_residentid in varchar2
                       ,in_baby_residentid   in varchar2) is
  begin
    prv_住院_取消母婴关系(in_mother_residentid, in_baby_residentid);
    commit;
  end s_住院_取消母婴关系;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/16 - 引入包并重写
  --     tiger      2007/12/18 - 把上月的未出院结帐的出院结算单修改为上月结算单 
  --     tiger      2006/05/09 - 按照每一个明细四舍五入 
  --     tiger      2002/09/26 -  create
  procedure s_住院_上月_结算 is
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
  
    --处理未结帐的出院结算单据
    if v_balance_date < to_date('2008/01/01', 'yyyy/mm/dd')
    then
      update charge_bill
         set type         = 'MONTH',
             balance_date = v_balance_date,
             remark       = '原时间:' || to_char(balance_date, 'yyyy/mm/dd') ||
                            '出院结算改为每月结算'
       where residentid is not null
         and status in ('WAIT_PAY')
         and type = 'OUT'
         and balance_date < v_end_date;
    else
      update charge_bill
         set type   = 'MONTH',
             remark = '原时间:' || to_char(balance_date, 'yyyy/mm/dd') ||
                      '出院结算改为每月结算'
       where residentid is not null
         and status in ('WAIT_PAY')
         and type = 'OUT'
         and balance_date < v_end_date;
    end if;
    --处理上月结算
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
  end s_住院_上月_结算;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/16 - 引入包并重写
  --     tiger      2007/12/18 - 把上月的未出院结帐的出院结算单修改为上月结算单 
  --     tiger      2006/05/09 - 按照每一个明细四舍五入 
  --     tiger      2002/09/26 -  create
  procedure s_住院_上月_结算_个人(in_residentid in varchar2) is
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
  
    --处理未结帐的出院结算单据
    if v_balance_date < to_date('2008/01/01', 'yyyy/mm/dd')
    then
      update charge_bill
         set type         = 'MONTH',
             balance_date = v_balance_date,
             remark       = '原时间:' || to_char(balance_date, 'yyyy/mm/dd') ||
                            '出院结算改为每月结算'
       where residentid is not null
         and residentid = in_residentid
         and status in ('WAIT_PAY')
         and type = 'OUT'
         and balance_date < v_end_date;
    else
      update charge_bill
         set type   = 'MONTH',
             remark = '原时间:' || to_char(balance_date, 'yyyy/mm/dd') ||
                      '出院结算改为每月结算'
       where residentid is not null
         and residentid = in_residentid
         and status in ('WAIT_PAY')
         and type = 'OUT'
         and balance_date < v_end_date;
    end if;
    --处理上月结算
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
  end s_住院_上月_结算_个人;

  -------------------------------------------------------------------------------------------------  
  --调整住院病人按月结算产生的数据 
  procedure s_住院_按月_结算_个人(in_residentid in varchar2) as
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
                                '住院号为' || in_residentid ||
                                '的患者没有产生按月结算信息,无需调整');
    end;
    begin
      select status, trunc(resident_info_in_date, 'MM')
        into v_status, v_begin_date
        from hospital.resident_patient_
       where residentid = in_residentid;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '没有找到住院号为' || in_residentid ||
                                '的在院信息,请检查住院号或者核实病人是否已经出院');
    end;
  
    if v_status = 'WAIT_PAY'
    then
      raise_application_error(-20001,
                              '住院号为' || in_residentid ||
                              '的患者已经办理出院结算不能重新生成上月结算');
    elsif v_status = 'WAIT_OUT'
    then
      raise_application_error(-20001,
                              '住院号为' || in_residentid ||
                              '的患者已经办理出院结账不能重新生成上月结算');
    end if;
  
    --查找患者出院时间
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
                              '住院号为' || in_residentid ||
                              '的患者入院时间在是当前月或者入院时间和出院时间在同一个月,无需使用此过程调整');
    end if;
    --删除月结产生的数据
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
    
      --处理上月结算
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
  --     tiger      2008/10/16 - 引入包并重写
  --     tiger      2000/06/29 -  record overdraw
  procedure s_住院_设置透支金(in_patientid  in varchar2
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
    verify_valid_number(in_fee, '透支金额');
    select to_number(in_fee) into i from dual;
    if i < 0
    then
      raise_application_error(-20001, '透支金额不能小于零');
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
  end s_住院_设置透支金;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/16 - 引入包并重写
  --     tiger      2000/06/29 -  record in overdraw
  procedure s_住院_设置预留金(in_patientid  in varchar2
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
    verify_valid_number(in_fee, '预留金额');
    select to_number(in_fee) into i from dual;
    if i < 0
    then
      raise_application_error(-20001, '预留金额不能小于零');
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
  end s_住院_设置预留金;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/16 - 引入包并重写
  --     tiger      2004/11/28  输出预交金编号
  --     tiger      2002/09/01  create
  procedure s_住院_交押金(in_patientid  in varchar2
                    ,in_residentid in varchar2
                    ,in_fee_flag   in varchar2
                    ,in_use_fee    in varchar2
                    ,in_fee        in varchar2
                    ,in_bill_type  in varchar2
                    ,in_bill_no    in varchar2
                    ,in_remark     in varchar2
                    ,out_id        out varchar2) is
  begin
    s_住院_交押金nc(in_patientid,
               in_residentid,
               in_fee_flag,
               in_use_fee,
               in_fee,
               in_bill_type,
               in_bill_no,
               in_remark,
               out_id);
    commit;
  end s_住院_交押金;
  -----------------------------------------------------------------------------------------------------
  procedure s_住院_交押金nc(in_patientid  in varchar2
                      ,in_residentid in varchar2
                      ,in_fee_flag   in varchar2
                      ,in_use_fee    in varchar2
                      ,in_fee        in varchar2
                      ,in_bill_type  in varchar2
                      ,in_bill_no    in varchar2
                      ,in_remark     in varchar2
                      ,out_id        out varchar2) is
  begin
    prv_住院_交押金_处理(in_patientid,
                  in_residentid,
                  in_fee_flag,
                  in_use_fee,
                  in_fee,
                  in_bill_type,
                  in_bill_no,
                  in_remark,
                  out_id);
  end s_住院_交押金nc;

  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/16 - 引入包并重写
  --     tiger      2007/04/04 - 住院退押金(A,B,C,BANK)，要有授权
  --                             引入系统选项 id="住院退押金_必须授权" name= {Y/N} default=N
  --     tiger      2006/06/07 - 禁止退 出院结帐取消产生的预交金单据 标志=remark='结帐取消自动产生'
  --     tiger      2005/08/08 - 增加sysopt 住院欠费病人允许退预交金 ,控制退现金
  --     tiger      2005/05/24 - 禁止退现金，允许退担保
  --     tiger      2004/12/06 - 出院结算和结帐病人禁止退押金;欠费病人禁止退押金
  --     tiger      2002/10/27 - 押金设置下帐标志

  --     tiger      2001/10/15 - 增加职员的登录部门、门诊核算部门和住院核算部门管理
  --     tiger      2001/09/11 - 在resident_patient_中记录押金情况
  procedure s_住院_退押金(in_patientid  in varchar2
                    ,in_residentid in varchar2
                    ,in_pre_payid  in varchar2
                    ,in_remark     in varchar2) is
  begin
    s_住院_退押金nc(in_patientid, in_residentid, in_pre_payid, in_remark);
    commit;
  end s_住院_退押金;
  -----------------------------------------------------------------------------------------------------
  procedure s_住院_退押金nc(in_patientid  in varchar2
                      ,in_residentid in varchar2
                      ,in_pre_payid  in varchar2
                      ,in_remark     in varchar2) is
    t_pre_pay          pre_pay%rowtype;
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
  begin
    verify_patient(in_patientid);
    verify_pre_pay(in_pre_payid);
    verify_length(in_remark, 100, '备注');
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    if t_resident_info.process_reason = 'OUT'
       and t_resident_info.finish_flag in ('WAIT_PAY', 'FINISHED')
    then
      raise_application_error(-20001,
                              '该病人已经作了出院结算，不能退预交金.;');
    end if;
    if t_resident_info.process_reason = 'OUT'
       and t_resident_info.finish_flag in ('FINISHED')
    then
      raise_application_error(-20001,
                              '该病人已经作了出院结算，不能退预交金.;');
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
                                '其他人正在对次记录操作,请稍候再试.;');
    end;
    if t_pre_pay.remark = '结帐取消自动产生'
    then
      raise_application_error(-20001, '这是取消结帐产生的单据，不能退.;');
    end if;
    if t_pre_pay.patientid <> in_patientid
    then
      raise_application_error(-20001, '这不是该病人的预付款.;');
    end if;
    if t_pre_pay.attribute = 'B'
    then
      raise_application_error(-20001, '该款项已经退出.;');
    elsif t_pre_pay.attribute = 'C'
    then
      raise_application_error(-20001, '该款项已经下帐.;');
    end if;
  
    if nvl(get_system_option('预交金退费_只允许退自己的收费'), 'N') = 'Y'
    then
      if hospital.login.get_workerid <> t_pre_pay.fee_operator
      then
        raise_application_error(-20001, '不是自己收的预交款,不能退.');
      end if;
    else
      if nvl(get_system_option('预交金退费_只允许退本部门的收费'), 'Y') = 'Y'
      then
        if is_same_login_dept(hospital.login.get_workerid,
                              t_pre_pay.fee_operator) = 0
        then
          raise_application_error(-20001,
                                  '这不是' || get_dept_name(get_login_deptid) ||
                                  '收的预交金,您不能退.;');
        end if;
      end if;
    
    end if;
  
    if t_pre_pay.bill_type in
       ('A', 'B', 'C', 'BANK', 'BANK1', 'BANK2', 'BANK3', 'BANK4')
    then
      if nvl(get_system_option('住院退押金_必须授权'), 'N') = 'Y'
      then
        if t_pre_pay.grant_operator is null
           or t_pre_pay.grant_date is null
           or t_pre_pay.withdraw_reason is null
        then
          raise_application_error(-20001,
                                  '该笔押金的没有授权退款，或者授权信息不完全，不能退款.;');
        end if;
      end if;
    else
      if nvl(get_system_option('住院退担保押金_必须授权'), 'N') = 'Y'
      then
        if t_pre_pay.grant_operator is null
           or t_pre_pay.grant_date is null
           or t_pre_pay.withdraw_reason is null
        then
          raise_application_error(-20001,
                                  '该笔担保押金的没有授权退款，或者授权信息不完全，不能退款.;');
        end if;
      end if;
    end if;
  
    if t_pre_pay.bill_type in
       ('A', 'B', 'C', 'BANK', 'BANK1', 'BANK2', 'BANK3', 'BANK4')
       and t_resident_patient.account >= t_resident_patient.pre_pay_fee
    then
      if nvl(get_system_option('住院欠费病人允许退预交金'), 'N') = 'N'
      then
        raise_application_error(-20001, '该病人已经欠费,不能退预交金');
      end if;
    end if;
  
    --取消住院授权管理
    checkout.s_判断_是否有取消出院操作(t_resident_info.residentid);
  
    update pre_pay
       set withdraw_date = sysdate,
           withdrawer    = hospital.login.get_workerid,
           attribute     = 'B',
           update_date   = sysdate
     where id = in_pre_payid;
    calc_pre_pay(in_patientid, t_pre_pay.residentid);
  end s_住院_退押金nc;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/16 - 引入包并重写
  --     tiger      2007/04/04 - create
  procedure s_住院_退押金_授权(in_patientid       in varchar2
                       ,in_residentid      in varchar2
                       ,in_pre_payid       in varchar2
                       ,in_withdraw_reason in varchar2) is
    t_pre_pay          pre_pay%rowtype;
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
  begin
    verify_patient(in_patientid);
    verify_pre_pay(in_pre_payid);
    verify_not_null(in_withdraw_reason, '退款原因');
    verify_length(in_withdraw_reason, 100, '退款原因');
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
                                '其他人正在对次记录操作,请稍候再试.;');
    end;
  
    if t_pre_pay.remark = '结帐取消自动产生'
    then
      raise_application_error(-20001, '这是取消结帐产生的单据，不能退.;');
    end if;
  
    if t_pre_pay.patientid <> in_patientid
    then
      raise_application_error(-20001, '这不是该病人的预付款.;');
    end if;
  
    if t_pre_pay.attribute = 'B'
    then
      raise_application_error(-20001, '该款项已经退出.;');
    elsif t_pre_pay.attribute = 'C'
    then
      raise_application_error(-20001, '该款项已经下帐.;');
    end if;
  
    if t_pre_pay.grant_operator is not null
       and t_pre_pay.grant_date is not null
       and t_pre_pay.withdraw_reason is not null
    then
      raise_application_error(-20001,
                              '该笔押金已经授权退款，不能重复授权.;');
    end if;
    update pre_pay
       set grant_date      = sysdate,
           grant_operator  = hospital.login.get_workerid,
           withdraw_reason = in_withdraw_reason,
           update_date     = sysdate
     where id = in_pre_payid;
    commit;
  end s_住院_退押金_授权;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/16 - 引入包并重写
  --     tiger      2007/04/04 - create
  procedure s_住院_退押金_授权_取消(in_patientid  in varchar2
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
                                '其他人正在对次记录操作,请稍候再试.;');
    end;
  
    if t_pre_pay.remark = '结帐取消自动产生'
    then
      raise_application_error(-20001, '这是取消结帐产生的单据，不能操作.;');
    end if;
  
    if t_pre_pay.patientid <> in_patientid
    then
      raise_application_error(-20001, '这不是该病人的预付款.;');
    end if;
  
    if t_pre_pay.attribute = 'B'
    then
      raise_application_error(-20001, '该款项已经退出.;');
    elsif t_pre_pay.attribute = 'C'
    then
      raise_application_error(-20001, '该款项已经下帐.;');
    end if;
  
    if t_pre_pay.grant_operator is null
       and t_pre_pay.grant_date is null
       and t_pre_pay.withdraw_reason is null
    then
      raise_application_error(-20001, '该笔押金没有授权退款.;');
    end if;
  
    if nvl(t_pre_pay.grant_operator, hospital.login.get_workerid) <>
       hospital.login.get_workerid
    then
      raise_application_error(-20001,
                              '该笔押金不是你授权的，你不能取消授权.;');
    end if;
  
    update pre_pay
       set grant_date      = null,
           grant_operator  = null,
           withdraw_reason = null,
           update_date     = sysdate
     where id = in_pre_payid;
  
    commit;
  end s_住院_退押金_授权_取消;
  -----------------------------------------------------------------------------------------------------
  procedure sp_住院预交_第三方_存款_begin(in_app_id         in varchar2
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
  
    --验证app_id
  
    verify_patient(in_patientid);
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    verify_valid_number(in_fee, '金额');
    verify_field_dict('PRE_PAY', 'BILL_TYPE', in_bill_type, '缴费方式');
    begin
      select field_value
        into v_limittype
        from hospital.field_dict_
       where table_name = 'PRE_PAY'
         and field_name = 'BILL_TYPE'
         and remark = '时限控制'
         and field_value = in_bill_type;
      hospital.verify_not_null(in_fee_flag, '担保时限');
      verify_valid_date(in_fee_flag, '担保截止时间');
      v_withdraw_date := get_date_from_str(in_fee_flag);
      if v_withdraw_date <= sysdate
      then
        raise_application_error(-20001, '担保时限必须大于当前时间.;');
      end if;
    exception
      when no_data_found then
        null;
    end;
    if in_bill_type not in (v_limittype)
    then
      verify_field_dict('PRE_PAY', 'FEE_FLAG', in_fee_flag, '金额限制方式');
    end if;
    verify_length(in_remark, 100, '备注');
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
        raise_application_error(-20001, '预交金额必须大于0');
      end if;
      if to_number(nvl(in_use_fee, 0)) <> 0
      then
        raise_application_error(-20001, '担保金额必须为0');
      end if;
    elsif in_bill_type in ('D', 'E', 'F', 'G', 'H')
    then
      if to_number(nvl(in_use_fee, 0)) < 0
      then
        raise_application_error(-20001, '担保金额必须大于0');
      end if;
      if to_number(nvl(in_fee, 0)) <> 0
      then
        raise_application_error(-20001, '预交金额必须为0');
      end if;
    end if;
    if nvl(get_system_option('预交金_结算后允许交纳'), 'Y') = 'N'
    then
      if t_resident_info.process_reason = 'OUT'
         and t_resident_info.finish_flag in ('WAIT_PAY', 'FINISHED')
      then
        raise_application_error(-20001,
                                '该病人已经作了出院结算，不能交纳预交金.;');
      end if;
    end if;
    if nvl(get_system_option('预交金_结帐后允许交纳'), 'Y') = 'N'
    then
      if t_resident_info.process_reason = 'OUT'
         and t_resident_info.finish_flag in ('FINISHED')
      then
        raise_application_error(-20001,
                                '该病人已经作了出院结算，不能交纳预交金.;');
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
      if get_system_option('按照工作地点分配发票号段住院预交金') = 'Y'
      then
        invoice_man.s_使用发票('住院预交金', v_ticket_no);
        t_bill_no := lpad(ltrim(rtrim(to_char(v_ticket_no))), 10, '0');
      elsif get_system_option('按照职员分配发票号段住院预交金') = 'Y'
      then
        invoice_man.s_使用发票('住院预交金', v_ticket_no);
        t_bill_no := lpad(ltrim(rtrim(to_char(v_ticket_no))), 10, '0');
      elsif get_system_option('编号自动产生_现金预交款收据号') = 'Y'
      then
        t_bill_no := s_预交款_编号_读取;
        s_预交款_编号_使用(t_bill_no);
      elsif get_system_option('编号自动产生_公司_现金预交款收据号') = 'Y'
      then
        select companyid
          into v_companyid
          from all_department
         where id = t_resident_info.deptid;
        t_bill_no := s_预交款_公司_编号读取(v_companyid);
        s_预交款_公司_编号_使用(v_companyid);
      elsif get_system_option('编号自动产生_发票号=ID号') = 'Y'
      then
        null;
      else
        verify_not_null(in_bill_no, '预交款收据号');
        begin
          select 2
            into i
            from pre_pay
           where bill_no = in_bill_no
             and rownum = 1;
          raise_application_error(-20001,
                                  '收据号为' || in_bill_no ||
                                  '的收据已经存在,请重新换一个编号.;');
        exception
          when no_data_found then
            null;
        end;
        t_bill_no := in_bill_no;
      end if;
    end if;
  
    begin
      v_limit := to_number(nvl(get_system_option('预交金_单笔预交金最大限额'),
                               '10000'));
    exception
      when others then
        raise_application_error(-20001,
                                '系统选项设置错误，请联系系统管理员.;');
    end;
    if in_fee > v_limit
    then
      raise_application_error(-20001,
                              '单笔预交金最大限额为( ' || v_limit || ' 元).;');
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
       attribute_开始存款,
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
  
  end sp_住院预交_第三方_存款_begin;
  -----------------------------------------------------------------------------------------------------
  procedure sp_住院预交_第三方_存款_end(in_app_id         in varchar2
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
                                '编号为' || in_prepay_id ||
                                '的状态不在锁定状态或者不存在！！！');
      
    end;
    if v_pre_pay.app_id <> in_app_id
    then
      raise_application_error(-20001,
                              '预交金编号为:' || in_prepay_id || '是由编号为' ||
                              v_pre_pay.app_id || '的应用产生的,与传入的编号' ||
                              in_app_id || '不符,请检查代码.;');
    
    end if;
  
    if v_pre_pay.attribute not in (attribute_开始存款, attribute_存款失败)
    then
    
      raise_application_error(-20001,
                              '预交金编号为' || in_prepay_id ||
                              '的充值记录不是开始交款状态，不能结束交款.;');
    end if;
  
    if in_is_success not in (in_success_ok, in_success_fail)
    then
      raise_application_error(-20001,
                              '错误的成功标志in_is_success:' || in_is_success ||
                              '请检查代码.;');
    end if;
  
    if in_is_success = in_success_ok
    then
      update hospital.pre_pay_
         set attribute = attribute_交款
       where id = in_prepay_id
         and patientid = in_patientid
         and residentid = in_residentid;
      calc_pre_pay(in_patientid, in_residentid);
    else
      update hospital.pre_pay_
         set attribute = attribute_存款失败
       where id = in_prepay_id
         and patientid = in_patientid
         and residentid = in_residentid;
    end if;
    commit;
  end sp_住院预交_第三方_存款_end;
  ----------------------------------------------------------------------------------------------------
  procedure sp_住院预交_第三方_冲账_begin(in_app_id     in varchar2
                                ,in_patientid  in varchar2
                                ,in_residentid in varchar2
                                ,in_pre_payid  in varchar2
                                ,in_remark     in varchar2) is
    t_pre_pay          pre_pay%rowtype;
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
  begin
    --验证app
    verify_patient(in_patientid);
    verify_pre_pay(in_pre_payid);
    verify_length(in_remark, 100, '备注');
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    if t_resident_info.process_reason = 'OUT'
       and t_resident_info.finish_flag in ('WAIT_PAY', 'FINISHED')
    then
      raise_application_error(-20001,
                              '该病人已经作了出院结算，不能退预交金.;');
    end if;
    if t_resident_info.process_reason = 'OUT'
       and t_resident_info.finish_flag in ('FINISHED')
    then
      raise_application_error(-20001,
                              '该病人已经作了出院结算，不能退预交金.;');
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
                                '其他人正在对次记录操作,请稍候再试.;');
    end;
    if t_pre_pay.remark = '结帐取消自动产生'
    then
      raise_application_error(-20001, '这是取消结帐产生的单据，不能退.;');
    end if;
    if t_pre_pay.patientid <> in_patientid
    then
      raise_application_error(-20001, '这不是该病人的预付款.;');
    end if;
    if t_pre_pay.attribute = 'B'
    then
      raise_application_error(-20001, '该款项已经退出.;');
    elsif t_pre_pay.attribute = 'C'
    then
      raise_application_error(-20001, '该款项已经下帐.;');
    end if;
  
    /*    if nvl(get_system_option('预交金退费_只允许退自己的收费'), 'N') = 'Y'
    then
      if hospital.login.get_workerid <> t_pre_pay.fee_operator
      then
        raise_application_error(-20001, '不是自己收的预交款,不能退.');
      end if;
    else
      if nvl(get_system_option('预交金退费_只允许退本部门的收费'), 'Y') = 'Y'
      then
        if is_same_login_dept(hospital.login.get_workerid,
                              t_pre_pay.fee_operator) = 0
        then
          raise_application_error(-20001,
                                  '这不是' ||
                                  get_dept_name(get_login_deptid) ||
                                  '收的预交金,您不能退.;');
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
      if nvl(get_system_option('住院退押金_必须授权'), 'N') = 'Y'
      then
        if t_pre_pay.grant_operator is null
           or t_pre_pay.grant_date is null
           or t_pre_pay.withdraw_reason is null
        then
          raise_application_error(-20001,
                                  '该笔押金的没有授权退款，或者授权信息不完全，不能退款.;');
        end if;
      end if;
    else
      if nvl(get_system_option('住院退担保押金_必须授权'), 'N') = 'Y'
      then
        if t_pre_pay.grant_operator is null
           or t_pre_pay.grant_date is null
           or t_pre_pay.withdraw_reason is null
        then
          raise_application_error(-20001,
                                  '该笔担保押金的没有授权退款，或者授权信息不完全，不能退款.;');
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
      if nvl(get_system_option('住院欠费病人允许退预交金'), 'N') = 'N'
      then
        raise_application_error(-20001, '该病人已经欠费,不能退预交金');
      end if;
    end if;
  
    if t_pre_pay.app_id <> in_app_id
    then
      raise_application_error(-20001,
                              '该笔交款是由编号为' || t_pre_pay.app_id ||
                              '的应用完成的,不能使用编号为' || in_app_id || '退预交金');
    
    end if;
  
    update hospital.pre_pay_
       set attribute = attribute_开始冲账
     where id = in_pre_payid
       and patientid = in_patientid
       and residentid = in_residentid;
  
  end sp_住院预交_第三方_冲账_begin;

  -----------------------------------------------------------------------------------------------------
  procedure sp_住院预交_第三方_冲账_end(in_app_id         in varchar2
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
                                '编号为' || in_prepay_id ||
                                '的状态不在锁定状态或者不存在！！！');
      
    end;
    if v_pre_pay.app_id <> in_app_id
    then
      raise_application_error(-20001,
                              '预交金编号为:' || in_prepay_id || '是由编号为' ||
                              v_pre_pay.app_id || '的应用产生的,与传入的编号' ||
                              in_app_id || '不符,请检查代码.;');
    
    end if;
  
    if v_pre_pay.attribute <> attribute_开始冲账
    then
    
      raise_application_error(-20001,
                              '预交金编号为' || in_prepay_id ||
                              '的充值记录不是开始交款状态，不能结束交款.;');
    end if;
  
    if in_is_success not in (in_success_ok, in_success_fail)
    then
      raise_application_error(-20001,
                              '错误的成功标志in_is_success:' || in_is_success ||
                              '请检查代码.;');
    end if;
  
    if in_is_success = in_success_ok
    then
      update hospital.pre_pay_
         set attribute = attribute_已退
       where id = in_prepay_id
         and patientid = in_patientid
         and residentid = in_residentid;
      --取消住院授权管理
      checkout.s_判断_是否有取消出院操作(in_residentid);
    else
      if in_his_tsn is not null
      then
        delete from hospital.app_transaction_record_ where id = in_his_tsn;
      end if;
      update hospital.pre_pay_
         set attribute = attribute_交款
       where id = in_prepay_id
         and patientid = in_patientid
         and residentid = in_residentid;
    end if;
    commit;
  end sp_住院预交_第三方_冲账_end;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/16 - 引入包并重写,把出院和转储数据分开，加快出院速度
  --     tiger      2007/04/02 - 取消出院授权管理,更新worker_cancel_out_role set status ='out'
  --     tiger      2006/01/26 - 从医嘱审记中删除刚刚审记的项目
  --     tiger      2000/12/12 - 从当前病人表中删除
  --     tiger      2000/08/19 -  REWRITE  合并表 resident_register & resident_info
  procedure s_住院_出院(in_patientid  in varchar2
                   ,in_residentid in varchar2) is
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    pres.s_住院_出院nc(in_patientid, in_residentid);
  
    rabbitmq.publish_adt_message(in_event            => events.adt_discharge_out,
                                 in_resident_patient => t_resident_patient);
    commit;
  end s_住院_出院;
  -----------------------------------------------------------------------------------------------------
  procedure s_住院_出院nc(in_patientid  in varchar2
                     ,in_residentid in varchar2) is
    t_resident_patient  resident_patient%rowtype;
    t_resident_info     resident_info%rowtype;
    t_record_no         resident_patient.record_no%type;
    t_mother_residentid stable_mother_baby_relation.mother_residentid%type;
  begin
    --置出院请求记录为完成
    --删除住院病人表记录
    verify_patient(in_patientid);
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    if t_resident_info.process_reason in ('IN', 'CHANGEDEPT')
    then
      raise_application_error(-20001,
                              '该病人没有做做出院请求,不能进行出院结算.;');
    elsif t_resident_info.process_reason = 'OUT'
    then
      if t_resident_info.finish_flag = 'WAIT_ACC'
      then
        raise_application_error(-20001, '该病人还没有做出院结算.;');
      elsif t_resident_info.finish_flag = 'FINISHED'
      then
        if t_resident_patient.status = 'WAIT_OUT'
        then
          null;
        else
          raise_application_error(-20001,
                                  '非法的RESIDENT_PATIENT.STATUS' ||
                                  t_resident_patient.status || '.;');
        end if;
      else
        raise_application_error(-20001,
                                '非法的FINISH_FLAG' ||
                                t_resident_info.finish_flag || '.;');
      end if;
    else
      raise_application_error(-20001,
                              '非法的PROCESS_REASON' ||
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
          raise_application_error(-20001, '找到多条新生儿母亲的住院信息.;');
      end;
      if t_mother_residentid is not null
      then
        begin
          select record_no
            into t_record_no
            from resident_patient a
           where residentid = t_mother_residentid
             and resident_info_deptid = t_resident_info.deptid; -- 解决母亲在医院有多条入院记录的问题
          update resident_info
             set baby_patientid = null,
                 update_date    = sysdate
           where record_no = t_record_no;
        exception
          when no_data_found then
            null;
          when too_many_rows then
            raise_application_error(-20001,
                                    '找到多条新生儿母亲的住院信息.;');
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
          raise_application_error(-20001, '找到多条新生儿的住院信息.;');
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
    --2010/12/11 删除0费用的病案首页，
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
    checkout.s_取消出院操作_完成(t_resident_info.residentid);
    update resident_info
       set finish_flag = 'WAIT_TRANS',
           update_date = sysdate
     where record_no = t_resident_info.record_no;
    insert into trans_resident_out
      (residentid)
    values
      (t_resident_info.residentid);
  
    --实时转储住院病人数据  方便取消出院
    s_住院_出院_转储nc(in_residentid);
  
  end s_住院_出院nc;

  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/17 - 创建，实现把出院病人信息转入历史表
  --
  procedure s_住院_出院登记_取消_转储nc(in_residentid in varchar2) is
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
                                '找不到住院号为( ' || in_residentid ||
                                ' ) 出院转储数据记录.;');
      when others then
        raise_application_error(-20001, '其他人正在操作，请稍候重试.;');
    end;
    s_转储_帐单_住诊(in_residentid);
    s_转储_住诊_处方(in_residentid);
    s_转储_医嘱(in_residentid);
    --取消住院授权管理
    delete from audit_order_list
     where ownerid = in_residentid
       and operator = hospital.login.get_workerid
       and update_date >= sysdate - 1 / 24 * 60;
    update resident_info
       set finish_flag = 'FINISHED',
           update_date = sysdate
     where rowid = v_rowid;
    delete from trans_resident_out where residentid = in_residentid;
  end s_住院_出院登记_取消_转储nc;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/17 - 创建，实现把出院病人信息转入历史表
  --
  procedure s_住院_出院_转储nc(in_residentid in varchar2) is
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
                                '找不到住院号为( ' || in_residentid ||
                                ' ) 出院转储数据记录.;');
      when others then
        raise_application_error(-20001, '其他人正在操作，请稍候重试.;');
    end;
    s_转储_帐单_住诊(in_residentid);
    s_转储_住诊_处方(in_residentid);
    s_转储_医嘱(in_residentid);
    --取消住院授权管理
    delete from audit_order_list
     where ownerid = in_residentid
       and operator = hospital.login.get_workerid
       and update_date >= sysdate - 1 / 24 * 60;
    update resident_info
       set finish_flag = 'FINISHED',
           update_date = sysdate
     where rowid = v_rowid;
    delete from trans_resident_out where residentid = in_residentid;
  end s_住院_出院_转储nc;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/17 - 创建，实现把出院病人信息转入历史表
  --
  procedure s_住院_出院_转储(in_residentid in varchar2) is
  begin
    s_住院_出院_转储nc(in_residentid);
    commit;
  end s_住院_出院_转储;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/17 - 引入包并重写
  --     tiger      2006/12/20 - 增加住院号
  --     tiger      2006/06/24 - 增加优惠价格
  --     tiger      2003/08/25 - 调用calc_resident_account计算resident_patient的各种费用。
  --     tiger      2003/06/11 - 记账时在resident_patient中分别记录病人的甲类、乙类和自费费用。
  --     tiger      2003/03/05 - 修改错误，错误的修改resident_patient中预交款标志和费用
  --     tiger      2001/09/11 - 在resident_patient表中记录病人的记账情况
  --     tiger      2001/04/02 - 暂时禁止退非本月结帐病人费用功能
  --     tiger      2000/12/12 - 增加当前病人表
  --     tiger      2000/12/06 - 增加退非本月结帐病人费用功能
  --     tiger      2000/08/19 - REWRITE  合并表 resident_register & resident_info
  procedure s_住院_出院_取消(in_process_no in varchar2
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
        raise_application_error(-20001, '没有找到病人的住院信息.;');
      when others then
        raise_application_error(-20001, '其他人正在操作，请重试.;');
    end;
    if t_resident_info.process_reason <> 'OUT'
    then
      raise_application_error(-20001, '不是出院记录，不能取消出院.;');
    end if;
    if t_resident_info.finish_flag = 'WAIT_TRANS'
    then
      raise_application_error(-20001,
                              '该病人已经出院，正在转储数据,不能取消出院.;');
    end if;
    if t_resident_info.finish_flag <> 'FINISHED'
    then
      raise_application_error(-20001, '该病人还没有出院，不能取消出院.;');
    end if;
    begin
      select 2
        into i
        from resident_patient
       where record_no = t_resident_info.record_no;
      raise_application_error(-20001, '该病人还没有出院，不能取消出院.;');
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
      raise_application_error(-20001, '该病人已经住院，不能取消住院.;');
    exception
      when no_data_found then
        null;
    end;
    --取消住院授权管理
    checkout.s_允许_取消出院(t_resident_info.residentid);
  
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
    s_转储_帐单_住诊_取消(t_resident_info.residentid);
    s_转储_住诊_处方_取消(t_resident_info.residentid);
    s_转储_医嘱_取消(t_resident_info.residentid);
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
  end s_住院_出院_取消;
  -----------------------------------------------------------------------------------------------------  

  procedure s_住院_出院_取消nc(in_process_no in varchar2
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
        raise_application_error(-20001, '没有找到病人的住院信息.;');
      when others then
        raise_application_error(-20001, '其他人正在操作，请重试.;');
    end;
    if t_resident_info.process_reason <> 'OUT'
    then
      raise_application_error(-20001, '不是出院记录，不能取消出院.;');
    end if;
    if t_resident_info.finish_flag = 'WAIT_TRANS'
    then
      raise_application_error(-20001,
                              '该病人已经出院，正在转储数据,不能取消出院.;');
    end if;
    if t_resident_info.finish_flag <> 'FINISHED'
    then
      raise_application_error(-20001, '该病人还没有出院，不能取消出院.;');
    end if;
    begin
      select 2
        into i
        from resident_patient
       where record_no = t_resident_info.record_no;
      raise_application_error(-20001, '该病人还没有出院，不能取消出院.;');
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
      raise_application_error(-20001, '该病人已经住院，不能取消住院.;');
    exception
      when no_data_found then
        null;
    end;
    --取消住院授权管理
    checkout.s_允许_取消出院(t_resident_info.residentid);
  
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
    s_转储_帐单_住诊_取消(t_resident_info.residentid);
    s_转储_住诊_处方_取消(t_resident_info.residentid);
    s_转储_医嘱_取消(t_resident_info.residentid);
    s_copy_patient(t_resident_info.patientid);
  
    calc_pre_pay(t_resident_info.patientid, t_resident_info.residentid);
    calc_resident_account(t_resident_info.patientid,
                          t_resident_info.residentid);
    update resident_info
       set remark      = remark,
           update_date = sysdate
     where record_no = t_resident_info.record_no;
  end s_住院_出院_取消nc;
  -----------------------------------------------------------------------------------------------------
  --住院病例相关的部分
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/20 - 引入包并重写
  --     tiger      2006/11/29 - 增加诊断时，统计院内感染情况
  procedure s_住院_诊断删除(in_residentid in varchar2
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
                              '允许删除"门诊(急诊)诊断"，"入院诊断".;');
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
                              '不是住院登记录入的诊断，禁止在这里删除.;');
    end if;
    commit;
  end s_住院_诊断删除;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/20 - 引入包并重写
  --     tiger      2006/11/29 - 增加诊断时，统计院内感染情况
  --     tiger      2003/08/16 - 只允许增加"门诊诊断"，"急诊诊断"和"入院诊断";
  procedure s_住院_诊断增加(in_attribute  in varchar2
                     ,in_patientid  in varchar2
                     ,in_residentid in varchar2
                     ,in_diseaseid  in varchar2
                     ,in_remark     in varchar2) is
  begin
    prv_住院_诊断增加(in_attribute,
                in_patientid,
                in_residentid,
                in_diseaseid,
                in_remark);
    commit;
  end s_住院_诊断增加;
  --以下是入院相关的部分
  ------------------------------------------------------------------------------------------------------
  procedure s_病案_编目_诊断删除(in_residentid in varchar2
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
                              '允许删除"门诊(急诊)诊断"，"入院诊断".;');
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
                              '不是住院登记录入的诊断，禁止在这里删除.;');
    end if;
    commit;
  end s_病案_编目_诊断删除;
  ------------------------------------------------------------------------------------------------------
  procedure s_病案_编目_诊断增加(in_attribute  in varchar2
                        ,in_patientid  in varchar2
                        ,in_residentid in varchar2
                        ,in_diseaseid  in varchar2
                        ,in_remark     in varchar2) is
  begin
    prv_病案_编目_诊断增加(in_attribute,
                   in_patientid,
                   in_residentid,
                   in_diseaseid,
                   in_remark);
    commit;
  end s_病案_编目_诊断增加;
  ------------------------------------------------------------------------------------------------------
  --     tiger      2010/08/23 -  可以指定住院登记不发卡科室
  --     tiger      2009/01/17 -  输入in_patientid为空的病人完成首先进行新病人登记，然后完成住院登记
  --     tiger      2008/10/20 -  引入包并重写
  --     tiger      2008/08/29 -  增加年龄和年龄单位,取消对病人信息年龄的修改
  --     tiger      2008/07/23 -  住院登记不修改病人的生日
  --     tiger      2008/04/24 -  设置为“使用查询卡”<>N ,如果卡号不为空，继续售卡 
  --     tiger      2007/04/04 -  自动产生住院号时，错误的记录为输入的住院号
  --     tiger      2007/04/02 -  取消出院授权管理
  --     tiger      2006/12/20 -  增加住院号
  --     tiger      2006/07/17 -  增加优惠信息登记
  --     tiger      2006/06/24 -  增加优惠价格
  --     tiger      2004/11/28 -  输出预交金编号
  --     tiger      2003/03/11 -  增加家庭病床标志 
  --     tiger      2003/06/12 -  增加标志判断病人计帐费用控制方式(自费和医疗保险)
  --     tiger      2002/08/29 -  增加查询卡发卡
  --     tiger      2000/12/12 -  增加当前病人
  --     tiger      2000/08/28 -  增加住院登记时病人信息量
  --     tiger      2000/08/19 -  REWRITE  合并表 resident_register & resident_info
  procedure s_住院_住院登记(out_patientid              out varchar2
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
                     ,in_resident_info_attribute in varchar2 --住院病人类别
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
                     ,in_age                     in varchar2 --入院年龄
                     ,in_age_unit                in varchar2 --入院年龄单位
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
                     ,in_seq                     in varchar2 default null --第几次住院
                     ,in_confirm_seq             in varchar2 default null
                     ,in_long_term_out_patient   in varchar2 default null) is
    --确认修改历史 住院信息
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
    --王勇20150925
    if nvl(get_system_option('住院登记_同一身份证不允许有两个在院病人'),
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
                                '身份证为[' || in_identification ||
                                ']的病人还在住院,不允许登记身份证相同的两个住院病人!;');
      exception
        when no_data_found then
          null;
      end;
    end if;
  
    if nvl(get_system_option('门诊住院一卡通'), 'N') = 'Y'
    then
      qcc.s_验证门诊卡有效(in_patientid);
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
                              '患者编号为[' || in_patientid ||
                              ']的病人还在住院,不允许再登记住院!;');
    exception
      when no_data_found then
        null;
    end;
    if nvl(get_system_option('住院登记_支持一个住院号多次入院'), 'N') = 'Y'
    then
      verify_not_null(in_seq, '第几次住院');
      verify_valid_number(in_seq, '第几次住院');
      begin
        select 2
          into i
          from resident_info
         where residentid like in_residentid　 || '%'
           and seq = nvl(in_seq, 'x')
           and in_seq is not null
           and rownum = 1;
        raise_application_error(-20001, '住院号和住院次数重复.;');
      exception
        when no_data_found then
          null;
      end;
      --如果该住院号不是第一次入院，要判断
      --（1）多次住院，登记的病人编号要一致
      begin
        select patientid
          into v_patientid
          from resident_info
         where residentid like in_residentid || 　 '%'
           and rownum = 1;
        if in_patientid <> nvl(in_patientid, 'x')
        then
          raise_application_error(-20001,
                                  '多次住院应该采用相同的病人编号' || chr(10) ||
                                  '上次的病人编号为( ' || v_patientid || ' ).;');
        end if;
      exception
        when no_data_found then
          null;
      end;
    
      qcc.s_验证门诊卡有效(in_patientid);
    
      if in_seq is not null
         and in_confirm_seq is not null
      then
        begin
          select seq
            into i
            from resident_info
           where residentid = in_residentid
             and rownum = 1;
          prv_修改住院号(in_residentid,
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
  
    if nvl(get_system_option('住院患者信息_家庭电话不能为空'), 'Y') = 'Y'
       and (in_home_tele is null or length(in_home_tele) < 6)
    then
      raise_application_error(-20001, '家庭联系电话不能为空！');
    end if;
    if nvl(get_system_option('住院患者信息_入院诊断不能为空'), 'Y') = 'Y'
       and (in_diagnose_diseaseid is null)
    then
      raise_application_error(-20001, '入院诊断不能为空！');
    end if;
  
    if nvl(get_system_option('住院登记_按照编制床位数登记'), 'N') = 'Y'
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
                                '本科室当前住院患者已经超过规定的数量( ' || v_max_bed_num ||
                                ') 不能再登记新的患者了。');
      
      end if;
    end if;
  
    if in_case_page1_pay_method is not null
       or nvl(get_system_option('病案首页_PAY_METHOD_默认值'), '4') = '请选择'
    then
      verify_field_dict('CASE_PAGE1',
                        'PAY_METHOD',
                        in_case_page1_pay_method,
                        '病案首页支付方式');
    end if;
    if nvl(in_case_page1_pay_method, '请选择') not in
       ('1', '2', '3', '4', '5', '6', '7', '8', '9')
    then
      raise_application_error(-20001, '请选择病案首页医疗付款方式');
    end if;
  
    if in_patientid is null
    then
      if in_age is null
         and in_birthday is null
      then
        raise_application_error(-20001, '生日和年龄不能同时为空.;');
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
                        in_country --国籍
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
                        nvl(in_country, t_patient.country), --国籍
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
                                '不是住院科室,不能接受住院病人.;');
      end if;
    exception
      when no_data_found then
        raise_application_error(-20001, '住院科室不存在.;');
    end;
  
    if in_doctorid is not null
    then
      verify_worker(in_doctorid, '经收医生');
    end if;
  
    begin
      select residentid
        into t_residentid
        from resident_patient
       where patientid = out_patientid
         and residentid = out_residentid;
      raise_application_error(-20001,
                              '病人编号为( ' || out_patientid || ' )的病人' ||
                              get_patient_name(out_patientid) ||
                              '已经住院, 其住院号为( ' || t_residentid || ' ).;');
    exception
      when no_data_found then
        null;
    end;
  
    verify_length(in_remark, 20, '备注');
    verify_field_dict('PRE_PAY', 'BILL_TYPE', in_bill_type, '付款方式');
    verify_length(in_gender, 1, '性别');
    verify_length(in_birth_province, 40, '出生省份');
    --verify_patient(in_patientid);
    if in_resident_info_attribute is not null
    then
      verify_field_dict('RESIDENT_INFO',
                        'ATTRIBUTE',
                        in_resident_info_attribute,
                        '住院病人类别');
    end if;
    verify_length(in_office_tele, 20, '工作单位电话');
    verify_length(in_office_zip, 20, '工作单位邮政编码');
    verify_length(in_home_address, 200, '户口地址');
    verify_length(in_home_zip, 6, '家庭邮政编码');
    verify_length(in_asso_name, 80, '联系人姓名');
    verify_length(in_asso_relation, 10, '与联系人关系');
    verify_length(in_asso_address, 200, '联系人地址');
    verify_length(in_asso_tele, 20, '联系人电话');
    verify_length(in_age, 10, '年龄');
    verify_field_dict('RESIDENT_INFO', 'AGE_UNIT', in_age_unit, '年龄单位');
    if in_home_bed not in (0, 1)
    then
      raise_application_error(-20001, '必须设定病人是否为家庭病床.;');
    end if;
    if nvl(get_system_option('自动产生住院号'), ' ') = 'Y'
    then
      --验证产生住院号规则
      prv_住院号_编号_验证;
      i := 0;
      loop
        t_residentid := prv_住院号_编号_读取;
        i            := i + 1;
        begin
          select 2
            into i
            from resident_info
           where residentid = t_residentid
             and rownum = 1;
          prv_住院号_编号_使用(t_residentid);
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
      verify_not_null(in_residentid, '住院号');
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
                                '住院号' || in_residentid || '已经被使用');
      exception
        when no_data_found then
          null;
      end;
      t_residentid := in_residentid;
    end if;
    v_new_residentid := in_hosp_id || '.' || t_residentid || '.' ||
                        nvl(v_seq, 1);
    --取消住院授权管理
    checkout.s_判断_是否有取消出院操作(v_new_residentid);
  
    select * into t_patient from patient where id = out_patientid;
  
    t_record_no := get_next_resident_infoid;
    discount_man.set_新住院病人_优惠类别(v_new_residentid);
  
    v_discount_type := discount_man.get_住院病人_优惠类别(v_new_residentid);
  
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
      (sysdate, --sysdate,入院日期为安排床位的时间  --解决特殊医保需要安排床位前做入院登记的问题
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
       null, --sysdate,入院日期为安排床位的时间
       v_age,
       v_age_unit,
       in_remark,
       sysdate,
       in_case_page1_pay_method,
       nvl(in_long_term_out_patient, 0));
  
    out_residentid := v_new_residentid;
    s_copy_patient(out_patientid);
    v_sysopt := nvl(get_system_option('自动产生住院号'), ' ');
    if v_sysopt = 'Y'
    then
      prv_住院号_编号_使用(t_residentid);
    end if;
    if nvl(get_system_option('门诊住院一卡通'), 'N') = 'Y'
    then
      --删除上次入院的查询卡记录
      delete from qc_in_use
       where id in (select id
                      from hospital.qc_clinic
                     where patientid = in_patientid
                    union
                    select id
                      from hospital.qc_in_use_
                     where seq = in_patientid);
      --增加新的查询卡记录
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
      v_sysopt := nvl(get_system_option('指定科室不发住院卡' || in_deptid),
                      'N');
      if v_sysopt = 'N'
      then
      
        v_sysopt := nvl(get_system_option('使用查询卡'), 'S');
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
              raise_application_error(-20001, '请输入正确的卡号.;');
          end;
        end if;
      end if;
    end if;
    prv_住院_交押金_处理(out_patientid,
                  v_new_residentid,
                  'REAL_FEE',
                  0,
                  in_pre_pay,
                  in_bill_type,
                  in_pre_pay_bill_no,
                  in_warrantor,
                  out_pre_payid);
    --由于入院时间按照安排床位的时间计算，实际入院登记后，也不产生病案首页信息
    --因此下面的过程被注释掉                     
    --prv_住院_病历首页_生成(t_residentid, 'S_住院_住院登记');
    --update case_page1
    --   set home_bed   = in_home_bed,
    --       reason     = 'S_住院_住院登记',
    --       pay_method = nvl(in_case_page1_pay_method, '6')
    -- where residentid = t_residentid;
  
    if in_diagnose_attribute is not null
       and in_diagnose_diseaseid is not null
    then
      prv_住院_诊断增加(in_diagnose_attribute,
                  out_patientid,
                  v_new_residentid,
                  in_diagnose_diseaseid,
                  in_diagnose_remark);
    end if;
    commit;
    rabbitmq.publish_adt_message(events.adt_admission, v_new_residentid);
  end s_住院_住院登记;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2016/08/31 - 零费用的患者修改住院号,允许取消出院
  --     tiger      2008/10/20 - 引入包并重写
  --     tiger      2007/11/26 -  增加系统选项"住院登记取消"
  --     tiger      2006/07/18 -  删除优惠信息
  --     tiger      2004/11/17 -  s_qc.cancel_sale被删除，重新调用 qc.cancel_sale,
  --     tiger      2002/10/27 -  不删除病人信息和预交款信息,自动退预交款.
  --     tiger      2000/12/12 -  删除当前病人信息
  --     tiger      2000/08/19 -  REWRITE  合并表 resident_register & resident_info
  --     TIGER      2000/08/11 -  修改错误，设置床位为空
  --     TIGER      2000/04/10 -  20000410_BED
  procedure s_住院_住院登记_取消(in_patientid  in varchar2
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
    verify_not_null(in_residentid, '住院号');
    v_residentid := hospital.pres.get_resident_id(in_residentid);
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
  
    if t_resident_info.process_operator <> hospital.login.get_workerid
    then
      if nvl(get_system_option('住院登记取消_允许取消非本人登记病人'), 'N') = 'Y'
      then
        null;
      else
        raise_application_error(-20001,
                                '这是' ||
                                get_worker_name(t_resident_info.process_operator) ||
                                '作的住院病人登记，您不能取消.;');
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
                              '没有该病人入院登记信息,不能取消住院.;');
    end if;
    if t_resident_info.residentid <> in_residentid
    then
      raise_application_error(-20001,
                              '输入的病人是' || get_patient_name(in_patientid) ||
                              '，而住院号为' || v_residentid || '的病人是' ||
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
                              '该病人还有预交款没有退,不能取消住院登记.;');
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
      raise_application_error(-20001, '该病人账务总金额不为零,不能退院.;');
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
      raise_application_error(-20001, '该病人账单总金额不为零,不能退院.;');
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
      raise_application_error(-20001, '该病人费用总金额不为零,不能退院.;');
    end if;
  
    begin
      select *
        into v_qc_in_use
        from qc_in_use
       where residentid = v_residentid
         and rownum = 1;
      begin
        select 2 into i from qc_clinic where id = v_qc_in_use.id;
        --门诊住院一卡通他
        delete from hospital.qc_in_use where residentid = v_residentid;
      exception
        when no_data_found then
          --住院查询卡
          qc.cancel_sale(v_qc_in_use.id, v_residentid);
      end;
    exception
      when no_data_found then
        null;
    end;
  
    --删除病案首页记录
    delete from hospital.case_page1_ where residentid = in_residentid;
    --电子病历取消入院
    begin
      select hosp_id, visit_id
        into v_hosp_id, v_visit_id
        from hsemr.patient_visit_
       where resident_id = in_residentid
         and patient_id = in_patientid;
      hsemr.pck_pv.s_nc_入院取消(v_hosp_id, in_residentid, v_visit_id);
    exception
      when no_data_found then
        null;
    end;
  
    v_new_residentid := prv_住院号_编号_取消产生(in_residentid);
  
    prv_修改住院号(in_residentid, v_new_residentid);
  
    if t_resident_info.bedid is not null
    then
      update bed
         set status = 'B'
       where id = t_resident_info.bedid
         and deptid = t_resident_info.deptid;
    end if;
  
    if nvl(get_system_option('自动产生住院号'), ' ') = 'Y'
    then
      prv_住院号_编号_回收(v_residentid);
    end if;
  
    s_住院_出院登记_取消_转储nc(v_new_residentid);
  
    update hospital.resident_info_
       set process_reason   = 'CANCEL',
           process_operator = hospital.login.get_workerid,
           process_date     = sysdate
     where residentid = v_new_residentid;
  
    delete from hospital.resident_patient_
     where residentid = v_new_residentid;
    --hospital.s_病历_住院登记_取消(in_patientid, in_residentid);
    --hospital.s_护理_住院登记_取消(in_patientid, in_residentid);
    commit;
    rabbitmq.publish_adt_message(in_event            => events.adt_admission_cancel,
                                 in_resident_patient => t_resident_patient);
  end s_住院_住院登记_取消;

  -----------------------------------------------------------------------------------------------------
  --       tiger      2008/10/20 - 引入包并重写
  --       tiger      2006/11/13 - 不同的人登记，可以修改科室
  --       tiger      2002/10/26 create
  procedure s_住院_住院登记_修改科别(in_patientid  in varchar2
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
        raise_application_error(-20001, '新的科室不是住院科室不能修改.;');
      end if;
    exception
      when no_data_found then
        raise_application_error(-20001, '住院科室不存在.;');
    end;
  
    if t_resident_info.process_reason <> 'IN'
    then
      raise_application_error(-20001,
                              '没有该病人入院登记信息,不能修改入院科室.;');
    end if;
  
    if t_resident_info.residentid <> in_residentid
    then
      raise_application_error(-20001,
                              '输入的病人是' || get_patient_name(in_patientid) ||
                              '，而住院号' || in_residentid || '不是该病人的住院号.;');
    end if;
  
    begin
      select 2
        into i
        from order_list
       where ownerid = in_residentid
         and rownum = 1;
      raise_application_error(-20001, '该病人已经录入医嘱，不能修改科别.;');
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
      raise_application_error(-20001, '该病人已经有结帐单据不能修改科别.;');
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
      raise_application_error(-20001, '该病人已经有计帐明细不能修改科别.;');
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
      raise_application_error(-20001, '该病人已经有结算费用不能修改科别.;');
    exception
      when no_data_found then
        null;
    end;
  
    if t_resident_info.process_operator <> hospital.login.get_workerid
    then
      if nvl(get_system_option('允许任意修改住院病人科室'), 'N') = 'N'
      then
        raise_application_error(-20001,
                                '这是' ||
                                get_worker_name(t_resident_info.process_operator) ||
                                '作的住院病人登记，您不能修改科别.;');
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
           reason    = 'S_住院_住院登记_修改科别'
     where residentid = in_residentid;
    commit;
    rabbitmq.publish_update_in_deptid(in_residentid => in_residentid,
                                      in_old_deptid => t_resident_info.bedid);
  end s_住院_住院登记_修改科别;
  -----------------------------------------------------------------------------------------------------
  procedure s_住院_入院日期_修改(in_patientid  in varchar2
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
  
    select hospital.get_system_option('允许修改入院时间范围')
      into v_date_scope
      from dual;
    if v_date_scope is null
    then
      raise_application_error(-20001, '没有开通修改入院登记时间功能.;');
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
                              '不能修改入院时间为' || v_date_scope || '之前.;');
    end if;
  
    update resident_info
       set in_date     = to_date(in_new_date, 'YYYY-MM-DD HH24:MI:SS'),
           update_date = sysdate
     where residentid = in_residentid;
  
    --修改体温单
    hsemr.pck_vs.s_体征信息_入院日期修改nc(in_residentid,
                                 in_new_date,
                                 hospital.login.get_hospid,
                                 hospital.login.get_deptid,
                                 hospital.login.workerid);
    commit;
  end s_住院_入院日期_修改;

  -----------------------------------------------------------------------------------------------------
  --     tiger      2013/09/11 - 输入婴儿生日，入院时间 = 婴儿生日,生日要求输入 yyyy/mm/dd hh24:mis的精确度
  --     tiger      2008/10/20 - 引入包并重写
  --     tiger      2008/08/29 -  增加入院年龄和年龄单位,取消对病人信息年龄的修改
  --     tiger      2006/12/20 -  增加住院号
  --     tiger      2003/06/12 -  增加标志判断病人计帐费用控制方式(自费和医疗保险)
  --     tiger      2000/12/12 -  增加当前病人 
  --     tiger      2000/08/19 -  REWRITE  合并表 resident_register & resident_info
  procedure s_住院_新生儿登记(in_mother_residentid in varchar2
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
      raise_application_error(-20001, '不能给新生儿登记新生儿.;');
    end if;
    if hospital.get_patient_gender(t_resident_patient.patientid) = 'M'
    then
      raise_application_error(-20002,
                              '该患者为男士，不能为其建立母婴关系！');
    end if;
    begin
      select 2
        into i
        from resident_info
       where residentid = in_residentid
         and rownum = 1;
      raise_application_error(-20001,
                              '住院号(' || in_residentid || ')已在使用,请换一个编号.;');
    exception
      when no_data_found then
        null;
    end;
    verify_not_null(in_birthday, '生日');
    verify_valid_date(in_birthday, '生日');
    verify_valid_residentid(in_residentid);
    verify_patient(t_resident_patient.patientid);
    verify_field_dict('PATIENT', 'GENDER', in_gender, '性别');
    verify_not_null(in_name, '姓名');
    verify_length(in_name, 40, '姓名');
    verify_length(in_pinyin, 20, '拼音');
    if get_resident_id(t_resident_info.residentid) <>
       substrb(in_residentid,
               1,
               length(get_resident_id(t_resident_info.residentid)))
    then
      raise_application_error(-20001, '非法的婴儿住院号');
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
      raise_application_error(-20001, '婴儿住院号不能与母亲相同');
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
       '新生儿',
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
       '5', --默认为1小时
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
    --新生儿住院登记自动录入医嘱
    if nvl(get_system_option('新生儿住院登记自动录入医嘱'), 'N') = 'Y'
    then
      begin
        select a.id
          into v_order_list_groupid
          from hospital.order_list_group_ a, hospital.all_worker_ b
         where a.name = '新生儿住院登记自动录入医嘱'
           and a.doctorid = b.id
           and b.hospid = get_login_hospid
           and rownum = 1
         order by a.update_date desc;
      exception
        when no_data_found then
          raise_application_error(-20001,
                                  '找不到名称为:新生儿住院登记自动录入医嘱 的模板.;');
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
        ol_input.s_医嘱_子医嘱_杂费_增加_nc(null,
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
      
        if nvl(get_system_option('新生儿住院登记确认医嘱'), 'N') = 'Y'
           and v_order_listid is not null
        then
          ol_input.s_医嘱_医嘱_确认_nc(v_order_listid, 'NURSE');
        end if;
      end loop;
    end if;
    s_copy_patient(t_patientid);
    out_patientid  := t_patientid;
    out_residentid := t_residentid;
    commit;
    rabbitmq.publish_adt_message(in_event      => events.adt_admission,
                                 in_residentid => t_residentid);
  end s_住院_新生儿登记;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/20 - 引入包并重写
  --     tiger      2000/12/12 -  取消当前病人
  --     tiger      2000/09/25 -  取消登记后，修改母亲的信息
  --     tiger      2000/08/19 -  REWRITE  合并表 resident_register & resident_info
  procedure s_住院_新生儿登记_取消(in_patientid         in varchar2
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
      raise_application_error(-20001, '这不是新生儿，或没有找到母亲姓名.;');
    end if;
    if t_resident_info.residentid <> in_residentid
    then
      raise_application_error(-20001, '传入参数有误.;');
    end if;
  
    begin
      select 2
        into i
        from order_list
       where ownerid = in_residentid
         and rownum = 1;
      raise_application_error(-20001, '该新生儿已经有医嘱.;');
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
        raise_application_error(-20001, '没有找到新生儿母亲的住院信息.;');
      when too_many_rows then
        raise_application_error(-20001, '找到新生儿母亲的多条住院信息.;');
    end;
  
    begin
      select *
        into t_mother_info
        from resident_info b
       where record_no = t_record_no;
    exception
      when no_data_found then
        raise_application_error(-20001, '没有找到新生儿母亲的住院信息.;');
      when too_many_rows then
        raise_application_error(-20001, '找到新生儿母亲的多条住院信息.;');
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
    --hospital.s_病历_住院登记_取消(in_patientid, in_residentid);
    --hospital.s_护理_住院登记_取消(in_patientid, in_residentid);
  
    --电子病历出院取消
    begin
      select hosp_id, visit_id
        into v_hosp_id, v_visit_id
        from hsemr.patient_visit_
       where resident_id = in_residentid
         and patient_id = in_patientid;
      hsemr.pck_pv.s_nc_入院取消(v_hosp_id, in_residentid, v_visit_id);
    exception
      when no_data_found then
        null;
    end;
    commit;
    rabbitmq.publish_adt_message(in_event            => events.adt_admission_cancel,
                                 in_resident_patient => t_resident_patient);
  end s_住院_新生儿登记_取消;
  -----------------------------------------------------------------------------------------------------
  procedure s_住院_修改新生儿信息(in_residentid in varchar2
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
    verify_not_null(in_birthday, '生日');
    verify_valid_date(in_birthday, '生日');
    verify_field_dict('PATIENT', 'GENDER', in_gender, '性别');
    verify_not_null(in_name, '姓名');
    verify_length(in_name, 40, '姓名');
    verify_length(in_pinyin, 20, '拼音');
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
                                '住院号为( ' || in_residentid || ' )的患者不是新生儿.;');
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
  
    --修改体温单
    hsemr.pck_vs.s_体征信息_入院日期修改nc(in_residentid,
                                 in_birthday,
                                 hospital.login.get_hospid,
                                 hospital.login.get_deptid,
                                 hospital.login.workerid);
    commit;
  end s_住院_修改新生儿信息;
  --以下部分是专科相关的部分                                     
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/11/19 - 在 prv_住院_转科_结算 中实现代码
  --     tiger      2008/10/20 - 引入包并重写
  --     tiger      2007/04/05 - 修改结算中的BUG
  --     tiger      2007/04/02 - 取消出院授权管理
  --     tiger      2006/06/24 - 增加优惠价格
  --     tiger      2006/05/09 -  按照每一个明细四舍五入 
  --     tiger      2002/09/26 -  增加字段 结算单类型、结算时间和结算员信息
  --     tiger      2000/10/01 -  修改CHARGE_ITEM的CHARGE_BILLID
  --     tiger      2000/09/25 -  增加结算方式：自费/在职医疗保险/离休医疗保险
  --     tiger      2000/09/22 -  增加医疗保险收费/记帐支持
  --     tiger      2000/08/19 -  REWRITE  合并表 resident_register & resident_info
  /*
  procedure s_住院_转科_结算(in_patientid     in varchar2
                            ,in_deptid        in varchar2
                            ,in_update_reason in varchar2) is
    t_resident_patient resident_patient%rowtype;
    t_resident_info    resident_info%rowtype;
  begin
    raise_application_error(-20001, '该功能已经禁用');
    commit;
  end s_住院_转科_结算;
  */
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/11/19 - 在 prv_住院_转科_结算_取消 中实现代码
  --     tiger      2008/10/20 - 引入包并重写
  --     tiger      2007/04/02 - 取消出院授权管理
  --     tiger      2002/09/26 -  增加字段 结算单类型、结算时间和结算员信息
  --     tiger      2000/10/01 -  对没有结帐的结算单据才可以以取消结算
  --                              当没有待结帐的结算单据后才可以取消转科结算
  --     tiger      2000/08/19 -  REWRITE  合并表 resident_register & resident_info
  procedure s_住院_转科_结算_取消(in_patientid     in varchar2
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
      raise_application_error(-20001, '请操作母亲.;');
    end if;
    prv_住院_转科_结算_取消(in_residentid, in_charge_billid);
    commit;
  end s_住院_转科_结算_取消;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2013/08/08 - 转科请求时，指定拟转入科室,转科请求后直接进行转科结算
  --     tiger      2008/11/19 - 1  具体的实现过程，引入prv_住院_转科_请求
  --                             2  实现专科结算的功能
  --     tiger      2008/10/20 - 引入包并重写
  --     tiger      2007/10/22 - 先修改resident_patient.record_no,然后修改(插入)residentid_info
  --     tiger      2007/04/02 - 取消出院授权管理
  --     tiger      2006/10/31 - 停止所有的固定医嘱(E,F)
  --     tiger      2003/10/15 - 记录change_dept_info信息
  --     tiger      2003/08/15 - 禁止急诊科使用此功能 
  --     tiger      2000/08/19 - REWRITE  合并表 resident_register  resident_info
  --     TIGER      2000/04/10 - 20000410_BED
  procedure s_住院_转科_请求(in_residentid         in varchar2
                      ,in_deptid             in varchar2
                      ,in_destination_deptid in varchar2 --拟转入科室
                      ,in_type               in varchar2 --转科类型：A 普通转科 B 母婴同时转科 C 母亲转科、婴儿不专科 D 婴儿转科、母亲不转科
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
                              '该病人还没有安排床位，请直接要求住院处修改入院科室.;');
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
                              '非法的转科标志( ' || in_type || ' ).;');
    end if;
  
    verify_department(in_deptid);
    select attribute
      into v_dept_attr
      from all_department
     where id = in_deptid;
    if substrb(v_dept_attr, 5, 1) = 'A'
       and nvl(get_system_option('急诊科患者禁止转科请求'), 'N') = 'N'
    then
      raise_application_error(-20001, '急诊科病人禁止转到其他科室.;');
    end if;
  
    verify_department(in_destination_deptid);
    select attribute
      into v_dept_attr
      from all_department
     where id = in_destination_deptid;
    if substrb(v_dept_attr, 5, 1) = 'A'
    then
      raise_application_error(-20001, '急诊科不能作为转科接收科室.;');
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
          raise_application_error(-20001, '不是新生儿,不能转科.;');
      end;
    end if;
  
    user_permit.s_ack_转科请求(t_resident_info.deptid);
  
    prv_住院_转科_请求_前提判断(in_residentid,
                      in_deptid,
                      in_destination_deptid,
                      in_type,
                      in_remark);
  
    prv_住院_转科_请求(in_residentid,
                 in_deptid,
                 in_destination_deptid,
                 in_type,
                 in_remark);
  
    prv_住院_转科_结算(in_residentid, in_deptid, in_type);
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
  end s_住院_转科_请求;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2010/08/06 - 支持母婴同时转科
  --     tiger      2008/10/20 - 引入包并重写
  --     TIGER      2000/05/04 - 转科取消后，不自动安排床位.
  --     TIGER      2000/04/10 - 20000410_BED
  procedure s_住院_转科_请求_取消(in_residentid in varchar2) is
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
                                '没有找到住院号为( ' || in_residentid ||
                                ' )的患者转科请求信息，不能进行转科请求取消.;');
    end;
    prv_住院_转科_请求_取消(in_residentid, t_type);
    commit;
    rabbitmq.publish_adt_message(in_event      => events.adt_transfer_cancel,
                                 in_residentid => in_residentid);
  end s_住院_转科_请求_取消;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2010/08/06 - 首次引入： 支持母婴同时转科
  procedure prv_住院_转科_请求_取消(in_residentid in varchar2
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
  
    --    user_permit.s_ack_转科请求(t_resident_info.deptid);
    if t_resident_info.process_reason in ('IN', 'NEW')
    then
      raise_application_error(-20001,
                              '该病人没有做转科请求,不能取消转科请求.;');
    elsif t_resident_info.process_reason = 'OUT'
    then
      raise_application_error(-20001,
                              '该病人已经做了出院请求,不能取消转科.;');
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
          prv_住院_转科_结算_取消(in_residentid, t_charge_billid);
        exception
          when no_data_found then
            null; --没有专科结算单
        end;
      elsif t_resident_info.finish_flag = 'FINISHED'
      then
        raise_application_error(-20001,
                                '该病人已经做了转科结算,不能取消转科.;');
      else
        raise_application_error(-20001, '非法的FINISH_FLAG.;');
      end if;
    else
      raise_application_error(-20001,
                              '非法的PROCESS_REASON状态' ||
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
                                '没有找到该病人以前的住院登记信息，不能取消出院;');
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
                                '没有找到该病人出院请求时的病人信息.;');
      when too_many_rows then
        raise_application_error(-20001,
                                '找到该病人出院请求时的多条病人信息.;');
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
        prv_住院_转科_请求_取消(c.baby_residentid, 'A');
      end loop;
    end if;
  end prv_住院_转科_请求_取消;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2010/08/06 - 支持母婴同时转科
  --     tiger      2008/10/20 - 引入包并重写
  --     tiger      2004/12/01 - 调用 rpt_dr.s_change_dept_accept统计主治医师病人动态数据
  --     tiger      2004/03/11 - 修改rpt_case.change_dept接口调用参数
  --     tiger      2003/10/15 - 记录转科信息:转入科别
  --     tiger      2003/08/15 - 禁止急诊科使用此功能 
  --     tiger      2002/01/21 - rewrite 重新修改病案首页的格式， doc_no = 2002_01_21_001
  --     tiger      2001/08/14 - 如果没有病历首页，则产生一个
  --     tiger      2000/08/19 - REWRITE  合并表 resident_register & resident_info
  --     tiger      2007/01/14 - 删除dr_order_list_info中的信息
  procedure s_住院_转科_转入(in_residentid in varchar2) is
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
                                '没有找到住院号为(' || in_residentid ||
                                ')的转科请求信息，不能进行转科接收.;');
    end;
  
    if t_changing_dept.destination_deptid <> get_login_deptid
    then
      raise_application_error(-20001,
                              '转入科室( ' ||
                              get_dept_name(t_changing_dept.destination_deptid) ||
                              ')和登录科室不同，不能接收.;');
    end if;
    prv_住院_转科_转入(in_residentid,
                 t_changing_dept.destination_deptid,
                 t_changing_dept.type);
    commit;
    rabbitmq.publish_adt_message(in_event      => events.adt_transfer_reveive,
                                 in_residentid => in_residentid);
  end s_住院_转科_转入;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2010/08/06 - 首次引入：支持母婴同时转科
  procedure prv_住院_转科_转入(in_residentid in varchar2
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
  
    --如果正常转科，或者母婴同时转科，修改创维状态
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
        prv_住院_病历首页_生成(t_resident_info.residentid, 'S_住院_转科_转入');
    end;
    --要先统计转科信息，然后才能修改病历首页
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
           reason        = 'S_住院_转科_转入'
     where residentid = t_resident_info.residentid;
  
    if in_type = 'B'
    then
      for c in (select *
                  from mother_baby_relation
                 where mother_residentid = t_resident_info.residentid)
      loop
        prv_住院_转科_转入(c.baby_residentid, in_deptid, 'A');
      end loop;
    end if;
    if in_type = 'C' --母亲转科，新生儿不转科，取消所有母婴关系
    then
      --取消母婴关系
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
    elsif in_type = 'D' --新生儿转科，母亲不转科，取消当前BABY的母婴关系
    then
      --取消母婴关系
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
  end prv_住院_转科_转入;
  -----------------------------------------------------------------------------------------------------
  procedure s_住院_转科_拒绝转入(in_residentid in varchar2) is
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
                                '没有找到住院号为(' || in_residentid ||
                                ')的转科请求信息，不能进行转科接收.;');
    end;
    --
    if t_changing_dept.destination_deptid <> get_login_deptid
    then
      if is_worker_login_dept(hospital.login.get_workerid,
                              t_changing_dept.destination_deptid) <> 0
      then
        raise_application_error(-20001,
                                '这是转入' ||
                                get_dept_name(t_changing_dept.destination_deptid) ||
                                '的患者,您以' || get_dept_name(get_login_deptid) ||
                                '身份登录,不能拒绝.;');
      else
        raise_application_error(-20001,
                                '这是转入' ||
                                get_dept_name(t_changing_dept.destination_deptid) ||
                                '的患者，您不能拒绝.;');
      end if;
    end if;
    --
    prv_住院_转科_请求_取消(in_residentid, t_changing_dept.type);
    commit;
    rabbitmq.publish_adt_message(in_event      => events.adt_transfer_reject,
                                 in_residentid => in_residentid);
  end s_住院_转科_拒绝转入;
  -----------------------------------------------------------------------------------------------------
  procedure s_住院_病历首页_生成(in_residentid in varchar2
                        ,in_reason     in varchar2) is
  begin
    prv_住院_病历首页_生成(in_residentid, in_reason);
    commit;
  end;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/10/20 - 引入包并重写
  --  2005/03/25  tiger  - 增加绑定变量
  --  2005/03/10  tiger  - 直接使用table_name,防止出错
  --  2002/08/11  tiger  - 修改case_page1 set id = residentid
  --  2001/08/14  tiger 
  procedure prv_修改住院号(in_old_residentid in varchar2
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
    verify_not_null(in_new_residentid, '新住院号');
    --验证住院号中间部分的数据
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
                                '新住院号' || in_new_residentid || '已经被其他人使用.;');
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
                                '新住院号' || in_new_residentid || '已经被其他人使用.;');
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
             reason     = 'S_修改住院号'
       where id = in_old_residentid;
      --hospital.s_护理_修改住院号(in_old_residentid, t_new_residentid);
      --hospital.s_病历_修改住院号(in_old_residentid, t_new_residentid);
    exception
      when others then
        raise_application_error(-20001, sqlerrm || t_sql);
    end;
  end;
  -----------------------------------------------------------------------------------------------------
  procedure s_修改住院号(in_old_residentid in varchar2
                   ,in_new_residentid in varchar2) as
  begin
    prv_修改住院号(in_old_residentid, in_new_residentid);
    commit;
    rabbitmq.publish_update_residentid(in_new_residentid  => in_new_residentid,
                                       in_old_residenteid => in_old_residentid);
  end;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/11/13 - create
  procedure s_住院_交报销控制金额(in_patientid  in varchar2
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
    verify_valid_number(in_fee, '金额');
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
  end s_住院_交报销控制金额;
  -----------------------------------------------------------------------------------------------------
  procedure s_住院_允许出院_授权(in_residentid in varchar2) is
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
                              '该病人已经做了出院请求,无需允许出院操作.;');
    end if;
    begin
      select 2
        into i
        from resident_patient_out_authorize
       where residentid = in_residentid
         and rownum = 1;
      raise_application_error(-20001, '该病人已经允许出院,无需重复操作.;');
    exception
      when no_data_found then
        null;
    end;
    insert into resident_patient_out_authorize
      (residentid, workerid, update_date)
    values
      (in_residentid, hospital.login.get_workerid, sysdate);
    commit;
  end s_住院_允许出院_授权;
  -----------------------------------------------------------------------------------------------------
  procedure s_住院_允许出院_授权取消(in_residentid in varchar2) is
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
                              '该病人已经做了出院请求,不能取消允许出院操作.;');
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
                                '没有找到该病人允许出院授权的操作,不能取消.;');
    end;
    delete from resident_patient_out_authorize
     where residentid = in_residentid;
    commit;
  end s_住院_允许出院_授权取消;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2008/11/13 - create
  procedure s_住院_退报销控制金额(in_patientid  in varchar2
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
        raise_application_error(-20001, '不能重复退.;');
      end if;
    exception
      when no_data_found then
        raise_application_error(-20001, '要退费的控费金额记录不存在.;');
      when others then
        raise_application_error(-20001, '其他人正在操作，请重试.;');
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
  end s_住院_退报销控制金额;
  -----------------------------------------------------------------------------------------------------
  procedure verify_valid_身份证号(in_id in varchar2) is
    v_str varchar2(8);
  begin
    if lengthb(in_id) <> 15
       and lengthb(in_id) <> 18
    then
      raise_application_error(-20001,
                              '非法的身份证编号( ' || in_id || ' ).;');
    end if;
  
    if lengthb(in_id) = 18
    then
      v_str := substrb(in_id, 7, 8);
    else
      v_str := '19' || substrb(in_id, 7, 6);
    end if;
    verify_valid_date(v_str, '省份证号码中的生日信息');
  end verify_valid_身份证号;
  -----------------------------------------------------------------------------------------------------
  function get_birthday_from_身份证号(in_id in varchar2) return varchar2 is
    v_str varchar2(8);
  begin
    if lengthb(in_id) = 18
    then
      v_str := substrb(in_id, 7, 8);
    else
      v_str := '19' || substrb(in_id, 7, 6);
    end if;
    return v_str;
  end get_birthday_from_身份证号;
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
  procedure prv_更新处方年龄(in_patientid in varchar2) is
    v_age      varchar2(10);
    v_age_unit varchar2(10);
    v_birthday date;
  begin
    if nvl(get_system_option('修改患者信息_自动更新处方年龄'), 'N') = 'N'
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
  end prv_更新处方年龄;
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
  --     tiger      2009/01/17 - 引入包并重写,
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
      raise_application_error(-20001, '无效操作类型.;');
    end if;
    if in_op_type in ('I', 'U')
    then
      verify_length(in_name, 40, '名字');
      verify_not_null(in_name, '名字');
      verify_length(in_pinyin, 100, '拼音');
      verify_not_null(in_pinyin, '拼音');
      verify_length(in_attribute, 10, '属性');
      verify_field_dict('PATIENT', 'ATTRIBUTE', in_attribute, '病人类别');
      if in_attribute in
         ('ASSURANCE', 'INHABITANT', 'PUBLIC', 'COMEDICARE')
      then
        verify_valid_free_no(in_free_no);
      elsif in_free_no is not null
      then
        raise_application_error(-20001,
                                '不是医疗保险病人，医疗保险号码必须为空.;');
      end if;
      verify_length(in_gender, 1, '性别');
      verify_field_dict('PATIENT', 'GENDER', in_gender, '性别');
    
      if in_identification is not null
      then
        verify_valid_身份证号(in_identification);
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
        --生日合法性验证
        if in_birthday is not null
        then
          verify_valid_date(in_birthday, '生日');
          v_birthday := get_date_from_str(in_birthday);
        else
          if in_age is not null
             and in_age_unit is not null
          then
            verify_valid_number(in_age, '年龄');
            verify_positive_number(in_age, '年龄');
            verify_field_dict('RESIDENT_INFO',
                              'AGE_UNIT',
                              in_age_unit,
                              '年龄单位');
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
        raise_application_error(-20001, '请输入生日.;');
      end if;
      if v_birthday > trunc(sysdate) + 1
      then
        raise_application_error(-20001, '生日不能大于今天.;');
      end if;
      if age(v_birthday) > 150
      then
        raise_application_error(-20001, '请输入合理的年龄.;');
      end if;
    
      verify_length(in_profession, 30, '职业');
      if nvl(get_system_option('修改患者信息_必须录入职业'), 'N') = 'Y'
      then
        verify_not_null(in_profession, '职业');
      end if;
      verify_length(in_identification, 20, '身份证号码');
    
      verify_length(in_marry_status, 2, '婚姻状况');
      verify_field_dict('PATIENT',
                        'MARRY_STATUS',
                        in_marry_status,
                        '婚姻状况');
      verify_length(in_birth_province, 40, '出生省份');
      verify_length(in_birth_county, 40, '出生市县');
      verify_length(in_race, 10, '民族');
      verify_length(in_blood_type, 2, '血型');
    
      if hospital.get_system_option('患者信息_地址不能为空') = 'Y'
      then
        verify_not_null(in_home_address, '患者地址');
      end if;
    
      if hospital.get_system_option('患者信息_电话不能为空') = 'Y'
      then
        verify_not_null(in_home_tele, '电话');
      end if;
    
      verify_length(in_home_address, 200, '家庭地址');
      verify_length(in_home_tele, 20, '家庭电话');
      verify_length(in_home_zip, 6, '家庭邮编');
      verify_length(in_office_address, 200, '工作地址');
      verify_length(in_office_tele, 20, '工作电话');
      verify_length(in_office_zip, 6, '工作邮编');
      verify_length(in_asso_name, 80, '联系人');
      verify_length(in_asso_relation, 10, '与病人关系');
      verify_length(in_asso_address, 200, '联系人地址');
      verify_length(in_asso_tele, 20, '联系人电话');
      verify_length(in_asso_zip, 6, '联系人邮编');
      verify_valid_number(in_clinic_fee_rate, '门诊收费率');
      verify_length(in_resident_fee_type, 2, '住院收费类型');
      verify_valid_number(in_resident_fee_rate, '住院收费率');
      verify_length(in_education, 30, '教育程度');
      verify_length(in_remark, 30, '备注');
      verify_length(in_religion, 40, '宗教');
    
      if in_regionid is not null
         or nvl(get_system_option('必须录入患者行政区域'), 'N') = 'Y'
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
                                  '医疗保险号为' || in_free_no || '的病人已经登记.;');
        exception
          when no_data_found then
            null;
        end;
      end if;
      --判断是否已经传入病人编号(发卡过程中病人编号是已经生成的)
      if in_id is not null
      then
        t_id := in_id;
      else
        t_id := get_next_patientid;
      end if;
    
      begin
        select * into t_patient from patient where id = t_id;
        raise_application_error(-20001, '该编码已经存在,不能插入.;');
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
          raise_application_error(-20001, '有多条相同编码的记录.;');
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
                                  '病人编号(' || in_id || ')不存在.;');
        when too_many_rows then
          raise_application_error(-20001, '有多条相同编码的记录.;');
      end;
      if in_op_type = 'D'
      then
        delete from patient where id = in_id;
        insert into hospital.deleted_records_
          (schema_name, table_name, id, delete_date)
        values
          ('HOSPITAL', 'PATIENT', in_id, sysdate);
      else
        if nvl(get_system_option('医保病人医保号重复允许修改'), 'Y') = 'N'
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
                                    '医疗保险号' || in_free_no ||
                                    '是其他病人的号码,不能修改为新病人的号码.;');
          exception
            when no_data_found then
              null;
          end;
        else
          null;
        end if;
      
        if nvl(get_system_option('患者信息_使用医保接口签约医保卡'), 'Y') = 'N'
        then
          v_attribute := nvl(trim(in_attribute), t_patient.attribute);
          v_free_no   := trim(in_free_no);
        else
          v_attribute := t_patient.attribute;
          v_free_no   := t_patient.free_no;
        end if;
      
        --住院病人信息修改授权管理
        if t_patient.name <> in_name
        then
          prv_ack_病人姓名修改(in_id, t_patient.name, in_name);
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
        prv_更新处方年龄(in_id);
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
            --如果输入的是出生小时，并且计算的年龄是0天，则按照用户输入的小时记录年龄。
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
                 reason         = '修改病人信息',
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
  --     tiger      2009/01/17 - 引入包并重写,
  --
  -- 2006/11/08 -  可以修改病人姓名以外的信息
  -- 2006/03/16  - 输入年龄的规范为:1 日期型     代表生日   1998/12/21 
  --                                2 数字       代表年龄   35    表示35岁
  --                                3 数字/12    代表月份   7/12  表示七个月
  --                                  数字M      代表月份   7M    表示七个月
  --                                  数字Y      代表月份   7Y    表示七个月
  --                                4 数字/30    代表天数   8/30  表示八天
  --                                4 数字T      代表天数   8T    表示八天
  --                                4 数字D      代表天数   8D    表示八天
  --                               5 数字M数字D 代表月天   7M8D  表示七个月八天
  --                                5 数字Y数字T 代表月天   7Y8T  表示七个月八天
  --
  --
  -- 2005/06/23  - 对于持卡的病人，当天可以修改病人姓名，如果有发票存在，禁止修改病人信息。
  -- 2001/06/06  - 设置 change_field_knowledge 参数 in_type 
  -- 2000/12/12  - 当修改时，如果当前病人表中存在,则修改
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
  --  2009/01/17 - TIGER  - 引入包
  --  2001/12/19 - TIGER  - 转换拼音为大写
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
                              '非法的操作编码(' || in_op_type || ').;');
    end if;
    if in_op_type in ('I', 'U')
    then
      verify_length(in_table_name, 30, '表名');
      verify_length(in_field_name, 30, '字段名');
      verify_length(in_field_value, 255, '字段值');
      verify_valid_number(in_frequence, '频率');
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
          raise_application_error(-20005, '错误: 有多个相同记录.;');
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
  procedure prv_ack_病人姓名修改(in_id       in varchar2
                          ,in_old_name in varchar2
                          ,in_new_name in varchar2) is
    i        number;
    sysopt   varchar2(100);
    v_date   date;
    v_status hospital.auth_modify_patient_name_.status%type;
  begin
    if nvl(get_system_option('允许任意修改姓名门诊卡号' || in_id), 'N') = 'Y'
    then
      return;
    end if;
    --判断是否有授权信息，如果有，返回  
    begin
      select status
        into v_status
        from hospital.auth_modify_patient_name
       where patientid = in_id
         and old_name = in_old_name
         and new_name = in_new_name
         and rownum = 1
       order by update_date desc;
      if v_status = '待使用'
      then
        update hospital.auth_modify_patient_name
           set status = '已完成'
         where patientid = in_id
           and old_name = in_old_name
           and new_name = in_new_name;
        return;
      else
        raise_application_error(-20001,
                                '编号为( ' || in_id ||
                                ' )的病人修改姓名授权已经使用,如果需要再次修改,请重新授权!.;');
      end if;
    exception
      when no_data_found then
        null;
    end;
  
    --判断病人类别(门诊病人、住院病人)  
    begin
      select 2
        into i
        from resident_info
       where patientid = in_id
         and rownum = 1;
      sysopt := nvl(get_system_option('住院病人允许修改姓名时间'), 48);
      select min(in_date)
        into v_date
        from resident_info
       where patientid = in_id;
      if nvl(v_date, sysdate) > sysdate - to_number(sysopt) / 24
      then
        null;
      else
        raise_application_error(-20001,
                                '距离编号为( ' || in_id || ' )的病人入院登记经超过( ' ||
                                sysopt || ' )小时，不能修改病人姓名，如果需要修改请联系管理人员!.;');
      end if;
      --住院病人
    exception
      when no_data_found then
        --门诊病人
        select min(fee_date)
          into v_date
          from (select min(fee_date) fee_date
                  from charge_bill
                 where patientid = in_id
                union
                select min(fee_date) fee_date
                  from charge_bill_a01
                 where patientid = in_id);
        sysopt := nvl(get_system_option('门诊病人允许修改姓名时间'), 48);
        if nvl(v_date, sysdate) > sysdate - to_number(sysopt) / 24
        then
          null;
        else
          raise_application_error(-20001,
                                  '距离编号为( ' || in_id || ' )的病人第一次交费已经超过( ' ||
                                  sysopt ||
                                  ' )小时，不能修改病人姓名，如果需要修改请联系管理人员!.;');
        end if;
    end;
  end prv_ack_病人姓名修改;
  ---------------------------------------------------------
  procedure s_修改病人姓名授权(in_patientid in varchar2
                      ,in_old_name  in varchar2
                      ,in_new_name  in varchar2) is
  
    v_seq number;
  begin
    verify_patient(in_patientid);
    verify_length(in_old_name, 40, '姓名');
    verify_not_null(in_new_name, '授权修改姓名');
    verify_length(in_new_name, 40, '授权修改姓名');
    begin
      select seq
        into v_seq
        from hospital.auth_modify_patient_name_
       where patientid = in_patientid
         and status = '待使用';
      raise_application_error(-20001,
                              '病人编号为( ' || in_patientid || ' )的病人存在序号为( ' ||
                              v_seq || ' )的授权,请使用或者删除已经存在的授权!.;');
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
       '待使用',
       hospital.login.get_workerid,
       sysdate);
    commit;
  end s_修改病人姓名授权;
  ---------------------------------------------------------
  procedure s_修改病人姓名授权_取消(in_patientid in varchar2
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
      if v_status = '已完成'
      then
        raise_application_error(-20001,
                                '病人编号为' || in_patientid || '序号为' || in_seq ||
                                '的授权信息已经被使用,不能删除!');
      end if;
    exception
      when no_data_found then
        raise_application_error(-20001,
                                '未找到病人编号为' || in_patientid || '序号为' ||
                                in_seq || '的授权信息');
    end;
    delete from hospital.auth_modify_patient_name
     where patientid = in_patientid
       and seq = in_seq;
    commit;
  end s_修改病人姓名授权_取消;
  ---------------------------------------------------------
  --门诊病人日志登记
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
                                      ,in_血压高压值           in varchar2 default null
                                      ,in_血压低压值           in varchar2 default null
                                      ,in_血压单位             in varchar2 default null
                                      ,in_血糖值               in varchar2 default null
                                      ,in_血糖单位             in varchar2 default null
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
                              '无效操作类型.I插入,D删除,TITLE修改非诊断信息.;');
    end if;
    verify_patient(in_patientid);
  
    if in_temperature_flag is not null
    then
      verify_field_dict('CLINIC_LOG_REGISTER',
                        'TEMPERATURE_FLAG',
                        in_temperature_flag,
                        '体温标志');
    end if;
  
    if nvl(get_system_option('门诊日志_35岁及以上录入血压'), 'N') = 'Y'
    then
      select birthday into v_birthday from patient where id = in_patientid;
      if v_birthday < sysdate - 34 * 365
      then
        verify_not_null(in_血压高压值, '血压高压值');
        verify_not_null(in_血压低压值, '血压低压值');
      end if;
    end if;
  
    if in_血压高压值 is not null
    then
      verify_valid_number(in_血压高压值, '血压高压值');
    end if;
  
    if in_血压低压值 is not null
    then
      verify_valid_number(in_血压低压值, '血压低压值');
    end if;
    if in_血压单位 is not null
    then
      verify_field_dict('CLINIC_LOG_REGISTER',
                        '血压单位',
                        in_血压单位,
                        '血压单位');
    end if;
  
    if in_血糖值 is not null
    then
      verify_valid_number(in_血糖值, '血糖值');
    end if;
    if in_血糖单位 is not null
    then
      verify_field_dict('CLINIC_LOG_REGISTER',
                        '血糖单位',
                        in_血糖单位,
                        '血糖单位');
    end if;
    if in_op_type = 'D'
    then
      v_days := to_number(nvl(get_system_option('门诊日志_允许删除日志最大天数'),
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
                                  '不能删除(' || v_days || ')天以前的门诊日志信息.;');
        end if;
      exception
        when no_data_found then
          raise_application_error(-20001,
                                  '找不到编号为(' || in_id || ')的门诊日志记录.;');
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
          raise_application_error(-20001, '标准的初步诊断一必填！;');
      end;
      begin
        --clinic_log_register没有数据插入 有数据修改
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
               血压高压值           = in_血压高压值,
               血压低压值           = in_血压低压值,
               血压单位             = in_血压单位,
               血糖值               = in_血糖值,
               血糖单位             = in_血糖单位
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
             血压高压值,
             血压低压值,
             血压单位,
             血糖值,
             血糖单位)
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
             in_血压高压值,
             in_血压低压值,
             in_血压单位,
             in_血糖值,
             in_血糖单位);
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
        --修改诊断信息:只能修改当天的信息,不修改诊断内容
        begin
          --clinic_log_register没有数据插入 有数据修改
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
                 血压高压值       = in_血压高压值,
                 血压低压值       = in_血压低压值,
                 血压单位         = in_血压单位,
                 血糖值           = in_血糖值,
                 血糖单位         = in_血糖单位
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
               血压高压值,
               血压低压值,
               血压单位,
               血糖值,
               血糖单位)
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
               in_血压高压值,
               in_血压低压值,
               in_血压单位,
               in_血糖值,
               in_血糖单位);
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
        verify_not_null(in_revise_reason, '修订原因');
        verify_length(in_revise_reason, 200, '修订原因');
        begin
          --clinic_log_register没有数据插入 有数据修改
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
                 血压高压值           = in_血压高压值,
                 血压低压值           = in_血压低压值,
                 血压单位             = in_血压单位,
                 血糖值               = in_血糖值,
                 血糖单位             = in_血糖单位,
                 revise_workerid      = hospital.login.get_workerid,
                 revise_date          = sysdate,
                 revise_reason        = substrb(in_revise_reason, 1, 200)
           where id = v_id;
        exception
          when no_data_found then
            raise_application_error(-20001,
                                    '要修订的编号为(' || in_id || ')的门诊日志记录不存在.;');
        end;
      end if;
    end if;
    commit;
  end change_clinic_log_register;
  -----------------------------------------------------------------------------------------------------
  procedure prv_疾病谱排序_插入诊断(in_patientid in varchar2
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
  end prv_疾病谱排序_插入诊断;
  -----------------------------------------------------------------------------------------------------
  procedure s_门诊日志_禁用(in_id     in varchar2
                     ,in_status in varchar2) is
    t_clinic_log_register clinic_log_register%rowtype;
  begin
    verify_field_dict('CLINIC_LOG_REGISTER',
                      'STATUS',
                      in_status,
                      '日志状态');
    select *
      into t_clinic_log_register
      from clinic_log_register
     where id = in_id
       for update nowait;
    update clinic_log_register set status = in_status where id = in_id;
    if in_status = 'ENABLED'
    then
      prv_疾病谱排序_插入诊断(t_clinic_log_register.patientid,
                     t_clinic_log_register.update_date,
                     t_clinic_log_register.diagnose1,
                     t_clinic_log_register.diagnose1_icd10);
      prv_疾病谱排序_插入诊断(t_clinic_log_register.patientid,
                     t_clinic_log_register.update_date,
                     t_clinic_log_register.diagnose2,
                     t_clinic_log_register.diagnose2_icd10);
      prv_疾病谱排序_插入诊断(t_clinic_log_register.patientid,
                     t_clinic_log_register.update_date,
                     t_clinic_log_register.diagnose3,
                     t_clinic_log_register.diagnose3_icd10);
      prv_疾病谱排序_插入诊断(t_clinic_log_register.patientid,
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
  end s_门诊日志_禁用;
  -----------------------------------------------------------------------------------------------------
  --     tiger      2011/06/27 - 引入包
  --     tiger      2006/06/24 - 增加优惠价格
  --     tiger      2006/05/09 - 按照每一个明细四舍五入 
  --     tiger      2003/08/04 - 增加结算类型，结算员和结算时间信息
  --     tiger      2000/10/01 -  create
  procedure s_住院_中期结算(in_patientid      in varchar2
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
      verify_not_null(in_balance_date, '结算日期');
      verify_valid_date(in_balance_date, '结算日期');
      t_bill_date := trunc(get_date_from_str(in_balance_date));
    else
      t_bill_date := trunc(sysdate);
    end if;
    if t_bill_date > trunc(sysdate)
    then
      t_bill_date := sysdate; --raise_application_error(-20001, '结算截止日期不能大于今天.;');
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
                              '该病人已经做了转科请求,不能进行中期结算,请使用转科结算.;');
    elsif t_resident_info.process_reason = 'CHANGEDEPT'
          and t_resident_info.finish_flag = 'FINISHED'
    then
      null;
    elsif t_resident_info.process_reason = 'OUT'
    then
      raise_application_error(-20001,
                              '该病人已经做了出院请求,不能进行中期结算,请使用出院结算.;');
    else
      raise_application_error(-20001,
                              '非法的PROCESS_REASON' ||
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
                                '该病人没有记帐明细，或者没有未结算的记帐明细,不能作中期结算.;');
    end;
    --取消住院授权管理
    checkout.s_判断_是否有取消出院操作(t_resident_info.residentid);
  
    v_discount_type := discount_man.get_住院病人_优惠类别(t_resident_info.residentid);
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
  --     tiger      2011/06/27 - 引入包
  --     tiger      2003/08/04 - 增加结算类型，结算员和结算时间信息
  --     tiger      2000/10/01 -  create
  procedure s_住院_中期结算_取消(in_patientid     in varchar2
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
                              '该病人已经做了出院,不能取消中期结算.;');
    end if;
    begin
      select status, type
        into t_charge_bill_status, v_charge_bill_type
        from charge_bill
       where id = in_charge_billid;
    exception
      when no_data_found then
        raise_application_error(-20001, '在取消结算时，没有找到帐单.;');
      when too_many_rows then
        raise_application_error(-20001, '发现多个编号相同的帐单.;');
    end;
    if v_charge_bill_type <> 'MIDDLE'
    then
      raise_application_error(-20001,
                              '该单据不是中期结算单，不能取消结算.;');
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
      raise_application_error(-20001, '该结算单据已经结帐,不能取消结算.;');
    else
      raise_application_error(-20001,
                              '非法的结算单据状态' || t_charge_bill_status || '.;');
    end if;
    commit;
  end;
  -----------------------------------------------------------------------------------------------
  --    modified   (yyyy/mm/dd)   reason
  --     tiger      2011/06/30 - 引入包
  --     tiger      2003/08/04 - 取消该程序的功能
  --     tiger      2002/06/14 -  修改错误,中期结帐时出现修改charge_fee,charge_item状态错误.
  --     tiger      2000/10/01 -  create
  procedure s_住院_中期结算_结帐(in_patientid         in varchar2
                        ,in_residentid        in varchar2
                        ,in_charge_billid     in varchar2
                        ,in_status            in varchar2
                        ,in_patient_type      in varchar2
                        ,in_pay_bill_type     in varchar2
                        ,in_account_receiable in number --应收住院费总额  Account_receiable
                        ,in_total_fee         in number --实收 Total_fee
                        ,in_pre_pay           in number --预交款金额  Pre_pay
                        ,in_pay_lack          in number --补交金额 Pay_lack
                        ,in_back_fee          in number --退款金额 Back_fee
                        ,in_diff_fee          in number --欠费金额 Diff_fee
                        ,in_account           in number --明细项目记帐  Account
                        ,in_account_pay       in number --报销部分 Account_pay
                        ,in_self_pay          in number --个人支付self_pay
                        ,in_third_assure      in number --第三方担保金额
                        ,in_third_info        in varchar2 --第三方担保信息
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
                      '病人类别');
    if t_resident_info.process_reason = 'OUT'
    then
      raise_application_error(-20001,
                              '该病人已经做了出院请求,不能进行中期结帐.;');
    end if;
    lock_res.lock_charge_bill(in_charge_billid, t_charge_bill);
    if t_charge_bill.type <> 'MIDDLE'
    then
      raise_application_error(-20001, '不是中期结算,不能结账.;');
    end if;
    if t_charge_bill.attribute <> 'ACCOUNT'
    then
      raise_application_error(-20001, '该帐单不是记帐单,不能结帐.;');
    end if;
    if t_charge_bill.status = 'FINISHED'
    then
      raise_application_error(-20001, '该帐单已经结帐.;');
    elsif t_charge_bill.status = 'WAIT_PAY'
    then
      null;
    else
      raise_application_error(-20001,
                              '非法的帐单状态(' || t_charge_bill.status || ').;');
    end if;
  
    --判断平衡
    if in_total_fee <> in_self_pay
    then
      raise_application_error(-20001, '实收<>个人支付');
    end if;
  
    if nvl(in_account_pay, 0) + nvl(in_self_pay, 0) <> in_account
    then
      raise_application_error(-20001, '报销+个人支付<>记账');
    end if;
  
    if nvl(in_back_fee, 0) <> 0
       and nvl(in_pre_pay, 0) - nvl(in_total_fee, 0) <> nvl(in_back_fee, 0)
    then
      raise_application_error(-20001, '预交-实收<>退款');
    end if;
  
    if nvl(in_pay_lack, 0) <> 0
       and nvl(in_total_fee, 0) - nvl(in_pre_pay, 0) <> nvl(in_pay_lack, 0)
    then
      raise_application_error(-20001, '实收-预交<>补交');
    end if;
  
    if nvl(in_pay_lack, 0) = 0
       and nvl(in_back_fee, 0) = 0
       and nvl(in_total_fee, 0) - nvl(in_pre_pay, 0) <> 0
    then
      raise_application_error(-20001, '退款或者补交计算错误.;');
    end if;
  
    if in_account_receiable <> in_account
    then
      raise_application_error(-20001,
                              '应收(' || in_account_receiable || ' <>记账(' ||
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
  --  注意：中期结账，不支持结账冲账
  --
  procedure s_住院_中期结算_结帐_取消(in_patientid     in varchar2
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
      raise_application_error(-20001, '不是中期结算,不能结账.;');
    end if;
    if t_charge_bill.attribute <> 'ACCOUNT'
    then
      raise_application_error(-20001, '该帐单不是记帐单,不能结帐.;');
    end if;
    if t_charge_bill.status = 'FINISHED'
    then
      null;
    elsif t_charge_bill.status = 'WAIT_PAY'
    then
      raise_application_error(-20001, '该帐单还没有结帐.;');
    else
      raise_application_error(-20001,
                              '非法的帐单状态(' || t_charge_bill.status || ').;');
    end if;
  
    if t_charge_bill.fee_operator <> hospital.login.get_workerid
    then
      raise_application_error(-20001, '不是你结的帐，你不能取消结账.;');
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
  end s_住院_中期结算_结帐_取消;
  -----------------------------------------------------------------------------------------------
  procedure prv_统计住院病人请假信息(in_deptid in varchar2) is
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
        raise_application_error(-20001, '其他人正在操作，请稍后重试.;');
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
  end prv_统计住院病人请假信息;
  -----------------------------------------------------------------------------------------------
  procedure s_住院_请假(in_residentid in varchar2
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
      raise_application_error(-20001, '该病人已经请假,不能重复操作.;');
    end if;
    if t_resident_info.process_reason = 'OUT'
    then
      raise_application_error(-20001, '该病人已经作了出院请求.;');
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
                              '以下科室还有待确认的医嘱:' || chr(10) || t_dept_name ||
                              '请先处理这些医嘱.;');
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
                              '以下科室还有未停止的长期医嘱:' || chr(10) || t_dept_name ||
                              '请先处理这些医嘱.;');
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
                              '以下科室还有有未入帐的临时医嘱:' || chr(10) || t_dept_name ||
                              '请先处理这些医嘱.;');
    end if;
  
    --标志病人已经请假  
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
        prv_统计住院病人请假信息(t_resident_info.deptid);
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
                                '在统计住院病人信息时出现内部错误.;');
    end;
  
    update rpt_resident_leave_info
       set leave_num = leave_num + 1,
           remain    = remain + 1
     where rpt_date = trunc(sysdate)
       and deptid = t_resident_info.deptid;
    commit;
  end s_住院_请假;
  -----------------------------------------------------------------------------------------------
  procedure s_住院_请假_销假(in_residentid in varchar2) is
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
      raise_application_error(-20001, '该病人没有请假，无需销假.;');
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
                                '没有找到该病人的请假记录，无法完成销假');
    end;
  
    if v_date >= trunc(sysdate)
    then
      --当天销假，删除请假信息
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
          prv_统计住院病人请假信息(t_resident_info.deptid);
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
                                  '在统计住院病人信息时出现内部错误.;');
      end;
    
      update rpt_resident_leave_info
         set back_num = back_num + 1,
             remain   = remain - 1
       where rpt_date = trunc(sysdate)
         and deptid = t_resident_info.deptid;
    
    end if;
    commit;
  end s_住院_请假_销假;
  -----------------------------------------------------------------------------------------------
  procedure s_设置_先住院后结算标志(in_patientid  in varchar2
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
                      '先住院后结算标志');
    update resident_info_
       set no_pre_pay  = in_no_pre_pay,
           update_date = sysdate
     where residentid = t_resident_patient.residentid;
    commit;
  end s_设置_先住院后结算标志;
  ----------------------------------------------------------------------------------------------- 
  procedure s_住院患者_医保扩展信息(in_residentid           in varchar2
                         ,in_住院次数             in varchar2
                         ,in_本年度累计统筹       in varchar2
                         ,in_本年度累计公务员补助 in varchar2
                         ,in_享受长期门诊标志     in varchar2
                         ,in_享受公务员补助标志   in varchar2
                         ,in_医疗照顾类别         in varchar2) is
    t_resident_info    resident_info%rowtype;
    t_resident_patient resident_patient%rowtype;
    i                  number;
  begin
    lock_res.lock_resident_by_rid(in_residentid,
                                  t_resident_patient,
                                  t_resident_info);
    verify_valid_number(in_住院次数, '住院次数');
    verify_valid_number(in_本年度累计统筹, '本年度累计统筹');
    verify_valid_number(in_本年度累计公务员补助, '本年度累计公务员补助');
    verify_field_dict('RESIDENT_MEDCARE_EXTEND_INFO',
                      'F享受长期门诊标志',
                      in_享受长期门诊标志,
                      '享受长期门诊标志');
    verify_field_dict('RESIDENT_MEDCARE_EXTEND_INFO',
                      'F享受公务员补助标志',
                      in_享受公务员补助标志,
                      '享受公务员补助标志');
    verify_field_dict('RESIDENT_MEDCARE_EXTEND_INFO',
                      'F医疗照顾类别',
                      in_医疗照顾类别,
                      '医疗照顾类别');
    select 2
      into i
      from hospital.resident_medcare_extend_info
     where residentid = in_residentid
       for update nowait;
    update hospital.resident_medcare_extend_info
       set f住院次数             = in_住院次数,
           f本年度累计统筹       = in_本年度累计统筹,
           f本年度累计公务员补助 = in_本年度累计公务员补助,
           f享受长期门诊标志     = in_享受长期门诊标志,
           f享受公务员补助标志   = in_享受公务员补助标志,
           f医疗照顾类别         = in_医疗照顾类别
     where residentid = in_residentid;
  exception
    when no_data_found then
      insert into hospital.resident_medcare_extend_info
        (residentid,
         f住院次数,
         f本年度累计统筹,
         f本年度累计公务员补助,
         f享受长期门诊标志,
         f享受公务员补助标志,
         f医疗照顾类别)
      values
        (in_residentid,
         in_住院次数,
         in_本年度累计统筹,
         in_本年度累计公务员补助,
         in_享受长期门诊标志,
         in_享受公务员补助标志,
         in_享受公务员补助标志);
  end s_住院患者_医保扩展信息;
  --------------------------------------------------------------------------------------------- 
  --create sequence seq_resident_certificate_id start with 1 maxvalue 99999999 cache 10 cycle; 
  procedure s_新建_住院证(in_patientid in varchar2
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
                                '编号为( ' || in_patientid ||
                                ' )的患者信息不存在,不能新建住院证;');
      
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
       '待确认');
    out_id := v_id;
    commit;
  end s_新建_住院证;
  ---------------------------------------------------------------------------------------------     
  procedure s_修改_住院证(in_id              in varchar2
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
    verify_length(in_name, 40, '名字');
    verify_not_null(in_name, '名字');
    verify_length(in_pinyin, 10, '拼音');
    verify_not_null(in_pinyin, '拼音');
    verify_length(in_attribute, 10, '属性');
    verify_field_dict('PATIENT', 'ATTRIBUTE', in_attribute, '病人类别');
    if in_attribute in ('ASSURANCE', 'INHABITANT', 'PUBLIC', 'COMEDICARE')
    then
      verify_valid_free_no(in_free_no);
    elsif in_free_no is not null
    then
      raise_application_error(-20001,
                              '不是医疗保险病人，医疗保险号码必须为空.;');
    end if;
  
    if in_identification is not null
    then
      verify_valid_身份证号(in_identification);
      if lengthb(in_identification) = 15
      then
        v_birthday := get_date_from_str('19' ||
                                        substrb(in_identification, 7, 6));
      else
        v_birthday := get_date_from_str(substrb(in_identification, 7, 8));
      end if;
    else
      --生日合法性验证
      if in_birthday is not null
      then
        verify_valid_date(in_birthday, '生日');
        v_birthday := get_date_from_str(in_birthday);
      else
        if in_age is not null
           and in_age_unit is not null
        then
          verify_valid_number(in_age, '年龄');
          verify_positive_number(in_age, '年龄');
          verify_field_dict('RESIDENT_INFO',
                            'AGE_UNIT',
                            in_age_unit,
                            '年龄单位');
        end if;
      end if;
    end if;
    if v_birthday is null
    then
      raise_application_error(-20001, '请输入生日.;');
    end if;
    if v_birthday > trunc(sysdate) + 1
    then
      raise_application_error(-20001, '生日不能大于今天.;');
    end if;
    if age(v_birthday) > 150
    then
      raise_application_error(-20001, '请输入合理的年龄.;');
    end if;
  
    verify_length(in_profession, 30, '职业');
    if nvl(get_system_option('修改患者信息_必须录入职业'), 'N') = 'Y'
    then
      verify_not_null(in_profession, '职业');
    end if;
    verify_length(in_identification, 20, '身份证号码');
    verify_length(in_birth_province, 40, '出生省份');
    verify_length(in_birth_county, 40, '出生市县');
    verify_length(in_race, 10, '民族');
    verify_length(in_home_address, 200, '家庭地址');
    verify_length(in_home_tele, 20, '家庭电话');
    verify_length(in_home_zip, 6, '家庭邮编');
    verify_length(in_office_address, 200, '工作地址');
    verify_length(in_office_tele, 20, '工作电话');
    verify_length(in_office_zip, 6, '工作邮编');
    verify_length(in_asso_name, 80, '联系人');
    verify_length(in_asso_relation, 10, '与病人关系');
    verify_length(in_asso_address, 200, '联系人地址');
    verify_length(in_asso_tele, 20, '联系人电话');
    verify_length(in_asso_zip, 6, '联系人邮编');
    verify_length(in_education, 30, '教育程度');
    verify_length(in_remark, 20, '备注');
  
    if in_regionid is not null
       or nvl(get_system_option('必须录入患者行政区域'), 'N') = 'Y'
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
                                '该患者没有住院证登记信息,请先登记;');
    end;
    commit;
  end s_修改_住院证;

  procedure s_保存_住院证(in_id              in varchar2
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
                                '编号为( ' || in_patientid ||
                                ' )的患者信息不存在,不能新建住院证;');
      
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
    verify_length(in_name, 40, '名字');
    verify_not_null(in_name, '名字');
    verify_length(in_pinyin, 10, '拼音');
    verify_not_null(in_pinyin, '拼音');
    verify_length(in_attribute, 10, '属性');
    verify_field_dict('PATIENT', 'ATTRIBUTE', in_attribute, '病人类别');
    if in_attribute in ('ASSURANCE', 'INHABITANT', 'PUBLIC', 'COMEDICARE')
    then
      verify_valid_free_no(in_free_no);
    elsif in_free_no is not null
    then
      raise_application_error(-20001,
                              '不是医疗保险病人，医疗保险号码必须为空.;');
    end if;
  
    if in_identification is not null
    then
      verify_valid_身份证号(in_identification);
      if lengthb(in_identification) = 15
      then
        v_birthday := get_date_from_str('19' ||
                                        substrb(in_identification, 7, 6));
      else
        v_birthday := get_date_from_str(substrb(in_identification, 7, 8));
      end if;
    else
      --生日合法性验证
      if in_birthday is not null
      then
        verify_valid_date(in_birthday, '生日');
        v_birthday := get_date_from_str(in_birthday);
      else
        if in_age is not null
           and in_age_unit is not null
        then
          verify_valid_number(in_age, '年龄');
          verify_positive_number(in_age, '年龄');
          verify_field_dict('RESIDENT_INFO',
                            'AGE_UNIT',
                            in_age_unit,
                            '年龄单位');
        end if;
      end if;
    end if;
    if v_birthday is null
    then
      raise_application_error(-20001, '请输入生日.;');
    end if;
    if v_birthday > trunc(sysdate) + 1
    then
      raise_application_error(-20001, '生日不能大于今天.;');
    end if;
    if age(v_birthday) > 150
    then
      raise_application_error(-20001, '请输入合理的年龄.;');
    end if;
  
    verify_length(in_profession, 30, '职业');
    if nvl(get_system_option('修改患者信息_必须录入职业'), 'N') = 'Y'
    then
      verify_not_null(in_profession, '职业');
    end if;
    verify_length(in_identification, 20, '身份证号码');
    verify_length(in_birth_province, 40, '出生省份');
    verify_length(in_birth_county, 40, '出生市县');
    verify_length(in_race, 10, '民族');
    verify_length(in_home_address, 200, '家庭地址');
    verify_length(in_home_tele, 20, '家庭电话');
    verify_length(in_home_zip, 6, '家庭邮编');
    verify_length(in_office_address, 200, '工作地址');
    verify_length(in_office_tele, 20, '工作电话');
    verify_length(in_office_zip, 6, '工作邮编');
    verify_length(in_asso_name, 80, '联系人');
    verify_length(in_asso_relation, 10, '与病人关系');
    verify_length(in_asso_address, 200, '联系人地址');
    verify_length(in_asso_tele, 20, '联系人电话');
    verify_length(in_asso_zip, 6, '联系人邮编');
    verify_length(in_education, 30, '教育程度');
    verify_length(in_remark, 20, '备注');
  
    if in_regionid is not null
       or nvl(get_system_option('必须录入患者行政区域'), 'N') = 'Y'
    then
      verify_valid_region(in_regionid);
    end if;
  
    begin
      select 2
        into i
        from hospital.resident_certificate_
       where patientid = in_patientid
         and operator = in_doctor_id
         and status = '待入院'
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
                                  '该患者没有住院证登记信息,请先登记;');
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
           '待入院');
        out_id := v_id;
    end;
  end s_保存_住院证;
  ---------------------------------------------------------------------------------------------   
  procedure s_修改_住院证状态(in_id      in varchar2
                      ,in_op_flag in varchar2) is
    i number;
  begin
    if in_op_flag not in ('入院登记', '取消入院登记')
    then
      raise_application_error(-20001, '非法的住院证修改标识' || in_op_flag);
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
                                '没有找到要修改的ID为( ' || in_id || ' )的住院证信息.;');
    end;
    if in_op_flag = '入院登记'
    then
      update hospital.resident_certificate_
         set status = '已入院'
       where id = in_id
         and status = '待入院';
    elsif in_op_flag = '取消入院登记'
    then
      update hospital.resident_certificate_
         set status = '待入院'
       where id = in_id
         and status = '已入院';
    end if;
    commit;
  end;
  ---------------------------------------------------------------------------------------------   
  procedure s_删除_住院证(in_id in varchar2) is
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
                                '没有找到要修改的ID为( ' || in_id || ' )的住院证信息.;');
    end;
    if v_resident_certificate.operator <> hospital.login.get_workerid
    then
      raise_application_error(-20001, '不是您录入的住院证，您不能修改.;');
    end if;
    delete from hospital.resident_certificate_ where id = in_id;
    commit;
  end s_删除_住院证;
  ---------------------------------------------------------------------------------------------   
end pres;
/
