功能说明：
    用户：HSCENTER
	导出：1-9字头报表 【缺少3、7、8开头的报表】
    包括：REPORT_FILE_,REPORT_CATALOG_,report_,report_history_
	备注：导入脚本会先清除现有1-9字头报表，然后导入新报表
	      只导出最新版本数据，筛选了历史版本
------------------------------------------------------
注意事项：
    脚本必须在数据服务器执行；
    不得在业务高峰期执行脚本；	
------------------------------------------------------
操作说明：
    1、运行 .\ExpDpTable.bat
    2、导入文件位置 .\dump 


脚本思路：
1、导出报表数据[源数据库]
 expdp system/tigersysdba tables=hscenter.REPORT_FILE_, dumpfile =expdp_REPORT_FILE_.dmp logfile=expdp_REPORT_FILE_.log directory=DPPATH1 compression=NONE content=ALL reuse_dumpfiles=y  query='"""where report_id in(select id from hscenter.v_REPORT_id_201611)"""'
 expdp system/tigersysdba tables=hscenter.REPORT_FILE_,hscenter.REPORT_CATALOG_,hscenter.report_ dumpfile =dp_REPORT_.dmp logfile=dp_REPORT_log.log directory=DPPATH1 compression=NONE content=ALL reuse_dumpfiles=y  
 
2、修改188表名称[目标数据库]
alter table hscenter.report_ rename to report_20170116B;
alter table hscenter.report_file_ rename to report_file_20170116B;
alter table hscenter.report_history_ rename to report_history_20170116B;
 
3、导入报表数据[目标数据库]
impdp system/tigersysdba tables=hscenter.REPORT_FILE_,hscenter.REPORT_CATALOG_,hscenter.report_ directory=DPPATH1 dumpfile=dp_HsCenter_REPORT.dmp table_exists_action=APPEND data_options=SKIP_CONSTRAINT_ERRORS parallel=2  logfile=impdp_REPORT_log.log.log

=========================================
导出步骤：
1、创建临时表-目录
create table hscenter.report_catalog_Temps as
select *
  from hscenter.report_catalog_ a
 where a.id in ('navBarGroup7', 'navBarItem276')
   and owner = 'HSHIS'
union
select *
  from hscenter.report_catalog_ a
 where a.parentid = 'navBarItem276'
   and owner = 'HSHIS'
   and id not in ('rc20160908000038', 'rc20160908000039', 'rc20160909000078',
        'rc20161206000122')
/

create or replace view hscenter.v_report_file_ as
select f.*
  from hscenter.report_catalog_temps t,
       hscenter.report_              p,
       hscenter.report_file_         f
 where p.report_catalog_id = t.id
   and p.hospid = '*'
   and p.owner = 'HSHIS'
   and f.report_id = p.id
   and f.hospid = '*'
   and f.owner = 'HSHIS'
   and f.version = p.version
/

--select * from hscenter.report_file_ f
--where (report_id,hospid,owner,version) in( select report_id,hospid,owner,version from hscenter.v_report_file_)
 
2、







导入步骤：
1、创建备份表
a\
create table hscenter.report_20170220 as
select * from hscenter.report_;

create table hscenter.REPORT_FILE_20170220 as
select * from hscenter.REPORT_FILE_;

create table hscenter.REPORT_HISTORY_20170220 as
select * from hscenter.REPORT_HISTORY_;

create table hscenter.REPORT_CATALOG_20170220 as
select * from hscenter.REPORT_CATALOG_;

b\

a\create table tab_name_20170220 as select * from tab_name_20170220
  REPORT_FILE_,report_,report_history_,REPORT_CATALOG_
b\


--1
create table hscenter.report_catalog_Temps as
select *
  from hscenter.report_catalog_ a
 where a.id in ('navBarGroup7', 'navBarItem276')
   and owner = 'HSHIS'
union
select *
  from hscenter.report_catalog_ a
 where a.parentid = 'navBarItem276'
   and owner = 'HSHIS'
   and id not in ('rc20160908000038', 'rc20160908000039', 'rc20160909000078',
        'rc20161206000122')
/
  
 
select * from report_catalog_Temps
navBarGroup7	       0	        HSHIS	统计分析	       SYSTEM	296	101208	2017-01-19 11:15:10
navBarItem276	    navBarGroup7    HSHIS	查询统计	       SYSTEM	297	101208	2017-01-19 11:15:10
rc20160908000029	navBarItem276	HSHIS	库存类报表-[1]	   CUSTOM	1	001001	2016-09-08 10:29:24
rc20160908000030	navBarItem276	HSHIS	库存类报表-[2]	   CUSTOM	2	001001	2016-09-08 10:29:40
rc20160908000031	navBarItem276	HSHIS	杂费分类统计报表-[3]	CUSTOM	3	001001	2016-09-08 10:30:11
rc20160908000032	navBarItem276	HSHIS	门诊业务统计-[4]	CUSTOM	4	001001	2016-09-21 21:00:19
rc20160908000033	navBarItem276	HSHIS	住院记账报表-[5]	CUSTOM	5	001001	2016-09-08 10:30:57
rc20160908000034	navBarItem276	HSHIS	出院结账报表-[6]	CUSTOM	6	001001	2016-09-08 10:31:14
rc20160908000035	navBarItem276	HSHIS	住院结算报表-[7]	CUSTOM	7	001001	2016-09-08 10:31:31
rc20160908000036	navBarItem276	HSHIS	出院结账报表-[8]	CUSTOM	8	001001	2016-09-08 10:31:48
rc20160908000037	navBarItem276	HSHIS	库存类报表-[9]	CUSTOM	9	001001	2016-09-08 10:32:05
--11行
 select t.id tid, t.parentid tparentid, t.name tname, p.*
   from hscenter.report_catalog_temps t, hscenter.report_ p
  where p.report_catalog_id = t.id
    and p.hospid = '*'
  order by t.parentid, t.seq
库存类报表-[1]	2016091200000991	*	HSHIS	5	101_账务查询	USER	001001	2016-09-19 17:23:38	rc20160908000029	
库存类报表-[1]	2016090900000964	*	HSHIS	2	104_库存部门流通出入库报表	USER	001001	2016-09-21 17:35:39	rc20160908000029	
库存类报表-[1]	2016091200001001	*	HSHIS	2	102_多部门账务统计查询	USER	001001	2016-09-21 17:35:52	rc20160908000029	
库存类报表-[1]	2016091200001003	*	HSHIS	3	103_多部门账务查询(单科目)	USER	001001	2016-09-21 17:35:57	rc20160908000029	
库存类报表-[1]	2016112900001198	*	HSHIS	1	110_库存销售分析	USER	001001	2016-11-29 20:17:58	rc20160908000029	
库存类报表-[1]	2016092600001103	*	HSHIS	1	116_流通单据	USER	001001	2016-09-26 21:13:23	rc20160908000029	HS.HIS.USL.Drug.Store,DrugStoreCirculationSearch
库存类报表-[1]	2016112900001196	*	HSHIS	2	106_库存流通部门出库报表	USER	001001	2016-11-29 20:08:36	rc20160908000029	
库存类报表-[1]	2016092300001079	*	HSHIS	1	106_库存部门出库报表	USER	001001	2016-11-29 18:12:50	rc20160908000029	
库存类报表-[1]	2016112900001197	*	HSHIS	1	107_库存流通部门入库报表	USER	001001	2016-11-29 20:09:17	rc20160908000029	
库存类报表-[1]	2016092000001023	*	HSHIS	2	105_库存流通业务报表	USER	001001	2016-09-21 17:36:02	rc20160908000029	
库存类报表-[2]	2016092000001019	*	HSHIS	2	门诊处方发药明细	USER	001001	2016-09-21 17:37:28	rc20160908000030	
库存类报表-[2]	2016092000001020	*	HSHIS	2	药房住院记帐报表	USER	001001	2016-09-21 17:37:32	rc20160908000030	
库存类报表-[2]	2016092000001021	*	HSHIS	1	住院药房发药名细	USER	001001	2016-09-21 17:37:37	rc20160908000030	
库存类报表-[2]	2016092000001022	*	HSHIS	3	242_单药房出库金额年报表	USER	001001	2016-09-21 17:37:41	rc20160908000030	
库存类报表-[2]	2016092100001032	*	HSHIS	2	210_处方出库明细	USER	001001	2016-09-22 10:36:28	rc20160908000030	
库存类报表-[2]	2016092100001031	*	HSHIS	2	288_执行科室杂费统计报表	USER	001001	2016-09-22 11:52:41	rc20160908000030	
库存类报表-[2]	2016092200001051	*	HSHIS	5	297_医生开单杂费统计报表(执行科室)	USER	001001	2016-09-22 17:07:07	rc20160908000030	
库存类报表-[2]	2016092300001055	*	HSHIS	1	265_病人科室药品销售分类分析	USER	001001	2016-09-23 16:31:21	rc20160908000030	
库存类报表-[2]	2016090900000966	*	HSHIS	9	201_处方取药出库金额日报表	USER	001001	2016-09-09 20:35:53	rc20160908000030	
库存类报表-[2]	2016091100000976	*	HSHIS	3	250_药房出库明细日报表	USER	001001	2016-09-12 16:29:48	rc20160908000030	
库存类报表-[2]	2016092200001050	*	HSHIS	3	294_医生开单明细报表(病人科室)	USER	001001	2016-09-22 16:56:07	rc20160908000030	
库存类报表-[2]	2016090900000968	*	HSHIS	6	240_药房出库金额日报表	USER	001001	2016-09-12 09:27:12	rc20160908000030	
库存类报表-[2]	2016090900000969	*	HSHIS	2	202_处方出库金额月报表	USER	001001	2016-09-21 17:36:19	rc20160908000030	
库存类报表-[2]	2016091900001015	*	HSHIS	3	药房发药金额(会计科目)	USER	001001	2016-09-19 17:41:45	rc20160908000030	
库存类报表-[2]	2016090900000970	*	HSHIS	1	203_单部门处方出库金额年报表	USER	001001	2016-09-21 17:36:24	rc20160908000030	
库存类报表-[2]	2016090900000971	*	HSHIS	2	241_药房出库金额月报表	USER	001001	2016-09-21 17:36:29	rc20160908000030	
库存类报表-[2]	2016091100000975	*	HSHIS	4	210_处方出库明细日报表	USER	001001	2016-09-21 17:36:34	rc20160908000030	
库存类报表-[2]	2016091100000981	*	HSHIS	1	270_处方录入数量日报表	USER	001001	2016-09-21 17:36:43	rc20160908000030	
库存类报表-[2]	2016091200000997	*	HSHIS	3	273_处方录入金额日报表	USER	001001	2016-09-21 17:36:48	rc20160908000030	
库存类报表-[2]	2016091200001000	*	HSHIS	2	276_处方收费数量日报表	USER	001001	2016-09-21 17:36:53	rc20160908000030	
库存类报表-[2]	2016091200001002	*	HSHIS	3	药房发药金额(费用类型)	USER	001001	2016-09-21 17:36:59	rc20160908000030	
库存类报表-[2]	2016091200001004	*	HSHIS	2	279_处方收费金额日报表	USER	001001	2016-09-21 17:37:04	rc20160908000030	
库存类报表-[2]	2016091200001005	*	HSHIS	3	药房发药明细	USER	001001	2016-09-21 17:37:09	rc20160908000030	
库存类报表-[2]	2016091900001016	*	HSHIS	4	门诊处方发药金额(费用类型)	USER	001001	2016-09-21 17:37:17	rc20160908000030	
库存类报表-[2]	2016091900001017	*	HSHIS	3	门诊处方发药金额(会计科目)	USER	001001	2016-09-21 17:37:22	rc20160908000030	
库存类报表-[2]	2016092100001035	*	HSHIS	2	285_处方取药金额	USER	001001	2016-09-21 21:31:44	rc20160908000030	
库存类报表-[2]	2016092100001033	*	HSHIS	1	282_处方取药数量	USER	001001	2016-09-21 21:31:51	rc20160908000030	
库存类报表-[2]	2016092200001047	*	HSHIS	1	224_医嘱出库明细	USER	001001	2016-09-22 11:17:25	rc20160908000030	
库存类报表-[2]	2016092100001042	*	HSHIS	4	220_医嘱出库金额	USER	001001	2016-09-21 22:37:10	rc20160908000030	
库存类报表-[2]	2016092200001048	*	HSHIS	2	230_医嘱出库明细	USER	001001	2016-09-22 11:47:50	rc20160908000030	
库存类报表-[2]	2016092200001049	*	HSHIS	1	291_病人科室杂费统计报表	USER	001001	2016-09-22 16:17:18	rc20160908000030	
库存类报表-[2]	2016092300001074	*	HSHIS	2	266_药房药品销售分类分析	USER	001001	2016-09-23 16:28:11	rc20160908000030	
门诊业务统计-[4]	2016092100001041	*	HSHIS	3	405*_门诊收入汇总表	USER	001001	2016-09-21 21:52:10	rc20160908000032	
门诊业务统计-[4]	2016092100001036	*	HSHIS	1	401A_开单科室门诊业务报表	USER	001001	2016-09-22 21:08:39	rc20160908000032	
门诊业务统计-[4]	2016092100001038	*	HSHIS	4	402_执行科室门诊业务报表	USER	001001	2016-09-22 17:18:55	rc20160908000032	
门诊业务统计-[4]	2016092100001039	*	HSHIS	1	403_执行科室-开单科室门诊业务报表	USER	001001	2016-09-22 17:18:13	rc20160908000032	
门诊业务统计-[4]	2016092100001040	*	HSHIS	2	404_开单科室-执行科室门诊业务报表	USER	001001	2016-09-22 10:13:51	rc20160908000032	
门诊业务统计-[4]	2016092100001037	*	HSHIS	1	401C_开单科室门诊业务报表	USER	001001	2016-09-22 21:40:30	rc20160908000032	
门诊业务统计-[4]	2016092100001034	*	HSHIS	4	401_开单科室门诊业务报表	USER	001001	2016-09-22 21:39:49	rc20160908000032	
住院记账报表-[5]	2016092000001018	*	HSHIS	3	501_全院住院记账报表	USER	001001	2016-09-21 17:38:33	rc20160908000033	
住院记账报表-[5]	2016091200001011	*	HSHIS	3	504_执行科室住院记账报表	USER	001001	2016-09-21 09:11:38	rc20160908000033	
住院记账报表-[5]	2016091200001009	*	HSHIS	1	506*_手术室住院记账报表	USER	001001	2016-09-21 09:02:45	rc20160908000033	
住院记账报表-[5]	2016091200001012	*	HSHIS	1	505*_住院记账汇总表	USER	001001	2016-09-20 16:34:59	rc20160908000033	
出院结账报表-[6]	2016092300001072	*	HSHIS	1	651_全院收入报表401+501或601	USER	001001	2016-11-29 19:41:10	rc20160908000034	
出院结账报表-[6]	2016092300001056	*	HSHIS	4	601_全院出院结账业务报表	USER	001001	2016-09-23 15:54:21	rc20160908000034	
出院结账报表-[6]	2016112900001200	*	HSHIS	3	全院出院结账报表401+601	USER	001001	2016-11-29 20:23:06	rc20160908000034	
出院结账报表-[6]	2016092300001067	*	HSHIS	1	610*_应退款病人统计报表	USER	001001	2016-09-26 22:56:10	rc20160908000034	
出院结账报表-[6]	2016092600001104	*	HSHIS	1	610*_应退款病人明细	USER	001001	2016-09-26 22:48:44	rc20160908000034	
出院结账报表-[6]	2016092300001058	*	HSHIS	2	602_出院病人结账报表	USER	001001	2016-09-24 18:31:06	rc20160908000034	
出院结账报表-[6]	2016092300001057	*	HSHIS	1	601C_全院出院结账业务报表	USER	001001	2016-09-23 16:23:43	rc20160908000034	
出院结账报表-[6]	2016112900001199	*	HSHIS	2	全院出院结账报表401+501	USER	001001	2016-11-29 20:22:48	rc20160908000034	
出院结账报表-[6]	2016092300001062	*	HSHIS	1	605*_出院结账汇总表	USER	001001	2016-09-25 20:52:59	rc20160908000034	
出院结账报表-[6]	2016092300001066	*	HSHIS	1	609*_出院病人统计报表	USER	001001	2016-09-26 12:15:06	rc20160908000034	
出院结账报表-[6]	2016092300001061	*	HSHIS	1	604_转科病人账务查询	USER	001001	2016-09-25 20:50:04	rc20160908000034	
出院结账报表-[6]	2016092300001063	*	HSHIS	1	606*_手术室出院结账报表	USER	001001	2016-09-24 10:48:52	rc20160908000034	
出院结账报表-[6]	2016092300001065	*	HSHIS	1	608*_新生儿出院结账报表	USER	001001	2016-09-25 22:08:35	rc20160908000034	
库存类报表-[9]	2016092400001083	*	HSHIS	1	950_流通单出库明细	USER	001001	2016-09-24 10:53:41	rc20160908000037	
库存类报表-[9]	2016092400001087	*	HSHIS	1	960_流通单入库金额	USER	001001	2016-09-24 15:38:11	rc20160908000037	
库存类报表-[9]	2016092400001082	*	HSHIS	1	940_流通单出库金额	USER	001001	2016-09-24 10:54:06	rc20160908000037	
库存类报表-[9]	2016092400001088	*	HSHIS	1	970_流通单入库明细	USER	001001	2016-09-25 15:46:14	rc20160908000037	
--70行