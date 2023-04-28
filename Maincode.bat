cls
@ECHO OFF
title 加密程序
if EXIST "上了锁的文件夹.{d3e34b21-9d75-101a-8c3d-00aa001a1652}” goto UNLOCK
if NOT EXIST 加密文件 goto MDLOCKER
:CONFIRM
echo 您确定要锁定文件夹吗?(Y/N)『Y=是-N=不』
set/p "cho=请输入>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo 选择无效.
goto CONFIRM
:LOCK
ren 加密文件 "上了锁的文件夹.{d3e34b21-9d75-101a-8c3d-00aa001a1652}”
attrib +h +s "上了锁的文件夹.{d3e34b21-9d75-101a-8c3d-00aa001a1652}”
echo 文件夹已锁定
goto End
:UNLOCK
echo 请输入密码打开文件夹
set/p "pass=请输入>"
if NOT %pass%== （此处输入密码） goto FAIL
attrib -h -s "上了锁的文件夹.{d3e34b21-9d75-101a-8c3d-00aa001a1652}”
ren "上了锁的文件夹.{d3e34b21-9d75-101a-8c3d-00aa001a1652}” 加密文件
echo 文件夹解锁成功
goto End
:FAIL
echo 密码无效
goto end
:MDLOCKER
md 加密文件
echo 加密文件 成功创建
goto End
:End