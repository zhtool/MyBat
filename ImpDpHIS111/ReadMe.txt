���ܣ�
�˽ű�ʹ�á����ݱá���������HIS���ݿ�
ע�������ļ�����Ϊ���ݱõ�����.dmp�ļ�

�������裺
1������dump�ļ���  D:\test\dump
2���޸� .DMP�ļ���Ϊ HIS_DP.DMP
3��ִ��ImpHisDp.bat��������
4���鿴Log��־�ļ��������Ƿ�����


ע�⣺
1���˽ű������ڷ�����ִ��
2������ɹ���ɾ���ű�

conn sys/tigersysdba as sysdba;
grant execute on dbms_alert to  hospital;
grant execute on dbms_crypto to  hospital;
grant execute on dbms_alert to  hshis;
grant execute on dbms_crypto to  hshis;
