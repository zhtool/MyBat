=============================
2243@qq.com tt275
https://git.hollysource.com/
https://github.com/zhtool
https://github.com/zhsofts
=============================
Command line instructions
------------------
Git global setup
git config --global user.name "ZhangXN"
git config --global user.email "22432108@qq.com"
------------------
Create a new repository
git clone git@git.hollysource.com:ZhangXN/MyTools.git
git clone git@git.hollysource.com:interface/hb-netstar.git

cd MyTools
touch README.md
git add README.md
git commit -m "add README"
git push -u origin master
------------------
Existing folder
cd existing_folder
git init
git remote add origin git@git.hollysource.com:ZhangXN/MyTools.git
git remote add origin git@git.hollysource.com:interface/hb-netstar.git

git add .
git commit -m "Initial commit"
git push -u origin master
------------------
Existing Git repository
cd existing_repo
git remote rename origin old-origin
git remote add origin git@git.hollysource.com:ZhangXN/MyTools.git
git remote add origin git@git.hollysource.com:interface/hipif.git
git push -u origin --all
git push -u origin --tags 
=============================
在Windows上安装Git
http://msysgit.github.io/
git config --global user.name "Your Name" 
git config --global user.email "email@example.com"
git config --global user.name "ZhangXN"
git config --global user.email "22432108@qq.com"
ssh-keygen -t rsa -C "22432108@qq.com" -b 4096
cat ~/.ssh/id_rsa.pub | clip
rem github增加ssh-key 
=============================
使用git命令
  1、使用git bash
  2、使用msdos
      设置环境变量[可在cmd中运行git命令，方便生成cmd脚本]
	      git_cmd C:\Program Files\Git	   
=============================
创建版本库
cd /d E:\TEST\GitTest
git init
git remote add origin git@github.com：zhtool001 / ZhSoft.git
git clone git@github.com:zhtool001/ZhSoft.git
cd zhsoft
echo #>ReadMe.md
rem modiffy ReadMe.md
git status
git diff ReadMe.md 
  rem 区分大小写 git diff readme.md
type ReadMe.md
  rem git-bash cat ReadMe.md
git add ReadMe.md
git commit -m "first commit"
git push -u origin master
=============================
查阅版本信息
git log --pretty=oneline --graph --abbrev-commit -9
git reflog -9
=============================
创建分支与合并
git checkout -b develop
  rem git branch develop
  rem git checkout develop
rem modiffy readme.md
git add ReadMe.md
git commit -m "branch test"
type ReadMe.md
git branch
git checkout master
type ReadMe.md
  rem 比较ReadMe.md变化，dev与master上的ReadMe.md不一致
git merge develop
type ReadMe.md
git branch -d develop

git checkout -b dev2
git branch
rem modiffy readme.md
git status 
git diff ReadMe.md
git add ReadMe.md
git commit -m"branch dev2"

rem modiffy readme.md
git add ReadMe.md
git commit -m"branch dev2-1"
type ReadMe.md
git checkout master
type ReadMe.md
rem modiffy readme.md
git add ReadMe.md
git commit -m"modiffy master-readme.md"
git merge dev2
 
=============================
屏蔽特殊文件.gitignore

##----------------------------
*.rar
*.zip
*.~sql
*.~pck 
*.~SQL 
*.log
*.dll
/Doc/
/Tools/
/TestJob
/data_integration/
/install/crt_pck_view/DIR_VIEW/
/install/plb/
/kettleScript/
##----------------------------

@echo off
echo #---.gitignore %date% %time%--- >.\.gitignore
set f_name=.\.gitignore
echo .gitignore>>%f_name%
echo *.txt>>%f_name%
echo *.zip>>%f_name%
echo *.rar>>%f_name%
echo *.~pck>>%f_name%
echo gitignore.bat>>%f_name%
echo GitLoad.bat>>%f_name%
echo
rem git add .gitignore
rem git commit -m "modify .gitignore"
echo #---ZhHint:https://github.com/github/gitignore--- >>.\.gitignore
rem pause
=============================
