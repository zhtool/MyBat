功能：
此脚本使用“数据泵”导入整个HIS数据库
注：导出文件必须为数据泵导出的.dmp文件

操作步骤：
1、拷贝dump文件到  D:\test\dump
2、修改 .DMP文件名为 HIS_DP.DMP
3、执行ImpHisDp.bat导入数据
4、查看Log日志文件，导入是否正常


注意：
1、此脚本必须在服务器执行
2、导入成功后删除脚本

conn sys/tigersysdba as sysdba;
grant execute on dbms_alert to  hospital;
grant execute on dbms_crypto to  hospital;
grant execute on dbms_alert to  hshis;
grant execute on dbms_crypto to  hshis;
