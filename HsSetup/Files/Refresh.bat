rem @echo off

for /r %cd% %%a in (*) do (
   if "%%~nxa" neq "HS.MC.AutoDownLoad.exe" (
      if "%%~nxa" neq "HS.MC.SystemSet.exe" (
	     if "%%~nxa" neq "Ionic.Zip.dll" (
	       if "%%~nxa" neq "setup.ini" (
		    if "%%~nxa" neq "Refresh.bat" (
               del /a /f "%%a"
             )
		   )
         )
	  )
	)
)
for /f "delims=" %%b in ('dir /ad /b /s %cd%^|sort /r') do (
   rd "%%b"
)
Echo ԭDLL�ļ��ѳɹ�ɾ��,�밴�����������������DLL�ļ�,�����ĵȴ�,������ɺ���Զ��򿪵�¼����:�رմ��������� & pause > nul
start %cd%\HS.MC.AutoDownLoad.exe