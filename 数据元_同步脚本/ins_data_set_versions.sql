prompt PL/SQL Developer import file
prompt Created on 2017Äê2ÔÂ24ÈÕ by Administrator
set feedback off
set define off
prompt Disabling triggers for DATA_SET_VERSIONS_...
alter table DATA_SET_VERSIONS_ disable all triggers;
prompt Loading DATA_SET_VERSIONS_...
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS09.00.001', 6, '001001', to_date('19-07-2016 09:59:16', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('19-07-2016 09:57:12', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS10.00.001', 1, '001001', to_date('19-07-2016 10:35:17', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('19-07-2016 10:34:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.02.020', 4, '001001', to_date('24-06-2016 17:48:30', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('24-06-2016 17:48:06', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.02.020', 5, '001001', to_date('02-07-2016 10:58:23', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('02-07-2016 10:57:15', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 15, '001001', to_date('19-06-2016 18:44:56', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('19-06-2016 18:41:51', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 16, '001001', to_date('20-06-2016 09:13:12', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('20-06-2016 09:01:43', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 17, '001001', to_date('20-06-2016 09:23:44', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('20-06-2016 09:23:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 18, '001001', to_date('20-06-2016 09:27:19', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('20-06-2016 09:27:09', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 19, '001001', to_date('20-06-2016 10:24:54', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('20-06-2016 10:24:40', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 20, '001001', to_date('20-06-2016 10:43:19', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('20-06-2016 10:42:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 21, '001001', to_date('20-06-2016 15:28:44', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('20-06-2016 15:28:20', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.02.020', 2, '001001', to_date('24-06-2016 10:49:33', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('24-06-2016 10:48:11', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS08.01.001', 2, '001001', to_date('11-04-2016 12:54:15', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('11-04-2016 12:53:48', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HRA00.01', 2, '001001', to_date('25-04-2016 16:16:53', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('25-04-2016 16:16:49', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS91.00.01', 2, '001001', to_date('14-06-2016 21:43:46', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('14-06-2016 21:43:29', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS08.01.003', 2, '001001', to_date('12-03-2016 16:40:25', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('12-03-2016 16:09:01', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS08.01.003', 1, '001001', to_date('12-03-2016 16:04:29', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('12-03-2016 15:12:15', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS08.01.003', 3, '001001', to_date('12-03-2016 16:48:50', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('12-03-2016 16:48:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS08.01.001', 1, '001001', to_date('12-03-2016 21:46:06', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('12-03-2016 21:45:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSOIS04.03', 7, '001001', to_date('24-10-2015 14:52:47', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('24-10-2015 14:52:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS09.00.001', 4, '001001', to_date('25-02-2016 10:13:24', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('24-02-2016 10:27:04', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS07.00.003', 0, '001001', to_date('29-01-2016 08:33:27', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('26-01-2016 16:51:52', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS09.00.001', 5, '001001', to_date('04-07-2016 15:41:33', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-02-2016 11:13:59', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS07.00.005', 0, '001001', to_date('29-01-2016 08:35:29', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('26-01-2016 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS09.00.004', 0, '001001', to_date('28-01-2016 14:41:43', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 10:03:53', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS10.00.001', 0, '001001', to_date('28-01-2016 14:39:18', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 10:36:05', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS10.00.002', 0, '001001', to_date('28-01-2016 14:37:49', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 10:43:15', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS10.00.003', 0, '001001', to_date('28-01-2016 14:34:34', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 10:48:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS10.00.004', 0, '001001', to_date('28-01-2016 14:32:55', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 10:55:06', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS10.00.005', 0, '001001', to_date('28-01-2016 14:30:59', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 11:01:30', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS00.00.001', 8, '001001', to_date('24-09-2016 12:16:05', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-02-2016 11:16:07', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS00.00.001', 0, '001001', to_date('03-12-2015 11:08:45', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('03-12-2015 11:04:43', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS00.00.001', 1, '001001', to_date('08-12-2015 14:21:39', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('08-12-2015 14:21:20', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS10.00.006', 0, '001001', to_date('28-01-2016 14:28:31', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 11:10:42', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS10.00.007', 0, '001001', to_date('28-01-2016 14:22:16', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 11:19:03', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS10.00.008', 0, '001001', to_date('28-01-2016 14:15:45', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 11:28:00', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS10.00.009', 0, '001001', to_date('28-01-2016 14:12:33', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 11:38:10', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS10.00.010', 0, '001001', to_date('29-01-2016 08:38:23', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 11:46:45', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS09.00.001', 1, '001001', to_date('29-01-2016 08:20:33', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 15:28:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSOIS04.03', 6, '001001', to_date('24-10-2015 14:49:53', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('24-10-2015 14:30:57', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HRB03.09', 5, '001001', to_date('15-02-2016 16:33:23', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('26-10-2015 08:51:49', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 0, '001001', to_date('18-11-2015 16:23:56', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('02-11-2015 22:03:52', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.02.001', 0, '001001', to_date('22-01-2016 16:07:35', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('20-01-2016 14:40:10', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.02.002', 0, '001001', to_date('22-01-2016 16:08:05', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-01-2016 16:03:24', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.02.004', 0, '001001', to_date('22-01-2016 16:09:31', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-01-2016 16:03:39', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.02.005', 0, '001001', to_date('22-01-2016 16:10:04', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-01-2016 16:03:57', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.02.006', 0, '001001', to_date('22-01-2016 16:15:12', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-01-2016 16:04:15', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.02.007', 0, '001001', to_date('22-01-2016 16:16:07', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-01-2016 16:04:25', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.02.008', 0, '001001', to_date('22-01-2016 16:16:03', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-01-2016 16:04:36', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.02.009', 0, '001001', to_date('22-01-2016 16:16:00', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-01-2016 16:04:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.02.010', 0, '001001', to_date('22-01-2016 16:16:29', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-01-2016 16:04:55', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.02.011', 0, '001001', to_date('22-01-2016 16:17:37', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-01-2016 16:05:10', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.02.012', 0, '001001', to_date('22-01-2016 16:17:34', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-01-2016 16:05:22', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS08.01.001', 0, '001001', to_date('04-01-2016 17:06:27', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('04-01-2016 17:06:04', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.02.013', 0, '001001', to_date('22-01-2016 16:17:29', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-01-2016 16:06:46', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.02.014', 0, '001001', to_date('22-01-2016 16:17:26', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-01-2016 16:07:01', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS08.01.002', 0, '001001', to_date('29-01-2016 08:36:04', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('26-01-2016 17:25:07', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS07.00.002', 0, '001001', to_date('29-01-2016 08:32:22', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('26-01-2016 16:44:59', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS07.00.004', 0, '001001', to_date('29-01-2016 08:34:41', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('26-01-2016 16:57:37', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS05.01.001', 0, '001001', to_date('28-01-2016 14:59:47', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 11:00:02', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS05.01.002', 0, '001001', to_date('29-01-2016 08:21:03', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 11:10:36', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS05.01.003', 0, '001001', to_date('28-01-2016 15:09:35', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 11:21:46', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS05.01.004', 0, '001001', to_date('29-01-2016 08:26:16', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 11:34:28', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS10.00.011', 0, '001001', to_date('29-01-2016 08:37:56', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 12:02:22', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS05.01.005', 0, '001001', to_date('29-01-2016 08:27:00', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 13:52:40', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS05.01.006', 0, '001001', to_date('29-01-2016 08:27:56', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 14:02:03', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.003', 0, '001001', to_date('29-01-2016 08:39:15', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 15:56:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 6, '001001', to_date('28-01-2016 15:02:14', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 15:01:10', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 7, '001001', to_date('28-01-2016 15:06:50', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 15:06:31', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 8, '001001', to_date('28-01-2016 15:08:16', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 15:07:50', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS02.00.002', 2, '001001', to_date('28-01-2016 18:56:10', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 16:17:20', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS00.00.001', 6, '001001', to_date('26-02-2016 10:25:27', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('26-02-2016 10:24:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 11, '001001', to_date('29-02-2016 15:25:16', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('29-02-2016 14:54:27', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 2, '001001', to_date('27-01-2016 10:04:59', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('26-01-2016 14:57:50', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS07.00.001', 0, '001001', to_date('29-01-2016 08:30:34', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('26-01-2016 16:07:55', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS08.02.001', 0, '001001', to_date('29-01-2016 08:36:42', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 08:54:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS09.00.003', 0, '001001', to_date('28-01-2016 14:45:58', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 09:50:40', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS00.00.007', 0, '001001', to_date('28-01-2016 18:58:24', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 10:17:35', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS00.00.008', 0, '001001', to_date('28-01-2016 14:57:04', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 10:34:25', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS10.00.012', 0, '001001', to_date('28-01-2016 13:54:20', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 13:54:17', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS10.00.013', 0, '001001', to_date('28-01-2016 13:42:15', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 14:05:14', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS10.00.014', 0, '001001', to_date('28-01-2016 13:39:34', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 14:13:52', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS10.00.015', 0, '001001', to_date('28-01-2016 13:37:58', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 14:20:35', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS05.02.001', 0, '001001', to_date('29-01-2016 08:30:20', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 14:43:43', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS05.02.002', 0, '001001', to_date('29-01-2016 08:34:17', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 14:59:05', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS05.02.003', 0, '001001', to_date('29-01-2016 08:36:54', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 15:24:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.004', 0, '001001', to_date('29-01-2016 08:40:33', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 16:10:36', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.005', 0, '001001', to_date('29-01-2016 08:42:08', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 16:22:03', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.02.014', 1, '001001', to_date('01-02-2016 10:56:29', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('01-02-2016 10:53:26', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HRA00.01', 1, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HRB01.01', 1, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HRB01.02', 1, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HRB01.03', 1, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HRB01.04', 1, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HRB02.01', 1, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HRB03.09', 1, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HRB03.09', 2, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HRB03.09', 3, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HRB03.09', 4, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSOIS01.01', 1, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
commit;
prompt 100 records committed...
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSOIS01.01', 2, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSOIS01.01', 3, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSOIS01.01', 4, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSOIS01.01', 5, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSOIS02.01', 1, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSOIS02.01', 2, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSOIS02.01', 3, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSOIS02.01', 4, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSOIS02.01', 5, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSOIS02.01', 6, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSOIS02.01', 7, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSOIS02.01', 8, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSOIS02.01', 9, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSOIS03.01', 1, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSOIS03.01', 2, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSOIS03.01', 3, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSOIS03.01', 4, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSOIS03.01', 5, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSOIS03.03', 1, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSOIS04.03', 1, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSOIS04.03', 2, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSOIS04.03', 3, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSOIS04.03', 4, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSOIS04.03', 5, 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSOIS03.03', 2, '001001', to_date('08-12-2015 16:38:34', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('26-10-2015 10:26:47', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS09.00.001', 0, '001001', to_date('28-01-2016 11:29:22', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('26-01-2016 09:51:56', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS00.00.001', 2, '001001', to_date('26-01-2016 09:37:59', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('26-01-2016 09:36:08', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS09.00.002', 0, '001001', to_date('26-01-2016 10:32:14', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('26-01-2016 10:27:53', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS09.00.002', 1, null, null, '001001', to_date('26-01-2016 10:57:24', 'dd-mm-yyyy hh24:mi:ss'), 0);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS00.00.001', 3, '001001', to_date('26-01-2016 14:09:46', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('26-01-2016 14:03:59', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS00.00.001', 4, '001001', to_date('26-01-2016 14:30:17', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('26-01-2016 14:29:15', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS00.00.003', 0, '001001', to_date('29-01-2016 08:31:35', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('26-01-2016 15:52:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS00.00.002', 0, '001001', to_date('28-01-2016 15:24:27', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('26-01-2016 17:28:12', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS00.00.004', 0, '001001', to_date('28-01-2016 18:55:13', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('26-01-2016 17:37:28', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS00.00.005', 0, '001001', to_date('28-01-2016 15:27:26', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('26-01-2016 17:43:49', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS00.00.006', 0, '001001', to_date('28-01-2016 15:28:02', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('26-01-2016 17:50:48', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS03.00.001', 0, '001001', to_date('28-01-2016 14:47:10', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 09:48:03', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS00.00.001', 5, '001001', to_date('26-02-2016 10:24:26', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('24-02-2016 16:46:26', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS02.00.001', 0, '001001', to_date('28-01-2016 18:55:43', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 08:57:19', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS02.00.002', 0, '001001', to_date('28-01-2016 14:44:26', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 09:11:08', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS03.00.002', 0, '001001', to_date('28-01-2016 14:30:37', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 09:54:14', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HRB02.01', 2, null, null, '001001', to_date('27-10-2015 17:31:58', 'dd-mm-yyyy hh24:mi:ss'), 0);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 3, '001001', to_date('27-01-2016 11:52:48', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 11:31:31', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS09.00.001', 2, '001001', to_date('16-02-2016 16:55:49', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('01-02-2016 11:41:25', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS11.00.001', 0, '001001', to_date('28-01-2016 13:35:50', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 14:50:13', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 10, '001001', to_date('25-02-2016 18:05:03', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('25-02-2016 17:50:37', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS12.00.001', 0, '001001', to_date('29-01-2016 08:42:47', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 15:00:12', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS13.00.001', 0, '001001', to_date('28-01-2016 13:26:47', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 15:18:07', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS14.00.001', 0, '001001', to_date('16-02-2016 10:02:16', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 15:27:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.02.015', 0, '001001', to_date('29-01-2016 08:27:04', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 15:42:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.02.016', 0, '001001', to_date('29-01-2016 08:22:29', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 16:05:19', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 9, '001001', to_date('02-02-2016 10:19:24', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('02-02-2016 10:17:42', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.02.020', 0, '001001', to_date('22-06-2016 15:53:20', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-06-2016 09:28:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 1, '001001', to_date('19-11-2015 08:50:07', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('18-11-2015 16:24:07', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.02.017', 0, '001001', to_date('29-01-2016 08:21:17', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 16:13:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.008', 0, '001001', to_date('29-01-2016 08:28:05', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 16:22:36', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.006', 1, '001001', to_date('02-02-2016 15:46:33', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('02-02-2016 15:39:15', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.007', 0, '001001', to_date('29-01-2016 08:29:02', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 16:31:16', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS09.00.001', 3, '001001', to_date('20-02-2016 11:25:10', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('16-02-2016 17:37:29', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.006', 0, '001001', to_date('29-01-2016 08:42:50', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 16:36:48', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 4, '001001', to_date('28-01-2016 14:42:27', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 14:02:22', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS00.00.001', 7, '001001', to_date('26-02-2016 17:04:33', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('26-02-2016 17:04:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 5, '001001', to_date('28-01-2016 14:49:14', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 14:48:47', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS02.00.002', 1, '001001', to_date('28-01-2016 16:17:08', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 14:48:53', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS00.00.002', 1, '001001', to_date('28-01-2016 15:57:47', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 15:55:43', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS00.00.005', 1, '001001', to_date('28-01-2016 16:02:15', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 16:01:33', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS00.00.006', 1, '001001', to_date('28-01-2016 16:02:52', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 16:02:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.006', 2, '001001', to_date('09-03-2016 20:21:12', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-03-2016 20:18:33', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS08.01.003', 0, '001001', to_date('12-03-2016 13:12:05', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('12-03-2016 13:04:20', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 12, '001001', to_date('01-04-2016 13:35:39', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('01-04-2016 13:34:26', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 13, '001001', to_date('06-04-2016 19:20:24', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('06-04-2016 19:18:08', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS40.00.001', 0, '001001', to_date('28-04-2016 22:47:06', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-04-2016 22:33:12', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 14, '001001', to_date('19-06-2016 18:05:34', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('17-06-2016 20:17:06', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS00.00.002', 2, '001001', to_date('25-04-2016 15:59:15', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('25-04-2016 15:59:06', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS91.00.01', 1, '001001', to_date('25-05-2016 14:11:39', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('25-05-2016 14:10:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS91.00.01', 0, '001001', to_date('25-05-2016 09:19:25', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('25-05-2016 09:16:40', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.02.012', 1, null, null, '001001', to_date('25-05-2016 11:52:03', 'dd-mm-yyyy hh24:mi:ss'), 0);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.006', 3, '001001', to_date('17-06-2016 17:04:12', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('17-06-2016 16:46:36', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.02.020', 3, '001001', to_date('24-06-2016 11:39:00', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('24-06-2016 11:38:33', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.02.021', 0, '001001', to_date('28-06-2016 11:15:40', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-06-2016 17:30:58', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.02.021', 1, '001001', to_date('28-06-2016 11:49:41', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-06-2016 11:49:13', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 23, '001001', to_date('30-08-2016 12:07:34', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('30-08-2016 12:06:54', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.006', 4, '001001', to_date('12-12-2016 20:38:07', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('03-09-2016 11:32:12', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS08.01.001', 3, '001001', to_date('09-09-2016 16:06:17', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-09-2016 16:06:01', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.004', 1, '001001', to_date('12-09-2016 11:57:13', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('12-09-2016 10:53:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.004', 2, '001001', to_date('12-09-2016 16:43:37', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('12-09-2016 16:02:30', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.004', 3, '001001', to_date('12-09-2016 18:05:16', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('12-09-2016 17:16:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 22, '001001', to_date('27-06-2016 12:10:36', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('21-06-2016 10:24:56', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.02.020', 1, '001001', to_date('23-06-2016 11:34:57', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-06-2016 16:01:53', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 29, '001001', to_date('10-12-2016 10:58:16', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('10-12-2016 10:57:24', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 30, '001001', to_date('10-12-2016 11:28:26', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('10-12-2016 11:28:15', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 33, '001001', to_date('12-12-2016 04:04:26', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('12-12-2016 04:03:17', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 24, '001001', to_date('08-12-2016 12:06:41', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('08-12-2016 11:52:39', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.02.020', 6, null, null, '001001', to_date('08-12-2016 13:59:48', 'dd-mm-yyyy hh24:mi:ss'), 0);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 31, '001001', to_date('12-12-2016 09:43:28', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('12-12-2016 09:41:08', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 32, '001001', to_date('12-12-2016 11:17:02', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('12-12-2016 11:16:42', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.006', 5, '001001', to_date('12-12-2016 20:38:41', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('12-12-2016 20:38:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 34, '001001', to_date('13-12-2016 02:21:20', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('13-12-2016 02:20:51', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 25, '001001', to_date('09-12-2016 10:29:40', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-12-2016 10:15:40', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 26, '001001', to_date('09-12-2016 14:13:15', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-12-2016 14:12:58', 'dd-mm-yyyy hh24:mi:ss'), 1);
commit;
prompt 200 records committed...
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 27, '001001', to_date('09-12-2016 16:29:19', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-12-2016 16:28:11', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 28, '001001', to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-12-2016 17:10:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSRC01.00.001', 0, '001001', to_date('07-12-2016 20:37:02', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('07-12-2016 20:35:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSRC01.00.001', 1, '001001', to_date('08-12-2016 11:06:48', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('08-12-2016 10:53:20', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSRC01.00.001', 2, '001001', to_date('09-12-2016 17:16:21', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-12-2016 17:15:55', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSRC01.00.001', 3, '001001', to_date('09-12-2016 20:24:57', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-12-2016 20:23:13', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSRC01.00.001', 4, '001001', to_date('09-12-2016 21:14:25', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-12-2016 21:04:28', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSRC01.00.001', 5, '001001', to_date('12-12-2016 11:09:23', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('12-12-2016 11:09:05', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 35, '001001', to_date('18-12-2016 16:35:08', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('18-12-2016 16:34:49', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 37, '001001', to_date('20-12-2016 11:54:55', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('20-12-2016 11:54:17', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 38, '001001', to_date('20-12-2016 12:04:38', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('20-12-2016 12:03:20', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 40, '001001', to_date('29-12-2016 20:56:36', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('29-12-2016 20:55:45', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS10.00.009', 1, '001001', to_date('21-12-2016 15:50:23', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('21-12-2016 15:47:10', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS09.00.001', 7, '001001', to_date('17-12-2016 15:00:21', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('17-12-2016 14:53:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 36, '001001', to_date('19-12-2016 19:45:56', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('19-12-2016 19:45:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 39, '001001', to_date('28-12-2016 17:54:17', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-12-2016 17:54:01', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into DATA_SET_VERSIONS_ (data_set_id, version, publish_worker_id, publish_date, input_worker_id, input_date, status)
values ('HSDS06.01.002', 41, '001001', to_date('16-01-2017 17:25:06', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('16-01-2017 17:23:36', 'dd-mm-yyyy hh24:mi:ss'), 1);
commit;
prompt 217 records loaded
prompt Enabling triggers for DATA_SET_VERSIONS_...
alter table DATA_SET_VERSIONS_ enable all triggers;
set feedback on
set define on
prompt Done.
