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
Echo 原DLL文件已成功删除,请按任意键继续下载最新DLL文件,请耐心等待,下载完成后会自动打开登录界面:关闭窗体则不下载 & pause > nul
start %cd%\HS.MC.AutoDownLoad.exe