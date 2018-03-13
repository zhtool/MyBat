create or replace package pck_file is

  -- Author  : ZHPC
  -- Created : 2016-09-08 11:10:20
  -- Purpose : ORACLE操作TXT文档
  -------------------------------------------------------------------------------------
  /*  conn sys/tigersysdba as sysdba
  grant execute on sys.utl_file to hsdoc;
  create or replace directory FILENAME as 'E:\TEMP_TXT';
  grant read ,write on directory  FILENAME  to hsdoc;*/

  --  procedure load_txt(in_txt_name in varchar2);
  procedure insert_from_txt(in_owner     in varchar2,
                            in_DIRECTORY in varchar2,
                            in_txt_name  in varchar2);
  -------------------------------------------------------------------------------------

end pck_file;
/
create or replace package body pck_file is
  -----------------------------------------------------------------------------
  procedure load_txt(in_txt_name in varchar2) is
    filehandle utl_file.file_type;
    filebuffer varchar(200);
  begin
    filehandle := utl_file.fopen('FILENAME', in_txt_name, 'r');
    loop
      begin
        utl_file.get_line(filehandle, filebuffer);
        INSERT INTO HSFILE.FILE_INDEX_ (name) VALUES (filebuffer);
      EXCEPTION
        WHEN no_data_found THEN
          exit;
      End;
    END LOOP;
    utl_file.fclose(filehandle);
    COMMIT;
  end load_txt;
  -----------------------------------------------------------------------------
  --读取.txt文档内容，按行插入数据库
  procedure insert_from_txt(in_owner    in varchar2,
                            in_DIRECTORY     in varchar2,
                            in_txt_name in varchar2) is
    filehandle utl_file.file_type;
    filebuffer varchar(200);
    v_owner    HSFILE.FILE_INDEX.owner%type;
    v_DIRECTORY     HSFILE.FILE_INDEX.DIRECTORY%type;
  
  begin
    if in_owner is null or in_DIRECTORY is null or in_txt_name is null then
      raise_application_error(-20001,
                              '用户名、文件路径、文件名 均不能为空!!');
    end if;
  
    select upper(in_owner), upper(in_DIRECTORY) into v_owner, v_DIRECTORY from dual;
  
    delete from HSFILE.FILE_INDEX
     where owner = v_owner
       and DIRECTORY = v_DIRECTORY;
    commit;
    filehandle := utl_file.fopen('FILENAME', in_txt_name, 'r');
    loop
      begin
        utl_file.get_line(filehandle, filebuffer);
        INSERT INTO HSFILE.FILE_INDEX
          (owner, DIRECTORY, name)
        VALUES
          (v_owner, in_DIRECTORY, filebuffer);
      EXCEPTION
        WHEN no_data_found THEN
          exit;
      End;
    END LOOP;
    utl_file.fclose(filehandle);
    COMMIT;
  end insert_from_txt;
  -----------------------------------------------------------------------------
begin
  null;
end pck_file;
/
