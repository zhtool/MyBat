功能：
1、新建用户
2、导入指定用户数据

注意事项：
1、此脚本需在服务器执行
2、检查服务器D盘(数据库安装目录所在磁盘)空间，空余空间不得小于50G

操作步骤：
1、拷贝相关dump文件到  D:\test\dump
1、执行ExpBat.bat导出数据
2、检查Log日志文件，验证导入脚本执行情况
3、保存日志文件
4、删除脚本


road_map 以下内容为
------------
1、升级HIS到4.57
2、升级电子病历
   升级到4.0最高版本
   4.0-5.0 改版
   升级到5.0最高版本
   5.0-6.0 改版
3、5.0-6.0 改版
   创建用户
   HSHIS
   HSCENTER
   HSEMR
   HSOIS
  执行： Crt_NoHis_User-》Load.bat   


   导入用户数据
   HSHIS
   HSCENTER
   HSEMR
   HSOIS
   ImpDpUser-》ImpDpUser.bat

   清空病历内容   
   TruncateHsemrTab.txt   

   配置IIS：   HsWebServices

   更改 hscenter.app_config

   配置 rabbitma
        

   制作安装包 AutoDownLoad IP=his服务器IP
   用户授权
   设置科室模板权限
   





















