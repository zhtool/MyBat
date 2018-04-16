@echo off
echo #---.gitignore %date% %time%--- >.\.gitignore
set f_name=.\.gitignore
echo .gitignore>>%f_name%
rem echo *.txt>>%f_name%
echo *.zip>>%f_name%
echo *.rar>>%f_name%
echo *.log>>%f_name%
echo *.~plb>>%f_name%
echo *.~pck>>%f_name%
echo *.~fnc>>%f_name%
echo *.~sql>>%f_name%
echo gitignore.bat>>%f_name%
echo GitLoad.bat>>%f_name%
echo
rem git add .gitignore
rem git commit -m "modify .gitignore"
echo #---ZhHint:https://github.com/github/gitignore--- >>.\.gitignore
rem pause
