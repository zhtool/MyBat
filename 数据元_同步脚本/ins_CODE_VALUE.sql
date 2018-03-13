prompt PL/SQL Developer import file
prompt Created on 2017年2月24日 by Administrator
set feedback off
set define off
prompt Disabling triggers for CODE_VALUE_...
alter table CODE_VALUE_ disable all triggers;
prompt Loading CODE_VALUE_...
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.16', '肿瘤分期', 'ZLFQ', 'EUWD', 1, 14, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('16-10-2015 11:32:27', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.17', '肿瘤症状', 'ZLZZ', 'EUUU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.18', '家族史', 'JZS', 'PYK', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.19', '腹壁静脉曲张123', 'FBJMQZ123', null, 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('19-10-2015 11:11:05', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.20', '皮下捻发感', 'PXNFG', 'BGRND', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.21', '肺叩诊音000', 'FKZY000', null, 1, 5, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('23-10-2015 11:36:10', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.22', 'ECOG', 'ECOG', null, 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.23', '疼痛等级01', 'TTDJ01', null, 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('15-10-2015 21:51:51', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.24', '侵及淋巴结深度', 'QJLBJS', 'WBICXI', 1, 4, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.25', '淋巴瘤合并症', 'LBLHBZ', 'ICUWUU', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.26', '预后霍奇金淋巴瘤EORTC年龄11', 'YHHQJLBLEORTCNL11', null, 1, 5, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('26-10-2015 10:25:57', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.27', '预后ESR和B症状0', 'YHESRHBZZ0', null, 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-10-2015 21:18:56', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.28', '预后纵隔胸腔比', 'YHZGXQ', 'CRXBEE', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.29', '预后性别', 'YHXB', 'CRNK', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.30', '预后A蛋白', 'YHADB', 'CRNR', 1, 4, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.33', '淋巴结数目', 'LBJSM', null, 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-10-2015 10:56:42', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.34', '预后霍奇金淋巴瘤IPS年龄', 'YHHQJL', 'CRFDQI', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.35', '预后霍奇', 'YHHQ', null, 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-10-2015 10:57:15', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.36', '预后ESR和B症状得分', 'YHESRH', 'CRTUUT', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.37', '预后纵隔胸腔比得分', 'YHZGXQ', 'CRXBEE', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.38', '淋巴结数目得分', 'LBJSMD', 'ICXOHT', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.39', '预后EORTC性别得分', 'YHEORT', 'CRNKTW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.40', '预后霍奇金淋巴瘤IPS年龄得分', 'YHHQJL', 'CRFDQI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.41', '预后IPS性别得分', 'YHIPSX', 'CRNKTW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.42', '预后IV期得分', 'YHIVQD', 'CRDTW', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.43', '预后A蛋白得分', 'YHADBD', 'CRNRTW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.44', '预后血红蛋白得分', 'YHXHDB', 'CRTXNR', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.45', '预后WBC得分', 'YHWBCD', 'CRTW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.46', '预后lymphocyq得分', 'YHLYMP', 'CRTW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.47', '麻醉方式', 'MZFS', 'OSYA', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.48', '手术名称', 'SSMC', 'RSQT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.49', '重建方式', 'ZJFS', 'TVYA', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.50', '术后并发症', 'SHBFZ', 'SRUNU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.51', '愈合等级', 'YHDJ', 'WWTX', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.52', '病理类型', 'BLLX', 'UGOG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.53', '侵犯深度', 'QFSD', 'WQIO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.54', '脉管癌栓', 'MGAS', 'ETUS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.55', '切缘', 'QY', 'AX', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.56', 'P53', 'P53', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.57', 'P27', 'P27', 'P271', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('26-01-2016 13:44:24', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.58', 'Topo II', 'TOPO I', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.59', 'P170', 'P170', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.60', 'CD44', 'CD44', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.61', 'c-met', 'C-MET', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.62', 'MMP7', 'MMP7', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.63', 'Ki67', 'KI67', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.64', '首发症状', 'SFZZ', 'UNUU', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.65', '基础疾病', 'JCJB', 'DDUU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.66', '恶性肿瘤家族史', 'EXZLJZ', 'GNEUPY', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.67', '是否原发灶手术', 'SFYFZS', 'JDDNOR', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.68', '是否为根治术', 'SFWGZS', 'JDOSIS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.69', '检查手段', 'JCSD', 'SSRT', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.70', '术前是否有新辅助放/化疗', 'SQSFYX', 'SUJDDU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.77', 'Lauren分型', 'LAUREN', 'WG', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.72', '原发灶切除式', 'YFZQCS', 'DNOABA', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.71', '原发灶手术性质', 'YFZSSX', 'DNORSN', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.76', '手术病理类型', 'SSBLLX', 'RSUGOG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.75', '原发灶部位', 'YFZBW', 'DNOUW', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.78', '浸润深度', 'JRSD', 'IIIO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.80', '淋巴结清扫部位', 'LBJQSB', 'ICXIRU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.81', 'cTNM临床诊断分期cT', 'CTNMLC', 'JOYOWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.82', 'cTNM临床诊断分期cN', 'CTNMLC', 'JOYOWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.83', 'cTNM临床诊断分期cM', 'CTNMLC', 'JOYOWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.84', 'cTNM临床诊断分期临床分期', 'CTNMLC', 'JOYOWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.85', '(y)pTNM术后病理分期前缀', '(Y)PTN', 'SRUGWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.86', '(y)pTNM术后病理分期pT', '(Y)PTN', 'SRUGWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.87', '复发转移部位', 'FFZYBW', 'TNLTUW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.88', '(y)pTNM术后病理分期(y)pN', '(Y)PTN', 'SRUGWD', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.89', '(y)pTNM术后病理分期(y)pM', '(Y)PTN', 'SRUGWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.90', '(y)pTNM术后病理分期病理分期', '(Y)PTN', 'SRUGWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.91', '原发灶分子标志Her-2', 'YFZFZB', 'DNOWBS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.92', '原发灶分子标志Hp', 'YFZFZB', 'DNOWBS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.93', '原发灶分子标志KPAS', 'YFZFZB', 'DNOWBS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.94', '原发灶分子标志BRAF', 'YFZFZB', 'DNOWBS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.95', '原发灶分子标志EGFR', 'YFZFZB', 'DNOWBS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.96', '原发灶分子标志ERCC1', 'YFZFZB', 'DNOWBS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.73', '活检病理-活检方法', 'HJBL-H', 'ISUGIS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.74', '活检病灶部位', 'HJBZBW', 'ISUOUW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.97', '活检病理-活检病理类型', 'HJBL-H', 'ISUGIS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.09', '病灶变化', 'BZBH', 'UOYW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.99', '化疗减量', 'HLJL', 'WUUJ', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.03', '新辅助化疗-新辅化后手术', 'XFZHL-', 'ULEWUU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.01', '化疗减量原因', 'HLJLYY', 'WUUJDL', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.02', '化疗评效', 'HLPX', 'WUYU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.05', '化疗开始医院', 'HLKSYY', 'WUGVAB', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.08', '化疗药物', 'HLYW', 'WUAC', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.07', '其它合并诊断', 'QTHBZD', 'DPWUYO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.10', '有无新病灶', 'YWXBZ', 'DFUUO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.12', '甲状腺肿瘤原发部位', 'JZXZLY', 'LUEEUD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.13', '气管位置', 'QGWZ', 'RTWL', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.14', '肿物性质个数', 'ZWXZGS', 'ECNRWO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.15', '肿物性质边界', 'ZWXZBJ', 'ECNREL', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.16', '肿物性质表面', 'ZWXZBM', 'ECNRGD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.17', '肿物性质质地', 'ZWXZZD', 'ECNRRF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.18', '肿物性质活动度', 'ZWXZHD', 'ECNRIF', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV5101.03', '患者过敏源', 'GBY', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0107.07', '工作和活动', 'GZHHD', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0101.03', '非偏瘫侧运动反应', 'FPTBYD', null, 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0107.09', '激越', 'JY', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0101.01', '睁眼反应', 'ZYFY', null, 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
commit;
prompt 100 records committed...
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0101.02', '言语反应', 'YYFY', null, 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0102.01', '吃饭', 'CF', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0107.04', '失眠(早期)', 'SM(ZQ)', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0107.10', '精神性焦虑', 'JSXJL', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0111.01', '精神状态简易速检表（MMSE） 评分', 'JSZTJY', null, 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0107.08', '阻滞(指思维和言语缓慢；注意力难以集中，主动性减退)', 'ZZ(ZSW', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0112.01', '蛛网膜下腔出血的Hunt-Hess 评分', 'ZWMXQC', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0113.01', '体积', 'TJ', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.00', '心血管病史值域', 'XXGBSZ', 'NTTUKW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.01', '内分泌病史值域', 'NFMBSZ', 'MWIUKW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.04', '营养状况值域', 'YYZKZY', 'AUUUWF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.02', '肿瘤病史值域', 'ZLBSZY', 'EUUKWF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.03', '发育状况值域', 'FYZKZY', 'NYUUWF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.05', '面容状况值域', 'MRZKZY', 'DPUUWF', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.06', '表情', 'BQ', 'GN', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.07', '体位', 'TL', 'WW', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('12-09-2016 16:31:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.08', '步态', 'BT', 'HD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.13', '色泽描述值域', 'SZMSZY', 'QIRSWF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.10', '配合检查值域', 'PHJCZY', 'SWSSWF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.11', '体型', 'TX', 'WG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.12', '入室情况值域', 'RSQKZY', 'TPNUWF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.09', '神志', 'SZ', 'PF', 1, 4, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.14', '温度描述值域', 'WDMSZY', 'IORSWF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.15', '弹性描述值域', 'DXMSZY', 'XNRSWF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.16', '湿度描述值域', 'SDMSZY', 'IORSWF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.17', '头颅畸形描述', 'TLJXMS', 'UHLGRS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.18', '囟门描述', 'XMMS', 'TURS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.19', '异常面容', 'YCMR', 'NIDP', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.20', '眼睑描述', 'YJMS', 'HHRS', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.21', '巩膜', 'GM', 'AE', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.22', '瞳孔', 'TK', 'HB', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.24', '听力粗试障碍描述', 'TLCSZA', 'KEOYBD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.23', '瞳孔对光反射', 'TKDGFS', 'HBCIRT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.25', '唇描述', 'CMS', 'DRS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.27', '颈动脉描述', 'JDMMS', 'CFERS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.28', '颈静脉描述', 'JJMMS', 'CGERS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.26', '颈部抵抗感描述', 'JBDKGM', 'CURRDR', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.29', '气管描述', 'QGMS', 'RTRS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.30', '阴性，阳性', 'YX，YX', 'BNBN', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.32', '结膜描述', 'JMMS', 'XERS', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.31', '心前区隆起程度', 'XQQLQC', 'NUABFT', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.33', '心尖搏动感觉', 'XJBDGJ', 'NIRFDI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.34', '心律描述', 'XLMS', 'NTRS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.35', '胸部检查部位', 'XBJCBW', 'EUSSUW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.38', '胸廓描述', 'XKMS', 'EORS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.37', '肺下界-位置', 'FXJ-WZ', 'EGLWL', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.36', '呼吸规整', 'HXGZ', 'KKGG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.39', '叩击痛程度', 'KJTCD', 'KGUTO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.43', '呼吸节律', 'HXJL', 'KKAT', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.41', '输尿管压痛点', 'SNGYTD', 'LNTDUH', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.42', '肝浊音界', 'GZYJ', 'EIUL', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.40', '腹部触诊', 'FBCZ', 'EUQY', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.44', '无,有项', 'W,YX', 'FDA', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.45', '肾区叩痛', 'SQKT', 'JAKU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.46', '腹部外形', 'FBWX', 'EUQG', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.47', '脊柱', 'JZ', 'IS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.54', '反射程度', 'FSCD', 'RTTO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.49', '杵状指趾', 'CZZZ', 'SURK', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.50', '腹式呼吸', 'FSHX', 'EAKK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.51', '脐', 'Q', 'E', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.52', '肠鸣音', 'CMY', 'EKU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.53', '上下左右', 'SXZY', 'HGDD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.55', '肢体活动度', 'ZTHDD', 'EWIFO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.56', '皮肤黏膜', 'PFNM', 'BETE', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.57', '鼻子', 'BZ', 'TB', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.58', '鼻翼', 'BY', 'TN', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.59', '鼻旁窦', 'BPD', 'TYP', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.60', '耳廓', 'EK', 'BO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ3001.01', '医师职称', 'YSZC', 'AJBT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.62', '乳突', 'RT', 'EP', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.64', '口腔黏膜', 'KQNM', 'KETE', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.63', '听力', 'TL', 'KE', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.65', '齿龈', 'CY', 'HH', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.66', '齿列', 'CL', 'HG', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.67', '扁桃体', 'BTT', 'YSW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.68', '咽', 'Y', 'K', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.69', '声音', 'SY', 'FU', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.70', '舌', 'S', 'T', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.71', '甲状腺', 'JZX', 'LUE', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.72', '震颤', 'ZC', 'FY', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.73', '心律', 'XL', 'NT', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.74', '额外心音', 'EWXY', 'PQNU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.75', '语颤', 'YC', 'YY', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.76', '胸膜摩擦感', 'XMMBG', 'EEORD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.77', '呼吸音', 'HXY', 'KKU', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.78', '干湿啰音', 'GS啰Y', 'FIKU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.79', '乳房', 'RF', 'EY', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.80', '周围血管', 'ZWXG', 'MLTT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.81', '胃肠蠕动', 'WCRD', 'LEJF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.82', '腹部包块', 'FBBK', 'EUQF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.83', '肝脾', 'GP', 'EE', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.84', 'Murphys征', 'MURPHY', 'T', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.85', '肾', 'S', 'J', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.86', '肾区叩痛', 'SQKT', 'JAKU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.87', '生理反射', 'SLFS', 'TGRT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.88', '病理反射', 'BLFS', 'UGRT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.89', '传染病史', 'CRBS', 'WIUK', 1, 6, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.90', '心血管病史', 'XXGBS', 'NTTUK', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.30.002', '常用放射诊断检查技术编码表', 'CYFSZD', 'IEYTYO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV08.10.001', '卫生监督机构性质代码', 'WSJDJG', 'BTAHSS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
commit;
prompt 200 records committed...
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV03.00.204', '农药名称代码', 'NYMCDM', 'PAQTWD', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV03.00.301', '环境危险因素暴露类别代码', 'HJWXYS', 'GFQBLG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV03.00.302', '厨房排风设施类别代码表', 'CFPFSS', 'DYRWYY', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV03.00.303', '燃料类型类别代码', 'RLLXLB', 'OOOGOK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV03.00.304', '厕所类别代码', 'BSLBDM', 'DROKWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV03.00.401', '孕早期服药类别代码', 'YZQFYL', 'BJDEAO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV03.00.402', '孕产期高危因素代码', 'YCQGWY', 'BUDYQL', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.50.001', 'HBV血清学标志阳性项目代码', 'HBVXQX', 'TIISFB', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV03.00.403', '接触有害因素类别代码', 'JCYHYS', 'RQDPLG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.50.002', 'HBV基因分型代码', 'HBVJYF', 'DLWGWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.50.003', 'HBV血清型代码', 'HBVXQX', 'TIGWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.10.001', '门诊治疗情况代码', 'MZZLQK', 'UYIUNU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.10.002', '家族疾病史代码', 'JZJBSD', 'PYUUKW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.10.003', '免疫接种代码', 'MYJZDM', 'QURTWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ09.00.002', '办学性质代码', 'BXXZDM', 'EINRWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ09.00.005', '处罚程序类别代码', 'CFCXLB', 'QLTOOK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ09.00.016', '公共场所监测类别代码', 'GGCSJB', 'WAFRAI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ09.00.025', '监督检查结果代码', 'JDJCJG', 'AHSSXJ', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ09.00.032', '建设项目卫生审查情况代码', 'JSXMWS', 'VYAHBT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ09.00.035', '竣工验收情况代码', 'JGYSQK', 'UACNNU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ09.00.046', '生产经营状况代码', 'SCJYZK', 'TUXAUU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ09.00.085', '执行结果代码', 'ZHJGDM', 'RTXJWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.10.004', '性病代码', 'XBDM', 'NUWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.10.005', '住院情况代码', 'ZYQKDM', 'WBNUWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.10.006', '产妇结局代码', 'CFJJDM', 'UVXNWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.214', '行政复议倩况代码', 'HZFYQK', 'TGTYWU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ03.00.001', '关锁情况代码', 'GSQKDM', 'UQNUWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ09.00.084', '执行方式代码', 'ZHFSDM', 'RTYAWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ03.00.002', '接触二手烟代码', 'JCESYD', 'RQFROW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ03.00.003', '劳作情况代码', 'LZQKDM', 'IWNUWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ03.00.004', '每月食用食物的频率类别代码', 'MYSYSW', 'TEWEWC', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ03.00.005', '每周食用食物的频率类别代码', 'MZSYSW', 'TMWEWC', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ03.00.006', '目标摄盐量分级代码', 'MBSYLF', 'HSRFJW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.220', '护理等级代码', 'HLDJDM', 'RGTXWD', 1, 0, '001001', to_date('27-01-2016 17:30:10', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 14:24:01', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.002', '表底注释值域', null, null, 1, 2, '001001', to_date('14-01-2016 18:12:39', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('15-01-2016 08:58:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.001', '表顶注释值域', null, null, 1, 6, '001001', to_date('01-12-2015 21:36:09', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('15-01-2016 08:58:42', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.221', '护理类型代码', 'HLLXDM', 'RGOGWD', 1, 0, '001001', to_date('27-01-2016 17:32:49', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 16:19:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.222', ' 隔离种类代码', 'GLZLDM', 'BYTOWD', 1, 0, '001001', to_date('27-01-2016 17:35:06', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 18:12:57', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.224', '饮食指导代码', 'YSZDDM', 'QWRNWD', 1, 1, '001001', to_date('27-01-2016 17:38:22', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 17:12:49', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.226', '离院方式代码', 'LYFSDM', 'YBYAWD', 1, 0, '001001', to_date('28-01-2016 08:35:50', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 14:44:18', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.403', '入院途径代码', 'RYTJDM', 'TBWTWD', 1, 0, '001001', to_date('28-01-2016 08:54:18', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 14:35:50', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.10.019', ' 入院病情代码', 'RYBQDM', 'TBUNWD', 1, 0, '001001', to_date('28-01-2016 09:01:03', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 14:40:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.10.022', '手术切口类别代码', 'SSQKLBDM', 'RSAKOKWD', 1, 0, '001001', to_date('28-01-2016 09:06:08', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 14:42:30', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.10.023', '手术切口愈合等级代码', 'SSQKYHDJDM', 'RSAKWWTXWD', 1, 0, '001001', to_date('28-01-2016 09:10:25', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 17:22:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.225', '治疗类别代码', 'CLLBDM', 'IUOKWD', 1, 0, '001001', to_date('28-01-2016 09:16:41', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 14:38:39', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.008', '伤口敷料', 'SKFL', 'WKGO', 1, 2, '001001', to_date('29-02-2016 15:15:29', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('29-02-2016 15:20:14', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.003', '入量项目', 'RLXM', 'TJAH', 1, 1, '001001', to_date('26-01-2016 15:06:39', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('20-02-2016 11:23:06', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HIS.GENDER', '性别', 'XB', null, 1, 0, '001001', to_date('14-11-2015 16:58:51', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('16-11-2015 21:28:04', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('EMR001', '出量颜色', 'CLYS', null, 0, 2, '001001', to_date('19-10-2015 08:56:40', 'dd-mm-yyyy hh24:mi:ss'), null, null, 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.111', 'ASDAS', 'ASDAS', 'ASDAS', 0, 0, '001001', to_date('26-01-2016 10:30:19', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HY.0105GY', '肝炎', null, null, 1, 0, '001001', to_date('05-01-2016 16:42:18', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('05-01-2016 16:46:48', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.50.018', '血吸虫病抗体检测方法代码', 'XXCBKT', 'TKJURW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.50.019', '阴道分泌物检查结果代码', 'YDFMWJ', 'BUWICS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.01.003', '伤害发生原因代码', 'SHFSYY', 'WPNTDL', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.01.004', '伤害意图类别代码', 'SHYTLB', 'WPULOK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.01.005', '伤害发生地点代码', 'SHFSDD', 'WPNTFH', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.01.006', '伤害发生时活动类别代码', 'SHFSSH', 'WPNTJI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.113', '更换抗HBV药物方案原因代码', 'GHKHBV', 'GRRACY', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.10.018', '疑似食源性异常病例(健康事件)报告卡上报原因代码', 'YSSYXY', 'XWWINN', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.001', '住院者疾病状态代码', 'ZYZJBZ', 'WBFUUU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.002', '诊断状态代码', 'ZDZTDM', 'YOUDWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.003', '乳糜尿发作诱因代码', 'RMNFZY', 'EONNWY', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.004', '伤害性质代码', 'SHXZDM', 'WPNRWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.005', '中医体质分类代码', 'ZYTZFL', 'KAWRWO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.006', '孕产妇死亡死因分类代码', 'YCFSWS', 'BUVGYG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.007', '胎方位代码', 'TFWDM', 'EYWWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.008', '胎先露代码', 'TXLDM', 'ETFWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.009', '产时并发症代码', 'CSBFZD', 'UJUNUW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.010', '会阴裂伤情况代码', 'HYLSQK', 'WBGWNU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.011', '伤口愈合状况代码', 'SKYHZK', 'WKWWUU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.012', '新生儿黄疸程度代码', 'XSEHDC', 'UTQAUT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.013', '新生儿并发症代码', 'XSEBFZ', 'UTQUNU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.120', '美沙酮维持治疗终止原因代码', 'MSTWCZ', 'UISXRI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.014', '出生缺陷诊断依据代码', 'CSQXZD', 'BTRBYO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.015', '出生缺陷确诊时间类别代码', 'CSQXQZ', 'BTRBDY', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.016', '出生缺陷类别代码', 'CSQXLB', 'BTRBOK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.017', '传染病名称代码', 'CRBMCD', 'WIUQTW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.018', '结核病合并症代码', 'JHBHBZ', 'XSUWUU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.019', '肺外结核部位代码', 'FWJHBW', 'EQXSUW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.020', '诊断结核病类型代码', 'ZDJHBL', 'YOXSUO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.021', '肺结核诊断结果代码', 'FJHZDJ', 'EXSYOX', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.022', '血吸虫病合并症代码', 'XXCBHB', 'TKJUWU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.023', '血吸虫病感染方式代码', 'XXCBGR', 'TKJUDI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.024', '血吸虫病诊断状态代码', 'XXCBZD', 'TKJUYO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.025', '晚期血吸虫病病例类型代码', 'WQXXCB', 'JDTKJU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.026', '肿瘤临床分期代码', 'ZLLCFQ', 'EUJOWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.027', '肿瘤诊断依据代码', 'ZLZDYJ', 'EUYOWR', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.028', '病毒性肝炎类型代码', 'BDXGYL', 'UGNEOO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.029', '慢性HBV感染临床诊断分类代码', 'MXHBVG', 'NNDIJO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.030', '慢性乙型肝炎的临床分级代码', 'MXYXGY', 'NNNGEO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.031', '肝衰竭分类代码', 'GSJFLD', 'EYUWOW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.032', '预防接种后不良反应临床诊断代码', 'YFJZHB', 'CBRTRD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.033', '放射性疾病的分度代码', 'FSXJBD', 'YTNUUR', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.034', '放射性疾病的分期代码', 'FSXJBD', 'YTNUUR', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.035', '农药中毒原因类型代码', 'NYZDYY', 'PAKGDL', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.036', '重性精神疾病名称代码', 'ZXJSJB', 'TNOPUU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.037', '死亡最高诊断依据类别代码', 'SWZGZD', 'GYJYYO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.201', '血吸虫病治疗方案代码', 'XXCBZL', 'TKJUIU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.038', '过敏源代码', 'GMYDM', 'FTIWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.039', '5岁以下儿童死因分类代码', '5SYXET', 'MCGQUG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
commit;
prompt 300 records committed...
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.202', '慢性丝虫病患者治疗情况代码', 'MXSCBH', 'NNXJUK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.203', '肿瘤患者治疗方式代码', 'ZLHZZL', 'EUKFIU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.204', '戒烟方法类别代码', 'JYFFLB', 'AOYIOK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.205', '职业性放射性疾病处理情况代码', 'ZYXFSX', 'BONYTN', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.206', '肿瘤患者指导内容代码', 'ZLHZZD', 'EUKFRN', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.207', '随访方式代码', 'SFFSDM', 'BYYAWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.208', '随访周期建议代码', 'SFZQJY', 'BYMDVY', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.209', '精神康复措施代码', 'JSKFCS', 'OPOTRY', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.210', '婚检医学意见代码', 'HJYXYJ', 'VSAIUM', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.211', '避孕方式代码', 'BYFSDM', 'NBYAWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.212', '住院原因代码', 'ZYYYDM', 'WBDLWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.213', '育龄妇女预防母婴传播干预措施代码', 'YLFNYF', 'YHVVCB', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.215', '撤销随访管理原因代码', 'CXSFGL', 'RQBYTG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.216', '婴幼儿添加辅食种类代码', 'YYETJF', 'MXQIEL', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.217', '儿童健康指导类别代码', 'ETJKZD', 'QUWORN', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV02.01.101', '身份证件类别代码', 'SFZJLBDM', 'TWYWOKWD', 1, 6, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('26-01-2016 15:19:04', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV02.01.102', '出生(分娩)地点类别代码', 'CS(FM)', 'BTWVFH', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV02.01.103', '死亡地点类别代码', 'SWDDLB', 'GYFHOK', 1, 4, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV02.01.104', '传染病患者归属代码', 'CRBHZG', 'WIUKFJ', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV02.01.201', '血缘关系代码', 'XYGXDM', 'TXUTWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV02.01.202', '传染病患者职业代码', 'CRBHZZ', 'WIUKFB', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV02.01.203', '家庭年人均收入代码', 'RSSCOT', 'PORWFN', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV02.10.001', '家族近亲婚配者与本人关系代码', 'JZJQHP', 'PYRUVS', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV02.10.002', '妊娠终止方式代码', 'RSZZFS', 'VVXHYA', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV02.10.003', '分娩方式代码', 'FMFSDM', 'WVYAWD', 1, 0, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('26-01-2016 15:50:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV02.10.004', '出生缺陷儿结局代码', 'CSQXEJ', 'BTRBQX', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV02.10.005', '既往常见疾病种类代码', 'JWCJJB', 'VTIMUU', 1, 0, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV03.00.101', '吸烟状态代码', 'XYZTDM', 'KOUDWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV03.00.102', '被动吸烟场所类别代码', 'BDXYCS', 'PFKOFR', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV03.00.103', '吸食烟草种类代码', 'XSYBZL', 'KWOATO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV03.00.104', '饮酒频率代码', 'YJPLDM', 'QIHYWD', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV03.00.105', '饮酒种类代码', 'YJZLDM', 'QITOWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV03.00.106', '饮食种类代码', 'YSZLDM', 'QWTOWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV03.00.107', '饮食习惯代码', 'YSXGDM', 'QWNNWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV03.00.108', '饮食频率分类代码', 'YSPLFL', 'QWHYWO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV03.00.109', '每天食用的食物食用频率代码', 'MTSYDS', 'TGWERW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV03.00.110', '每年食用的食物食用频率代码', 'MNSYDS', 'TRWERW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV03.00.111', '身体活动频率代码', 'STHDPL', 'TWIFHY', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV03.00.112', '患重性精神疾病对家庭社会的影晌代码', 'HZXJSJ', 'KTNOPU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV08.50.001', '疫苗名称代码', 'YMMCDM', 'UAQTWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV03.00.113', '艾滋病接触史代码', 'AZBJCS', 'AIURQK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.50.004', '耐药突变检测阳性项目代码', 'NYTBJB', 'DAPYSI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.50.005', 'ABO血型代码', 'ABOXXD', 'TGWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.50.006', '采血方式代码', 'BXFSDM', 'ETYAWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV03.00.404', '艾滋宿忠者亲曰HⅣ 宓染状况代码', 'AZXZZQ', 'AIPKFU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.50.007', '采血部位代码', 'BXBWDM', 'ETUWWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.50.008', '新生儿疾病筛查项目代码', 'XSEJBS', 'UTQUUT', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.50.009', '新生儿疾病筛查方法代码', 'XSEJBS', 'UTQUUT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.50.010', '阴道分泌物清洁度代码', 'YDFMWQ', 'BUWICI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.03.001', '是否', 'SF', 'JD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.03.004', '麻醉医生陈述', 'MZYSCS', 'OSATBS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.03.005', '各种管路', 'GZGL', 'TTTK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ06.02.004', '疼痛评分范围', 'TTPFFW', 'UUYWAL', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.03.007', '手术护士陈述', 'SSHSCS', 'RSRFBS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.01.018', '气管插管', 'QGBG', 'RTRT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.01.019', '左右', 'ZY', 'DD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.01.021', '支气管内插管方式', 'ZQGNBG', 'FRTMRT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.01.001', '手术来源类别', 'SSLYLB', 'RSGIOK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ03.03.008', '肢体活动', 'ZTHD', 'EWIF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ01.01.001', '体型状况', 'TXZK', 'WGUU', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ03.03.009', '吸入气体', 'XRQT', 'KTRW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ03.01.006', '引流', 'YL', 'XI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.01.007', '切口感染情况', 'QKGRQK', 'AKDINU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.01.008', '手术持续时间', 'SSCXSJ', 'RSRXJU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.01.029', '穿刺点位置', 'CCDWZ', 'PGHWL', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.40', '触及附件肿物性质', 'CJFJZW', 'QBBWEC', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.41', '触及附件肿物活动度', 'CJFJZW', 'QBBWEC', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.42', '触及附件肿物有无压痛', 'CJFJZW', 'QBBWEC', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.43', '触及附件肿物光滑否', 'CJFJZW', 'QBBWEC', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.44', '触及附件肿物有无蒂', 'CJFJZW', 'QBBWEC', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.45', '触及附件肿物与子宫关系', 'CJFJZW', 'QBBWEC', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.46', '恶心分级', 'EXFJ', 'GNWX', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.50', '乳腺癌部位', 'RXABW', 'EEUUW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.47', '妇科手术名称', 'FKSSMC', 'VTRSQT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.48', '妇科手术内容', 'FKSSNR', 'VTRSMP', 0, null, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.49', '双膦酸盐治疗药物（乳内）', 'SLSYZL', 'CESFIU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.51', '化疗药物途径-妇科', 'HLYWTJ', 'WUACWT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.52', '麻醉方式-妇科', 'MZFS-F', 'OSYAVT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.53', '术后伤口检查-妇科', 'SHSKJC', 'SRWKSS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.54', '妇科化疗方案', 'FKHLFA', 'VTWUYP', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.55', '乳头后方组织', 'RTHFZZ', 'EURYXX', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.56', '切口类型', 'QKLX', 'AKOG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.57', '腹直肌前鞘', 'FZJQQ', 'EFEUA', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.58', '前锯肌筋膜', 'QJJJM', 'UQETE', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.59', '异常淋巴结浸润', 'YCLBJJ', 'NIICXI', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.60', '清扫范围', 'QSFW', 'IRAL', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.61', '保留', 'BL', 'WQ', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.62', '胸小肌', 'XXJ', 'EIE', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.63', '重要血管神经损伤', 'ZYXGSJ', 'TSTTPX', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.64', '异常淋巴结浸润器官', 'YCLBJJ', 'NIICXI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.65', '重要血管神经损伤器官', 'ZYXGSJ', 'TSTTPX', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.66', '重要血管神经损伤原因', 'ZYXGSJ', 'TSTTPX', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.67', '示踪剂', 'SZJ', 'FKY', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.68', '内乳前哨淋巴结', 'NRQSLB', 'MEUKIC', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.69', '腋窝前哨淋巴结', 'YWQSLB', 'EPUKIC', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.70', '引导方式', 'YDFS', 'XNYA', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.71', '数目及部位', 'SMJBW', 'OHBUW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.72', '肺癌位置', 'FAWZ', 'EUWL', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.73', '癌症类别', 'AZLB', 'UUOK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.74', '肺检查部位', 'FJCBW', 'ESSUW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
commit;
prompt 400 records committed...
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.75', '代谢系统病史', 'DXXTBS', 'WYTXUK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.76', '乳腺病史', 'RXBS', 'EEUK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.77', '放射毒性物质接触史', 'FSDXWZ', 'YTGNCR', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.78', '冶游性别史', 'YYXBS', 'UINKK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.79', '吸烟饮酒史', 'XYYJS', 'KOQIK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0100.01', '血常规-药历工作站', 'XCG-YL', 'TIGADA', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0100.02', '血生化-药历工作站', 'XSH-YL', 'TTWADA', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0100.03', '凝血-药历工作站', 'NX-YLG', 'UTADAW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0100.04', '尿-药历工作站', 'N-YLGZ', 'NADAWU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0100.05', '体征-药历工作站', 'TZ-YLG', 'WTADAW', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0100.06', '检验相关-药历工作站', 'JYXG-Y', 'SCSUAD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.01.030', '穿刺点方向', 'CCDFX', 'PGHYT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ03.00.007', '禽畜栏类别', 'QCLLB', 'WYSOK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ03.00.009', '受照类型代码', 'SZLXDM', 'EJOGWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ03.00.010', '吸烟状况代码', 'XYZKDM', 'KOUUWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ03.00.011', '饮食情况代码', 'YSQKDM', 'QWNUWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ03.00.012', '职业病危害类别代码', 'ZYBWHL', 'BOUQPO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ08.10.002', '经济类型代码', 'JJLXDM', 'XIOGWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.01.015', '世界各国和地区名称代码', 'SJGGHD', 'ALTLTF', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.01.016', '职业分类代码', 'ZYFLDM', 'BOWOWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ01.00.002', '报告类型', 'BGLX', 'RTOG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.10.201', '患者既往相关信息', 'HZJWXG', 'KFVTSU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.10.200', '标志', 'BZ', 'SF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ06.00.200', '结果代码', 'JGDM', 'XJWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.402', '资产与负债代码', 'ZCYFZD', 'UUGQWW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.401', '收入与支出代码', 'SRYZCD', 'NTGFBW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.218', '危险因素控制建议代码', 'WXYSKZ', 'QBLGRT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.301', '检查结果通知形式代码', 'JCJGTZ', 'SSXJCT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.219', '孕产妇健康指导类别代码', 'YCFJKZ', 'BUVWOR', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.218', '许可类别代码', 'XKLBDM', 'YSOKWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.217', '卫生监督证书类别代码', 'WSJDZS', 'BTAHYN', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.216', '行政处分类别代码', 'HZCFLB', 'TGQWOK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.101', '卫生监督对象类别代码表', 'WSJDDXLBDMB', 'BTJHCQOKWDG', 1, 0, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 08:36:24', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.215', '行政诉讼情况代码', 'HZSSQK', 'TGYYNU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.213', '采供血卫生违法事实代码', 'BGXWSW', 'EWTBTF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.211', '医疗卫生违法事实代码', 'YLWSWF', 'AUBTFI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.212', '传染病防治违法事实代码', 'CRBFZW', 'WIUBIF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.210', '学校卫生违法事实代码', 'XXWSWF', 'ISBTFI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.102', '项目性质代码', 'XMXZDM', 'AHNRWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.209', '校内辅助设施类别代码', 'XNFZSS', 'SMLEYY', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.208', '放射卫生违法事实代码', 'FSWSWF', 'YTBTFI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.207', '职业卫生违法事实代码', 'ZYWSWF', 'BOBTFI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.206', '生活饮用水违法事实代码', 'SHYYSW', 'TIQEIF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.205', '公共场所违法事实代码', 'GGCSWF', 'WAFRFI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.204', '卫生行政处罚结果及行政措施代码', 'WSHZCF', 'BTTGQL', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.203', '卫生监督检查与行政处罚专业类别代码', 'WSJDJC', 'BTAHSS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.103', '职业病建设项目审核代码', 'ZYBJSX', 'BOUVYA', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.104', '饮用水类别代码', 'YYSLBD', 'QEIOKW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.105', '水源水类型代码', 'SYSLXD', 'IIIOGW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.106', '制水工艺代码', 'ZSGYDM', 'TIAAWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.107', '生活饮用水消毒方式代码', 'SHYYSX', 'TIQEII', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.108', '检验指标代码', 'JYZBDM', 'SCRSWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.109', '职业性健康监护体检类别代码', 'ZYXJKJ', 'BONWOA', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.110', '职业卫生技术服务业务范围代码', 'ZYWSJS', 'BOBTRS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.111', '资质等级代码', 'ZZDJDM', 'URTXWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.112', '放射性同位素和射线装王的种类代码', 'FSXTWS', 'YTNMWG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.202', '卫生监督检查与行政处罚查处案件来源代码', 'WSJDJC', 'BTAHSS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.201', '卫生监督量化分级管理等级评定情况代码', 'WSJDLH', 'BTAHJW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ01.00.001', '报告卡类别代码', 'BGKLBD', 'RTHOKW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.01.001', '常住地类型代码', 'CZDLXD', 'IWFOGW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ08.50.001', '监测设备金额分类代码', 'JBSBJE', 'AIYTQP', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ08.50.002', '消毒剂加药方式代码', 'XDJJYF', 'IGYEAY', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.015', '肛查阴查', 'GCYC', 'ESBS', 1, 0, '001001', to_date('19-06-2016 19:03:48', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('19-06-2016 19:03:55', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.014', '宫缩强度', 'GSQD', 'PXXY', 1, 0, '001001', to_date('19-06-2016 18:53:40', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('19-06-2016 18:53:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.016', '宫颈', 'GG', 'PC', 1, 0, '001001', to_date('19-06-2016 19:05:35', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('19-06-2016 19:16:29', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.017', '胎膜', 'TM', 'EE', 1, 0, '001001', to_date('19-06-2016 19:07:35', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('19-06-2016 19:09:16', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.018', '先露部棘平线', 'XLBJPX', 'TFUGGX', 1, 0, '001001', to_date('19-06-2016 19:09:28', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('19-06-2016 19:10:47', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.01.002', '家庭关系代码', 'JTGXDM', 'POUTWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ08.50.003', '乙肝疫苗种类', 'YGYMZL', 'NEUATO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ08.50.004', '执法取证设备类别代码', 'ZFQZSB', 'RIBYYT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.01.003', '婚姻状况代码', 'HYZKDM', 'VVUUWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.01.021', '程度代码', 'CDDM', 'TOWD', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.01.057', '乳糜尿发作规律代码', 'RMNFZG', 'EONNWG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.10.002', '包皮检查结果代码', 'BPJCJG', 'QBSSXJ', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.01.070', '情况代码', 'QKDM', 'NUWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.01.106', '月经出血量类别代码', 'YJCXLL', 'EXBTJO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ08.30.001', '稽查人员分类代码', 'JCRYFL', 'TSWKWO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.01.116', '症状代码', 'ZZDM', 'UUWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.01.007', '疑似结核患者症状代码', 'YSJHHZ', 'XWXSKF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.114', '抗结核化疗方案代码', 'KJHHLF', 'RXSWUY', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.01.008', '慢性丝虫病患者症状代码', 'MXSCBH', 'NNXJUK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.115', '抗结核治疗停止原因代码', 'KJHZLT', 'RXSIUW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.01.009', '精神症状代码', 'JSZZDM', 'OPUUWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.01.010', '儿童睡眠质量代码', 'ETSMZL', 'QUHHRJ', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.01.011', '儿童睡眠情况代码', 'ETSMQK', 'QUHHNU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.01.012', '儿童大便情况代码', 'ETDBQK', 'QUDWNU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.116', '结核患者发现方式代码', 'JHHZFX', 'XSKFNG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.01.013', '老年人健康状态自我评估代', 'LNRJKZ', 'FRWWOU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.01.014', '老年人生活自理能力自我评估代码', 'LNRSHZ', 'FRWTIT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.117', '结核患者管理方式代码', 'JHHZGL', 'XSKFTG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.10.001', '残疾情况代码表', 'BJQKDM', 'GUNUWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.10.002', '心理状态代码', 'XLZTDM', 'NGUDWD', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.10.003', '重性精神疾病患者社会功能情况分类代码', 'ZXJSJB', 'TNOPUU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.10.004', '劳动能力评定分级代码', 'LDNLPD', 'IFCEYP', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.10.005', '婚前医学检查结果代码', 'HQYXJC', 'VUAISS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.10.006', '儿童生长发育评价结果代码', 'ETSZFY', 'QUTTNY', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.10.007', '儿童体弱原因类别代码', 'ETTRYY', 'QUWXDL', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.10.008', '血吸虫病患者劳动能力分级代码', 'XXCBHZ', 'TKJUKF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.10.009', '职业健康检查结论代码', 'ZYJKJC', 'BOWOSS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.10.010', '病情转归代码', 'BQZGDM', 'UNLJWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
commit;
prompt 500 records committed...
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.10.011', '伤害转归代码', 'SHZGDM', 'WPLJWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.10.012', '随访评价结果代码', 'SFPJJG', 'BYYWXJ', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.118', '艾滋病抗病毒治疗停药原因代码表', 'AZBKBD', 'AIURUG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.10.013', '重性精神疾病患者危险性分级代码', 'ZXJSJB', 'TNOPUU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV08.30.003', '监督员执业范围代码', 'JDYZYF', 'AHKROA', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV08.30.004', '助产人员类别代码', 'ZCRYLB', 'EUWKOK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV08.30.005', '专业技术职务类别代码', 'ZYJSZW', 'FORSBT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.112', '乙肝治疗方法代码', 'YGZLFF', 'NEIUYI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV08.10.002', '卫生监督机构行政级别代码', 'WSJDJG', 'BTAHSS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV08.10.003', '监督机构科室代码', 'JDJGKS', 'AHSSTP', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV08.10.004', '主要致死疾病的最高诊断机构级别代码', 'ZYZSJB', 'YSGGUU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV08.10.005', '肿瘤诊疗机构代码', 'ZLZLJG', 'EUYUSS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV08.10.006', '血吸虫病诊断(治疗)机构级别代码', 'XXCBZD', 'TKJUYO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV07.10.001', '门诊费用分类代码', 'MZFYFL', 'UYXEWO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV07.10.003', '医疗费用来源类别代码', 'YLFYLY', 'AUXEGI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.03.002', '麻醉假体', 'MZJT', 'OSWW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.004', '出量项目', 'CLXM', 'BJAH', 1, 0, '001001', to_date('26-01-2016 17:07:20', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('20-02-2016 11:23:20', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('DV001.01', '值域2', 'ZY2', 'WF', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.005', '出量颜色', 'CLYS', 'BJUQ', 1, 0, '001001', to_date('26-01-2016 17:10:19', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('20-02-2016 11:23:30', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV02.01.205', '地址类别代码', 'DZLBDM', 'FFOKWD', 1, 0, '001001', to_date('27-01-2016 15:32:05', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 18:10:42', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.50.020', 'RH(D)血型代码', 'RH(D)XXDM', 'RH(D)TGWD', 1, 0, '001001', to_date('27-01-2016 15:40:00', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 18:11:22', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV07.10.005', '医疗付费方式代码', 'YLFFFSDM', 'AUWXYAWD', 1, 0, '001001', to_date('27-01-2016 15:44:01', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 18:09:39', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV09.00.404', '患者类型代码', 'HZLXDM', 'KFOGWD', 1, 0, '001001', to_date('27-01-2016 15:50:06', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 14:28:03', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.229', '医嘱项目类型代码', 'YZXMLXDM', 'AKAHOGWD', 1, 0, '001001', to_date('27-01-2016 15:56:18', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 14:22:54', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.228', ' 药物使用频次代码', 'YWSYPCDM', 'ATWEHUWD', 1, 0, '001001', to_date('27-01-2016 16:01:41', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 18:12:27', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV00.00.002.004', '时间单位', 'SJDL', 'JUUW', 1, 0, '001001', to_date('29-02-2016 21:49:46', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('29-02-2016 21:54:27', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.227', '操作部位代码', 'CZBLDM', 'RWUWWD', 1, 0, '001001', to_date('27-01-2016 16:19:51', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 14:29:13', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.50.021', '输血品种代码', 'SXPZDM', 'LTKTWD', 1, 0, '001001', to_date('27-01-2016 16:40:46', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 14:38:15', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV02.01.204', '医疗保险类别代码', 'YLBXLBDM', 'AUWBOKWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-01-2016 15:23:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.01.040', '输血反应类型代码', 'SXFYLXDM', 'LTRYOGWD', 1, 0, '001001', to_date('27-01-2016 16:57:28', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 17:57:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.10.021', '美国麻醉医师协会（ASA）分级标准', 'MGMZYSXH（ASA）FJBZ', 'ULYSAJFW（ASA）WXSU', 1, 0, '001001', to_date('27-01-2016 17:02:40', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 14:30:56', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.10.024', '手术级别代码', 'SSJBDM', 'RSXKWD', 1, 0, '001001', to_date('27-01-2016 17:07:30', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 14:39:35', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.223', '手术体位代码', 'SSTLDM', 'RSWWWD', 1, 0, '001001', to_date('27-01-2016 17:20:08', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 18:12:45', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('DV1001.21', '感冒', 'GM', null, 1, 3, '001001', to_date('28-10-2015 09:11:08', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-10-2015 09:13:31', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.10.020', '新生儿异常情况代码', 'XSEYCQKDM', 'UTQNINUWD', 1, 0, '001001', to_date('27-01-2016 17:26:00', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-01-2016 18:13:46', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.010', '体温单特殊字符', 'TWDTSZF', 'WIUTGPT', 1, 0, '001004', to_date('24-03-2016 22:24:44', 'dd-mm-yyyy hh24:mi:ss'), '001004', to_date('24-03-2016 22:35:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.011', '卧位', 'WL', 'AW', 1, 4, '001001', to_date('01-04-2016 13:16:58', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('01-04-2016 13:29:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.012', '左右瞳孔大小', 'ZYTKDX', 'DDHBDI', 1, 0, '001001', to_date('01-04-2016 13:17:20', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('01-04-2016 13:29:20', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.013', '左右瞳孔对光反射', 'ZYTKDGFS', 'DDHBCIRT', 1, 1, '001001', to_date('01-04-2016 13:17:42', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('01-04-2016 13:29:25', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.10.014', '乙肝抗病毒治疗的血清学应答代码', 'YGKBDZ', 'NERUGI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.10.015', '5岁以下儿童未治疗或未就医原因代码', '5SYXET', 'MCGQUF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.10.016', '影响孕产妇死亡的主要因素代码', 'YXYCFS', 'JKBUVG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.119', '艾滋病抗病毒治疗终止原因代码', 'AZBKBD', 'AIURUG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV05.10.017', '疑似食源性异常病例(健康事件)可疑病因代码', 'YSSYXY', 'XWWINN', 1, 0, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.01.022', '神经阻滞', 'SJZZ', 'PXBI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ08.30.002', '人员培训时期类别代码', 'RYPXSQ', 'WKFYJD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.01.004', '接入互联网方式代码', 'JRHLWF', 'RTGBMY', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.01.005', '经济状况代码', 'JJZKDM', 'XIUUWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.01.006', '居住地区类别代码', 'JZDQLB', 'NWFAOK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.01.007', '民族', 'MZ', 'NY', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ08.10.001', '机构分类管理类别代码', 'JGFLGL', 'SSWOTG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.10.087', '黄疸状况代码', 'HDZKDM', 'AUUUWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.01.008', '高等学校本科专科专业代码表', 'GDXXBK', 'YTISST', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.01.009', '性别代码', 'XBDM', 'NKWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.01.010', '学历代码', 'XLDM', 'IDWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.01.011', '学位代码', 'XWDM', 'IWWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.10.134', '皮下脂肪异常代码', 'PXZFYC', 'BGEENI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.10.190', '听力检测结果代码', 'TLJBJG', 'KESIXJ', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.10.193', '试验及检查结果代码', 'SYJJCJ', 'YCBSSX', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.10.202', '斜颈代码', 'XJDM', 'WCWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.10.205', '心律类别代码', 'XLLBDM', 'NTOKWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.10.234', '子宫位置代码', 'ZGWZDM', 'BPWLWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.10.214', '咽部检查结果代码', 'YBJCJG', 'KUSSXJ', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.01.013', '专业技术职务代码', 'ZYJSZW', 'FORSBT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.01.012', '职称级别代码', 'ZCJBDM', 'BTXKWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.30.011', '检查结果代码', 'JCJGDM', 'SSXJWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.30.013', '质地类别代码', 'ZDLBDM', 'RFOKWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.30.014', '睾丸检查结果代码', 'GWJCJG', 'TVSSXJ', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.30.017', '检查/检验结果代码', 'JC/JYJ', 'SSSCXJ', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.30.029', '期别代码', 'QBDM', 'DKWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.30.032', '鞘膜积液累及部位代码', 'QMJYLJ', 'AETILB', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.30.042', '听力筛查结果代码', 'TLSCJG', 'KETSXJ', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.30.050', '检测结果代码', 'JBJGDM', 'SIXJWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.50.010', 'Rh血型代码', 'RHXXDM', 'TGWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.50.012', '艾滋病阳性检测方法代码', 'AZBYXJ', 'AIUBNS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.50.024', '低血糖反应代码', 'DXTFYD', 'WTOROW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.50.035', '结核菌群检测结果代码', 'JHJQJB', 'XSAVSI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.01.014', '户籍类型代码', 'HJLXDM', 'YTOGWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.50.112', '乙肝抗病毒治疗的病毒学应答', 'YGKBDZ', 'NERUGI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ05.01.007', '职业病目录', 'ZYBML', 'BOUHV', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ05.01.014', '多胎类型代码', 'DTLXDM', 'QEOGWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ05.01.028', '淋巴管或淋巴结炎发作代码', 'LBGHLB', 'ICTAIC', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ05.01.041', '首次诊断血吸虫病依据代码', 'SCZDXX', 'UUYOTK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ05.01.073', '中医体质分类判定结果代码', 'ZYTZFL', 'KAWRWO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ05.10.005', '步态情况', 'BTQK', 'HDNU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ05.10.002', 'HBsAg携带者分类', 'HBSAGX', 'RGFWO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ05.10.008', '产前筛查方法代码', 'CQSCFF', 'UUTSYI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ05.10.015', '传染病发病类别代码', 'CRBFBL', 'WIUNUO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ05.10.016', '传染病类别代码', 'CRBLBD', 'WIUOKW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ05.10.019', '儿童死前治疗类别代码', 'ETSQZL', 'QUGUIU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ05.10.022', '发育程度代码', 'FYCDDM', 'NYTOWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ05.10.030', '急性乙型肝炎临床分型', 'JXYXGY', 'QNNGEO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ05.10.036', '正常或异常代码', 'ZCHYCD', 'GIANIW', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ05.10.040', '粗筛结果代码', 'CSJGDM', 'OTXJWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ05.10.045', '慢性乙型肝炎的血清学分类', 'MXYXGY', 'NNNGEO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ05.10.050', '贫血分级代码', 'PXFJDM', 'WTWXWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ05.10.059', '身体活动类别代码', 'STHDLB', 'TWIFOK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ05.10.060', '身体活动强度分类代码', 'STHDQD', 'TWIFXO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ05.10.061', '生活和劳动能力评价结果代码', 'SHHLDN', 'TITIFC', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ05.10.067', '随访饮食合理性评价类别代码', 'SFYSHL', 'BYQWWG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
commit;
prompt 600 records committed...
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ05.10.076', '听力筛查代码', 'TLSCDM', 'KETSWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ05.10.085', '筛查代码', 'SCDM', 'TSWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ05.10.096', '乙型肝炎肝硬化分期代码', 'YXGYGY', 'NGEOED', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ05.10.100', '孕产妇死亡评审结果代码', 'YCFSWP', 'BUVGYY', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.50.011', '阴道细胞学诊断结果代码', 'YDXBXZ', 'BUXEIY', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.01.001', '妇科及乳腺不适症状代码', 'FKJRXB', 'VTBEED', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.50.012', '妊娠诊断方法代码', 'RSZDFF', 'VVYOYI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.50.013', '药敏试验结果代码', 'YMSYJG', 'ATYCXJ', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.50.014', '痰检培养结果代码', 'TJPYJG', 'USFUXJ', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.50.015', '尿实验室定性检测结果代码', 'NSYSDX', 'NPCPPN', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.01.002', '乳汁量代码', 'RZLDM', 'EIJWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.50.016', '血吸虫病虫卵检查方法代码', 'XXCBCL', 'TKJUJQ', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.50.017', '血吸虫病检测方法代码', 'XXCBJB', 'TKJUSI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV03.00.114', '每日饮水工代码', 'MRYSGD', 'TJQIAW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV08.50.002', '药物剂型代码', 'YWJXDM', 'ACYGWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV03.00.115', '饮水类别代码', 'YSLBDM', 'QIOKWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV03.00.116', '个人不良行为接触史代码', 'GRBLHW', 'WWDYTO', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV03.00.201', '职业照射种类代码', 'ZYZSZL', 'BOJTTO', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV08.50.003', '药敏试验药物代码', 'YMSYYW', 'ATYCAC', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV03.00.202', '受照原因代码', 'SZYYDM', 'EJDLWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV08.50.101', '宫内节育器种类代码', 'GNJYQZ', 'PMAYKT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV08.50.102', '交通工具代码', 'JTGJDM', 'UCAHWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV03.00.203', '职业病危害因素类别代码', 'ZYBWHY', 'BOUQPL', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV08.30.001', '卫生监督机构人员编制类别代码', 'WSJDJG', 'BTAHSS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV08.30.002', '卫生监督机构职工类别代码', 'WSJDJG', 'BTAHSS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ05.10.106', '运动功能状态代码', 'YDGNZT', 'FFACUD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ05.10.115', '肿瘤患者目前疾病情况类别代码', 'ZLHZMQ', 'EUKFHU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ05.10.118', '重性精神疾病患者随访评价结果代码', 'ZXJSJB', 'TNOPUU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ05.10.122', '自理能力代码', 'ZLNLDM', 'TGCEWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ05.10.123', '自知力评价结果代码', 'ZZLPJJ', 'TTEYWX', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.214', '儿童预防母婴传播干预措施代码', 'ETYFMY', 'QUCBXM', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ06.00.025', '档案建档情况代码', 'DAJDQK', 'SPVSNU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ06.00.027', '服药依从性代码', 'FYYCXD', 'EAWWNW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ06.00.041', '婚检咨询指导结果代码', 'HJZXZD', 'VSUYRN', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ06.00.051', '健康指导代码', 'JKZDDM', 'WORNWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ06.00.056', '治疗情况分类代码', 'ZLQKFL', 'IUNUWO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ06.00.064', '防控情况代码', 'FKQKDM', 'BRNUWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ06.00.072', '流产方法代码', 'LCFFDM', 'IUYIWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ06.00.075', '慢性丝虫病患者照料形式代码', 'MXSCBH', 'NNXJUK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ06.00.080', '免疫类型代码', 'MYLXDM', 'QUOGWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ06.00.083', '皮下埋植剂埋植部位代码', 'PXMZJM', 'BGFSYF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ06.00.101', '输精管结扎手术方式代码', 'SJGJZS', 'LOTXRR', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ06.00.116', '喂养方式类别代码', 'WYFSLB', 'KUYAOK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ06.00.132', '药物流产使用药物类别代码', 'YWLCSY', 'ACIUWE', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ06.00.153', '孕产妇死亡时间类别代码', 'YCFSWS', 'BUVGYJ', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ06.00.161', '治疗形式建议代码', 'ZLXSJY', 'IUGAVY', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ06.00.171', '肿瘤首次手术性质代码', 'ZLSCSS', 'EUUURS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ06.00.167', '肿瘤病情告知患者情况类别代码', 'ZLBQGZ', 'EUUNTT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ06.00.172', '重性精神疾病患者干预类型', 'ZXJSJB', 'TNOPUU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ08.10.052', '组织机构代码', 'ZZJGDM', 'XXSSWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV09.00.005.01', '特殊地区居住史', 'TSDQJZS', 'TGFANWK', 1, 0, '001001', to_date('09-03-2016 10:49:41', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-03-2016 10:55:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV09.00.005.02', '有毒物质接触史', 'YDWZJCS', 'EGTRRQK', 1, 1, '001001', to_date('09-03-2016 10:58:52', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-03-2016 11:02:18', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV09.00.005.05', '冶游史', 'YYS', 'UIK', 1, 0, '001001', to_date('09-03-2016 12:09:57', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-03-2016 12:40:13', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV09.00.005.03', '不良嗜好', 'BLSH', 'IYKV', 1, 0, '001001', to_date('09-03-2016 12:09:38', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-03-2016 12:19:33', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV09.00.005.04', '吸烟饮酒史', 'XYYJS', 'KOQIK', 1, 0, '001001', to_date('09-03-2016 12:09:48', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-03-2016 12:19:57', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV09.00.005.06', '重大精神创伤史', 'CDJSCSS', 'TDOPWWK', 1, 0, '001001', to_date('09-03-2016 12:10:08', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-03-2016 12:20:48', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.91', '其它病史', 'QTBS', 'DPUK', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.92', '手术外伤史', 'SSWSS', 'RSQWK', 1, 4, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.93', '过敏史', 'GMS', 'FTK', 1, 5, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.95', '病史陈述者', 'BSCSZ', 'UKBSF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.94', '预防接种史', 'YFJZS', 'CBRTK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.96', '可靠性', 'KKX', 'STN', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.97', '麻醉方式(胃肠)', 'MZFS(W', 'OSYALE', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.61', '外耳道', 'WED', 'QBU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2001.98', '疫源接触', 'YYJC', 'UIRQ', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.01', '性病史', 'XBS', 'NUK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.02', '吸烟史', 'XYS', 'KOK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.03', '嗜酒吸烟史', 'SJXYS', 'KIKOK', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.04', '肝掌', 'GZ', 'EI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.05', '蜘蛛痣', 'ZZZ', 'JJU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.06', '淋巴结', 'LBJ', 'ICX', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.07', '血管杂音', 'XGZY', 'TTVU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.08', '胸骨叩痛', 'XGKT', 'EMKU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.09', '呼吸运度', 'HXYD', 'KKFO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.10', '肋间隙', 'LJX', 'EUB', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.13', '侵及结外器官', 'QJJWQG', 'WBXQKP', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.11', '侵及淋巴结浅表', 'QJLBJQ', 'WBICXI', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.12', '侵及淋巴器官', 'QJLBQG', 'WBICKP', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.14', '霍奇金淋巴瘤病理类型', 'HQJLBL', 'FDQICU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2002.15', '非霍奇金淋巴瘤病理类型', 'FHQJLB', 'DFDQIC', 1, 4, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.36', '肛门距-直肠癌', 'GMJ-ZC', 'EUKFEU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.26', '女性避孕方式', 'NXBYFS', 'VNNBYA', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.27', '婚姻状况', 'HYZK', 'VVUU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.63', '放疗间期远处转移-直肠癌', 'FLJQYC', 'YUUDFQ', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.65', '放疗后分期I-直肠癌', 'FLHFQI', 'YURWDF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.66', '放疗后分期II-直肠癌', 'FLHFQI', 'YURWDF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.32', '流产方式', 'LCFS', 'IUYA', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.33', '引产时孕期', 'YCSYQ', 'XUJBD', 0, null, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.34', '症状时间-直肠癌', 'ZZSJ-Z', 'UUJUFE', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.35', '生产方式', 'SCFS', 'TUYA', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.37', '直肠癌类型-直肠癌', 'ZCALX-', 'FEUOGF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.38', '结肠息肉存在否-直肠癌', 'JCXRCZ', 'XETMDD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.39', '直肠病理类型-直肠癌', 'ZCBLLX', 'FEUGOG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.40', '术前局部分期手段-直肠癌', 'SQJBFQ', 'SUNUWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.41', '术前局部分期1-直肠癌', 'SQJBFQ', 'SUNUWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.42', '术前局部分期2-直肠癌', 'SQJBFQ', 'SUNUWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.43', '腹部CT/腹BUS-直肠癌', 'FBCT/F', 'EUEFEU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.44', '胸CR/胸部CT-直肠癌', 'XCR/XB', 'EEUFEU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.67', '患者婚育类型-妇科', 'HZHYLX', 'KFVYOG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.46', '术前放疗方案-直肠癌', 'SQFLFA', 'SUYUYP', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
commit;
prompt 700 records committed...
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.47', '同步口服卡培他滨-直肠癌', 'TBKFKP', 'MHKEHF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.48', '使用5FU泵入增敏-直肠癌', 'SY5FUB', 'WEDTFT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.49', '同步使用奥沙利铂-直肠癌', 'TBSYAS', 'MHWETI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.50', 'III/IV 级毒性反应-直肠癌', 'III/IV', 'XGNROF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.51', '提示肝转移-直肠癌', 'TSGZY-', 'RFELTF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.52', '提示肺转移-直肠癌', 'TSFZY-', 'RFELTF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.53', 'kc为起点-直肠癌', 'KCWQD-', 'OFHFEU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.54', 'kc为终点-直肠癌', 'KCWZD-', 'OXHFEU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.68', '外阴异常-妇科', 'WYYC-F', 'QBNIVT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.56', '进指-直肠癌', 'JZ-ZCA', 'FRFEU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.58', '占位类型-直肠癌', 'ZWLX-Z', 'HWOGFE', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.69', '外阴异常类型-妇科', 'WYYCLX', 'QBNIOG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.70', '阴道异常-妇科', 'YDYC-F', 'BUNIVT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.61', '活动度-直肠癌', 'HDD-ZC', 'IFOFEU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.62', '退指套-直肠癌', 'TZT-ZC', 'VRDFEU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.71', '阴道畅通与否-妇科', 'YDCTYF', 'BUJCGD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.72', '膨出位置-妇科', 'PCWZ-F', 'EBWLVT', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.73', '分泌物量-妇科', 'FMWL-F', 'WICJVT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.74', '分泌物性状-妇科', 'FMWXZ-', 'WICNUV', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.75', '肿物个数', 'ZWGS', 'ECWO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.76', '分泌物颜色-妇科', 'FMWYS-', 'WICUQV', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005', '阴道质地-妇科', 'YDZD-F', 'BURFVT', 0, null, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.77', '阴道质地-妇科', 'YDZD-F', 'BURFVT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.78', '阴道触痛-妇科', 'YDCT-F', 'BUQUVT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.79', '阴道张力-妇科', 'YDZL-F', 'BUXEVT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.80', '阴道白细胞-妇科', 'YDBXB-', 'BURXEV', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.81', '阴道粘膜-妇科', 'YDZM-F', 'BUOEVT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.82', '肿物触及阴道与否-妇科', 'ZWCJYD', 'ECQBBU', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.83', '宫颈异常-妇科', 'GJYC-F', 'PCNIVT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.85', '宫颈质地-妇科', 'GJZD-F', 'PCRFVT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.84', '宫颈大小-妇科', 'GJDX-F', 'PCDIVT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.86', '宫颈口-妇科', 'GJK-FK', 'PCKVT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.87', '接触性出血-妇科', 'JCXCX-', 'RQNBTV', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.88', '宫颈糜烂程度-妇科', 'GJMLCD', 'PCOOTO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.89', '宫颈举痛-妇科', 'GJJT-F', 'PCIUVT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.90', '宫颈摇摆痛-妇科', 'GJYBT-', 'PCRRUV', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.91', '宫颈着色-妇科', 'GJZS-F', 'PCUQVT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.92', '宫颈息肉-妇科', 'GJXR-F', 'PCTMVT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.93', '宫颈那囊肿-妇科', 'GJNNZ-', 'PCNGEV', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.94', '宫颈赘生物-妇科', 'GJZSW-', 'PCGTCV', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.95', '宫颈撕裂-妇科', 'GJSL-F', 'PCRGVT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.96', '转移类型-介入', 'ZYLX-J', 'LTOGWT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.97', '原发部位-介入', 'YFBW-J', 'DNUWWT', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.98', '分化程度-介入', 'FHCD-J', 'WWTOWT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.99', '病理类型-介入', 'BLLX-J', 'UGOGWT', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.01', '转移数目-介入', 'ZYSM-J', 'LTOHWT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.02', '靶病灶评效-介入', 'BBZPX-', 'AUOYUW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.03', '综合评效-介入', 'ZHPX-J', 'XWYUWT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.04', 'ECOG评分-介入', 'ECOGPF', 'YWWT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.05', '肝功能分级-介入', 'GGNFJ-', 'EACWXW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.06', '基础疾病-介入', 'JCJB-J', 'DDUUWT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.07', '转移部位-介入', 'ZYBW-J', 'LTUWWT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.08', '淋巴结转移部位-介入', 'LBJZYB', 'ICXLTU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.09', '血管侵犯部位-介入', 'XGQFBW', 'TTWQUW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.10', '既往治疗-介入', 'JWZL-J', 'VTIUWT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.11', '肝癌类型', 'GALX', 'EUOG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.12', '临床分期', 'LCFQ', 'JOWD', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.13', '宫颈后穹窿是否', 'GGHQLSF', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('28-10-2015 09:07:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.14', '宫颈后穹窿饱满否', 'GJHQLB', 'PCRPPQ', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.15', '宫颈处结节', 'GJCJJ', 'PCQXA', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.16', '宫颈结节疼痛感', 'GJJJTT', 'PCXAUU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.21', '肿物触及阴道具体位置', 'ZWCJYD', 'ECQBBU', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.18', '宫颈穹窿位置', 'GJQLWZ', 'PCPPWL', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.19', '穹窿是否受累', 'QLSFSL', 'PPJDEL', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.20', '达到宫颈位置', 'DDGJWZ', 'DGPCWL', 1, 4, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.22', '触及阴道肿物活动度', 'CJYDZW', 'QBBUEC', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.23', '触及阴道肿物大小', 'CJYDZW', 'QBBUEC', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.24', '宫体位置', 'GTWZ', 'PWWL', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.25', '宫体大小', 'GTDX', 'PWDI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.03.001.05', '部位护理', 'BWHL', 'UWRG', 1, 0, '001001', to_date('22-06-2016 10:33:45', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-06-2016 10:51:43', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.03.001.06', '静脉留置针/测压管道护理', 'JMLZZ/CYGDHL', 'GEQLQ/IDTURG', 1, 0, '001001', to_date('22-06-2016 11:12:45', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-06-2016 11:20:50', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.03.001.07', '敷料', 'FL', 'GO', 1, 0, '001001', to_date('22-06-2016 11:13:15', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-06-2016 11:21:53', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.03.001.08', '活动/翻身', 'GD/FS', 'IF/TT', 1, 1, '001001', to_date('22-06-2016 11:13:49', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-06-2016 11:29:00', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.03.001.09', '病人/家属宣教', 'BR/JSXJ', 'UW/PNPF', 1, 0, '001001', to_date('22-06-2016 11:14:25', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-06-2016 11:52:17', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.03.001.04', '营养管/胃管', 'YYG/WG', 'AUT/LT', 1, 0, '001001', to_date('22-06-2016 11:56:15', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-06-2016 11:59:18', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.03.001.03', '约束', 'YS', 'XG', 1, 0, '001001', to_date('22-06-2016 12:01:41', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-06-2016 12:04:15', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.03.001.02', '基础护理', 'JCHL', 'ADRG', 1, 1, '001001', to_date('22-06-2016 12:01:56', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-06-2016 12:08:12', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.03.001.12', '分泌物', 'FBW', 'WIT', 1, 0, '001001', to_date('22-06-2016 15:01:11', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-06-2016 15:09:02', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.03.001.13', '呼吸治疗', 'HXCL', 'KKIU', 1, 0, '001001', to_date('22-06-2016 15:01:32', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-06-2016 15:11:45', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.03.001.14', '血管评估(感觉)', 'XGPG(GJ)', 'TTYW(DI)', 1, 1, '001001', to_date('22-06-2016 15:02:07', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-06-2016 15:43:51', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.03.001.15', '血管评估(脉搏)', 'XGPG(MB)', 'TTYW(ER)', 1, 0, '001001', to_date('22-06-2016 15:02:21', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-06-2016 15:43:48', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.03.001.16', '镇静评分', 'ZJPF', 'QGYW', 1, 0, '001001', to_date('22-06-2016 15:02:55', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-06-2016 15:43:45', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.03.001.17', '反应', 'FY', 'RY', 1, 3, '001001', to_date('22-06-2016 15:03:11', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-06-2016 15:43:42', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.03.001.18', '神志评分', 'SZPF', 'PFYW', 1, 0, '001001', to_date('22-06-2016 15:03:29', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-06-2016 15:43:39', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.03.001.19', '无创呼吸机', 'WCHXJ', 'FWKKS', 1, 0, '001001', to_date('22-06-2016 16:34:36', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-06-2016 16:35:56', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.03.001.20', '吸氧方式', 'XYFS', 'KRYA', 1, 0, '001001', to_date('22-06-2016 16:34:51', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('22-06-2016 16:36:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.03.001.21', '皮肤评估', 'PFPG', 'HEYW', 1, 3, '001001', to_date('02-07-2016 10:36:15', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('02-07-2016 10:50:48', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.80', '发病节气', 'FBJQ', 'VUAR', 1, 0, '001001', to_date('19-07-2016 09:45:51', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('19-07-2016 09:55:20', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.03.002.01', '喂养方式', 'WYFS', 'KUYA', 1, 0, '001001', to_date('12-09-2016 11:19:28', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('12-09-2016 15:03:28', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.03.002.02', '氧疗方式', 'YLFS', 'RUYA', 1, 0, '001001', to_date('12-09-2016 11:32:40', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('12-09-2016 11:50:07', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.03.002.03', '面色', 'MS', 'DQ', 1, 0, '001001', to_date('12-09-2016 11:41:24', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('12-09-2016 16:25:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.03.002.04', '置管', 'ZG', 'LT', 1, 1, '001001', to_date('12-09-2016 12:07:39', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('12-09-2016 16:41:35', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.03.002.05', '体位', 'TL', 'WW', 1, 0, '001001', to_date('12-09-2016 16:33:58', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('12-09-2016 16:39:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.26', '宫体活动度', 'GTHDD', 'PWIFO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.27', '宫体有无压痛', 'GTYWYT', 'PWDFDU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.28', '宫体形状规则否', 'GTXZGZ', 'PWGUGM', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2007.29', '宫体表面平否', 'GTBMPF', 'PWGDGD', 0, null, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.29', '宫体表面平否', 'GTBMPF', 'PWGDGD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.30', '宫体脱垂否', 'GTTCF', 'PWETD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.31', '宫体举痛否', 'GTJTF', 'PWIUD', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
commit;
prompt 800 records committed...
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.32', '宫体摇摆痛否', 'GTYBTF', 'PWRRUD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.33', '宫体有无突起', 'GTYWTQ', 'PWDFPF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.34', '宫体突起质地', 'GTTQZD', 'PWPFRF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.35', '宫体突起活动度', 'GTTQHD', 'PWPFIF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.36', '宫体附件位置', 'GTFJWZ', 'PWBWWL', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.37', '宫体增厚否', 'GTZHF', 'PWFDD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.38', '宫体质地', 'GTZD', 'PWRF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2006.39', '宫体突起部位', 'GTTQBW', 'PWPFUW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.03.003', '手术医生陈述', 'SSYSCS', 'RSATBS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.01.017', '诱导方法', 'YDFF', 'YNYI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.01.027', '有无', 'YW', 'DF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.01.020', '椎管内麻醉', 'ZGNMZ', 'STMOS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.01.002', '患者去向', 'HZQX', 'KFFT', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.01.023', '臂从神经阻滞方式', 'BCSJZZ', 'NWPXBI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.01.024', '有创操作', 'YCBZ', 'DWRW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.01.025', '好差', 'HC', 'VU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.01.026', '意识', 'YS', 'UY', 1, 6, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ03.03.001', '瞳孔', 'TK', 'HB', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ03.03.002', '语言表达', 'YYBD', 'YYGD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ03.03.003', '定向力', 'DXL', 'PTE', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ03.03.004', '气道反射', 'QDFS', 'RURT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ03.03.005', '有无肢体活动', 'YWZTHD', 'DFEWIF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ06.02.005', '疼痛评分', 'TTPF', 'UUYW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ03.05.001', '呼吸机模式', 'HXJMS', 'KKSSA', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ06.02.001', '无痛/轻度疼痛护理措施', 'WT/QDT', 'FULOUU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ06.02.002', '中度疼痛护理措施', 'ZDTTHL', 'KOUURG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ06.02.003', '重度疼痛护理措施', 'ZDTTHL', 'TOUURG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ03.03.007', '语言表达缺乏原因', 'YYBDQF', 'YYGDRT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ03.01.001', '静脉通路位置', 'JMTLWZ', 'GECKWL', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ03.01.002', '保暖方式', 'BNFS', 'WJYA', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ03.01.004', '电极板粘贴部位', 'DJBZTB', 'JSSOMU', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ03.01.005', '皮肤情况', 'PFQK', 'BENU', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.01.003', '手术体位', 'SSTW', 'RSWW', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ01.03.001', '心功能分级', 'XGNFJ', 'NACWX', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ01.01.002', '血管状态', 'XGZT', 'TTUD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.01.006', '手术切口类型', 'SSQKLX', 'RSAKOG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ01.01.003', '体温状态', 'TWZT', 'WIUD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ01.02.001', '评价和态度', 'PJHTD', 'YWTDO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ01.05.001', '数字范围', 'SZFW', 'OPAL', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ01.05.002', '尿潴留和胃肠功能范围', 'NZLHWC', 'NIQTLE', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.01.115', 'ASA分级', 'ASAFJ', 'WX', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ07.01.001', '压疮来源', 'YCLY', 'DUGI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ07.01.002', '压疮部位', 'YCBW', 'DUUW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ07.01.003', '跌倒原因', 'DDYY', 'KWDL', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.01.004', '麻醉平面', 'MZPM', 'OSGD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ02.01.028', '插管类型', 'BGLX', 'RTOG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.01.005', '手术分类', 'SSFL', 'RSWO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ04.01.009', 'NNIS分级', 'NNISFJ', 'WX', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ03.01.007', '管理置入地点', 'GLZRDD', 'TGLTFH', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ03.01.008', '止血部位', 'ZXBW', 'HTUW', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV07.10.004', '医疗费用结算方式代码', 'YLFYJS', 'AUXEXT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.101', '中药使用类别代码', 'ZYSYLB', 'KAWEOK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.102', '用药途径代码', 'YYTJDM', 'EAWTWD', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.10.001', '附件检查结果代码', 'FJJCJG', 'BWSSXJ', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.10.002', '子宫大小代码', 'ZGDXDM', 'BPDIWD', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.10.003', '妇科检查方式代码', 'FKJCFS', 'VTSSYA', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.10.004', '皮肤检查结果代码', 'PFJCJG', 'BESSXJ', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.10.005', '浮肿状况代码', 'FZZKDM', 'IEUUWD', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.10.006', '巩膜检查结果代码', 'GMJCJG', 'AESSXJ', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.10.007', '口唇外观代码', 'KCWGDM', 'KDQCWD', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.10.008', '儿童面色代码', 'ETMSDM', 'QUDQWD', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.10.009', '黄疸部位代码', 'HDBWDM', 'AUUWWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.10.010', '齿列类别代码', 'CLLBDM', 'HGOKWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.10.011', '淋巴结检查结果代码', 'LBJJCJ', 'ICXSSX', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.10.012', '乳腺检查结果代码', 'RXJCJGDM', 'EESSXJWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('25-05-2016 11:50:08', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.10.013', '肛门指诊检查结果代码', 'GMZZJC', 'EURYSS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.10.014', '下肢水肿检查结果代码', 'XZSZJC', 'GEIESS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.10.015', '足背动脉搏动代码', 'ZBDMBD', 'KUFERF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.10.016', '伤害部位代码', 'SHBWDM', 'WPUWWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.10.017', '慢性丝虫病症状发作部位代码', 'MXSCBZ', 'NNXJUU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.10.018', '前囟张力代码表', 'QXZLDM', 'UTXEWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.10.019', '脐带检查结果代码', 'QDJCJG', 'EGSSXJ', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.10.020', '儿童体格发育评价代码', 'ETTGFY', 'QUWSNY', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.10.021', '可疑佝偻病症状代码', 'KYGLBZ', 'SXWWUU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.10.022', '可疑佝偻病体征代码', 'KYGLBT', 'SXWWUW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.103', '麻醉方法代码', 'MZFFDM', 'OSYIWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.104', '宫内节育器放置时期代码', 'GNJYQF', 'PMAYKY', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.105', '皮下埋植剂埋植时期代码', 'PXMZJM', 'BGFSYF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.106', '输卵管结扎手术方式代码', 'SLGJZS', 'LQTXRR', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.107', '输卵管结扎部位代码', 'SLGJZB', 'LQTXRU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.108', '新生儿抢救方法代码', 'XSEQJF', 'UTQRFY', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.109', '乙肝疫苗接种剂Ι代码', 'YGYMJZ', 'NEUART', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.110', '乙肝抗病毒治疗的基本药物代码', 'YGKBDZ', 'NERUGI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV06.00.111', '乙肝抗病毒治疗终止原因代码', 'YGKBDZ', 'NERUGI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV04.30.001', '血吸虫患者肝实质纤维化程度代码', 'XXCHZG', 'TKJKFE', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.19', '肿物性质压痛', 'ZWXZYT', 'ECNRDU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.20', '肿物性质形状', 'ZWXZXZ', 'ECNRGU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.21', '肿物性质血管杂音', 'ZWXZXG', 'ECNRTT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.24', '淋巴结性质个数', 'LBJXZG', 'ICXNRW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.22', '肿物性质声带活动度', 'ZWXZSD', 'ECNRFG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.23', '淋巴结颈部分区', 'LBJJBF', 'ICXCUW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.25', '淋巴结性质边界', 'LBJXZB', 'ICXNRE', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.26', '淋巴结性质表面', 'LBJXZB', 'ICXNRG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.27', '淋巴结性质质地', 'LBJXZZ', 'ICXNRR', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.28', '淋巴结性质活动度', 'LBJXZH', 'ICXNRI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.29', '淋巴结性质压痛', 'LBJXZY', 'ICXNRD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.30', '淋巴结性质形状', 'LBJXZX', 'ICXNRG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.31', '肿物性质声带位置', 'ZWXZSD', 'ECNRFG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.32', '年龄(淋巴)', 'NL(LB)', 'RHIC', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.33', 'ECOG(淋巴)', 'ECOG(L', 'IC', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
commit;
prompt 900 records committed...
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.34', '分期(淋巴)', 'FQ(LB)', 'WDIC', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.35', '结外部位(淋巴)', 'JWBW(L', 'XQUWIC', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.36', '血清LDH水平(淋巴)', 'XQLDHS', 'TIIGIC', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.37', '部位', 'BW', 'UW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.38', '乳腺', 'RX', 'EE', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.39', '乳头', 'RT', 'EU', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.40', '溢液', 'YY', 'II', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.41', '象限', 'XX', 'QB', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.42', '表面皮肤', 'BMPF', 'GDBE', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.43', '肿物质地', 'ZWZD', 'ECRF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.44', '边缘', 'BY', 'EX', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.45', '肿物活动度', 'ZWHDD', 'ECIFO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.46', '皮肤粘连', 'PFZL', 'BEOL', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.47', '胸肌粘连', 'XJZL', 'EEOL', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.48', '胸壁固定', 'XBGD', 'ENLP', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.49', '最终预后分级', 'ZZYHFJ', 'JXCRWX', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.50', '腋下淋巴结', 'YXLBJ', 'EGICX', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.51', '淋巴结活动度', 'LBJHDD', 'ICXIFO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.52', '淋巴结形状', 'LBJXZ', 'ICXGU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.53', '病理诊断方法', 'BLZDFF', 'UGYOYI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.54', '病理类型', 'BLLX', 'UGOG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.55', '接受诱导化疗方案', 'JSYDHL', 'REYNWU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.56', '4周期评效', '4ZQPX', 'MDYU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.57', '活动度', 'HDD', 'IFO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.58', '乳腺部位', 'RXBW', 'EEUW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.59', '乳腺肿物部位', 'RXZWBW', 'EEECUW', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.60', '乳腺肿物的质', 'RXZWDZ', 'EEECRR', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.61', '乳腺局部皮肤特征', 'RXJBPF', 'EENUBE', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.63', '钙化程度', 'GHCD', 'QWTO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.62', '乳头症状', 'RTZZ', 'EUUU', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.65', '乳腺超声', 'RXCS', 'EEFF', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.64', '血流信号', 'XLXH', 'TIWK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.66', 'BI-RADS', 'BI-RAD', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.67', '左侧腋窝', 'ZBYW', 'DWEP', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.68', '发现的淋巴结数目', 'FXDLBJ', 'NGRICX', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.69', '融合情况', 'RHQK', 'GWNU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.70', '右侧腋窝', 'YBYW', 'DWEP', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.71', '右侧腋窝异常淋巴结数目', 'YBYWYC', 'DWEPNI', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.72', '右侧腋窝淋巴结融合情况', 'YBYWLB', 'DWEPIC', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.73', '乳腺钼靶', 'RXMB', 'EEQA', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.74', '右侧腋窝BI-RADS分级', 'YBYWBI', 'DWEPWX', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.75', '乳腺MRI', 'RXMRI', 'EE', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.76', '腹部超声', 'FBCS', 'EUFF', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.77', '胸片', 'XP', 'ET', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.78', '盆腔超声', 'PQCS', 'WEFF', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.79', '骨扫描', 'GSM', 'MRR', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.80', '肿瘤标志物', 'ZLBZW', 'EUSFC', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.81', '乳腺肿物检测方式', 'RXZWJB', 'EEECSI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.82', '乳腺肿物检测结果示', 'RXZWJB', 'EEECSI', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.83', '免疫组化ER', 'MYZHER', 'QUXW', 1, 6, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.84', '免疫组化PR', 'MYZHPR', 'QUXW', 1, 9, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.85', '免疫组化HER-2', 'MYZHHE', 'QUXW', 1, 4, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.86', '免疫组化FISH', 'MYZHFI', 'QUXW', 1, 4, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.87', '免疫组化Ki-67', 'MYZHKI', 'QUXW', 1, 6, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.88', '腋窝淋巴结穿刺活检', 'YWLBJC', 'EPICXP', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.89', '前哨淋巴结活检', 'QSLBJH', 'UKICXI', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.90', '临床分期cT', 'LCFQCT', 'JOWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.91', '临床分期N', 'LCFQN', 'JOWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.92', '临床分期M', 'LCFQM', 'JOWD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.93', '所行新辅助化疗方案', 'SHXFZH', 'RTULEW', 1, 5, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.94', '检查方式-疗效评价前', 'JCFS-L', 'SSYAUU', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.95', '疗效评价', 'LXPJ', 'UUYW', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.96', '选择医院-做过手术', 'XZYY-Z', 'TRABWF', 1, 5, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.97', '做过的手术名称', 'ZGDSSM', 'WFRRSQ', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.98', '腋窝淋巴结清扫情况', 'YWLBJQ', 'EPICXI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2003.99', '术后病理回报--乳肿物左右', 'SHBLHB', 'SRUGLR', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.01', '术后病理回报--病理类型', 'SHBLHB', 'SRUGLR', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.02', '术后病理回报-脉管癌栓', 'SHBLHB', 'SRUGLR', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.03', '术后病理回报--癌栓性质', 'SHBLHB', 'SRUGLR', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.04', '术后病理回报--免疫组化ER', 'SHBLHB', 'SRUGLR', 1, 6, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.05', '术后病理回报--免疫组化PR', 'SHBLHB', 'SRUGLR', 1, 7, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.06', '术后病理回报--免疫组化HER-2', 'SHBLHB', 'SRUGLR', 1, 4, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.07', '术后病理回报-FISH', 'SHBLHB', 'SRUGLR', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.08', '术后病理回报-Ki-67', 'SHBLHB', 'SRUGLR', 1, 5, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.09', '行辅助化疗部门', 'HFZHLB', 'TLEWUU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.10', '辅助化疗方案2', 'FZHLFA', 'LEWUYP', 1, 4, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.11', '呕吐等级', 'OTDJ', 'KKTX', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.12', '腹泻等级', 'FXDJ', 'EITX', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.13', '白细胞下降等级', 'BXBXJD', 'RXEGBT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.14', '粒细胞下降等级', 'LXBXJD', 'OXEGBT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.15', '血红蛋白下降等级', 'XHDBXJ', 'TXNRGB', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.16', '血小板下降等级', 'XXBXJD', 'TISGBT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.17', '治疗方案-乳腺出院', 'ZLFA-R', 'IUYPEE', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.18', '呕吐等级-乳腺出院', 'OTDJ-R', 'KKTXEE', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.19', '腹泻等级-乳腺出院', 'FXDJ-R', 'EITXEE', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.20', '白细胞下降等级-乳腺出院', 'BXBXJD', 'RXEGBT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.21', '粒细胞下降等级-乳腺出院', 'LXBXJD', 'OXEGBT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.22', '血红蛋白下降等级-乳腺出院', 'XHDBXJ', 'TXNRGB', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.23', '血小板下降等级-乳腺出院', 'XXBXJD', 'TISGBT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.26', '术后病理回报--辅助治疗方案', 'SHBLHB', 'SRUGLR', 1, 4, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.24', '化疗方案-转移性乳腺癌出院', 'HLFA-Z', 'WUYPLT', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.27', '术后病理回报--辅助放疗情况', 'SHBLHB', 'SRUGLR', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.28', '内分泌治疗方案', 'NFMZLF', 'MWIIUY', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.29', '内分泌治疗几线化疗', 'NFMZLJ', 'MWIIUW', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.25', '化疗方式-转移性乳腺癌出院', 'HLFS-Z', 'WUYALT', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.30', '内分泌治疗末次化疗疗效评价', 'NFMZLM', 'MWIIUG', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.31', '检查-转移性乳腺癌出院', 'JC-ZYX', 'SSLTNE', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.32', '靶病灶增大缩小情况', 'BBZZDS', 'AUOFDX', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.33', '靶病灶个数', 'BBZGS', 'AUOWO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.34', '靶病灶部位', 'BBZBW', 'AUOUW', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
commit;
prompt 1000 records committed...
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.35', '内分泌治疗方案', 'NFMZLF', 'MWIIUY', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.36', '几线内分泌治疗方案', 'JXNFMZ', 'WXMWII', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.37', '内分泌治疗月疗效评价', 'NFMZLY', 'MWIIUE', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.38', '靶病灶个数2', 'BBZGS2', 'AUOWO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.39', '靶病灶部位2', 'BBZBW2', 'AUOUW', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.40', '右侧腋窝淋巴结情况', 'YBYWLB', 'DWEPIC', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.41', '治疗模式', 'ZLMS', 'IUSA', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.42', '放疗方式', 'FLFS', 'YUYA', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.43', '放疗剂量', 'FLJL', 'YUYJ', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.44', '同期化疗方案', 'TQHLFA', 'MDWUYP', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.45', '毒性反应', 'DXFY', 'GNRO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.46', '肿物定位', 'ZWDW', 'ECPW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.47', '切口位置', 'QKWZ', 'AKWL', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.48', '肿瘤位置', 'ZLWZ', 'EUWL', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.49', '肿物侵及', 'ZWQJ', 'ECWB', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.50', '瘤体表面皮肤', 'LTBMPF', 'UWGDBE', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.51', '乳头乳晕', 'RTRY', 'EUEJ', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.52', '腺体切缘距', 'XTQYJ', 'EWAXK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.53', '胸大肌筋膜', 'XDJJM', 'EDETE', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.54', '肿物切除后残腔', 'ZWQCHB', 'ECABRG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.55', '引流物', 'YLW', 'XIC', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.57', '右侧淋巴结个数', 'YBLBJG', 'DWICXW', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.56', '第III级淋巴结', 'DIIIJL', 'TXICX', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.58', '缩小靶病灶个数', 'SXBBZG', 'XIAUOW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.59', '缩小的靶病灶位置', 'SXDBBZ', 'XIRAUO', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.60', '右侧腋窝淋巴结融合情况', 'YBYWLB', 'DWEPIC', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.61', '行辅助放疗医院', 'HFZFLY', 'TLEYUA', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.62', '转移灶穿刺做否', 'ZYZCCZ', 'LTOPGW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.63', '穿刺活检医院', 'CCHJYY', 'PGISAB', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.64', '免疫组化ER3', 'MYZHER', 'QUXW', 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.65', '免疫组化PR3', 'MYZHPR', 'QUXW', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.66', '免疫组化HER2-3', 'MYZHHE', 'QUXW', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.67', '免疫组化FISH3', 'MYZHFI', 'QUXW', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.68', '免疫组化Ki-67-3', 'MYZHKI', 'QUXW', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.69', '分期检查头部CT', 'FQJCTB', 'WDSSUU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.70', '分期检查头部MRI', 'FQJCTB', 'WDSSUU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.71', '分期检查胸片', 'FQJCXP', 'WDSSET', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.72', '分期检查胸部CT', 'FQJCXB', 'WDSSEU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.73', '分期检查乳腺+淋巴结超声', 'FQJCRX', 'WDSSEE', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.74', '分期检查腹部超声', 'FQJCFB', 'WDSSEU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.75', '分期检查腹部CT', 'FQJCFB', 'WDSSEU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.76', '分期检查盆腔超声', 'FQJCPQ', 'WDSSWE', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.77', '分期检查盆腔CT', 'FQJCPQ', 'WDSSWE', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.78', '分期检查骨扫描', 'FQJCGS', 'WDSSMR', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.79', '分期检查其它', 'FQJCQT', 'WDSSDP', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.80', '始行化疗方案', 'SHHLFA', 'VTWUYP', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.81', '始行化疗方案几线', 'SHHLFA', 'VTWUYP', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.82', '始行化疗方案周期', 'SHHLFA', 'VTWUYP', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.83', '始行化疗呕吐等级', 'SHHLOT', 'VTWUKK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.84', '始行化疗腹泻等级', 'SHHLFX', 'VTWUEI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.85', '始行化疗白细胞下降等级', 'SHHLBX', 'VTWURX', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.86', '始行化疗粒细胞下降等级', 'SHHLLX', 'VTWUOX', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.87', '始行化疗血红蛋白下降等级', 'SHHLXH', 'VTWUTX', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.88', '始行化疗血小板下降等级', 'SHHLXX', 'VTWUTI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.89', '化疗末次化疗疗效评价', 'HLMCHL', 'WUGUWU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.90', '末次化疗靶病灶个数', 'MCHLBB', 'GUWUAU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.91', '末次化疗靶病灶变化位置', 'MCHLBB', 'GUWUAU', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.92', '末次化疗靶病灶大小变化', 'MCHLBB', 'GUWUAU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.93', '始行内分泌治疗方案', 'SHNFMZ', 'VTMWII', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.94', '始行内分泌治疗方案几线', 'SHNFMZ', 'VTMWII', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.95', '内分泌治疗月疗效评价', 'NFMZLY', 'MWIIUE', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.96', '末次内分泌治疗缩小的靶病灶个数', 'MCNFMZ', 'GUMWII', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.97', '完善分期检查', 'WSFQJC', 'PUWDSS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.98', '多次选择治疗项', 'DCXZZL', 'QUTRIU', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2004.99', '末次内分泌治疗靶病灶位置', 'MCNFMZ', 'GUMWII', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.01', '肿瘤类型-乳腺病史', 'ZLLX-R', 'EUOGEE', 1, 5, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.02', '亲属级别-乳腺病史', 'QSJB-R', 'UNXKEE', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.03', '亲属生存状况', 'QSSCZK', 'UNTDUU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ1001.09', '联系人关系', 'LXR"GX', 'BTWUT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ1001.11', '入院病情', 'RYBQ', 'TBUN', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ1001.12', '血型', 'XX', 'TG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ1001.13', 'RH', 'RH', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ1001.14', '病案质量', 'BAZL', 'UPRJ', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ1001.15', '离院方式', 'LYFS', 'YBYA', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ1001.16', '医疗付费方式', 'YLFFFS', 'AUWXYA', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ1001.17', '出生地', 'CSD', 'BTF', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ1001.18', '入院情况', 'RYQK', 'TBNU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ1001.02', '国籍', 'GJ', 'LT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ1001.01', '性别', 'XB', 'NK', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ1001.03', '省', 'S', 'I', 1, 5, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ1001.04', '市', 'S', 'Y', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ1001.05', '县', 'X', 'E', 0, null, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV00.00.001', '有无', 'YW', 'EF', 1, 0, '001001', to_date('20-02-2016 11:18:02', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('20-02-2016 11:20:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0107.12', '胃肠道症状', 'WCDZZ', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0107.13', '全身躯体性症状', 'QSQTXZ', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV5501.11', '治疗结果', 'ZLJG', null, 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0104.01', '意识1', 'YS1', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('27-10-2015 16:47:59', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0104.03', '眼球运动', 'YQYD', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0104.02', '定向力（时间、地点、人物）', 'DXL、', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0104.04', '语言', 'YY', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0104.05', '面瘫', 'MT', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0104.06', '上肢肌力（瘫痪侧）', 'SZJL', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0104.07', '手的肌力（瘫痪侧）', 'SDJL', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0104.08', '下肢肌力（瘫痪侧）', 'XZJL', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0104.09', '步行能力', 'BHNL', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0107.14', '性症状(如性欲丧失，月经紊乱)', 'XZZ(RX', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0107.11', '躯体性焦虑', 'QTXJL', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0107.15', '疑病症', 'YBZ', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0107.16', '自知力', 'ZZL', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0107.17', '体重减轻(根据病逝评分)', 'TZJQ(G', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
commit;
prompt 1100 records committed...
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0107.18', '昼夜变化型(白天重、晚上轻)', 'ZYBHX(', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0107.19', '现实解体和人格解体', 'XSJTHR', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0107.20', '类偏执狂症状', 'LPZKZZ', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0107.21', '强迫症', 'QPZ', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0108.01', '抑郁自评量表 评分', 'YYZPLB', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0109.01', 'HAMILTON焦虑量表 程度', 'HAMILT', null, 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0110.01', '焦虑自评量表( SAS)　评分', 'JLZPLB', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0114.01', '身体状况', 'STZK', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.04', '症状', 'ZZ', 'UU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.05', '疾病', 'JB', 'UU', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.06', '转移部位', 'ZYBW', 'LTUW', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.07', '类型', 'LX', 'OG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.08', '淋巴结情况', 'LBJQK', 'ICXNU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.09', '积液', 'JY', 'TI', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.10', '分期', 'FQ', 'WD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.11', '手术', 'SS', 'RS', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.12', '治疗线数', 'ZLXS', 'IUXO', 0, null, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.13', '血红蛋白水平', 'XHDBSP', 'TXNRIG', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.14', '淋巴结数目FLIPI', 'LBJSMF', 'ICXOH', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.15', '月经是否规律', 'YJSFGL', 'EXJDGT', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.16', '月经量', 'YJL', 'EXJ', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.17', '痛经情况', 'TJQK', 'UXNU', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.18', '孕期是否充足', 'YQSFCZ', 'BDJDYK', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.19', '有无流产', 'YWLC', 'DFIU', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.20', '有无引产', 'YWYC', 'DFXU', 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.21', '产褥', 'CR', 'UP', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.22', '哺乳方式', 'BRFS', 'KEYA', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.23', '产后是否抑郁', 'CHSFYY', 'URJDRD', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ2005.24', '男性避孕方式', 'NXBYFS', 'LNNBYA', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ1001.08', '婚姻', 'HY', 'VV', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ1001.07', '职业', 'ZY', 'BO', 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0114.02', '精神状态', 'JSZT', null, 1, 3, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0114.03', '活动度', 'HDD', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0114.04', '可移动性', 'KYDX', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0114.05', '失禁', 'SJ', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV5201.22', '药物使用-途径', null, null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV5101.56', '过敏症状', null, null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV5501.15', '病案质量代码', 'BAZLDM', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV5201.23', '手术操作的人体部位代码', 'SSBZDR', null, 0, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0103.02', '意识水平提问', 'YSSPTW', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0103.03', '意识水平指令', 'YSSPZL', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0103.04', '凝视', 'NS', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0103.05', '视野', 'SY', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0103.06', '面瘫', 'MT', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0103.07', '上肢运动', 'SZYD', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0103.08', '下肢运动', 'XZYD', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0103.09', '肢体共济失调', 'ZTGJST', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0103.10', '感觉', 'GJ', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0103.11', '语言', 'YY', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0103.12', '构音障碍', 'GYZA', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0103.13', '忽视', 'HS', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0103.01', '意识水平', 'YSSP', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV0300.01', '地址类别代码1', 'DZLBDM', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0113.03', '深静脉引流', 'SJMYL', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0102.06', '小便', 'XB', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0102.08', '床←→椅转移', 'CYZY', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0105.01', '患者状况', 'HZZK', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0113.02', '位置', 'WZ', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV5501.14', '切口愈合情况', 'QKYHQK', null, 1, 2, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CV5201.24', '麻醉方法', 'MZFF', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0102.02', '洗澡', 'XZ', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0102.03', '修饰（洗脸、梳头、刷牙、剃须）', 'XSXLST', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0102.04', '穿衣（解系纽扣、拉链、穿鞋等）', 'CYJXNK', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0102.05', '大便', 'DB', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0102.07', '用厕（包括拭净、整理衣裤、冲水）', 'YC', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0106.01', '描述', 'MS', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0102.09', '平地移动', 'PDYD', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0102.10', '上楼梯', 'SLT', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0107.01', '抑郁心境(感到悲伤、绝望、无依无靠、无用', 'YYXJ(G', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0107.02', '罪恶感', 'ZEG', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0107.03', '自杀', 'ZS', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0107.05', '失眠(中期)', 'SM(ZQ)', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCVZ0107.06', '失眠(晚期)', 'SM(WQ)', null, 1, 1, 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 'EMR', to_date('11-10-2015 14:09:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.100', '阴道流血', 'YDLX', 'BUIT', 1, 0, '001001', to_date('08-12-2016 18:32:43', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('08-12-2016 18:34:01', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.101', '哺乳', 'BR', 'KE', 1, 0, '001001', to_date('08-12-2016 18:37:31', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('08-12-2016 18:38:37', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.102', '用药方式', 'YYFS', 'EAYA', 1, 0, '001001', to_date('08-12-2016 18:53:01', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('08-12-2016 18:54:30', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.128', '五官检查', 'WGJC', 'GPSS', 1, 0, '001001', to_date('10-12-2016 11:26:06', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('10-12-2016 11:27:03', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV01.05.012', '活动', 'GD', 'IF', 1, 0, '001001', to_date('08-12-2016 13:55:24', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('08-12-2016 13:57:48', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.103', '患肢末梢血运', 'HZMSXY', 'KEGSTF', 1, 0, '001001', to_date('08-12-2016 19:56:35', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('08-12-2016 19:57:22', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.104', '外固定使用', 'WGDSY', 'QLPWE', 1, 0, '001001', to_date('08-12-2016 20:01:33', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('08-12-2016 20:02:56', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.109', '功能锻炼', 'GNDL', 'ACQO', 1, 0, '001001', to_date('08-12-2016 20:36:15', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('08-12-2016 20:36:56', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.110', '紫绀', 'ZG', 'HX', 1, 0, '001001', to_date('08-12-2016 20:41:23', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('08-12-2016 20:41:51', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.111', '外用药情况', 'WYYQK', 'QEANU', 1, 0, '001001', to_date('08-12-2016 20:58:55', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('08-12-2016 20:59:36', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.133', '新生儿基础护理', 'XSEJCHL', 'UTQADRG', 1, 0, '001001', to_date('12-12-2016 09:37:31', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('12-12-2016 09:40:16', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CVRC.01.001', '报卡类别', 'BKLB', 'RHOK', 1, 0, '001001', to_date('07-12-2016 20:41:54', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('07-12-2016 20:49:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CVRC.01.002', '订正报告', 'DZBG', 'YGRT', 1, 0, '001001', to_date('07-12-2016 20:47:08', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('07-12-2016 20:49:48', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CVRC.01.003', '性别(RC)', 'XB(RC)', 'NK(RC)', 1, 0, '001001', to_date('07-12-2016 21:14:41', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('07-12-2016 21:15:40', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CVRC.01.004', '实足年龄单位', 'SZNLDL', 'PKRHUW', 1, 0, '001001', to_date('07-12-2016 21:22:12', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('07-12-2016 21:25:43', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CVRC.01.005', '病人属于', 'BRSY', 'UWNG', 1, 0, '001001', to_date('07-12-2016 21:27:03', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('07-12-2016 21:29:08', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CVRC.01.006', '患者职业', 'HZZY', 'KFBO', 1, 0, '001001', to_date('07-12-2016 21:34:22', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('07-12-2016 21:34:27', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CVRC.01.007', '病例分类1', 'BLFL1', 'UWWO1', 1, 0, '001001', to_date('07-12-2016 21:54:10', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('07-12-2016 21:54:29', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CVRC.01.008', '病例分类2', 'BLFL2', 'UWWO2', 1, 0, '001001', to_date('07-12-2016 21:54:20', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('07-12-2016 21:58:49', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CVRC.01.009', '甲类传染病', 'JLCRB', 'LOWIU', 1, 0, '001001', to_date('07-12-2016 22:03:02', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('07-12-2016 22:03:07', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CVRC.01.010', '乙类传染病', 'YLCRB', 'NOWIU', 1, 1, '001001', to_date('09-12-2016 16:59:15', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-12-2016 20:15:33', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CVRC.01.010.01', '艾滋病', 'ACB', 'AIU', 1, 0, '001001', to_date('09-12-2016 20:04:01', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-12-2016 20:16:02', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CVRC.01.010.02', '病毒性肝炎', 'BDXGY', 'UGNEO', 1, 0, '001001', to_date('09-12-2016 20:04:17', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-12-2016 20:15:58', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CVRC.01.010.03', '登革热、炭疽', 'DGR、TJ', 'WAR、MU', 1, 0, '001001', to_date('09-12-2016 20:04:33', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-12-2016 20:15:55', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CVRC.01.010.04', '痢疾', 'LJ', 'UU', 1, 0, '001001', to_date('09-12-2016 20:04:46', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-12-2016 20:15:52', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CVRC.01.010.05', '肺结核', 'FJH', 'EXS', 1, 0, '001001', to_date('09-12-2016 20:04:59', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-12-2016 20:15:48', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CVRC.01.010.06', '伤寒', 'SH', 'WP', 1, 0, '001001', to_date('09-12-2016 20:05:18', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-12-2016 20:15:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
commit;
prompt 1200 records committed...
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CVRC.01.010.07', '淋病、梅毒', 'LB、MD', 'IU、SG', 1, 0, '001001', to_date('09-12-2016 20:05:31', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-12-2016 20:15:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CVRC.01.010.08', '血吸虫病、疟疾', 'XXCB、NJ', 'TKJU、UU', 1, 0, '001001', to_date('09-12-2016 20:05:53', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-12-2016 20:15:37', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CVRC.01.020', '丙类传染病', 'BLCRB', 'GOWIU', 1, 1, '001001', to_date('08-12-2016 09:14:23', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('08-12-2016 09:14:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CVRC.01.021', '其他重点监测传染病', 'JTCDJCCRB', 'AWTHJIWIU', 1, 0, '001001', to_date('08-12-2016 09:28:45', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('08-12-2016 09:31:51', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CVRC.01.022', '婚姻状况(RC)', 'HYZK(RC)', 'VVUU(RC)', 1, 0, '001001', to_date('08-12-2016 09:35:12', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('08-12-2016 09:42:55', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CVRC.01.023', '文化程度(RC)', 'WHCD(RC)', 'YWTY(RC)', 1, 0, '001001', to_date('08-12-2016 09:44:30', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('08-12-2016 09:57:18', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CVRC.01.024', '接触史', 'JCS', 'RQK', 1, 0, '001001', to_date('08-12-2016 09:57:56', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('08-12-2016 10:00:58', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CVRC.01.025', '感染途径', 'GRTJ', 'DIWT', 1, 0, '001001', to_date('08-12-2016 10:18:20', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('08-12-2016 10:20:37', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CVRC.01.026', '样本来源', 'YBLY', 'SSGI', 1, 0, '001001', to_date('08-12-2016 10:21:36', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('08-12-2016 10:23:29', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CVRC.01.027', 'HBsAg阳性时间', 'HBSAGYXSJ', 'HBSAGBNJU', 1, 0, '001001', to_date('08-12-2016 10:24:44', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('08-12-2016 10:24:48', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CVRC.01.028', '抗-HBc IgM1:1000检测结果 ', 'K-HBC IGM1:1000JCJG', 'R-HBC IGM1:1000SIXJ', 1, 0, '001001', to_date('08-12-2016 10:35:49', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('08-12-2016 10:36:37', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('CVRC.01.030', '恢复期血清HBsAg阴转', 'HFQXQHBSAG', 'NTATIHBSAGBL', 1, 0, '001001', to_date('08-12-2016 10:38:12', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('08-12-2016 10:42:27', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.124.00', '恶露色', 'ELS', 'GFQ', 1, 0, '001001', to_date('09-12-2016 09:44:18', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-12-2016 09:45:45', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.124.01', '恶露味', 'ELW', 'GFK', 1, 0, '001001', to_date('09-12-2016 09:44:34', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-12-2016 09:49:58', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.136', '治疗处置', 'CLCZ', 'IUTL', 1, 0, '001001', to_date('12-12-2016 04:01:08', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('12-12-2016 04:03:01', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.108', '引流装置', 'YLZZ', 'XIUL', 1, 1, '001001', to_date('08-12-2016 20:31:26', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('08-12-2016 20:32:55', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.116', '颜面口唇指端', 'YMKCZD', 'UDKDRU', 1, 0, '001001', to_date('09-12-2016 08:53:58', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-12-2016 08:54:50', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.118', '睡眠质量', 'SMZL', 'HHRJ', 1, 0, '001001', to_date('09-12-2016 09:02:22', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-12-2016 09:04:09', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.119', '胸闷气短', 'XMQD', 'EURT', 1, 0, '001001', to_date('09-12-2016 09:13:47', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-12-2016 09:14:50', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.120', '心前区疼痛', 'XQQTT', 'NUAUU', 1, 0, '001001', to_date('09-12-2016 09:17:06', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-12-2016 09:17:51', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.121', '水肿度', 'SZD', 'IEY', 1, 0, '001001', to_date('09-12-2016 09:25:22', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-12-2016 09:26:18', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.122', '宫底高度', 'GDGD', 'PYYY', 1, 0, '001001', to_date('09-12-2016 09:35:14', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-12-2016 09:36:19', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.123', '会阴伤口', 'HYSK', 'WBWK', 1, 0, '001001', to_date('09-12-2016 09:40:03', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-12-2016 09:41:15', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.125', '排气', 'PQ', 'RR', 1, 0, '001001', to_date('09-12-2016 09:58:08', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-12-2016 10:02:59', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.126', '哭声', 'KS', 'KF', 1, 0, '001001', to_date('09-12-2016 10:10:01', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('09-12-2016 10:11:07', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.130', '眼睛', 'YJ', 'HH', 1, 0, '001001', to_date('10-12-2016 16:51:09', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('10-12-2016 16:52:10', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.131', '口腔', 'KQ', 'KE', 1, 0, '001001', to_date('10-12-2016 16:55:09', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('10-12-2016 16:56:19', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.03.001.22', '黄疸', 'HD', 'AU', 1, 0, '001001', to_date('20-12-2016 11:49:51', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('20-12-2016 11:53:05', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into CODE_VALUE_ (id, name, pym, wbm, enabled, version, input_worker_id, input_date, update_worker_id, update_date, status)
values ('HSCV06.01.145', '氧流量', 'YLL', 'RIJ', 1, 0, '001001', to_date('16-01-2017 17:21:46', 'dd-mm-yyyy hh24:mi:ss'), '001001', to_date('16-01-2017 17:23:09', 'dd-mm-yyyy hh24:mi:ss'), 1);
commit;
prompt 1229 records loaded
prompt Enabling triggers for CODE_VALUE_...
alter table CODE_VALUE_ enable all triggers;
set feedback on
set define on
prompt Done.
