prompt PL/SQL Developer import file
prompt Created on 2017年2月24日 by Administrator
set feedback off
set define off
prompt Disabling triggers for DATA_SET_...
alter table DATA_SET_ disable all triggers;
prompt Loading DATA_SET_...
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS00.00.001', '通用数据集', 'TYSJJ', null, 8, '001001', to_date('03-12-2015 11:04:43', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS07.00.003', '特殊检查及特殊治疗同意书子集', 'TSJCJTSZLTYSZJ', 'TGSSETGIUMUNBW', 0, '001001', to_date('26-01-2016 16:51:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS07.00.005', '其他知情同意书子集', 'QTZQTYSZJ', 'AWTNMUNBW', 0, '001001', to_date('26-01-2016 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS09.00.004', '24H内入出院死亡记录子集', '24HNRCYSWJLZJ', '24HMTBBGYYVBW', 0, '001001', to_date('27-01-2016 10:03:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS10.00.001', '首次病程记录子集', 'SCBCJLZJ', 'UUUTYVBW', 1, '001001', to_date('27-01-2016 10:36:05', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS10.00.002', '日常病程记录子集', 'RCBCJLZJ', 'JIUTYVBW', 0, '001001', to_date('27-01-2016 10:43:15', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS10.00.003', '上级医师查房记录子集', 'SJYSCFJLZJ', 'HXAJSYYVBW', 0, '001001', to_date('27-01-2016 10:48:41', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS10.00.004', '疑难病例讨论子集', 'YNBLTLZJ', 'XCUWYYBW', 0, '001001', to_date('27-01-2016 10:55:06', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS10.00.005', '交接班记录子集', 'JJBJLZJ', 'URGYVBW', 0, '001001', to_date('27-01-2016 11:01:30', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS10.00.006', '转科记录子集', 'ZKJLZJ', 'LTYVBW', 0, '001001', to_date('27-01-2016 11:10:42', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS10.00.007', '阶段小结子集', 'JDXJZJ', 'BWIXBW', 0, '001001', to_date('27-01-2016 11:19:03', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS10.00.008', '抢救记录子集', 'QJJLZJ', 'RFYVBW', 0, '001001', to_date('27-01-2016 11:28:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS10.00.009', '会诊记录子集', 'HZJLZJ', 'WYYVBW', 1, '001001', to_date('27-01-2016 11:38:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS10.00.010', '术前小结子集', 'SQXJZJ', 'SUIXBW', 0, '001001', to_date('27-01-2016 11:46:45', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.001', '格拉斯哥昏迷量表', 'GLSGHMLB', 'SRASQOJG', 0, '001001', to_date('20-01-2016 14:40:10', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-01-2016 15:56:54', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.01.002', '护理记录单数据集', 'HLJLDSJJ', null, 41, '001001', to_date('02-11-2015 22:03:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.002', '日常生活活动能力量表', 'RCSHHDNLLB', 'JITIIFCLJG', 0, '001001', to_date('22-01-2016 16:03:24', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.004', '斯堪的那维亚卒中量表', 'SKDNWYZZLB', 'AFRVXGYKJG', 0, '001001', to_date('22-01-2016 16:03:39', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.005', '改良RANKIN量表', 'GLRANKINLB', 'NYRANKINJG', 0, '001001', to_date('22-01-2016 16:03:57', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.006', 'GLASGOW 评分结果', 'GLASGOW PFJG', 'GLASGOW YWXJ', 0, '001001', to_date('22-01-2016 16:04:15', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.007', 'HAMILTON 抑郁量表', 'HAMILTON YYLB', 'HAMILTON RDJG', 0, '001001', to_date('22-01-2016 16:04:25', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.008', '抑郁自评量表', 'YYZPLB', 'RDTYJG', 0, '001001', to_date('22-01-2016 16:04:36', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.009', 'HAMLTON 焦虑量表', 'HAMLTON JLLB', 'HAMLTON WHJG', 0, '001001', to_date('22-01-2016 16:04:44', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.010', '焦虑自评量表( SAS)', 'JLZPLB( SAS)', 'WHTYJG( SAS)', 0, '001001', to_date('22-01-2016 16:04:55', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.011', '精神状态简易速检表（MMSE）', 'JSZTJYSJB（MMSE）', 'OPUDTJGSG（MMSE）', 0, '001001', to_date('22-01-2016 16:05:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.012', '蛛网膜下腔出血的HUNT-HE', 'ZWMXQCXDHUNT-HE', 'JMEGEBTRHUNT-HE', 0, '001001', to_date('22-01-2016 16:05:22', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.013', 'SPETZLER-MARTIN AVM 级别评估', 'SPETZLER-MARTIN AVM JBPG', 'SPETZLER-MARTIN AVM XKYW', 0, '001001', to_date('22-01-2016 16:06:46', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.014', '痔疮危险度评分（NORTON）', 'ZCWXDPF（NORTON）', 'UUQBYYW（NORTON）', 1, '001001', to_date('22-01-2016 16:07:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS07.00.001', '手术同意书数据集', 'SSTYSSJJ', 'RSMUNORW', 0, '001001', to_date('26-01-2016 14:50:44', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS07.00.002', '输血治疗同意书子集', 'SXZLTYSZJ', 'LTIUMUNBW', 0, '001001', to_date('26-01-2016 16:44:59', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS07.00.004', '病危(重)通知书子集', 'BW(Z)TZSZJ', 'UQ(T)CTNBW', 0, '001001', to_date('26-01-2016 16:57:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS08.01.002', '住院病案首页子集', 'ZYBASYZJ', 'WBUPUDBW', 0, '001001', to_date('26-01-2016 17:25:07', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS05.01.001', '治疗记录子集', 'ZLJLZJ', 'IUYVBW', 0, '001001', to_date('27-01-2016 11:00:02', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS05.01.002', '一般手术记录子集', 'YBSSJLZJ', 'GTRSYVBW', 0, '001001', to_date('27-01-2016 11:10:36', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS05.01.003', '麻醉术前访视记录子集', 'MZSQFSJLZJ', 'YSSUYPYVBW', 0, '001001', to_date('27-01-2016 11:21:46', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS05.01.004', '麻醉记录子集', 'MZJLZJ', 'YSYVBW', 0, '001001', to_date('27-01-2016 11:34:28', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS10.00.011', '术前讨论子集', 'SQTLZJ', 'SUYYBW', 0, '001001', to_date('27-01-2016 12:02:22', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS05.01.005', '麻醉术后访视记录子集', 'MZSHFSJLZJ', 'YSSRYPYVBW', 0, '001001', to_date('27-01-2016 13:52:40', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS05.01.006', '输血记录子集', 'SXJLZJ', 'LTYVBW', 0, '001001', to_date('27-01-2016 14:02:03', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.01.003', '一般护理记录子集', 'YBHLJLZJ', 'GTRGYVBW', 0, '001001', to_date('27-01-2016 15:56:44', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS09.00.003', '24H内入出院记录子集', '24HNRCYJLZJ', '24HMTBBYVBW', 0, '001001', to_date('27-01-2016 09:50:40', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS08.02.001', '中医住院病案首页子集', 'ZYZYBASYZJ', 'KAWBUPUDBW', 0, '001001', to_date('27-01-2016 08:54:34', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS00.00.007', '检查记录子集', 'JCJLZJ', 'SSYVBW', 0, '001001', to_date('27-01-2016 10:17:35', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS00.00.008', '检验记录子集', 'JYJLZJ', 'SCYVBW', 0, '001001', to_date('27-01-2016 10:34:25', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS10.00.012', '术后首次病程记录子集', 'SHSCBCJLZJ', 'SRUUUTYVBW', 0, '001001', to_date('27-01-2016 13:54:17', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS10.00.013', '出院记录子集', 'CYJLZJ', 'BBYVBW', 0, '001001', to_date('27-01-2016 14:05:14', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS10.00.014', '死亡记录子集', 'SWJLZJ', 'GYYVBW', 0, '001001', to_date('27-01-2016 14:13:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS10.00.015', '死亡病例讨论记录子集', 'SWBLTLJLZJ', 'GYUWYYYVBW', 0, '001001', to_date('27-01-2016 14:20:35', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS05.02.001', '待产记录子集', 'DCJLZJ', 'TUYVBW', 0, '001001', to_date('27-01-2016 14:43:43', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS05.02.002', '阴道分娩记录子集', 'YDFMJLZJ', 'BUWVYVBW', 0, '001001', to_date('27-01-2016 14:59:05', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS05.02.003', '剖宫产手术记录子集', 'PGCSSJLZJ', 'UPURSYVBW', 0, '001001', to_date('27-01-2016 15:24:23', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.01.004', '病危（重）护理记录子集', 'BW（Z）HLJLZJ', 'UQ（T）RGYVBW', 3, '001001', to_date('27-01-2016 16:10:36', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.01.005', '手术护理记录子集', 'SSHLJLZJ', 'RSRGYVBW', 0, '001001', to_date('27-01-2016 16:22:03', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSOIS04.03', '三方核对和风险评估数据集', 'SFHDHFXPGSJJ', 'DYSCTW', 7, 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'Insert', 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSOIS03.01', '手术护理记录数据集', 'SSHLJLSJJ', 'RSRGYV', 5, 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'Insert', 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSOIS03.03', '麻醉恢复室护理记录数据集', 'MZHFSHLJLSJJ', 'OSNTPR', 2, 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'Insert', 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSOIS01.01', '访视数据集', 'FSSJJ', 'YPORW', 4, 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'Insert', 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSOIS02.01', '麻醉总结数据集', 'MZZJSJJ', 'OSUXOR', 8, 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'Insert', 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS00.00.002', '患者基本信息子集', 'HZJBXXZJ', 'KFASWTBW', 1, '001001', to_date('26-01-2016 17:28:12', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS09.00.001', '入院记录子集', 'RYJLZJ', 'TBYVBW', 7, '001001', to_date('26-01-2016 09:51:56', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HRB01.01', '出生医学证明基本数据集', 'CSYXZMJBSJJ', 'BTAIYJ', 1, 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'Insert', 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HRB01.02', '新生儿疾病筛查基本数据集', 'XSEJBSCJBSJJ', 'UTQUUT', 1, 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'Insert', 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HRB01.03', '儿童健康体检基本数据集', 'ETJKTJJBSJJ', 'QUWOWS', 1, 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'Insert', 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HRB01.04', '体弱儿童管理基本数据集', 'TRETGLJBSJJ', 'WXQUTG', 1, 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'Insert', 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HRB02.01', '婚前保健服务基本数据集', 'HQBJFWJBSJJ', 'VUWWET', 1, 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'Insert', 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HRA00.01', '个人信息基本数据集', 'GRXXJBSJJ', 'WWWTDS', 1, 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'Insert', 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HRB03.09', '伤害监测报告基本数据集', 'SHJCBGJBSJJ', 'WPAIRT', 5, 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'Insert', 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS00.00.004', '基本健康信息子集', 'JBJKXXZJ', 'ASWYWTBW', 0, '001001', to_date('26-01-2016 17:37:28', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS00.00.005', '卫生事件摘要子集', 'WSSJZYZJ', 'BTGWRSBW', 1, '001001', to_date('26-01-2016 17:43:49', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS00.00.006', '医疗费用记录子集', 'YLFYJLZJ', 'AUXEYVBW', 1, '001001', to_date('26-01-2016 17:50:48', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.01.006', ' 生命体征测量记录子集', ' SMTZCLJLZJ', 'TWWTIJYVBW', 5, '001001', to_date('27-01-2016 16:36:48', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS09.00.002', '入院记录诊断信息', 'RYJLZDXX', 'TBYVYOWT', 0, '001001', to_date('26-01-2016 10:27:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS00.00.003', '麻醉知情同意书子集', 'MZZQTYSZJ', 'YSTNMUNBW', 0, '001001', to_date('26-01-2016 15:52:38', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('26-01-2016 15:58:04', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS03.00.001', '西药处方子集', 'XYCFZJ', 'SATYBW', 0, '001001', to_date('27-01-2016 09:48:03', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS02.00.001', '门（急）诊病历子集 ', 'M（J）ZBLZJ ', 'U（Q）YUDBW', 0, '001001', to_date('27-01-2016 08:57:19', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS02.00.002', '急诊留观病历子集', 'JZLGBLZJ', 'QYQCUDBW', 2, '001001', to_date('27-01-2016 09:11:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS03.00.002', '中药处方子集', 'ZYCFZJ', 'KATYBW', 0, '001001', to_date('27-01-2016 09:54:14', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS11.00.001', '住院医嘱子集', 'ZYYZZJ', 'WBAKBW', 0, '001001', to_date('27-01-2016 14:50:13', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS12.00.001', '出院小结子集', 'CYXJZJ', 'BBIXBW', 0, '001001', to_date('27-01-2016 15:00:12', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS08.01.001', '病案首页数据集', 'BASYSJJ', null, 3, '001001', to_date('07-11-2015 15:53:01', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-11-2015 11:17:58', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS13.00.001', '转诊(院)记录子集', 'ZZ(Y)JLZJ', 'LY(B)YVBW', 0, '001001', to_date('27-01-2016 15:18:07', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS14.00.001', '医疗机构信息子集', 'YLJGXXZJ', 'AUSSWTBW', 0, '001001', to_date('27-01-2016 15:27:34', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.015', '入院评估记录子集', 'RYPGJLZJ', 'TBYWYVBW', 0, '001001', to_date('27-01-2016 15:42:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.016', '护理计划记录子集', 'HLJHJLZJ', 'RGYAYVBW', 0, '001001', to_date('27-01-2016 16:05:19', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.017', '出院评估与指导记录子集', 'CYPGYZDJLZJ', 'BBYWGRNYVBW', 0, '001001', to_date('27-01-2016 16:13:38', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.01.008', '高值耗材使用记录子集', 'GZHCSYJLZJ', 'YWDSWEYVBW', 0, '001001', to_date('27-01-2016 16:22:36', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.01.007', '出入量记录子集', 'CRLJLZJ', 'BTJYVBW', 0, '001001', to_date('27-01-2016 16:31:16', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS08.01.003', '婴儿基本信息数据集', 'YEJBXXSJJ', 'MQASWTORW', 3, '001001', to_date('12-03-2016 13:04:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS91.00.01', '手术申请单', 'SSSQD', 'RSJYU', 1, '001001', to_date('25-05-2016 09:16:40', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS40.00.001', '质控事件数据集', 'ZKSJSJJ', 'RRGWORW', 0, '001001', to_date('28-04-2016 22:33:12', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.020', 'ICU护理记录子集', 'ICUHLJLZJ', 'ICURGYVBW', 5, '001001', to_date('22-06-2016 09:28:34', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSDS06.02.021', '血糖监测记录子集', 'XTJCJLZJ', 'TOJIYVBW', 1, '001001', to_date('27-06-2016 17:30:58', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
insert into DATA_SET_ (id, name, pym, wbm, version, input_worker_id, input_date, update_worker_id, update_date, remark, status)
values ('HSRC01.00.001', '传染病报告卡', 'CRBBGK', 'WIURTH', 5, '001001', to_date('07-12-2016 20:35:36', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1);
commit;
prompt 93 records loaded
prompt Enabling triggers for DATA_SET_...
alter table DATA_SET_ enable all triggers;
set feedback on
set define on
prompt Done.
