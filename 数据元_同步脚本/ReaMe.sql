�״�ʵʩ��ũ��ʦҽԺ
---------------------------------
����˵����
    ͬ������ҽԺ������Ԫ

������Դ��
    Դ���ݿ�  [��ȡ����Ԫ�����ݿ�]
	Ŀ�����ݿ�[��������Ԫ�����ݿ�]
---------------------------------
˼·��
	1����Դ���ݵ����ű�
		DATA_ELEMENT_
		DATA_GROUP_
		DATA_SET_
		DATA_SET_VERSIONS_
		DATA_SET_VS_DG_OR_DE_
		CODE_VALUE_
		CODE_VALUE_DETAILS_
		CODE_VALUE_VERSIONS_
		DATA_GROUP_VS_DATA_ELEMENT_
	2�����Ի�
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
	CREATE USER "HSEMR1"ִ�� CrtHsemr1.txt
	   ��������Դ�����Ľű�
	   �Ӳ��Ի���������ű�

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

	3������Ŀ�����ݿ�
	
	

ע������:
    ��HIS���ݷ��������нű� 
������ʽ��
    ִ�� loads.bat;
---------------------------------
��ע��
    
---------------------------------
