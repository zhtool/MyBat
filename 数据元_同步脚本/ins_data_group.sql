prompt PL/SQL Developer import file
prompt Created on 2017��2��24�� by Administrator
set feedback off
set define off
prompt Disabling triggers for DATA_GROUP_...
alter table DATA_GROUP_ disable all triggers;
prompt Loading DATA_GROUP_...
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.01.002', '�����¼��������', 'HLJLCLMC', 'RGYVBJQT', '001001', null, to_date('22-01-2016 14:38:08', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-01-2016 14:38:29', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.01.004', '�����¼��������', 'HLJLDSJQ', 'RGYVUORX', '001001', null, to_date('29-02-2016 15:23:44', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.010', '������������( SAS)', 'JLZPLB', null, 'EMR', null, to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.007', 'HAMILTON ��������', 'HAMILT', null, 'EMR', null, to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.009', 'HAMLTON ��������', 'HAMLTO', null, 'EMR', null, to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.014', '�̴�Σ�ն����֣�Norton��', 'ZCWXDP', null, 'EMR', null, to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.002', '�ճ�������������', 'RCSHHD', null, 'EMR', null, to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.004', '˹������ά����������', 'SKDNWY', null, 'EMR', null, to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.005', '����Rankin����', 'GLRANK', null, 'EMR', null, to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.012', '����Ĥ��ǻ��Ѫ��Hunt-He', 'ZWMXQC', null, 'EMR', null, to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.008', '������������', 'YYZPLB', null, 'EMR', null, to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.001', '����˹���������', 'GLSGHM', null, 'EMR', null, to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011', '����״̬�����ټ��MMSE��', 'JSZTJY', null, 'EMR', null, to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.006', 'Glasgow ���ֽ��', 'GLASGO', null, 'EMR', null, to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.013', 'Spetzler-Martin AVM ��������', 'SPETZLER-MARTIN', null, 'EMR', null, to_date('11-10-2015 14:19:47', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('23-10-2015 16:07:21', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001', 'ģ��ͨ��������', 'BLJLQMJBT', null, '001001', null, to_date('15-01-2016 14:38:36', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.01.003', '���µ��Զ�����Ŀ', 'TWDZDYXM', 'WIUTPYAH', '001001', null, to_date('01-02-2016 08:44:48', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.01.006', '��������������¼������', 'SMTZCLJLSJQ', 'TWWTIJYVORX', '001001', null, to_date('09-03-2016 20:20:04', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_ (id, name, pym, wbm, input_worker_id, input_worker, input_date, update_worker_id, update_date, remark)
values ('HSDG06.03.001.01', 'ICU�����¼', 'ICUHLJL', 'ICURGYV', '001001', null, to_date('22-06-2016 15:48:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
commit;
prompt 19 records loaded
prompt Enabling triggers for DATA_GROUP_...
alter table DATA_GROUP_ enable all triggers;
set feedback on
set define on
prompt Done.
