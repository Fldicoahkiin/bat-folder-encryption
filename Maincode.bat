cls
@ECHO OFF
title ���ܳ���
if EXIST "���������ļ���.{d3e34b21-9d75-101a-8c3d-00aa001a1652}�� goto UNLOCK
if NOT EXIST �����ļ� goto MDLOCKER
:CONFIRM
echo ��ȷ��Ҫ�����ļ�����?(Y/N)��Y=��-N=����
set/p "cho=������>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo ѡ����Ч.
goto CONFIRM
:LOCK
ren �����ļ� "���������ļ���.{d3e34b21-9d75-101a-8c3d-00aa001a1652}��
attrib +h +s "���������ļ���.{d3e34b21-9d75-101a-8c3d-00aa001a1652}��
echo �ļ���������
goto End
:UNLOCK
echo ������������ļ���
set/p "pass=������>"
if NOT %pass%== ���˴��������룩 goto FAIL
attrib -h -s "���������ļ���.{d3e34b21-9d75-101a-8c3d-00aa001a1652}��
ren "���������ļ���.{d3e34b21-9d75-101a-8c3d-00aa001a1652}�� �����ļ�
echo �ļ��н����ɹ�
goto End
:FAIL
echo ������Ч
goto end
:MDLOCKER
md �����ļ�
echo �����ļ� �ɹ�����
goto End
:End