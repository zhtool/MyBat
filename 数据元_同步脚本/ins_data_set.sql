prompt PL/SQL Developer import file
prompt Created on 2017��2��24�� by Administrator
set feedback off
set define off
prompt Disabling triggers for DATA_SET_...
alter table DATA_SET_ disable all triggers;
prompt Loading DATA_SET_...
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS00.00.001', 'ͨ�����ݼ�', 'TYSJJ', null, 8, '001001', to_date('03-12-2015 11:04:43', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS07.00.003', '�����鼰��������ͬ�����Ӽ�', 'TSJCJTSZLTYSZJ', 'TGSSETGIUMUNBW', 0, '001001', to_date('26-01-2016 16:51:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS07.00.005', '����֪��ͬ�����Ӽ�', 'QTZQTYSZJ', 'AWTNMUNBW', 0, '001001', to_date('26-01-2016 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS09.00.004', '24H�����Ժ������¼�Ӽ�', '24HNRCYSWJLZJ', '24HMTBBGYYVBW', 0, '001001', to_date('27-01-2016 10:03:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS10.00.001', '�״β��̼�¼�Ӽ�', 'SCBCJLZJ', 'UUUTYVBW', 1, '001001', to_date('27-01-2016 10:36:05', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS10.00.002', '�ճ����̼�¼�Ӽ�', 'RCBCJLZJ', 'JIUTYVBW', 0, '001001', to_date('27-01-2016 10:43:15', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS10.00.003', '�ϼ�ҽʦ�鷿��¼�Ӽ�', 'SJYSCFJLZJ', 'HXAJSYYVBW', 0, '001001', to_date('27-01-2016 10:48:41', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS10.00.004', '���Ѳ��������Ӽ�', 'YNBLTLZJ', 'XCUWYYBW', 0, '001001', to_date('27-01-2016 10:55:06', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS10.00.005', '���Ӱ��¼�Ӽ�', 'JJBJLZJ', 'URGYVBW', 0, '001001', to_date('27-01-2016 11:01:30', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS10.00.006', 'ת�Ƽ�¼�Ӽ�', 'ZKJLZJ', 'LTYVBW', 0, '001001', to_date('27-01-2016 11:10:42', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS10.00.007', '�׶�С���Ӽ�', 'JDXJZJ', 'BWIXBW', 0, '001001', to_date('27-01-2016 11:19:03', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS10.00.008', '���ȼ�¼�Ӽ�', 'QJJLZJ', 'RFYVBW', 0, '001001', to_date('27-01-2016 11:28:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS10.00.009', '�����¼�Ӽ�', 'HZJLZJ', 'WYYVBW', 1, '001001', to_date('27-01-2016 11:38:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS10.00.010', '��ǰС���Ӽ�', 'SQXJZJ', 'SUIXBW', 0, '001001', to_date('27-01-2016 11:46:45', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.001', '����˹���������', 'GLSGHMLB', 'SRASQOJG', 0, '001001', to_date('20-01-2016 14:40:10', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-01-2016 15:56:54', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.01.002', '�����¼�����ݼ�', 'HLJLDSJJ', null, 41, '001001', to_date('02-11-2015 22:03:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.002', '�ճ�������������', 'RCSHHDNLLB', 'JITIIFCLJG', 0, '001001', to_date('22-01-2016 16:03:24', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.004', '˹������ά����������', 'SKDNWYZZLB', 'AFRVXGYKJG', 0, '001001', to_date('22-01-2016 16:03:39', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.005', '����RANKIN����', 'GLRANKINLB', 'NYRANKINJG', 0, '001001', to_date('22-01-2016 16:03:57', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.006', 'GLASGOW ���ֽ��', 'GLASGOW PFJG', 'GLASGOW YWXJ', 0, '001001', to_date('22-01-2016 16:04:15', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.007', 'HAMILTON ��������', 'HAMILTON YYLB', 'HAMILTON RDJG', 0, '001001', to_date('22-01-2016 16:04:25', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.008', '������������', 'YYZPLB', 'RDTYJG', 0, '001001', to_date('22-01-2016 16:04:36', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.009', 'HAMLTON ��������', 'HAMLTON JLLB', 'HAMLTON WHJG', 0, '001001', to_date('22-01-2016 16:04:44', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.010', '������������( SAS)', 'JLZPLB( SAS)', 'WHTYJG( SAS)', 0, '001001', to_date('22-01-2016 16:04:55', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.011', '����״̬�����ټ��MMSE��', 'JSZTJYSJB��MMSE��', 'OPUDTJGSG��MMSE��', 0, '001001', to_date('22-01-2016 16:05:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.012', '����Ĥ��ǻ��Ѫ��HUNT-HE', 'ZWMXQCXDHUNT-HE', 'JMEGEBTRHUNT-HE', 0, '001001', to_date('22-01-2016 16:05:22', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.013', 'SPETZLER-MARTIN AVM ��������', 'SPETZLER-MARTIN AVM JBPG', 'SPETZLER-MARTIN AVM XKYW', 0, '001001', to_date('22-01-2016 16:06:46', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.014', '�̴�Σ�ն����֣�NORTON��', 'ZCWXDPF��NORTON��', 'UUQBYYW��NORTON��', 1, '001001', to_date('22-01-2016 16:07:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS07.00.001', '����ͬ�������ݼ�', 'SSTYSSJJ', 'RSMUNORW', 0, '001001', to_date('26-01-2016 14:50:44', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS07.00.002', '��Ѫ����ͬ�����Ӽ�', 'SXZLTYSZJ', 'LTIUMUNBW', 0, '001001', to_date('26-01-2016 16:44:59', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS07.00.004', '��Σ(��)֪ͨ���Ӽ�', 'BW(Z)TZSZJ', 'UQ(T)CTNBW', 0, '001001', to_date('26-01-2016 16:57:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS08.01.002', 'סԺ������ҳ�Ӽ�', 'ZYBASYZJ', 'WBUPUDBW', 0, '001001', to_date('26-01-2016 17:25:07', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS05.01.001', '���Ƽ�¼�Ӽ�', 'ZLJLZJ', 'IUYVBW', 0, '001001', to_date('27-01-2016 11:00:02', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS05.01.002', 'һ��������¼�Ӽ�', 'YBSSJLZJ', 'GTRSYVBW', 0, '001001', to_date('27-01-2016 11:10:36', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS05.01.003', '������ǰ���Ӽ�¼�Ӽ�', 'MZSQFSJLZJ', 'YSSUYPYVBW', 0, '001001', to_date('27-01-2016 11:21:46', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS05.01.004', '�����¼�Ӽ�', 'MZJLZJ', 'YSYVBW', 0, '001001', to_date('27-01-2016 11:34:28', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS10.00.011', '��ǰ�����Ӽ�', 'SQTLZJ', 'SUYYBW', 0, '001001', to_date('27-01-2016 12:02:22', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS05.01.005', '����������Ӽ�¼�Ӽ�', 'MZSHFSJLZJ', 'YSSRYPYVBW', 0, '001001', to_date('27-01-2016 13:52:40', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS05.01.006', '��Ѫ��¼�Ӽ�', 'SXJLZJ', 'LTYVBW', 0, '001001', to_date('27-01-2016 14:02:03', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.01.003', 'һ�㻤���¼�Ӽ�', 'YBHLJLZJ', 'GTRGYVBW', 0, '001001', to_date('27-01-2016 15:56:44', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS09.00.003', '24H�����Ժ��¼�Ӽ�', '24HNRCYJLZJ', '24HMTBBYVBW', 0, '001001', to_date('27-01-2016 09:50:40', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS08.02.001', '��ҽסԺ������ҳ�Ӽ�', 'ZYZYBASYZJ', 'KAWBUPUDBW', 0, '001001', to_date('27-01-2016 08:54:34', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS00.00.007', '����¼�Ӽ�', 'JCJLZJ', 'SSYVBW', 0, '001001', to_date('27-01-2016 10:17:35', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS00.00.008', '�����¼�Ӽ�', 'JYJLZJ', 'SCYVBW', 0, '001001', to_date('27-01-2016 10:34:25', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS10.00.012', '�����״β��̼�¼�Ӽ�', 'SHSCBCJLZJ', 'SRUUUTYVBW', 0, '001001', to_date('27-01-2016 13:54:17', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS10.00.013', '��Ժ��¼�Ӽ�', 'CYJLZJ', 'BBYVBW', 0, '001001', to_date('27-01-2016 14:05:14', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS10.00.014', '������¼�Ӽ�', 'SWJLZJ', 'GYYVBW', 0, '001001', to_date('27-01-2016 14:13:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS10.00.015', '�����������ۼ�¼�Ӽ�', 'SWBLTLJLZJ', 'GYUWYYYVBW', 0, '001001', to_date('27-01-2016 14:20:35', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS05.02.001', '������¼�Ӽ�', 'DCJLZJ', 'TUYVBW', 0, '001001', to_date('27-01-2016 14:43:43', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS05.02.002', '���������¼�Ӽ�', 'YDFMJLZJ', 'BUWVYVBW', 0, '001001', to_date('27-01-2016 14:59:05', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS05.02.003', '�ʹ���������¼�Ӽ�', 'PGCSSJLZJ', 'UPURSYVBW', 0, '001001', to_date('27-01-2016 15:24:23', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.01.004', '��Σ���أ������¼�Ӽ�', 'BW��Z��HLJLZJ', 'UQ��T��RGYVBW', 3, '001001', to_date('27-01-2016 16:10:36', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.01.005', '���������¼�Ӽ�', 'SSHLJLZJ', 'RSRGYVBW', 0, '001001', to_date('27-01-2016 16:22:03', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSOIS04.03', '�����˶Ժͷ����������ݼ�', 'SFHDHFXPGSJJ', 'DYSCTW', 7, 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'Insert', 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSOIS03.01', '���������¼���ݼ�', 'SSHLJLSJJ', 'RSRGYV', 5, 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'Insert', 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSOIS03.03', '����ָ��һ����¼���ݼ�', 'MZHFSHLJLSJJ', 'OSNTPR', 2, 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'Insert', 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSOIS01.01', '�������ݼ�', 'FSSJJ', 'YPORW', 4, 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'Insert', 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSOIS02.01', '�����ܽ����ݼ�', 'MZZJSJJ', 'OSUXOR', 8, 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'Insert', 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS00.00.002', '���߻�����Ϣ�Ӽ�', 'HZJBXXZJ', 'KFASWTBW', 1, '001001', to_date('26-01-2016 17:28:12', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS09.00.001', '��Ժ��¼�Ӽ�', 'RYJLZJ', 'TBYVBW', 7, '001001', to_date('26-01-2016 09:51:56', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HRB01.01', '����ҽѧ֤���������ݼ�', 'CSYXZMJBSJJ', 'BTAIYJ', 1, 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'Insert', 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HRB01.02', '����������ɸ��������ݼ�', 'XSEJBSCJBSJJ', 'UTQUUT', 1, 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'Insert', 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HRB01.03', '��ͯ�������������ݼ�', 'ETJKTJJBSJJ', 'QUWOWS', 1, 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'Insert', 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HRB01.04', '������ͯ����������ݼ�', 'TRETGLJBSJJ', 'WXQUTG', 1, 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'Insert', 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HRB02.01', '��ǰ��������������ݼ�', 'HQBJFWJBSJJ', 'VUWWET', 1, 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'Insert', 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HRA00.01', '������Ϣ�������ݼ�', 'GRXXJBSJJ', 'WWWTDS', 1, 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'Insert', 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HRB03.09', '�˺���ⱨ��������ݼ�', 'SHJCBGJBSJJ', 'WPAIRT', 5, 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'Insert', 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS00.00.004', '����������Ϣ�Ӽ�', 'JBJKXXZJ', 'ASWYWTBW', 0, '001001', to_date('26-01-2016 17:37:28', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS00.00.005', '�����¼�ժҪ�Ӽ�', 'WSSJZYZJ', 'BTGWRSBW', 1, '001001', to_date('26-01-2016 17:43:49', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS00.00.006', 'ҽ�Ʒ��ü�¼�Ӽ�', 'YLFYJLZJ', 'AUXEYVBW', 1, '001001', to_date('26-01-2016 17:50:48', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.01.006', ' ��������������¼�Ӽ�', ' SMTZCLJLZJ', 'TWWTIJYVBW', 5, '001001', to_date('27-01-2016 16:36:48', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS09.00.002', '��Ժ��¼�����Ϣ', 'RYJLZDXX', 'TBYVYOWT', 0, '001001', to_date('26-01-2016 10:27:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS00.00.003', '����֪��ͬ�����Ӽ�', 'MZZQTYSZJ', 'YSTNMUNBW', 0, '001001', to_date('26-01-2016 15:52:38', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('26-01-2016 15:58:04', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS03.00.001', '��ҩ�����Ӽ�', 'XYCFZJ', 'SATYBW', 0, '001001', to_date('27-01-2016 09:48:03', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS02.00.001', '�ţ������ﲡ���Ӽ� ', 'M��J��ZBLZJ ', 'U��Q��YUDBW', 0, '001001', to_date('27-01-2016 08:57:19', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS02.00.002', '�������۲����Ӽ�', 'JZLGBLZJ', 'QYQCUDBW', 2, '001001', to_date('27-01-2016 09:11:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS03.00.002', '��ҩ�����Ӽ�', 'ZYCFZJ', 'KATYBW', 0, '001001', to_date('27-01-2016 09:54:14', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS11.00.001', 'סԺҽ���Ӽ�', 'ZYYZZJ', 'WBAKBW', 0, '001001', to_date('27-01-2016 14:50:13', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS12.00.001', '��ԺС���Ӽ�', 'CYXJZJ', 'BBIXBW', 0, '001001', to_date('27-01-2016 15:00:12', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS08.01.001', '������ҳ���ݼ�', 'BASYSJJ', null, 3, '001001', to_date('07-11-2015 15:53:01', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-11-2015 11:17:58', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS13.00.001', 'ת��(Ժ)��¼�Ӽ�', 'ZZ(Y)JLZJ', 'LY(B)YVBW', 0, '001001', to_date('27-01-2016 15:18:07', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS14.00.001', 'ҽ�ƻ�����Ϣ�Ӽ�', 'YLJGXXZJ', 'AUSSWTBW', 0, '001001', to_date('27-01-2016 15:27:34', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.015', '��Ժ������¼�Ӽ�', 'RYPGJLZJ', 'TBYWYVBW', 0, '001001', to_date('27-01-2016 15:42:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.016', '����ƻ���¼�Ӽ�', 'HLJHJLZJ', 'RGYAYVBW', 0, '001001', to_date('27-01-2016 16:05:19', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.017', '��Ժ������ָ����¼�Ӽ�', 'CYPGYZDJLZJ', 'BBYWGRNYVBW', 0, '001001', to_date('27-01-2016 16:13:38', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.01.008', '��ֵ�Ĳ�ʹ�ü�¼�Ӽ�', 'GZHCSYJLZJ', 'YWDSWEYVBW', 0, '001001', to_date('27-01-2016 16:22:36', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.01.007', '��������¼�Ӽ�', 'CRLJLZJ', 'BTJYVBW', 0, '001001', to_date('27-01-2016 16:31:16', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS08.01.003', 'Ӥ��������Ϣ���ݼ�', 'YEJBXXSJJ', 'MQASWTORW', 3, '001001', to_date('12-03-2016 13:04:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS91.00.01', '�������뵥', 'SSSQD', 'RSJYU', 1, '001001', to_date('25-05-2016 09:16:40', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS40.00.001', '�ʿ��¼����ݼ�', 'ZKSJSJJ', 'RRGWORW', 0, '001001', to_date('28-04-2016 22:33:12', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.020', 'ICU�����¼�Ӽ�', 'ICUHLJLZJ', 'ICURGYVBW', 5, '001001', to_date('22-06-2016 09:28:34', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.021', 'Ѫ�Ǽ���¼�Ӽ�', 'XTJCJLZJ', 'TOJIYVBW', 1, '001001', to_date('27-06-2016 17:30:58', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSRC01.00.001', '��Ⱦ�����濨', 'CRBBGK', 'WIURTH', 5, '001001', to_date('07-12-2016 20:35:36', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
commit;
prompt 93 records loaded
prompt Enabling triggers for DATA_SET_...
alter table DATA_SET_ enable all triggers;
set feedback on
set define on
prompt Done.
