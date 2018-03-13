首次实施：农二师医院
---------------------------------
功能说明：
    同步两个医院的数据元

数据来源：
    源数据库  [提取数据元的数据库]
	目标数据库[插入数据元的数据库]
---------------------------------
思路：
	1、从源数据导出脚本
		DATA_ELEMENT_
		DATA_GROUP_
		DATA_SET_
		DATA_SET_VERSIONS_
		DATA_SET_VS_DG_OR_DE_
		CODE_VALUE_
		CODE_VALUE_DETAILS_
		CODE_VALUE_VERSIONS_
		DATA_GROUP_VS_DATA_ELEMENT_
	2、测试机
conn hsemr/hsemr;
grant select on hsemr.data_element_  to hsemr1;
grant select on hsemr.data_group_  to hsemr1;
grant select on hsemr.data_set_ to hsemr1;
grant select on hsemr.data_set_versions_ to hsemr1;
grant select on hsemr.data_set_vs_dg_or_de_ to hsemr1;
grant select on hsemr.code_value_ to hsemr1;
grant select on hsemr.code_value_details_ to hsemr1;
grant select on hsemr.code_value_versions_ to hsemr1;
--2=============================
conn hsemr1/hsemr1;
create table data_element_ as
select * from hsemr.data_element_
where rownum = 0
/
create table data_group_ as
select * from hsemr.data_group_
where rownum = 0
/
create table data_set_ as
select * from hsemr.data_set_
where rownum = 0
/
create table data_set_versions_ as
select * from hsemr.data_set_versions_
where rownum = 0
/
create table data_set_vs_dg_or_de_ as
select * from hsemr.data_set_vs_dg_or_de_
where rownum = 0
/
create table code_value_ as
select * from hsemr.code_value_
where rownum = 0
/
create table code_value_details_ as
select * from hsemr.code_value_details_
where rownum = 0
/
create table code_value_versions_ as
select * from hsemr.code_value_versions_
where rownum = 0
/
	CREATE USER "HSEMR1"执行 CrtHsemr1.txt
	   插入数据源导出的脚本
	   从测试机导出插入脚本

	   create public database link his100 connect to hospital identified by source using 'his100';
	   
select *
  from hsemr1.data_element_
 where id in (select id  from hsemr1.data_element_ minus   select id from hsemr.data_element_@his100)


select * from hsemr1.CODE_VALUE_
where id in (select id  from hsemr1.CODE_VALUE_ minus   select id from hsemr.CODE_VALUE_@his100)


select * from hsemr1.CODE_VALUE_VERSIONS_
where CODE_VALUE_id in (select id  from hsemr1.CODE_VALUE_ minus   select id from hsemr.CODE_VALUE_@his100)

select * from hsemr1.CODE_VALUE_DETAILS_
where CODE_VALUE_id in (select id  from hsemr1.CODE_VALUE_ minus   select id from hsemr.CODE_VALUE_@his100)

	3、插入目标数据库
	
	

注意事项:
    在HIS数据服务器运行脚本 
操作方式：
    执行 loads.bat;
---------------------------------
备注：
    
---------------------------------
