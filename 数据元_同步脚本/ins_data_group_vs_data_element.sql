prompt PL/SQL Developer import file
prompt Created on 2017Äê2ÔÂ24ÈÕ by Administrator
set feedback off
set define off
prompt Disabling triggers for DATA_GROUP_VS_DATA_ELEMENT_...
alter table DATA_GROUP_VS_DATA_ELEMENT_ disable all triggers;
prompt Loading DATA_GROUP_VS_DATA_ELEMENT_...
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.01.006_5', 'HSDG06.01.006', 5, 'HSDE06.01.007.01', 0, '001001', to_date('09-03-2016 20:36:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_38', 'HSDG09.00.001', 38, 'HSDE20.01.0545', 0, '001001', to_date('05-03-2016 13:57:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_48', 'HSDG09.00.001', 48, 'DE02.10.024.00', 0, '001001', to_date('07-03-2016 13:27:14', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_28', 'HSDG09.00.001', 28, 'HSDE20.00.0135', 0, '001001', to_date('29-02-2016 09:52:03', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_29', 'HSDG09.00.001', 29, 'HSDE20.00.0051', 0, '001001', to_date('29-02-2016 09:53:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_30', 'HSDG09.00.001', 30, 'DE05.10.036.00', 0, '001001', to_date('29-02-2016 09:57:19', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_31', 'HSDG09.00.001', 31, 'HSDE00.00.003.00', 0, '001001', to_date('29-02-2016 11:14:23', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_32', 'HSDG09.00.001', 32, 'DE08.50.040.00', 0, '001001', to_date('29-02-2016 11:24:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.001_3', 'HSDG06.02.001', 3, 'HSDE06.02.001.03', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.002_6', 'HSDG06.02.002', 6, 'HSDE06.02.002.06', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.004_1', 'HSDG06.02.004', 1, 'HSDE06.02.004.01', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.008_3', 'HSDG06.02.008', 3, 'HSDE06.02.008.03', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_21', 'HSDG09.00.001', 21, 'HSDE20.00.0117', 0, '001001', to_date('27-02-2016 12:06:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_9', 'HSDG09.00.001', 9, 'HSDE09.00.004.01', 0, '001001', to_date('26-02-2016 17:24:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_11', 'HSDG09.00.001', 11, 'HSDE09.00.003.01', 0, '001001', to_date('26-02-2016 17:25:07', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_10', 'HSDG09.00.001', 10, 'HSDE09.00.004.02', 0, '001001', to_date('26-02-2016 17:24:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_12', 'HSDG09.00.001', 12, 'HSDE09.00.003.02', 0, '001001', to_date('26-02-2016 17:25:33', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_13', 'HSDG09.00.001', 13, 'HSDE09.00.004.00', 0, '001001', to_date('26-02-2016 17:31:26', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_14', 'HSDG09.00.001', 14, 'HSDE09.00.002.01', 0, '001001', to_date('26-02-2016 17:35:36', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_15', 'HSDG09.00.001', 15, 'HSDE09.00.002.02', 0, '001001', to_date('26-02-2016 17:35:40', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.002_13', 'HSDG06.02.002', 13, 'DE02.01.005.02', 0, '001001', to_date('15-02-2016 16:30:03', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_16', 'HSDG09.00.001', 16, 'HSDE09.00.002.04', 0, '001001', to_date('26-02-2016 17:35:44', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_17', 'HSDG09.00.001', 17, 'HSDE09.00.002.03', 0, '001001', to_date('26-02-2016 17:35:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_18', 'HSDG09.00.001', 18, 'HSDE20.01.0799', 0, '001001', to_date('26-02-2016 17:37:42', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_33', 'HSDG09.00.001', 33, 'HSDE20.00.0025', 0, '001001', to_date('29-02-2016 14:46:13', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_34', 'HSDG09.00.001', 34, 'HSDE20.00.0026', 0, '001001', to_date('29-02-2016 14:46:26', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_35', 'HSDG09.00.001', 35, 'HSDE00.00.002.004', 0, '001001', to_date('29-02-2016 21:55:19', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_36', 'HSDG09.00.001', 36, 'HSDE00.00.002.03', 0, '001001', to_date('29-02-2016 21:55:38', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.002_11', 'HSDG06.02.002', 11, 'HSDE06.02.002.11', 0, '001001', to_date('27-01-2016 11:24:46', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.002_12', 'HSDG06.02.002', 12, 'HSDE06.02.002.12', 0, '001001', to_date('27-01-2016 11:24:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.01.004_1', 'HSDG06.01.004', 1, 'HSDE06.01.008.00', 0, '001001', to_date('29-02-2016 15:23:56', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.001_4', 'HSDG06.02.001', 4, 'HSDE06.02.002.11', 0, '001001', to_date('29-01-2016 15:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.004_10', 'HSDG06.02.004', 10, 'HSDE06.02.002.11', 0, '001001', to_date('29-01-2016 15:18:34', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.005_2', 'HSDG06.02.005', 2, 'HSDE06.02.002.11', 0, '001001', to_date('29-01-2016 15:18:48', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.006_2', 'HSDG06.02.006', 2, 'HSDE06.02.002.11', 0, '001001', to_date('29-01-2016 15:19:03', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.007_23', 'HSDG06.02.007', 23, 'HSDE06.02.002.11', 0, '001001', to_date('29-01-2016 15:19:16', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.008_22', 'HSDG06.02.008', 22, 'HSDE06.02.002.11', 0, '001001', to_date('29-01-2016 15:19:26', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.009_16', 'HSDG06.02.009', 16, 'HSDE06.02.002.11', 0, '001001', to_date('29-01-2016 15:19:36', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.010_21', 'HSDG06.02.010', 21, 'HSDE06.02.002.11', 0, '001001', to_date('29-01-2016 15:19:47', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_31', 'HSDG06.02.011', 31, 'HSDE06.02.002.11', 0, '001001', to_date('29-01-2016 15:19:57', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.012_2', 'HSDG06.02.012', 2, 'HSDE06.02.002.11', 0, '001001', to_date('29-01-2016 15:20:07', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.013_3', 'HSDG06.02.013', 3, 'HSDE06.02.002.11', 0, '001001', to_date('29-01-2016 15:20:17', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.014_6', 'HSDG06.02.014', 6, 'HSDE06.02.002.11', 0, '001001', to_date('29-01-2016 15:20:26', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.001_5', 'HSDG06.02.001', 5, 'HSDE06.02.002.12', 0, '001001', to_date('29-01-2016 15:20:49', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.004_11', 'HSDG06.02.004', 11, 'HSDE06.02.002.12', 0, '001001', to_date('29-01-2016 15:21:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.005_3', 'HSDG06.02.005', 3, 'HSDE06.02.002.12', 0, '001001', to_date('29-01-2016 15:21:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.006_3', 'HSDG06.02.006', 3, 'HSDE06.02.002.12', 0, '001001', to_date('29-01-2016 15:21:18', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.007_24', 'HSDG06.02.007', 24, 'HSDE06.02.002.12', 0, '001001', to_date('29-01-2016 15:21:27', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.008_23', 'HSDG06.02.008', 23, 'HSDE06.02.002.12', 0, '001001', to_date('29-01-2016 15:21:36', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.009_17', 'HSDG06.02.009', 17, 'HSDE06.02.002.12', 0, '001001', to_date('29-01-2016 15:21:44', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.010_22', 'HSDG06.02.010', 22, 'HSDE06.02.002.12', 0, '001001', to_date('29-01-2016 15:21:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_32', 'HSDG06.02.011', 32, 'HSDE06.02.002.12', 0, '001001', to_date('29-01-2016 15:22:02', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.012_3', 'HSDG06.02.012', 3, 'HSDE06.02.002.12', 0, '001001', to_date('29-01-2016 15:22:12', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.013_4', 'HSDG06.02.013', 4, 'HSDE06.02.002.12', 0, '001001', to_date('29-01-2016 15:22:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.014_7', 'HSDG06.02.014', 7, 'HSDE06.02.002.12', 0, '001001', to_date('29-01-2016 15:22:29', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('01-02-2016 10:55:57', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.004_5', 'HSDG06.02.004', 5, 'HSDE06.02.004.05', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.004_6', 'HSDG06.02.004', 6, 'HSDE06.02.004.06', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.004_7', 'HSDG06.02.004', 7, 'HSDE06.02.004.07', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.004_8', 'HSDG06.02.004', 8, 'HSDE06.02.004.08', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.004_9', 'HSDG06.02.004', 9, 'HSDE06.02.004.09', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.008_12', 'HSDG06.02.008', 12, 'HSDE06.02.008.12', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.008_13', 'HSDG06.02.008', 13, 'HSDE06.02.008.13', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.008_14', 'HSDG06.02.008', 14, 'HSDE06.02.008.14', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.008_15', 'HSDG06.02.008', 15, 'HSDE06.02.008.15', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.008_16', 'HSDG06.02.008', 16, 'HSDE06.02.008.16', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.008_17', 'HSDG06.02.008', 17, 'HSDE06.02.008.17', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.008_18', 'HSDG06.02.008', 18, 'HSDE06.02.008.18', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.010_4', 'HSDG06.02.010', 4, 'HSDE06.02.010.04', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.008_19', 'HSDG06.02.008', 19, 'HSDE06.02.008.19', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.008_20', 'HSDG06.02.008', 20, 'HSDE06.02.008.20', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.010_5', 'HSDG06.02.010', 5, 'HSDE06.02.010.05', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.010_6', 'HSDG06.02.010', 6, 'HSDE06.02.010.06', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.010_7', 'HSDG06.02.010', 7, 'HSDE06.02.010.07', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.010_8', 'HSDG06.02.010', 8, 'HSDE06.02.010.08', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.010_9', 'HSDG06.02.010', 9, 'HSDE06.02.010.09', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.010_10', 'HSDG06.02.010', 10, 'HSDE06.02.010.10', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.010_11', 'HSDG06.02.010', 11, 'HSDE06.02.010.11', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.010_12', 'HSDG06.02.010', 12, 'HSDE06.02.010.12', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.010_13', 'HSDG06.02.010', 13, 'HSDE06.02.010.13', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.010_14', 'HSDG06.02.010', 14, 'HSDE06.02.010.14', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.010_15', 'HSDG06.02.010', 15, 'HSDE06.02.010.15', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.010_16', 'HSDG06.02.010', 16, 'HSDE06.02.010.16', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.010_17', 'HSDG06.02.010', 17, 'HSDE06.02.010.17', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.010_18', 'HSDG06.02.010', 18, 'HSDE06.02.010.18', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.010_19', 'HSDG06.02.010', 19, 'HSDE06.02.010.19', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.010_20', 'HSDG06.02.010', 20, 'HSDE06.02.010.20', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('23-10-2015 15:39:11', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.009_14', 'HSDG06.02.009', 14, 'HSDE06.02.009.02', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.009_15', 'HSDG06.02.009', 15, 'HSDE06.02.009.14', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.014_3', 'HSDG06.02.014', 3, 'HSDE06.02.014.03', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.014_4', 'HSDG06.02.014', 4, 'HSDE06.02.014.04', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.014_5', 'HSDG06.02.014', 5, 'HSDE06.02.014.05', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.007_3', 'HSDG06.02.007', 3, 'HSDE06.02.007.03', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.007_4', 'HSDG06.02.007', 4, 'HSDE06.02.007.04', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.007_5', 'HSDG06.02.007', 5, 'HSDE06.02.007.05', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.007_6', 'HSDG06.02.007', 6, 'HSDE06.02.007.06', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.007_7', 'HSDG06.02.007', 7, 'HSDE06.02.007.07', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.007_8', 'HSDG06.02.007', 8, 'HSDE06.02.007.08', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.007_9', 'HSDG06.02.007', 9, 'HSDE06.02.007.09', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.007_10', 'HSDG06.02.007', 10, 'HSDE06.02.007.10', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.007_11', 'HSDG06.02.007', 11, 'HSDE06.02.007.11', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
commit;
prompt 100 records committed...
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.007_1', 'HSDG06.02.007', 1, 'HSDE06.02.007.01', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.007_2', 'HSDG06.02.007', 2, 'HSDE06.02.007.02', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.007_12', 'HSDG06.02.007', 12, 'HSDE06.02.007.12', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.007_13', 'HSDG06.02.007', 13, 'HSDE06.02.007.13', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.007_14', 'HSDG06.02.007', 14, 'HSDE06.02.007.14', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.007_16', 'HSDG06.02.007', 16, 'HSDE06.02.007.15', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.007_17', 'HSDG06.02.007', 17, 'HSDE06.02.007.16', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.007_18', 'HSDG06.02.007', 18, 'HSDE06.02.007.17', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.007_19', 'HSDG06.02.007', 19, 'HSDE06.02.007.18', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.007_20', 'HSDG06.02.007', 20, 'HSDE06.02.007.19', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.007_21', 'HSDG06.02.007', 21, 'HSDE06.02.007.20', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.007_22', 'HSDG06.02.007', 22, 'HSDE06.02.007.21', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.009_1', 'HSDG06.02.009', 1, 'HSDE06.02.009.01', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.009_3', 'HSDG06.02.009', 3, 'HSDE06.02.009.03', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.009_4', 'HSDG06.02.009', 4, 'HSDE06.02.009.04', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.009_5', 'HSDG06.02.009', 5, 'HSDE06.02.009.05', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.009_6', 'HSDG06.02.009', 6, 'HSDE06.02.009.06', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.009_7', 'HSDG06.02.009', 7, 'HSDE06.02.009.07', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.009_8', 'HSDG06.02.009', 8, 'HSDE06.02.009.08', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.009_9', 'HSDG06.02.009', 9, 'HSDE06.02.009.09', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.009_10', 'HSDG06.02.009', 10, 'HSDE06.02.009.10', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.009_11', 'HSDG06.02.009', 11, 'HSDE06.02.009.11', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.009_12', 'HSDG06.02.009', 12, 'HSDE06.02.009.12', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.009_13', 'HSDG06.02.009', 13, 'HSDE06.02.009.13', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.010_2', 'HSDG06.02.010', 2, 'HSDE06.02.010.02', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.010_1', 'HSDG06.02.010', 1, 'HSDE06.02.010.01', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.010_3', 'HSDG06.02.010', 3, 'HSDE06.02.010.03', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.012_1', 'HSDG06.02.012', 1, 'HSDE06.02.012.01', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.014_1', 'HSDG06.02.014', 1, 'HSDE06.02.014.01', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.014_2', 'HSDG06.02.014', 2, 'HSDE06.02.014.02', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.001_1', 'HSDG06.02.001', 1, 'HSDE06.02.001.01', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.002_1', 'HSDG06.02.002', 1, 'HSDE06.02.002.01', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.002_2', 'HSDG06.02.002', 2, 'HSDE06.02.002.02', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.002_3', 'HSDG06.02.002', 3, 'HSDE06.02.002.03', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.002_4', 'HSDG06.02.002', 4, 'HSDE06.02.002.04', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.002_5', 'HSDG06.02.002', 5, 'HSDE06.02.002.05', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.002_7', 'HSDG06.02.002', 7, 'HSDE06.02.002.07', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.002_8', 'HSDG06.02.002', 8, 'HSDE06.02.002.08', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.002_9', 'HSDG06.02.002', 9, 'HSDE06.02.002.09', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.002_10', 'HSDG06.02.002', 10, 'HSDE06.02.002.10', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.004_2', 'HSDG06.02.004', 2, 'HSDE06.02.004.02', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.004_3', 'HSDG06.02.004', 3, 'HSDE06.02.004.03', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.004_4', 'HSDG06.02.004', 4, 'HSDE06.02.004.04', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.005_1', 'HSDG06.02.005', 1, 'HSDE06.02.005.01', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.008_1', 'HSDG06.02.008', 1, 'HSDE06.02.008.01', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.008_2', 'HSDG06.02.008', 2, 'HSDE06.02.008.02', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.008_4', 'HSDG06.02.008', 4, 'HSDE06.02.008.04', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.008_5', 'HSDG06.02.008', 5, 'HSDE06.02.008.05', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.008_6', 'HSDG06.02.008', 6, 'HSDE06.02.008.06', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.008_7', 'HSDG06.02.008', 7, 'HSDE06.02.008.07', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_1', 'HSDG09.00.001', 1, 'HSDE20.01.0852', 0, '001001', to_date('26-01-2016 09:25:34', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.008_9', 'HSDG06.02.008', 9, 'HSDE06.02.008.09', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.008_10', 'HSDG06.02.008', 10, 'HSDE06.02.008.10', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_19', 'HSDG09.00.001', 19, 'HSDE00.00.002.001', 0, '001001', to_date('27-02-2016 11:47:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_2', 'HSDG06.02.011', 2, 'HSDE06.02.011.02', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.001_2', 'HSDG06.02.001', 2, 'HSDE06.02.001.02', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.006_1', 'HSDG06.02.006', 1, 'HSDE06.02.006.01', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_1', 'HSDG06.02.011', 1, 'DE02.01.015.00', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_3', 'HSDG06.02.011', 3, 'HSDE06.02.011.03', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_4', 'HSDG06.02.011', 4, 'HSDE06.02.011.04', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_5', 'HSDG06.02.011', 5, 'HSDE06.02.011.05', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_6', 'HSDG06.02.011', 6, 'HSDE06.02.011.06', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_7', 'HSDG06.02.011', 7, 'HSDE06.02.011.07', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_8', 'HSDG06.02.011', 8, 'HSDE06.02.011.08', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_9', 'HSDG06.02.011', 9, 'HSDE06.02.011.09', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_10', 'HSDG06.02.011', 10, 'HSDE06.02.011.10', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_11', 'HSDG06.02.011', 11, 'HSDE06.02.011.11', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_12', 'HSDG06.02.011', 12, 'HSDE06.02.011.12', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_13', 'HSDG06.02.011', 13, 'HSDE06.02.011.13', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_14', 'HSDG06.02.011', 14, 'HSDE06.02.011.14', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_15', 'HSDG06.02.011', 15, 'HSDE06.02.011.15', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_16', 'HSDG06.02.011', 16, 'HSDE06.02.011.16', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_17', 'HSDG06.02.011', 17, 'HSDE06.02.011.17', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_18', 'HSDG06.02.011', 18, 'HSDE06.02.011.18', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_19', 'HSDG06.02.011', 19, 'HSDE06.02.011.19', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_20', 'HSDG06.02.011', 20, 'DE01.00.003.00', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_21', 'HSDG06.02.011', 21, 'HSDE06.02.011.21', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_22', 'HSDG06.02.011', 22, 'HSDE06.02.011.22', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_23', 'HSDG06.02.011', 23, 'HSDE06.02.011.23', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_24', 'HSDG06.02.011', 24, 'HSDE06.02.011.24', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_25', 'HSDG06.02.011', 25, 'HSDE06.02.011.25', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_26', 'HSDG06.02.011', 26, 'HSDE06.02.011.26', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_27', 'HSDG06.02.011', 27, 'HSDE06.02.011.27', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_28', 'HSDG06.02.011', 28, 'HSDE06.02.011.28', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_29', 'HSDG06.02.011', 29, 'HSDE06.02.011.29', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.011_30', 'HSDG06.02.011', 30, 'HSDE06.02.011.30', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_20', 'HSDG09.00.001', 20, 'HSDE00.00.002.002', 0, '001001', to_date('27-02-2016 11:47:44', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.013_2', 'HSDG06.02.013', 2, 'HSDE06.02.013.02', 1, 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:23:41', 'dd-mm-yyyy hh24:mi:ss'), 'insert');
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_22', 'HSDG09.00.001', 22, 'HSDE20.00.0124', 0, '001001', to_date('29-02-2016 09:13:02', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_23', 'HSDG09.00.001', 23, 'HSDE20.00.0042', 0, '001001', to_date('29-02-2016 09:25:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_24', 'HSDG09.00.001', 24, 'HSDE20.00.0079', 0, '001001', to_date('29-02-2016 09:28:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_25', 'HSDG09.00.001', 25, 'HSDE20.00.0158', 0, '001001', to_date('29-02-2016 09:28:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_26', 'HSDG09.00.001', 26, 'HSDE20.00.0080', 0, '001001', to_date('29-02-2016 09:28:41', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_2', 'HSDG09.00.001', 2, 'HSDE20.01.0853', 0, '001001', to_date('26-01-2016 09:25:45', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_3', 'HSDG09.00.001', 3, 'HSDE20.01.0854', 0, '001001', to_date('26-01-2016 09:25:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_27', 'HSDG09.00.001', 27, 'HSDE20.00.0034', 0, '001001', to_date('29-02-2016 09:33:45', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.02.008_21', 'HSDG06.02.008', 21, 'HSDEOIS07.02.009', 1, '001001', to_date('26-10-2015 15:52:44', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('26-10-2015 15:52:50', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_4', 'HSDG09.00.001', 4, 'HSDE20.01.0855', 0, '001001', to_date('26-01-2016 09:25:59', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_5', 'HSDG09.00.001', 5, 'HR02.01.013', 0, '001001', to_date('26-01-2016 09:26:42', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_6', 'HSDG09.00.001', 6, 'HSDE00.00.01.00', 0, '001001', to_date('26-01-2016 09:33:39', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
commit;
prompt 200 records committed...
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_7', 'HSDG09.00.001', 7, 'HSDE10.00.01.01', 0, '001001', to_date('26-01-2016 09:33:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_8', 'HSDG09.00.001', 8, 'HSDE10.00.01.02', 0, '001001', to_date('26-01-2016 09:34:03', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.01.003_1', 'HSDG06.01.003', 1, 'DE04.50.149.00', 0, '001001', to_date('01-02-2016 11:43:57', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_37', 'HSDG09.00.001', 37, 'HSDE20.00.0106', 0, '001001', to_date('05-03-2016 13:39:19', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_39', 'HSDG09.00.001', 39, 'HSDE20.01.0543', 0, '001001', to_date('05-03-2016 16:24:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_40', 'HSDG09.00.001', 40, 'HSDE20.01.0544', 0, '001001', to_date('05-03-2016 16:28:12', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_41', 'HSDG09.00.001', 41, 'HSDE20.01.0668', 0, '001001', to_date('05-03-2016 16:40:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_42', 'HSDG09.00.001', 42, 'HSDE20.01.0670', 0, '001001', to_date('05-03-2016 16:40:58', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_43', 'HSDG09.00.001', 43, 'HSDE20.01.0671', 0, '001001', to_date('05-03-2016 16:50:28', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_44', 'HSDG09.00.001', 44, 'HSDE20.01.0559', 0, '001001', to_date('05-03-2016 17:07:41', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_45', 'HSDG09.00.001', 45, 'DE05.01.054.00', 0, '001001', to_date('05-03-2016 17:21:16', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_46', 'HSDG09.00.001', 46, 'DE04.50.001.00', 0, '001001', to_date('05-03-2016 17:48:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_47', 'HSDG09.00.001', 47, 'HSDE20.00.0456', 0, '001001', to_date('06-03-2016 10:49:27', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.01.002_1', 'HSDG06.01.002', 1, 'HSDE20.00.0457', 0, '001001', to_date('06-03-2016 11:30:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_49', 'HSDG09.00.001', 49, 'HSDE09.00.005.02', 0, '001001', to_date('09-03-2016 11:49:56', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_50', 'HSDG09.00.001', 50, 'HSDE09.00.005.01', 0, '001001', to_date('09-03-2016 11:50:05', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_51', 'HSDG09.00.001', 51, 'HSDE09.00.005.03', 0, '001001', to_date('09-03-2016 12:36:06', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_54', 'HSDG09.00.001', 54, 'HSDE09.00.005.05', 0, '001001', to_date('09-03-2016 12:53:33', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_52', 'HSDG09.00.001', 52, 'HSDE09.00.005.04', 0, '001001', to_date('09-03-2016 12:53:23', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_53', 'HSDG09.00.001', 53, 'HSDE09.00.005.06', 0, '001001', to_date('09-03-2016 12:53:29', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_55', 'HSDG09.00.001', 55, 'HSDE09.00.005.07', 0, '001001', to_date('09-03-2016 12:53:43', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_56', 'HSDG09.00.001', 56, 'HSDE09.00.005.08', 0, '001001', to_date('09-03-2016 12:53:49', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.01.006_1', 'HSDG06.01.006', 1, 'DE04.10.241.00', 0, '001001', to_date('09-03-2016 20:30:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.01.006_2', 'HSDG06.01.006', 2, 'DE05.01.048.00', 0, '001001', to_date('09-03-2016 20:32:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.01.006_3', 'HSDG06.01.006', 3, 'DE04.01.049.00', 0, '001001', to_date('09-03-2016 20:32:45', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.01.006_4', 'HSDG06.01.006', 4, 'DE05.01.022.00', 0, '001001', to_date('09-03-2016 20:34:34', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.01.003_2', 'HSDG06.01.003', 2, 'HSDE06.01.009.00', 0, '001001', to_date('18-03-2016 17:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_57', 'HSDG09.00.001', 57, 'DE02.01.031.00', 0, '001001', to_date('18-03-2016 18:23:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_58', 'HSDG09.00.001', 58, 'DE02.01.030.00', 0, '001001', to_date('18-03-2016 18:24:14', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_59', 'HSDG09.00.001', 59, 'HSDE06.02.014.01', 0, '001001', to_date('18-03-2016 18:56:13', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.01.002_2', 'HSDG06.01.002', 2, 'HSDEOIS01.01.003', 0, '001001', to_date('18-03-2016 18:57:57', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_60', 'HSDG09.00.001', 60, 'DE05.10.084.00', 0, '001001', to_date('18-03-2016 19:01:07', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_61', 'HSDG09.00.001', 61, 'HSDE20.00.0100', 0, '001001', to_date('18-03-2016 19:04:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG09.00.001_62', 'HSDG09.00.001', 62, 'HSDEOIS01.01.004', 0, '001001', to_date('18-03-2016 19:05:22', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.01.003_4', 'HSDG06.01.003', 4, 'HSDE06.01.035.00', 0, '001001', to_date('02-09-2016 15:04:58', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.01.003_6', 'HSDG06.01.003', 6, 'HSDE06.01.037', 0, '001001', to_date('08-09-2016 08:51:34', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.03.001.01_1', 'HSDG06.03.001.01', 1, 'HSDE06.03.001.01', 0, '001001', to_date('22-06-2016 15:48:50', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.03.001.01_2', 'HSDG06.03.001.01', 2, 'HSDE06.03.001.02', 0, '001001', to_date('22-06-2016 15:48:57', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.03.001.01_3', 'HSDG06.03.001.01', 3, 'HSDE06.03.001.03', 0, '001001', to_date('22-06-2016 15:49:02', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.03.001.01_4', 'HSDG06.03.001.01', 4, 'HSDE06.03.001.04', 0, '001001', to_date('22-06-2016 15:49:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.03.001.01_5', 'HSDG06.03.001.01', 5, 'HSDE06.03.001.05', 0, '001001', to_date('22-06-2016 15:49:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.03.001.01_6', 'HSDG06.03.001.01', 6, 'HSDE06.03.001.06', 0, '001001', to_date('22-06-2016 15:49:15', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.03.001.01_7', 'HSDG06.03.001.01', 7, 'HSDE06.03.001.07', 0, '001001', to_date('22-06-2016 15:49:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.03.001.01_8', 'HSDG06.03.001.01', 8, 'HSDE06.03.001.08', 0, '001001', to_date('22-06-2016 15:49:23', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.03.001.01_9', 'HSDG06.03.001.01', 9, 'HSDE06.03.001.09', 0, '001001', to_date('22-06-2016 15:49:26', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.03.001.01_10', 'HSDG06.03.001.01', 10, 'HSDE06.03.001.10', 0, '001001', to_date('22-06-2016 15:49:29', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.03.001.01_11', 'HSDG06.03.001.01', 11, 'HSDE06.03.001.11', 0, '001001', to_date('22-06-2016 15:49:32', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.03.001.01_12', 'HSDG06.03.001.01', 12, 'HSDE06.03.001.12', 0, '001001', to_date('22-06-2016 15:49:36', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.03.001.01_13', 'HSDG06.03.001.01', 13, 'HSDE06.03.001.13', 0, '001001', to_date('22-06-2016 15:49:39', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.03.001.01_14', 'HSDG06.03.001.01', 14, 'HSDE06.03.001.14', 0, '001001', to_date('22-06-2016 15:49:42', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.03.001.01_15', 'HSDG06.03.001.01', 15, 'HSDE06.03.001.15', 0, '001001', to_date('22-06-2016 15:49:46', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.03.001.01_16', 'HSDG06.03.001.01', 16, 'HSDE06.03.001.16', 0, '001001', to_date('22-06-2016 15:49:50', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.03.001.01_17', 'HSDG06.03.001.01', 17, 'HSDE06.03.001.17', 0, '001001', to_date('22-06-2016 15:49:55', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.03.001.01_18', 'HSDG06.03.001.01', 18, 'HSDE06.03.001.18', 0, '001001', to_date('22-06-2016 15:49:58', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.03.001.01_19', 'HSDG06.03.001.01', 19, 'HSDE07.00.0000', 0, '001001', to_date('22-06-2016 15:50:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.01.003_3', 'HSDG06.01.003', 3, 'HSDE20.00.0452', 0, '001001', to_date('02-09-2016 11:17:46', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.01.003_5', 'HSDG06.01.003', 5, 'HSDE06.01.036.00', 0, '001001', to_date('02-09-2016 15:05:07', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.01.003_7', 'HSDG06.01.003', 7, 'HSDEOIS03.03.035', 0, '001001', to_date('17-12-2016 14:18:14', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into DATA_GROUP_VS_DATA_ELEMENT_ (id, data_group_id, seq, data_element_id, force_identifier, input_worker_id, input_date, update_worker_id, update_date, remark)
values ('HSDG06.01.003_8', 'HSDG06.01.003', 8, 'HSDE06.01.137.00', 0, '001001', to_date('20-12-2016 11:51:56', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
commit;
prompt 259 records loaded
prompt Enabling triggers for DATA_GROUP_VS_DATA_ELEMENT_...
alter table DATA_GROUP_VS_DATA_ELEMENT_ enable all triggers;
set feedback on
set define on
prompt Done.
