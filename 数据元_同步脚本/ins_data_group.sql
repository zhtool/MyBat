prompt PL/SQL Developer import file
prompt Created on 2017年2月24日 by Administrator
set feedback off
set define off
prompt Disabling triggers for DATA_GROUP_...
alter table DATA_GROUP_ disable all triggers;
prompt Loading DATA_GROUP_...
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.01.002', '护理记录出量名称', 'HLJLCLMC', 'RGYVBJQT', '001001', null, to_date('22-01-2016 14:38:08', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-01-2016 14:38:29', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.01.004', '护理记录单数据组', 'HLJLDSJQ', 'RGYVUORX', '001001', null, to_date('29-02-2016 15:23:44', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.010', '焦虑自评量表( SAS)', 'JLZPLB', null, 'EMR', null, to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.007', 'HAMILTON 抑郁量表', 'HAMILT', null, 'EMR', null, to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.009', 'HAMLTON 焦虑量表', 'HAMLTO', null, 'EMR', null, to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.014', '痔疮危险度评分（Norton）', 'ZCWXDP', null, 'EMR', null, to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.002', '日常生活活动能力量表', 'RCSHHD', null, 'EMR', null, to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.004', '斯堪的那维亚卒中量表', 'SKDNWY', null, 'EMR', null, to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.005', '改良Rankin量表', 'GLRANK', null, 'EMR', null, to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.012', '蛛网膜下腔出血的Hunt-He', 'ZWMXQC', null, 'EMR', null, to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.008', '抑郁自评量表', 'YYZPLB', null, 'EMR', null, to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.001', '格拉斯哥昏迷量表', 'GLSGHM', null, 'EMR', null, to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011', '精神状态简易速检表（MMSE）', 'JSZTJY', null, 'EMR', null, to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.006', 'Glasgow 评分结果', 'GLASGO', null, 'EMR', null, to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.013', 'Spetzler-Martin AVM 级别评估', 'SPETZLER-MARTIN', null, 'EMR', null, to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('23-10-2015 16:07:21', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001', '模板通用数据组', 'BLJLQMJBT', null, '001001', null, to_date('15-01-2016 14:38:36', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.01.003', '体温单自定义项目', 'TWDZDYXM', 'WIUTPYAH', '001001', null, to_date('01-02-2016 08:44:48', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.01.006', '生命体征测量记录数据组', 'SMTZCLJLSJQ', 'TWWTIJYVORX', '001001', null, to_date('09-03-2016 20:20:04', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.03.001.01', 'ICU护理记录', 'ICUHLJL', 'ICURGYV', '001001', null, to_date('22-06-2016 15:48:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
commit;
prompt 19 records loaded
prompt Enabling triggers for DATA_GROUP_...
alter table DATA_GROUP_ enable all triggers;
set feedback on
set define on
prompt Done.
