rem @echo off
rem ��ɾ� ��â ��

rem ### ��������	:	v1.1.1_alpha for team
rem ### �ڵ�����	:	https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=superyeoju&logNo=221747717398
rem ### updated by LJS 

rem chcp 65001>nul
rem ���� https://otrodevym.tistory.com/entry/windows-10-cmd-%EC%9D%B8%EC%BD%94%EB%94%A9-utf-8-%EC%84%A4%EC%A0%95-%EB%B0%A9%EB%B2%95-949-65001-1

setLocal EnableDelayedExpansion
rem ���� https://kkamagistory.tistory.com/881

rem   0 = ������       8 = ȸ��
rem   1 = �Ķ���       9 = ���� �Ķ���
rem   2 = �ʷϻ�       A = ���� �ʷϻ�
rem   3 = ����         B = ���� ����
rem   4 = ������       C = ���� ������
rem   5 = ���ֻ�       D = ���� ���ֻ�
rem   6 = �����       E = ���� �����
rem   7 = ���         F = ���� ���
rem color 09
rem ù° �ڸ��� ���, ��° �ڸ��� ���ڻ�

rem mode con cols=60 lines=30
rem �ܼ�â ũ�� ����

rem ####################################

cd /d %~dp0
rem ���� ���� ��ġ ��θ� �۾� ��ġ��

title ���� ��� : %cd%
:notice
rem echo 	## ������Ʈ ���� ##
rem 		## 1.1.1 ANSI�ڵ�� ����(���� ������ ���� ���� �� ����)
rem 		## 1.1.1 %�� �� ������ ���� ����
rem echo 	## 1.0.1 A�׷� �ϼ� ##
rem echo 	## 1.0.2 B�׷� �ϼ� ##
rem echo 	## 1.0.3 C�׷� �ϼ� ##
rem echo 	## 1.1.0 D�׷� �ϼ� ##
rem echo 	## 1.0.2 ��ġ���� �۾� å���ڴԲ� ��� ���� ##
rem echo 	## 1.0.3 ������ ��з��� ���� �ɷ� ��г�. �б� ���� �� ##
rem echo.
rem echo 	���α׷��� �����Ϸ��� �ƹ� Ű�� ��������
rem pause
rem goto ChoiceGroup

:ChoiceGroup
echo 	## �׷����� �ڵ��������Դϴ� ##
echo 	## �׷��� �Է��ϼ��� ##
echo 	��) B-1�׷� : b(��ҹ��� ����) ���� 1 ����
set /p group=Group: 

rem echo ## �׷� ��ȣ�� �Է��ϼ��� ##
rem echo ## ��) B-1�̸� 1 �Է�
set /p groupNum=GroupNumber : 
goto confirm

:confirm
if %group% equ a set group=A
if %group% equ b set group=B
if %group% equ c set group=C
if %group% equ d set group=D

echo ## ������ �׷�: %group%-%groupNum% ##
echo �����Ͻðڽ��ϱ�? 
set /p confirm= Y / N : 
if /i %confirm% equ y goto gotoGroup
if /i %confirm% equ N cls&goto ChoiceGroup
cls 
goto ChoiceGroup

:gotoGroup
rem @echo on
title %group%-%groupNum% ���� ��� : %cd%
if /i %group% equ A goto A
if /i %group% equ B goto B
if /i %group% equ C goto C
if /i %group% equ D goto D
goto ChoiceGroup

:A
rem echo A
for /l %%i in (1,1,10) do (
if %groupNum% equ %%i goto A%%i
)
goto ChoiceGroup

:B
echo B
for /l %%i in (1,1,10) do (
if %groupNum% equ %%i goto B%%i
)
goto ChoiceGroup

:C
echo C
for /l %%i in (1,1,10) do (
if %groupNum% equ %%i goto C%%i
)
goto ChoiceGroup

:D
for /l %%i in (1,1,5) do (
if %groupNum% equ %%i goto D%%i
)
goto ChoiceGroup

:A1
cls
mkdir "02_�� �Ҹ�"
echo 10^%...
mkdir "02_�� �Ҹ�"
echo 20^%...
mkdir "01_��ħ �Ҹ�"
echo 30^%...
mkdir "01_�����ϴ� �Ҹ�"
echo 40^%...
mkdir "01_�� ���ô� �Ҹ�"
echo 50%
mkdir "01_���� �Դ� �Ҹ�"
echo 60^%...
mkdir "01_�� ��½�Ÿ��� �Ҹ�"
echo 70^%...
mkdir "01_�� Ǫ�� �Ҹ�"
echo 80^%...
mkdir "01_�� �ô� �Ҹ�"
echo 90^%...
mkdir "01_���� �Դ� �Ҹ�"

goto quit

:A2
cls
mkdir "02_�ٶ� �Ҹ�"
mkdir "01_ħ ��� �Ҹ�"
mkdir "01_���� �Ҹ�"
mkdir "01_�ǻ��ϴ� �Ҹ�"
mkdir "01_�δ� �Ҹ�"
mkdir "01_���ճִ� �Ҹ�"
mkdir "03_������ ���Ҹ�"
mkdir "03_�޴��� �Ҹ�"
mkdir "03_��ũ�ϴ� �Ҹ�"
mkdir "03_���� ����� �Ҹ�"

goto quit


:A3
cls
mkdir "02_�ͶѶ�� �Ҹ�"
mkdir "03_�ݼ� �ε����� �Ҹ�"
mkdir "03_ĵ ��׷����� �Ҹ�"
mkdir "03_����� �Ҹ�"
mkdir "03_���ڵ� ��� �Ҹ�"
mkdir "03_�ʱ� �ϴ� �Ҹ�"
mkdir "03_Ÿ�� ġ�� �Ҹ�"
mkdir "03_������ �Ҹ�"
mkdir "03_�ͼ��� ���� �Ҹ�"
mkdir "03_���ʱ��� �Ҹ�"

goto quit


:A4
cls
mkdir "02_��� �Ҹ�"
mkdir "03_�������� �Ҹ�"
mkdir "03_���������� �Ҹ�"
mkdir "03_���� �Ҹ�"
mkdir "03_�� �Ҹ�"
mkdir "03_���ձ� �Ҹ�"
mkdir "03_��ũ�� �Ҹ�"
mkdir "03_���� �������� �Ҹ�"
mkdir "03_�Ǹ� �Ҹ�"
mkdir "03_��ε�� �Ҹ�"

goto quit


:A5
cls
mkdir "02_��ѱ� �Ҹ�"
mkdir "03_����(��ä)��� �Ҹ�"
mkdir "03_���� ġ�� �Ҹ�"
mkdir "03_���� ���� �Ҹ�"
mkdir "03_���̺�Ÿ�� �Ҹ�"
mkdir "03_���������� �Ҹ�"
mkdir "03_�� �Ҹ�"
mkdir "03_���� �Ҹ�"
mkdir "03_ȣ�� ��� �Ҹ�"
mkdir "03_���� �Ҹ�"

goto quit


:A6
cls
mkdir "01_���� �Դ� �Ҹ�"
mkdir "01_���� �Դ� �Ҹ�"
mkdir "01_��ä �Դ� �Ҹ�"
mkdir "01_��� �Դ� �Ҹ�"
mkdir "01_���� �Դ� �Ҹ�"
mkdir "01_�ٰ�Ʈ �Դ� �Ҹ�"
mkdir "01_����� �Դ� �Ҹ�"
mkdir "01_�� �Դ� �Ҹ�"
mkdir "01_�� �Դ� �Ҹ�"
mkdir "01_�ø��� �Դ� �Ҹ�"

goto quit


:A7
cls
mkdir "02_�� �Ҹ�"
mkdir "01_�ڼ� �Ҹ�"
mkdir "01_���� �ϴ� �Ҹ�"
mkdir "01_����(���ϰŸ���)�Ҹ�"
mkdir "01_���� ���� �Ҹ�"
mkdir "01_�� Ǫ�� �Ҹ�"
mkdir "03_ȣ���� �Ҹ�"
mkdir "03_PC �Ҹ�"
mkdir "03_��� ����� �Ҹ�"
mkdir "03_���� �ε����� �Ҹ�"

goto quit


:A8
cls
mkdir "02_���� ���� �Ҹ�"
mkdir "03_�ö�ƽ ����� �Ҹ�"
mkdir "03_�������÷� �Ҹ�"
mkdir "03_Ŀ����Ʈ ���� �Ҹ�"
mkdir "03_�ڵ��� ���� �Ҹ�"
mkdir "03_Į���ϴ� �Ҹ�"
mkdir "03_���콺 Ŭ���ϴ� �Ҹ�"
mkdir "03_�ð� �Ҹ�"
mkdir "03_����̱� �Ҹ�"
mkdir "03_��Ź�� �Ҹ�"

goto quit


:A9
cls
mkdir "02_��� �Դ� �Ҹ�"
mkdir "03_�� ���� �Ҹ�"
mkdir "03_���ڷ��� �Ҹ�"
mkdir "03_����ä �Ҹ�"
mkdir "03_��� �Ҹ�"
mkdir "03_������ �Ҹ�"
mkdir "03_������ �Ҹ�"
mkdir "03_ź������ ������ �Ҹ�"
mkdir "03_ĳ���ͳ��� �Ҹ�"
mkdir "03_������� �õ� �Ҹ�"
echo.

goto quit


:A10
cls
mkdir "03_�޴�� ��ǳ�� �Ҹ�"
mkdir "03_��ī �Ҹ�"
mkdir "03_������ ���� �Ҹ�"
mkdir "03_���ۺ��� ���� �Ҹ�"
mkdir "03_���� �Ҹ�"
mkdir "03_��Ǯ���ű� �Ҹ�"
mkdir "03_����� �Ҹ�"
mkdir "03_����(å��)�߱״� �Ҹ�"
mkdir "03_�и�ġ �Ҹ�"
mkdir "03_�ȵ��� �Ҹ�"

goto quit


:B1
cls
mkdir "02_����� �Ҹ�"
mkdir "02_Ǯ���� �Ҹ�"
mkdir "02_�� �Ҹ�"
mkdir "02_�Ź� �Ҹ�"
mkdir "02_��ġ �Ҹ�"
mkdir "02_������ ��鸮�� �Ҹ�"
mkdir "01_��� �Ҹ�"
mkdir "01_�ȴ� �Ҹ�"
mkdir "01_�ٴ� �Ҹ�"
mkdir "01_�� ġ�� �Ҹ�"

goto quit


:B2
cls
mkdir "01_�ٳѱ� �ϴ� �Ҹ�"
mkdir "01_�� �������� �Ҹ�"
mkdir "01_����ǰ ���� �Ҹ�"
mkdir "01_���� ���� �Ҹ�"
mkdir "01_���� �Դ� �Ҹ�"
mkdir "01_������ �Դ� �Ҹ�"
mkdir "01_�Ǿ �ô� �Ҹ�"
mkdir "01_Ƣ�� �Դ� �Ҹ�"
mkdir "01_��Ʈ�ڽ� �ϴ� �Ҹ�"
mkdir "01_�� ƨ��� �Ҹ�"

goto quit


:B3
cls
mkdir "03_������ �Ҹ�"
mkdir "03_õ �������� �Ҹ�"
mkdir "03_����(å��)���� �Ҹ�"
mkdir "03_�� ���ݴ� �Ҹ�"
mkdir "03_�й��� �Ҹ�"
mkdir "03_���ڷ����� �Ҹ�"
mkdir "03_������ �Ҹ�"
mkdir "03_ĵ ���� �Ҹ�"
mkdir "03_���� �Ҹ�"
mkdir "03_��Ƽ���� �Ҹ�"

goto quit


:B4
cls
mkdir "03_õ �ܴ� �Ҹ�"
echo 10^%...
mkdir "03_ī�޶� �Ҹ�"
echo 20^%...
mkdir "03_�¿� ���� �Ҹ�"
echo 30^%...
mkdir "03_Ŀư �Ҹ�"
echo 40^%...
mkdir "03_�Ȼ��� �Ҹ�"
echo 50^%...
mkdir "03_ȭ�� �Ҹ�"
echo 60^%...
mkdir "03_�ٸ��� �Ҹ�"
echo 70^%...
mkdir "03_���� ����̹� �Ҹ�"
echo 80^%...
mkdir "03_���� �ѱ�� �Ҹ�"
echo 90^%...
mkdir "03_�� ������ �Ҹ�"

goto quit


:B5
cls
mkdir "03_���� ���� �Ҹ�"
echo 10^%...
mkdir "03_Ʈ���̾ޱ� �Ҹ�"
echo 20^%...
mkdir "03_���������� �Ҹ�"
echo 30^%...
mkdir "03_����ġ�� �Ҹ�"
echo 40^%...
mkdir "03_ĥ�� �ܴ� �Ҹ�"
echo 50^%...
mkdir "03_�� ������ �Ҹ�"
echo 60^%...
mkdir "03_������ �Ҹ�"
echo 70^%...
mkdir "03_�����νı� �Ҹ�"
echo 80^%...
mkdir "03_��Ÿġ�� �Ҹ�"
echo 90^%...
mkdir "03_ö ���� �Ҹ�"

goto quit


:B6
cls
mkdir "02_�� �Ҹ�"
echo 10^%...
mkdir "02_�� ������ �Ҹ�"
echo 20^%...
mkdir "02_�� �������� �Ҹ�"
echo 30^%...
mkdir "02_���� �Ҹ�"
echo 40^%...
mkdir "02_��� �Ҹ�"
echo 50^%...
mkdir "01_��ǰ�ϴ� �Ҹ�"
echo 60^%...
mkdir "01_ȣ�η� �Ÿ��� �Ҹ�"
echo 70^%...
mkdir "01_��� �Ҹ�"
echo 80^%...
mkdir "01_ȯȣ�ϴ� �Ҹ�"
echo 90^%...
mkdir "01_��ġ�ϴ� �Ҹ�"

goto quit


:B7
cls
mkdir "01_�ջ��� �ϴ� �Ҹ�"
echo 10^%...
mkdir "01_���� �Դ� �Ҹ�"
echo 20^%...
mkdir "01_���ܸԴ� �Ҹ�"
echo 30^%...
mkdir "01_�߼����� �Ҹ�"
echo 40^%...
mkdir "01_������ �Դ� �Ҹ�"
echo 50^%...
mkdir "01_ġ�� �ε����� �Ҹ�"
echo 60^%...
mkdir "01_�� �Դ� �Ҹ�"
echo 70^%...
mkdir "01_�����ϴ� �Ҹ�"
echo 80^%...
mkdir "01_�� �Ҹ�"
echo 90^%...
mkdir "01_���� �Դ� �Ҹ�"

goto quit


:B8
cls
mkdir "03_�� �ε����� �Ҹ�"
echo 10^%...
mkdir "03_�ö�ƽ �ε����� �Ҹ�"
echo 20^%...
mkdir "03_���������̾� �Ҹ�"
echo 30^%...
mkdir "03_���� �������� �Ҹ�"
echo 40^%...
mkdir "03_�峭�� �Ҹ�"
echo 50^%...
mkdir "03_Į ���� �Ҹ�"
echo 60^%...
mkdir "03_���� �������� �Ҹ�"
echo 70^%...
mkdir "03_���� �Ҹ�"
echo 80^%...
mkdir "03_Ŀ�Ǹӽ� �Ҹ�"
echo 90^%...
mkdir "03_ǳ�� �Ҹ�"

goto quit


:B9
cls
mkdir "03_������ �Ҹ�"
echo 10^%...
mkdir "03_�ڼ� �ε����� �Ҹ�"
echo 20^%...
mkdir "03_��� �Ҹ�"
echo 30^%...
mkdir "03_�ٵϾ� �Ҹ�"
echo 40^%...
mkdir "03_���� ���� �Ҹ�"
echo 50^%...
mkdir "03_����û���� �Ҹ�"
echo 60^%...
mkdir "03_�ݰ� �Ҹ�"
echo 70^%...
mkdir "03_���� �Ҹ�"
echo 80^%...
mkdir "03_�ڵ��� �Ҹ�"
echo 90^%...
mkdir "03_������ �Ҹ�"

goto quit


:B10
cls
mkdir "03_�ƹ��� �Ҹ�"
echo 10^%...
mkdir "03_�Ƿ��� �Ҹ�"
echo 20^%...
mkdir "03_���� ��� �Ҹ�"
echo 30^%...
mkdir "03_����ġ�� �Ҹ�"
echo 40^%...
mkdir "03_������ �Ҹ�"
echo 50^%...
mkdir "03_�佺Ʈ�� �Ҹ�"
echo 60^%...
mkdir "03_��Ƣ�� ��� �Ҹ�"
echo 70^%...
mkdir "03_������ ���� �Ҹ�"
echo 80^%...
mkdir "03_Ű���ϴ� �Ҹ�"
echo 90^%...
mkdir "03_�籸�� �Ҹ�"

goto quit

rem ## C�׷� ##

:C1
cls
mkdir "02_�� �帣�� �Ҹ�"
echo 10^%...
mkdir "02_�� �Ҹ�"
echo 20^%...
mkdir "02_���� �Ҹ�"
echo 30^%...
mkdir "01_Ʈ�� �Ҹ�"
echo 40^%...
mkdir "01_���ħ�ϴ� �Ҹ�"
echo 50^%...
mkdir "01_���� �Ҹ�"
echo 60^%...
mkdir "01_�ܴ� �Ҹ�"
echo 70^%...
mkdir "01_�� ���� �Ҹ�"
echo 80^%...
mkdir "01_�˾��� �ϴ� �Ҹ�"
echo 90^%...
mkdir "03_��ī��� �Ҹ�"

goto quit


:C2
cls
mkdir "01_�հ��� ƨ��� �Ҹ�"
echo 10^%...
mkdir "01_������ �Ҹ�"
echo 20^%...
mkdir "01_���η� �Ÿ��� �Ҹ�"
echo 30^%...
mkdir "01_��� �Ҹ�"
echo 40^%...
mkdir "03_���� ������ �Ҹ�"
echo 50^%...
mkdir "03_���ܱ� �Ҹ�"
echo 60^%...
mkdir "03_�ٵ����� �Ҹ�"
echo 70^%...
mkdir "03_��ġ �Ҹ�"
echo 80^%...
mkdir "03_���� ������ �Ҹ�"
echo 90^%...
mkdir "03_��Ź �Ҹ�"

goto quit


:C3
cls
mkdir "03_��ġ �Ҹ�"
echo 10^%...
mkdir "03_���"
echo 20^%...
mkdir "03_Ƣ��� �Ҹ�"
echo 30^%...
mkdir "03_�跮�� �Ҹ�"
echo 40^%...
mkdir "03_����ġ �Ҹ�"
echo 50^%...
mkdir "03_��Ÿ Ʃ�� �Ҹ�"
echo 60^%...
mkdir "03_���̿ø� Ʃ�� �Ҹ�"
echo 70^%...
mkdir "03_���߱� Ʃ�� �Ҹ�"
echo 80^%...
mkdir "03_������ Ʃ�� �Ҹ�"
echo 90^%...
mkdir "03_������ Ʃ�� �Ҹ�"

goto quit


:C4
cls
mkdir "03_�� Ÿ�� �Ҹ�"
echo 10^%...
mkdir "03_�鵵�ϴ� �Ҹ�"
echo 20^%...
mkdir "03_���̽�ƽ �Ҹ�"
echo 30^%...
mkdir "03_¡ Ʃ�� �Ҹ�"
echo 40^%...
mkdir "03_Ʈ���� �õ� �Ҹ�"
echo 50^%...
mkdir "03_�̾ӱ� �õ� �Ҹ�"
echo 60^%...
mkdir "03_���ϳ��� �ʹ� �Ҹ�"
echo 70^%...
mkdir "03_ĩ�ֻ�ձ� �Ҹ�"
echo 80^%...
mkdir "03_����� �Ҹ�"
echo 90^%...
mkdir "03_���ױ� �Ҹ�"

goto quit


:C5
cls
mkdir "03_�޷��̴� �Ҹ�"
echo 10^%...
mkdir "03_����ε� �Ҹ�"
echo 20^%...
mkdir "03_������(�����) �ϴ� �Ҹ�"
echo 30^%...
mkdir "03_��ä �Ҹ�"
echo 40^%...
mkdir "03_���������� �Ҹ�"
echo 50^%...
mkdir "03_ȣ���� �ϴ� �Ҹ�"
echo 60^%...
mkdir "03_������ �Ҹ�"
echo 70^%...
mkdir "03_����� �Ҹ�"
echo 80^%...
mkdir "03_������ �Ҹ�"
echo 90^%...
mkdir "03_�����ϴ� �Ҹ�"

goto quit


:C6
cls
mkdir "02_���� �Ҹ�"
echo 10^%...
mkdir "02_�� �Ҹ�"
echo 20^%...
mkdir "02_�� �Ҹ�"
echo 30^%...
mkdir "01_�Ѽ����� �Ҹ�"
echo 40^%...
mkdir "01_�涱�̴� �Ҹ�"
echo 50^%...
mkdir "01_�����Ÿ��� �Ҹ�"
echo 60^%...
mkdir "01_�� ������ �ϴ� �Ҹ�"
echo 70^%...
mkdir "01_������ �Ѵ� �Ҹ�"
echo 80^%...
mkdir "01_��뷡 �Ҹ�"
echo 90^%...
mkdir "03_ī�� �ܸ��� �Ҹ�"

goto quit


:C7
cls
mkdir "01_���Ķ� �Ҹ�"
echo 10^%...
mkdir "01_��ä�� �ϴ� �Ҹ�"
echo 20^%...
mkdir "01_�չ�� �Ҹ�"
echo 30^%...
mkdir "03_�ڵ��� �溸��"
echo 40^%...
mkdir "03_��Ѱ� ���"
echo 50^%...
mkdir "03_����� �Ҹ�"
echo 60^%...
mkdir "03_������ �Ҹ�"
echo 70^%...
mkdir "03_ü�� ���ư��� �Ҹ�"
echo 80^%...
mkdir "03_���� �Ҹ�"
echo 90^%...
mkdir "03_ǳ�� �Ҹ�"

goto quit


:C8
cls
mkdir "03_���"
echo 10^%...
mkdir "03_��ġ��"
echo 20^%...
mkdir "03_���� �Ҹ�"
echo 30^%...
mkdir "03_�ٸ��� �Ҹ�"
echo 40^%...
mkdir "03_�ı⼼ô�� �Ҹ�"
echo 50^%...
mkdir "03_�巳 �Ҹ�"
echo 60^%...
mkdir "03_�ǾƳ� Ʃ�� �Ҹ�"
echo 70^%...
mkdir "03_�Ź��� Ʃ�� �Ҹ�"
echo 80^%...
mkdir "03_�ܼ� Ʃ�� �Ҹ�"
echo 90^%...
mkdir "03_�屸 Ʃ�� �Ҹ�"

goto quit


:C9
cls
mkdir "0_�Ѹ��� �Ҹ�"
echo 10^%...
mkdir "0_���Ʋ �Ҹ�"
echo 20^%...
mkdir "0_�Ѱ��� Ʃ�� �Ҹ�"
echo 30^%...
mkdir "0_���� �õ� �Ҹ�"
echo 40^%...
mkdir "0_�޹��� �õ� �Ҹ�"
echo 50^%...
mkdir "0_Ż��� �õ� �Ҹ�"
echo 60^%...
mkdir "0_�� �Ҹ�"
echo 70^%...
mkdir "0_����� �Ҹ�"
echo 80^%...
mkdir "0_������ �Ҹ�"
echo 90^%...
mkdir "0_�̱� ��� �Ҹ�"

goto quit


:C10
cls
mkdir "03_�ȸ��� �Ҹ�"
echo 10^%...
mkdir "03_ÿ�� �Ҹ�"
echo 20^%...
mkdir "03_�˵� �Ҹ�"
echo 30^%...
mkdir "03_ť�� ������ �Ҹ�"
echo 40^%...
mkdir "03_���� �ϴ� �Ҹ�"
echo 50^%...
mkdir "03_������ �Ҹ�"
echo 60^%...
mkdir "03_�����з��� �Ҹ�"
echo 70^%...
mkdir "03_�������� �Ҹ�"
echo 80^%...
mkdir "03_�𷯰�ġ�� �Ҹ�"
echo 90^%...
mkdir "03_����� Ÿ�� �Ҹ�"

goto quit

rem ## D�׷� �� ##

:D1
cls
mkdir "02_�ĵ� �Ҹ�"
echo 20^%...
mkdir "02_��ں� �Ҹ�"
echo 40^%...
mkdir "01_������ �Ҹ�"
echo 60^%...
mkdir "01_���� ���� �Ҹ�"
echo 80^%...
mkdir "03_�б� �˶��Ҹ�"

goto quit


:D2
cls
mkdir "01_�Ჿ�� �ϴ� �Ҹ�"
echo 20^%...
mkdir "03_ȭ��溸"
echo 40^%...
mkdir "03_���溸"
echo 60^%...
mkdir "03_���ڿ ��� �Ҹ�"
echo 80^%...
mkdir "03_�Ȱ漼ô�� �Ҹ�"

goto quit


:D3
cls
mkdir "01_�� ��� �Ҹ�"
echo 1/6...
mkdir "03_���Ҹ�"
echo 2/6...
mkdir "03_�������� �溸�Ҹ�"
echo 3/6...
mkdir "03_���� �������� �Ҹ�"
echo 4/6...
mkdir "03_���� �Ҹ�"
echo 5/6...
mkdir "03_����ũ Ƣ�� �Ҹ�"
echo 6/6...

goto quit


:D4
cls
mkdir "03_�� ���� �Ҹ�"
echo 1/5...
mkdir "03_�������� �Ҹ�"
echo 2/5...
mkdir "03_���� �Ҹ�"
echo 3/5...
mkdir "03_��Ʈ�γ� �Ҹ�"
echo 4/5...
mkdir "03_���������� �Ҹ�"
echo 5/5...

goto quit


:D5
cls
mkdir "03_���ް溸"
echo 1/5...
mkdir "03_�����溸"
echo 2/5...
mkdir "03_�濪�ϴ� �Ҹ�"
echo 3/5...
mkdir "03_Ż���� �Ҹ�"
echo 4/5...
mkdir "03_����ġ�� �Ҹ�"
echo 5/5...

goto quit

:quit
echo %group%-%groupNum% �׷� ���� ���� �Ϸ�
pause
quit


rem cls
rem mkdir "0_"
rem echo 10^%...
rem mkdir "0_"
rem echo 20^%...
rem mkdir "0_"
rem echo 30^%...
rem mkdir "0_"
rem echo 40^%...
rem mkdir "0_"
rem echo 50^%...
rem mkdir "0_"
rem echo 60^%...
rem mkdir "0_"
rem echo 70^%...
rem mkdir "0_"
rem echo 80^%...
rem mkdir "0_"
rem echo 90^%...
rem mkdir "0_"
rem 
rem goto quit