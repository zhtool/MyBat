echo off
set bat_path=%cd%
echo ==bat_path
echo %bat_path%

echo ==git remote -v 
git remote -v

echo ==git checkout -b dev
git checkout -b dev

echo ==git branch
git branch

echo ==git checkout dev
git checkout dev
echo ==git log --pretty=oneline --graph  --abbrev-commit -3
git log --pretty=oneline --graph  --abbrev-commit -3

echo ==git checkout master
git checkout master

echo ==git log --pretty=oneline --graph  --abbrev-commit -3
git log --pretty=oneline --graph  --abbrev-commit -3

echo ==create and delete branch
rem git checkout -b dev01
git branch 
git checkout master
rem git branch -d dev01

call gitignore.bat
pause

        