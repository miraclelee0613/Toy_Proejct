@echo off
rem ���ɾ� ��â ��

rem ### ��������	:	v1.3.0_alpha for team_mainCate
rem ### �ڵ�����	:	https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=superyeoju&logNo=221747717398
rem ### updated by LJS 

rem chcp 65001>nul
rem ���� https://otrodevym.tistory.com/entry/windows-10-cmd-%EC%9D%B8%EC%BD%94%EB%94%A9-utf-8-%EC%84%A4%EC%A0%95-%EB%B0%A9%EB%B2%95-949-65001-1

setLocal EnableDelayedExpansion
rem ���� https://kkamagistory.tistory.com/881

rem 0 = ������ 8 = ȸ��
rem 1 = �Ķ��� 9 = ���� �Ķ���
rem 2 = �ʷϻ� A = ���� �ʷϻ�
rem 3 = ���� B = ���� ����
rem 4 = ������ C = ���� ������
rem 5 = ���ֻ� D = ���� ���ֻ�
rem 6 = ����� E = ���� �����
rem 7 = ��� F = ���� ���
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
rem 		## 1.3.0 ��з� ���� ���� ���α׷� �ϼ�
rem 		## 1.2.0 �׷캰�� �ƴ� ī�װ���(��з�)���� �����ϴ� ������ ��ȯ
rem 		## 1.2.0 ���� ���� �׷� ���� ������ ������1
rem 		## 1.1.3 ���� ����
rem 		## 1.1.2 ��� �ڵ� ���� �� ����ȭ
rem 		## 1.1.1 ANSI�ڵ�� ����(���� ������ ���� ���� �� ����)
rem 		## 1.1.1 %�� �м��� ����
rem echo 	## 1.1.0 D�׷� �ϼ� ##
rem echo 	## 1.0.3 C�׷� �ϼ� ##
rem echo 	## 1.0.3 ������ ��з��� ���� �ɷ� ��г�. �б� ���� �� ##
rem echo 	## 1.0.2 B�׷� �ϼ� ##
rem echo 	## 1.0.2 ��ġ���� �۾� å���ڴԲ� ��� ���� ##
rem echo 	## 1.0.1 A�׷� �ϼ� ##
rem echo.
rem echo 	���α׷��� �����Ϸ��� �ƹ� Ű�� ��������
rem pause
rem goto ChoiceGroup

:ChoiceGroup
rem echo 	## �׷����� �ڵ��������Դϴ� ##
rem echo 	## �׷��� �Է��ϼ��� ##
rem echo 	��) B-1�׷� : b(��ҹ��� ����) ���� 1 ����
rem set /p group=Group: 

rem echo ## �׷� ��ȣ�� �Է��ϼ��� ##
rem echo ## ��) B-1�̸� 1 �Է�
rem set /p groupNum=GroupNumber : 

echo 		## ��з� ���� ���� �ڵ��������Դϴ� ##
echo  		## ��з� �ڵ带 �Է��ϼ��� ##
choice /c 123 /m "	1. ����� ������ �Ҹ� 	2. ���� �� �ڿ� �Ҹ� 	3. ������ǰ �� ��Ȱȯ�� �Ҹ�"
set main=""

if %errorlevel% equ 1 goto mc01
if %errorlevel% equ 2 goto mc02
if %errorlevel% equ 3 goto mc03

rem goto confirm

:confirm
rem if %group% equ a set group=A
rem if %group% equ b set group=B
rem if %group% equ c set group=C
rem if %group% equ d set group=D

rem echo ## ������ �׷�: %group%-%groupNum% ##
rem echo �����Ͻðڽ��ϱ�? 
rem set /p confirm= Y / N : 
rem choice /c 12 /m "	1.���� 	2.ó������ ���ư���"
rem if /i %confirm% equ y goto gotoGroup
rem if /i %confirm% equ n cls&goto ChoiceGroup
rem if %errorlevel% equ 1 goto gotoGroup
rem if %errorlevel% equ 2 cls&goto ChoiceGroup

rem cls 
rem goto ChoiceGroup
rem 
rem :gotoGroup
rem rem @echo on
rem title %group%-%groupNum% ���� ��� : %cd%
rem if /i %group% equ A goto A
rem if /i %group% equ B goto B
rem if /i %group% equ C goto C
rem if /i %group% equ D goto D
rem goto ChoiceGroup
rem 
rem :A
rem rem echo A
rem for /l %%i in (1,1,10) do (
rem if %groupNum% equ %%i goto A%%i
rem )
rem goto ChoiceGroup
rem 
rem :B
rem echo B
rem for /l %%i in (1,1,10) do (
rem if %groupNum% equ %%i goto B%%i
rem )
rem goto ChoiceGroup
rem 
rem :C
rem echo C
rem for /l %%i in (1,1,10) do (
rem if %groupNum% equ %%i goto C%%i
rem )
rem goto ChoiceGroup
rem 
rem :D
rem for /l %%i in (1,1,5) do (
rem if %groupNum% equ %%i goto D%%i
rem )
rem goto ChoiceGroup


:mc01
set main="01"
rem mkdir "01_��ħ �Ҹ�"&mkdir "01_�����ϴ� �Ҹ�"&mkdir "01_�� ���ô� �Ҹ�"&mkdir "01_���� �Դ� �Ҹ�"&mkdir "01_�� Ǫ�� �Ҹ�"&mkdir "01_�� �ô� �Ҹ�"
rem mkdir "01_���� �Դ� �Ҹ�"&mkdir "01_ħ ��� �Ҹ�"&mkdir "01_���� �Ҹ�"&mkdir "01_�ǻ��ϴ� �Ҹ�"
rem mkdir "01_�δ� �Ҹ�"&mkdir "01_���ճִ� �Ҹ�"&mkdir "01_���� �Դ� �Ҹ�"&mkdir "01_���� �Դ� �Ҹ�"&mkdir "01_��ä �Դ� �Ҹ�"&mkdir "01_��� �Դ� �Ҹ�"&
rem mkdir "01_���� �Դ� �Ҹ�"&mkdir "01_�ٰ�Ʈ �Դ� �Ҹ�"&mkdir "01_����� �Դ� �Ҹ�"&
rem mkdir "01_�� �Դ� �Ҹ�"&mkdir "01_�� �Դ� �Ҹ�"&mkdir "01_�ø��� �Դ� �Ҹ�"&mkdir "01_�ڼ� �Ҹ�"&mkdir "01_���� �ϴ� �Ҹ�"&mkdir "01_����(���ϰŸ���)�Ҹ�"&mkdir "01_���� ���� �Ҹ�"&mkdir "01_�� Ǫ�� �Ҹ�"&
rem mkdir "01_��� �Ҹ�"&mkdir "01_�ȴ� �Ҹ�"&mkdir "01_�ٴ� �Ҹ�"&mkdir "01_�� ġ�� �Ҹ�"&
rem mkdir "01_�ٳѱ� �ϴ� �Ҹ�"&mkdir "01_�� �������� �Ҹ�"&mkdir "01_����ǰ ���� �Ҹ�"&mkdir "01_���� ���� �Ҹ�"&mkdir "01_���� �Դ� �Ҹ�"&mkdir "01_������ �Դ� �Ҹ�"&mkdir "01_�Ǿ �ô� �Ҹ�"&mkdir "01_Ƣ�� �Դ� �Ҹ�"&mkdir "01_��Ʈ�ڽ� �ϴ� �Ҹ�"&mkdir "01_�� ƨ��� �Ҹ�"&
rem mkdir "01_��ǰ�ϴ� �Ҹ�"&mkdir "01_ȣ�η� �Ÿ��� �Ҹ�"&mkdir "01_��� �Ҹ�"&mkdir "01_ȯȣ�ϴ� �Ҹ�"&mkdir "01_��ġ�ϴ� �Ҹ�"
rem mkdir "01_�ջ��� �ϴ� �Ҹ�"&mkdir "01_���� �Դ� �Ҹ�"&mkdir "01_���ܸԴ� �Ҹ�"&mkdir "01_�߼����� �Ҹ�"&mkdir "01_������ �Դ� �Ҹ�"&mkdir "01_ġ�� �ε����� �Ҹ�"&mkdir "01_�� �Դ� �Ҹ�"&mkdir "01_�����ϴ� �Ҹ�"&mkdir "01_�� �Ҹ�"&mkdir "01_���� �Դ� �Ҹ�"
rem mkdir "01_Ʈ�� �Ҹ�"mkdir "01_���ħ�ϴ� �Ҹ�"mkdir "01_���� �Ҹ�"mkdir "01_�ܴ� �Ҹ�"mkdir "01_�� ���� �Ҹ�"mkdir "01_�˾��� �ϴ� �Ҹ�"mkdir "03_��ī��� �Ҹ�"
rem mkdir "01_�հ��� ƨ��� �Ҹ�"mkdir "01_������ �Ҹ�"mkdir "01_���η� �Ÿ��� �Ҹ�"mkdir "01_��� �Ҹ�"
mkdir "��ħ �Ҹ�"&mkdir "01_���� �ϴ� �Ҹ�"&mkdir "01_�� ���ô� �Ҹ�"&mkdir "01_���� �Դ� �Ҹ�"&mkdir "01_�� ��½�Ÿ��� �Ҹ�"&mkdir "01_�� Ǫ�� �Ҹ�"&mkdir "01_�� �ô� �Ҹ�"&mkdir "01_���� �Դ� �Ҹ�"&mkdir "01_ħ ��� �Ҹ�"&mkdir "01_���� �Ҹ�"&mkdir "01_�ǻ��ϴ� �Ҹ�"&mkdir "01_�δ� �Ҹ�"&mkdir "01_���� �ִ� �Ҹ�"&mkdir "01_������ ���Ҹ�"&mkdir "01_�޴��� �Ҹ�"&mkdir "01_���� �Դ� �Ҹ�"&mkdir "01_���� �Դ� �Ҹ�"&mkdir "01_��ä �Դ� �Ҹ�"&mkdir "01_��� �Դ� �Ҹ�"&mkdir "01_���� �Դ� �Ҹ�"&mkdir "01_�ٰ�Ʈ �Դ� �Ҹ�"&mkdir "01_����� �Դ� �Ҹ�"&mkdir "01_�� �Դ� �Ҹ�"&mkdir "01_�� �Դ� �Ҹ�"&mkdir "01_�ø��� �Դ� �Ҹ�"&mkdir "01_�ڼ� �Ҹ�"&mkdir "01_�����ϴ� �Ҹ�"&mkdir "01_����(���ϰŸ���) �Ҹ�"&mkdir "01_���� ���� �Ҹ�"&mkdir "01_�� Ǫ�� �Ҹ�"&mkdir "01_ȣ���� �Ҹ�"&mkdir "01_PC �Ҹ�"&mkdir "01_��� �Ҹ�"&mkdir "01_�ȴ� �Ҹ�"&mkdir "01_�ٴ� �Ҹ�"&mkdir "01_�� ġ�� �Ҹ�"&mkdir "01_�ٳѱ� �ϴ� �Ҹ�"&mkdir "01_�� �������� �Ҹ�"&mkdir "01_����ǰ ���� �Ҹ�"&mkdir "01_���� ���� �Ҹ�"&mkdir "01_���� �Դ� �Ҹ�"&mkdir "01_������ �Դ� �Ҹ�"&mkdir "01_�Ǿ �ô� �Ҹ�"&mkdir "01_Ƣ�� �Դ� �Ҹ�"&mkdir "01_��Ʈ�ڽ� �ϴ� �Ҹ�"&mkdir "01_�� ƨ��� �Ҹ�"&mkdir "01_��ǰ�ϴ� �Ҹ�"&mkdir "01_ȣ�η� �Ÿ��� �Ҹ�"&mkdir "01_��� �Ҹ�"&mkdir "01_ȯȣ�ϴ� �Ҹ�"&mkdir "01_��ġ�ϴ� �Ҹ�"&mkdir "01_�ջ��� �ϴ� �Ҹ�"&mkdir "01_���� �Դ� �Ҹ�"&mkdir "01_���� �Դ� �Ҹ�"&mkdir "01_�߼����� �Ҹ�"&mkdir "01_������ �Դ� �Ҹ�"&mkdir "01_ġ�� �ε����� �Ҹ�"&mkdir "01_�� �Դ� �Ҹ�"&mkdir "01_�����ϴ� �Ҹ�"&mkdir "01_�� �Ҹ�"&mkdir "01_���� �Դ� �Ҹ�"&mkdir "01_Ʈ�� �Ҹ�"&mkdir "01_���ħ�ϴ� �Ҹ�"&mkdir "01_���� �Ҹ�"&mkdir "01_�ܴ� �Ҹ�"&mkdir "01_�� ���� �Ҹ�"&mkdir "01_�˾��� �ϴ� �Ҹ�"&mkdir "01_��ī��� �Ҹ�"&mkdir "01_�հ��� ƨ��� �Ҹ�"&mkdir "01_������ �Ҹ�"&mkdir "01_���η� �Ÿ��� �Ҹ�"&mkdir "01_��� �Ҹ�"&mkdir "01_�Ѽ����� �Ҹ�"&mkdir "01_�涱�̴� �Ҹ�"&mkdir "01_�����Ÿ��� �Ҹ�"&mkdir "01_�걸���� �ϴ� �Ҹ�"&mkdir "01_������ �Ѵ� �Ҹ�"&mkdir "01_��뷡 �Ҹ�"&mkdir "01_���Ķ� �Ҹ�"&mkdir "01_��ä�� �ϴ� �Ҹ�"&mkdir "01_�չ�� �Ҹ�"&mkdir "01_������ �Ҹ�"&mkdir "01_���� ���� �Ҹ�"&mkdir "01_�Ჿ�� �ϴ� �Ҹ�"&mkdir "01_�� ���� �Ҹ�"

goto quit

:mc02
set main="02"
rem mkdir "02_�� �Ҹ�"&mkdir "02_�� �Ҹ�"&mkdir "02_�ٶ� �Ҹ�"&mkdir "02_�ͶѶ�� �Ҹ�"&mkdir "02_��� �Ҹ�"
rem mkdir "02_��ѱ� �Ҹ�"&mkdir "02_�� �Ҹ�"&mkdir "02_���� ���� �Ҹ�"&mkdir "02_��� �Դ� �Ҹ�"&
rem mkdir "02_������ �Ҹ�"&mkdir "02_Ǯ���� �Ҹ�"&mkdir "02_�� �Ҹ�"&mkdir "02_�Ź� �Ҹ�"&mkdir "02_��ġ �Ҹ�"&mkdir "02_������ ��鸮�� �Ҹ�"&
rem mkdir "02_�� �Ҹ�"&mkdir "02_�� ������ �Ҹ�"&mkdir "02_�� �������� �Ҹ�"&mkdir "02_���� �Ҹ�"&mkdir "02_��� �Ҹ�"
rem mkdir "02_�� �帣�� �Ҹ�"mkdir "02_�� �Ҹ�"mkdir "02_���� �Ҹ�"
mkdir "02_�� �Ҹ�"&mkdir "02_���Ҹ�"&mkdir "02_�ٶ� �Ҹ�"&mkdir "02_�ͶѶ�� �Ҹ�"&mkdir "02_��� �Ҹ�"&mkdir "02_��ѱ� �Ҹ�"&mkdir "02_�� �Ҹ�"&mkdir "02_���� ���� �Ҹ�"&mkdir "02_��� �Դ� �Ҹ�"&mkdir "02_������ �Ҹ�"&mkdir "02_Ǯ���� �Ҹ�"&mkdir "02_�� �Ҹ�"&mkdir "02_�Ź� �Ҹ�"&mkdir "02_��ġ �Ҹ�"&mkdir "02_������ ��鸮�� �Ҹ�"&mkdir "02_�� �Ҹ�"&mkdir "02_�� ������ �Ҹ�"&mkdir "02_�� �������� �Ҹ�"&mkdir "02_���� �Ҹ�"&mkdir "02_��� �Ҹ�"&mkdir "02_�� �帣�� �Ҹ�"&mkdir "02_�� �Ҹ�"&mkdir "02_���� �Ҹ�"&mkdir "02_���� �Ҹ�"&mkdir "02_�� �Ҹ�"&mkdir "02_�� �Ҹ�"&mkdir "02_�ĵ� �Ҹ�"&mkdir "02_��ں� �Ҹ�"

goto quit


:mc03
set main="03"
rem mkdir "03_������ ���Ҹ�"&mkdir "03_�޴��� �Ҹ�"&mkdir "03_��ũ�ϴ� �Ҹ�"&mkdir "03_���� ����� �Ҹ�"&
rem mkdir "03_�ݼ� �ε����� �Ҹ�"&mkdir "03_ĵ ��׷����� �Ҹ�"&mkdir "03_����� �Ҹ�"&mkdir "03_���ڵ� ��� �Ҹ�"&
rem mkdir "03_�ʱ� �ϴ� �Ҹ�"&mkdir "03_Ÿ�� ġ�� �Ҹ�"&mkdir "03_������ �Ҹ�"&mkdir "03_�ͼ��� ���� �Ҹ�"&
rem mkdir "03_���ʱ��� �Ҹ�"&mkdir "03_�������� �Ҹ�"&mkdir "03_���������� �Ҹ�"&mkdir "03_���� �Ҹ�"&mkdir "03_�� �Ҹ�"&
rem mkdir "03_���ձ� �Ҹ�"&mkdir "03_��ũ�� �Ҹ�"&mkdir "03_���� �������� �Ҹ�"&mkdir "03_�Ǹ� �Ҹ�"&
rem mkdir "03_��ε�� �Ҹ�"&mkdir "03_����(��ä)��� �Ҹ�"&mkdir "03_���� ġ�� �Ҹ�"&mkdir "03_���� ���� �Ҹ�"&mkdir "03_���̺�Ÿ�� �Ҹ�"&
rem mkdir "03_���������� �Ҹ�"&mkdir "03_�� �Ҹ�"&mkdir "03_���� �Ҹ�"&mkdir "03_ȣ�� ��� �Ҹ�"&
rem mkdir "03_���� �Ҹ�"&mkdir "03_ȣ���� �Ҹ�"&mkdir "03_PC �Ҹ�"&mkdir "03_��� ����� �Ҹ�"&mkdir "03_���� �ε����� �Ҹ�"&
rem mkdir "03_�ö�ƽ ����� �Ҹ�"&mkdir "03_�������÷� �Ҹ�"&mkdir "03_Ŀ����Ʈ ���� �Ҹ�"&mkdir "03_�ڵ��� ���� �Ҹ�"&mkdir "03_Į���ϴ� �Ҹ�"&mkdir "03_���콺 Ŭ���ϴ� �Ҹ�"&mkdir "03_�ð� �Ҹ�"&mkdir "03_����̱� �Ҹ�"&mkdir "03_��Ź�� �Ҹ�"&
rem mkdir "03_�� ���� �Ҹ�"&mkdir "03_���ڷ��� �Ҹ�"&mkdir "03_����ä �Ҹ�"&mkdir "03_��� �Ҹ�"&mkdir "03_������ �Ҹ�"&mkdir "03_������ �Ҹ�"&mkdir "03_ź������ ������ �Ҹ�"&mkdir "03_ĳ���ͳ��� �Ҹ�"&mkdir "03_������� �õ� �Ҹ�"&
rem mkdir "03_�޴�� ��ǳ�� �Ҹ�"&mkdir "03_��ī �Ҹ�"&mkdir "03_������ ���� �Ҹ�"&mkdir "03_���ۺ��� ���� �Ҹ�"&mkdir "03_���� �Ҹ�"&mkdir "03_��Ǯ���ű� �Ҹ�"&mkdir "03_����� �Ҹ�"&mkdir "03_����(å��)�߱״� �Ҹ�"&mkdir "03_�и�ġ �Ҹ�"&mkdir "03_�ȵ��� �Ҹ�"&
rem mkdir "03_������ �Ҹ�"&mkdir "03_õ �������� �Ҹ�"&mkdir "03_����(å��)���� �Ҹ�"&mkdir "03_�� ���ݴ� �Ҹ�"&mkdir "03_�й��� �Ҹ�"&mkdir "03_���ڷ����� �Ҹ�"&mkdir "03_������ �Ҹ�"&mkdir "03_ĵ ���� �Ҹ�"&mkdir "03_���� �Ҹ�"&mkdir "03_��Ƽ���� �Ҹ�"&
rem mkdir "03_õ �ܴ� �Ҹ�"&mkdir "03_ī�޶� �Ҹ�"&mkdir "03_�¿� ���� �Ҹ�"&mkdir "03_Ŀư �Ҹ�"&mkdir "03_�Ȼ��� �Ҹ�"&mkdir "03_ȭ�� �Ҹ�"&mkdir "03_�ٸ��� �Ҹ�"&mkdir "03_���� ����̹� �Ҹ�"&mkdir "03_���� �ѱ�� �Ҹ�"&mkdir "03_�� ������ �Ҹ�"
rem mkdir "03_���� ���� �Ҹ�"&mkdir "03_Ʈ���̾ޱ� �Ҹ�"&mkdir "03_���������� �Ҹ�"&mkdir "03_����ġ�� �Ҹ�"&mkdir "03_ĥ�� �ܴ� �Ҹ�"&mkdir "03_�� ������ �Ҹ�"&mkdir "03_������ �Ҹ�"&mkdir "03_�����νı� �Ҹ�"&mkdir "03_��Ÿġ�� �Ҹ�"&mkdir "03_ö ���� �Ҹ�"
rem mkdir "03_�� �ε����� �Ҹ�"&mkdir "03_�ö�ƽ �ε����� �Ҹ�"&mkdir "03_���������̾� �Ҹ�"&mkdir "03_���� �������� �Ҹ�"&mkdir "03_�峭�� �Ҹ�"&mkdir "03_Į ���� �Ҹ�"&mkdir "03_���� �������� �Ҹ�"&mkdir "03_���� �Ҹ�"&mkdir "03_Ŀ�Ǹӽ� �Ҹ�"&mkdir "03_ǳ�� �Ҹ�"
rem mkdir "03_������ �Ҹ�"&mkdir "03_�ڼ� �ε����� �Ҹ�"&mkdir "03_��� �Ҹ�"&mkdir "03_�ٵϾ� �Ҹ�"&mkdir "03_���� ���� �Ҹ�"&mkdir "03_����û���� �Ҹ�"&mkdir "03_�ݰ� �Ҹ�"&mkdir "03_���� �Ҹ�"&mkdir "03_�ڵ��� �Ҹ�"&mkdir "03_������ �Ҹ�"
rem mkdir "03_�ƹ��� �Ҹ�"mkdir "03_�Ƿ��� �Ҹ�"mkdir "03_���� ��� �Ҹ�"mkdir "03_����ġ�� �Ҹ�"mkdir "03_������ �Ҹ�"mkdir "03_�佺Ʈ�� �Ҹ�"mkdir "03_��Ƣ�� ��� �Ҹ�"mkdir "03_������ ���� �Ҹ�"	mkdir "03_Ű���ϴ� �Ҹ�"mkdir "03_�籸�� �Ҹ�" 
rem mkdir "03_���� ������ �Ҹ�"mkdir "03_���ܱ� �Ҹ�"mkdir "03_�ٵ����� �Ҹ�"mkdir "03_��ġ �Ҹ�"mkdir "03_���� ������ �Ҹ�"mkdir "03_��Ź �Ҹ�"
rem mkdir "03_��ġ �Ҹ�"mkdir "03_���"mkdir "03_Ƣ��� �Ҹ�"mkdir "03_�跮�� �Ҹ�"mkdir "03_����ġ �Ҹ�"mkdir "03_��Ÿ Ʃ�� �Ҹ�"mkdir "03_���̿ø� Ʃ�� �Ҹ�"mkdir "03_���߱� Ʃ�� �Ҹ�"mkdir "03_�������� Ʃ�� �Ҹ�"mkdir "03_������ Ʃ�� �Ҹ�"
mkdir "03_��ũ �ϴ� �Ҹ�"&mkdir "03_���� ����� �Ҹ�"&mkdir "03_�ݼ� �ε����� �Ҹ�"&mkdir "03_ĵ ��׷����� �Ҹ�"&mkdir "03_����� �Ҹ�"&mkdir "03_���ڵ� ��� �Ҹ�"&mkdir "03_�ʱ� �ϴ� �Ҹ�"&mkdir "03_Ÿ�� ġ�� �Ҹ�"&mkdir "03_������ �Ҹ�"&mkdir "03_�ͼ��� ���� �Ҹ�"&mkdir "03_���ʱ��� �Ҹ�"&mkdir "03_�������� �Ҹ�"&mkdir "03_���������� �Ҹ�"&mkdir "03_���� �Ҹ�"&mkdir "03_�� �Ҹ�"&mkdir "03_���ձ� �Ҹ�"&mkdir "03_��ũ�� �Ҹ�"&mkdir "03_���� �������� �Ҹ�"&mkdir "03_�Ǹ� �Ҹ�"&mkdir "03_��ε�� �Ҹ�"&mkdir "03_����(��ä)��� �Ҹ�"&mkdir "03_���� ġ�� �Ҹ�"&mkdir "03_���� ���� �Ҹ�"&mkdir "03_���̺�Ÿ�� �Ҹ�"&mkdir "03_���������� �Ҹ�"&mkdir "03_�� �Ҹ�"&mkdir "03_���� �Ҹ�"&mkdir "03_ȣ�� ��� �Ҹ�"&mkdir "03_���� �Ҹ�"&mkdir "03_��� ����� �Ҹ�"&mkdir "03_���� �ε����� �Ҹ�"&mkdir "03_�ö�ƽ ����� �Ҹ�"&mkdir "03_�������÷�mkdir "03_Ŀ����Ʈ ���� �Ҹ�"&mkdir "03_�ڵ��� ���� �Ҹ�"&mkdir "03_Į���ϴ� �Ҹ�"&mkdir "03_���콺 Ŭ�� �ϴ� �Ҹ�"&mkdir "03_�ð� �Ҹ�"&mkdir "03_����̱� �Ҹ�"&mkdir "03_��Ź�� �Ҹ�"&mkdir "03_�� ���� �Ҹ�"&mkdir "03_���ڷ��� �Ҹ�"&mkdir "03_����ä �Ҹ�"&mkdir "03_��� �Ҹ�"&mkdir "03_������ �Ҹ�"&mkdir "03_������ �Ҹ�"&mkdir "03_ź������ ������ �Ҹ�"&mkdir "03_ĳ���ͳ��� �Ҹ�"&mkdir "03_������� �õ� �Ҹ�"&mkdir "03_�޴�� ��ǳ�� �Ҹ�"&mkdir "03_��ī �Ҹ�"&mkdir "03_������ ���� �Ҹ�"&mkdir "03_���ۺ��� ���� �Ҹ�"&mkdir "03_���� �Ҹ�"&mkdir "03_��Ǯ���ű� �Ҹ�"&mkdir "03_����� �Ҹ�"&mkdir "03_����(å��)�߱״� �Ҹ�"&mkdir "03_�и�ġ �Ҹ�"&mkdir "03_�ȵ��� �Ҹ�"&mkdir "03_������ �Ҹ�"&mkdir "03_õ �������� �Ҹ�"&mkdir "03_����(å��)���� �Ҹ�"&mkdir "03_�� ���ݴ� �Ҹ�"&mkdir "03_�й��� �Ҹ�"&mkdir "03_���ڷ����� �Ҹ�"&mkdir "03_������ �Ҹ�"&mkdir "03_ĵ ���� �Ҹ�"&mkdir "03_���� �Ҹ�"&mkdir "03_��Ƽ���� �Ҹ�"&mkdir "03_õ �ܴ� �Ҹ�"&mkdir "03_ī�޶� �Ҹ�"&mkdir "03_�¿� ���� �Ҹ�"&mkdir "03_Ŀư �Ҹ�"&mkdir "03_�Ȼ��� �Ҹ�"&mkdir "03_ȭ�� �Ҹ�"&mkdir "03_�ٸ��� �Ҹ�"&mkdir "03_���� ����̹� �Ҹ�"&mkdir "03_���� �ѱ�� �Ҹ�"&mkdir "03_�� ������ �Ҹ�"&mkdir "03_���� ���� �Ҹ�"&mkdir "03_Ʈ���̾ޱ� �Ҹ�"&mkdir "03_���������� �Ҹ�"&mkdir "03_����ġ�� �Ҹ�"&mkdir "03_ĥ�� �ܴ� �Ҹ�"&mkdir "03_�� ������ �Ҹ�"&mkdir "03_������ �Ҹ�"&mkdir "03_�����νı� �Ҹ�"&mkdir "03_��Ÿġ�� �Ҹ�"&mkdir "03_ö ���� �Ҹ�"&mkdir "03_�� �ε����� �Ҹ�"&mkdir "03_�ö�ƽ �ε����� �Ҹ�"&mkdir "03_���������̾� �Ҹ�"&mkdir "03_���� �������� �Ҹ�"&mkdir "03_�峭�� �Ҹ�"&mkdir "03_Į ���� �Ҹ�"&mkdir "03_���� �������� �Ҹ�"&mkdir "03_���� �Ҹ�"&mkdir "03_Ŀ�Ǹӽ� �Ҹ�"&mkdir "03_ǳ�� �Ҹ�"&mkdir "03_���� ������ �Ҹ�"&mkdir "03_���ܱ� �Ҹ�"&mkdir "03_�ٵ����� �Ҹ�"&mkdir "03_��ġ �Ҹ�"&mkdir "03_���� ������ �Ҹ�"&mkdir "03_��Ź �Ҹ�"&mkdir "03_ī�� �ܸ��� �Ҹ�"&mkdir "03_�ڵ��� �溸�� �Ҹ�"&mkdir "03_��Ѱ� ��� �Ҹ�"&mkdir "03_����� �Ҹ�"&mkdir "03_������ �Ҹ�"&mkdir "03_ü�� ���ư��� �Ҹ�"&mkdir "03_���� �Ҹ�"&mkdir "03_ǳ�� �Ҹ�"&mkdir "03_�б� �˶� �Ҹ�"&mkdir "03_ȭ��溸 �Ҹ�"&mkdir "03_���溸 �Ҹ�"&mkdir "03_���ڿ ��� �Ҹ�"&mkdir "03_�Ȱ漼ô�� �Ҹ�"&mkdir "03_���Ҹ�"&mkdir "03_�������� �溸�Ҹ�"&mkdir "03_���� �������� �Ҹ�"&mkdir "03_���� �Ҹ�"&mkdir "03_����ũ Ƣ�� �Ҹ�"

goto quit


rem :A1
rem cls
rem mkdir "02_�� �Ҹ�"&echo 1/10...
rem mkdir "02_�� �Ҹ�"&echo 2/10...
rem mkdir "01_��ħ �Ҹ�"&echo 3/10...
rem mkdir "01_�����ϴ� �Ҹ�"&echo 4/10...
rem mkdir "01_�� ���ô� �Ҹ�"&echo 5/10...
rem mkdir "01_���� �Դ� �Ҹ�"&echo 6/10...
rem mkdir "01_�� ��½�Ÿ��� �Ҹ�"&echo 7/10...
rem mkdir "01_�� Ǫ�� �Ҹ�"&echo 8/10...
rem mkdir "01_�� �ô� �Ҹ�"&echo 9/10...
rem mkdir "01_���� �Դ� �Ҹ�"&echo 10/10...
rem 
rem goto quit

:A2
cls
mkdir "02_�ٶ� �Ҹ�"&echo 1/10...
mkdir "01_ħ ��� �Ҹ�"&echo 2/10...
mkdir "01_���� �Ҹ�"&echo 3/10...
mkdir "01_�ǻ��ϴ� �Ҹ�"&echo 4/10...
mkdir "01_�δ� �Ҹ�"&echo 5/10...
mkdir "01_���ճִ� �Ҹ�"&echo 6/10...
mkdir "03_������ ���Ҹ�"&echo 7/10...
mkdir "03_�޴��� �Ҹ�"&echo 8/10...
mkdir "03_��ũ�ϴ� �Ҹ�"&echo 9/10...
mkdir "03_���� ����� �Ҹ�"&echo 10/10...

goto quit


:A3
cls
mkdir "02_�ͶѶ�� �Ҹ�"&echo 1/10...
mkdir "03_�ݼ� �ε����� �Ҹ�"&echo 2/10...
mkdir "03_ĵ ��׷����� �Ҹ�"&echo 3/10...
mkdir "03_����� �Ҹ�"&echo 4/10...
mkdir "03_���ڵ� ��� �Ҹ�"&echo 5/10...
mkdir "03_�ʱ� �ϴ� �Ҹ�"&echo 6/10...
mkdir "03_Ÿ�� ġ�� �Ҹ�"&echo 7/10...
mkdir "03_������ �Ҹ�"&echo 8/10...
mkdir "03_�ͼ��� ���� �Ҹ�"&echo 8/10...
mkdir "03_���ʱ��� �Ҹ�"&echo 10/10...

goto quit


:A4
cls
mkdir "02_��� �Ҹ�"&echo 1/10...
mkdir "03_�������� �Ҹ�"&echo 2/10...
mkdir "03_���������� �Ҹ�"&echo 3/10...
mkdir "03_���� �Ҹ�"&echo 4/10...
mkdir "03_�� �Ҹ�"&echo 5/10...
mkdir "03_���ձ� �Ҹ�"&echo 6/10...
mkdir "03_��ũ�� �Ҹ�"&echo 7/10...
mkdir "03_���� �������� �Ҹ�"&echo 8/10...
mkdir "03_�Ǹ� �Ҹ�"&echo 9/10...
mkdir "03_��ε�� �Ҹ�"&echo 10/10...


goto quit



:A5
cls
mkdir "02_��ѱ� �Ҹ�"&echo 1/10...
mkdir "03_����(��ä)��� �Ҹ�"&echo 2/10...
mkdir "03_���� ġ�� �Ҹ�"&echo 3/10...
mkdir "03_���� ���� �Ҹ�"&echo 4/10...
mkdir "03_���̺�Ÿ�� �Ҹ�"&echo 5/10...
mkdir "03_���������� �Ҹ�"&echo 6/10...
mkdir "03_�� �Ҹ�"&echo 7/10...
mkdir "03_���� �Ҹ�"&echo 8/10...
mkdir "03_ȣ�� ��� �Ҹ�"&echo 9/10...
mkdir "03_���� �Ҹ�"&echo 10/10...

goto quit


:A6
cls
mkdir "01_���� �Դ� �Ҹ�"&echo 1/10...
mkdir "01_���� �Դ� �Ҹ�"&echo 2/10...
mkdir "01_��ä �Դ� �Ҹ�"&echo 3/10...
mkdir "01_��� �Դ� �Ҹ�"&echo 4/10...
mkdir "01_���� �Դ� �Ҹ�"&echo 5/10...
mkdir "01_�ٰ�Ʈ �Դ� �Ҹ�"&echo 6/10...
mkdir "01_����� �Դ� �Ҹ�"&echo 7/10...
mkdir "01_�� �Դ� �Ҹ�"&echo 8/10...
mkdir "01_�� �Դ� �Ҹ�"&echo 9/10...
mkdir "01_�ø��� �Դ� �Ҹ�"&echo 10/10...

goto quit


:A7
cls
mkdir "02_�� �Ҹ�"			 &echo 1/10...
mkdir "01_�ڼ� �Ҹ�"			 &echo 2/10...
mkdir "01_���� �ϴ� �Ҹ�"		 &echo 3/10...
mkdir "01_����(���ϰŸ���)�Ҹ�"	 &echo 4/10...
mkdir "01_���� ���� �Ҹ�"		 &echo 5/10...
mkdir "01_�� Ǫ�� �Ҹ�"		 &echo 6/10...
mkdir "03_ȣ���� �Ҹ�"		 &echo 7/10...
mkdir "03_PC �Ҹ�"			 &echo 8/10...
mkdir "03_��� ����� �Ҹ�"		 &echo 9/10...
mkdir "03_���� �ε����� �Ҹ�"	 &echo 10/10...

goto quit


:A8
cls
mkdir "02_���� ���� �Ҹ�"&echo 1/10...
mkdir "03_�ö�ƽ ����� �Ҹ�"&echo 2/10...
mkdir "03_�������÷� �Ҹ�"&echo 3/10...
mkdir "03_Ŀ����Ʈ ���� �Ҹ�"&echo 4/10...
mkdir "03_�ڵ��� ���� �Ҹ�"&echo 5/10...
mkdir "03_Į���ϴ� �Ҹ�"&echo 6/10...
mkdir "03_���콺 Ŭ���ϴ� �Ҹ�"&echo 7/10...
mkdir "03_�ð� �Ҹ�"&echo 8/10...
mkdir "03_����̱� �Ҹ�"&echo 9/10...
mkdir "03_��Ź�� �Ҹ�"&echo 10/10...

goto quit


:A9
cls
mkdir "02_��� �Դ� �Ҹ�"&echo 1/10...
mkdir "03_�� ���� �Ҹ�"&echo 2/10...
mkdir "03_���ڷ��� �Ҹ�"&echo 3/10...
mkdir "03_����ä �Ҹ�"&echo 4/10...
mkdir "03_��� �Ҹ�"&echo 5/10...
mkdir "03_������ �Ҹ�"&echo 6/10...
mkdir "03_������ �Ҹ�"&echo 7/10...
mkdir "03_ź������ ������ �Ҹ�"&echo 8/10...
mkdir "03_ĳ���ͳ��� �Ҹ�"&echo 9/10...
mkdir "03_������� �õ� �Ҹ�"&echo 10/10...
echo.

goto quit


:A10
cls
mkdir "03_�޴�� ��ǳ�� �Ҹ�"&echo 1/10...
mkdir "03_��ī �Ҹ�"&echo 2/10...
mkdir "03_������ ���� �Ҹ�"&echo 3/10...
mkdir "03_���ۺ��� ���� �Ҹ�"&echo 4/10...
mkdir "03_���� �Ҹ�"&echo 5/10...
mkdir "03_��Ǯ���ű� �Ҹ�"&echo 6/10...
mkdir "03_����� �Ҹ�"&echo 7/10...
mkdir "03_����(å��)�߱״� �Ҹ�"&echo 8/10...
mkdir "03_�и�ġ �Ҹ�"&echo 9/10...
mkdir "03_�ȵ��� �Ҹ�"&echo 10/10...

goto quit


:B1
cls
mkdir "02_������ �Ҹ�"&echo 1/10...
mkdir "02_Ǯ���� �Ҹ�"&echo 2/10...
mkdir "02_�� �Ҹ�"&echo 3/10...
mkdir "02_�Ź� �Ҹ�"&echo 4/10...
mkdir "02_��ġ �Ҹ�"&echo 5/10...
mkdir "02_������ ��鸮�� �Ҹ�"&echo 6/10...
mkdir "01_��� �Ҹ�"&echo 7/10...
mkdir "01_�ȴ� �Ҹ�"&echo 8/10...
mkdir "01_�ٴ� �Ҹ�"&echo 9/10...
mkdir "01_�� ġ�� �Ҹ�"&echo 10/10...

goto quit


:B2
cls
mkdir "01_�ٳѱ� �ϴ� �Ҹ�"&echo 1/10...
mkdir "01_�� �������� �Ҹ�"&echo 2/10...
mkdir "01_����ǰ ���� �Ҹ�"&echo 3/10...
mkdir "01_���� ���� �Ҹ�"&echo 4/10...
mkdir "01_���� �Դ� �Ҹ�"&echo 5/10...
mkdir "01_������ �Դ� �Ҹ�"&echo 6/10...
mkdir "01_�Ǿ �ô� �Ҹ�"&echo 7/10...
mkdir "01_Ƣ�� �Դ� �Ҹ�"&echo 8/10...
mkdir "01_��Ʈ�ڽ� �ϴ� �Ҹ�"&echo 9/10...
mkdir "01_�� ƨ��� �Ҹ�"&echo 10/10...

goto quit


:B3
cls
mkdir "03_������ �Ҹ�"&echo 1/10...
mkdir "03_õ �������� �Ҹ�"&echo 2/10...
mkdir "03_����(å��)���� �Ҹ�"&echo 3/10...
mkdir "03_�� ���ݴ� �Ҹ�"&echo 4/10...
mkdir "03_�й��� �Ҹ�"&echo 5/10...
mkdir "03_���ڷ����� �Ҹ�"&echo 6/10...
mkdir "03_������ �Ҹ�"&echo 7/10...
mkdir "03_ĵ ���� �Ҹ�"&echo 8/10...
mkdir "03_���� �Ҹ�"&echo 9/10...
mkdir "03_��Ƽ���� �Ҹ�"&echo 10/10...

goto quit


:B4
cls
mkdir "03_õ �ܴ� �Ҹ�"
echo 1/10...
mkdir "03_ī�޶� �Ҹ�"
echo 2/10...
mkdir "03_�¿� ���� �Ҹ�"
echo 3/10...
mkdir "03_Ŀư �Ҹ�"
echo 4/10...
mkdir "03_�Ȼ��� �Ҹ�"
echo 5/10...
mkdir "03_ȭ�� �Ҹ�"
echo 6/10...
mkdir "03_�ٸ��� �Ҹ�"
echo 7/10...
mkdir "03_���� ����̹� �Ҹ�"
echo 8/10...
mkdir "03_���� �ѱ�� �Ҹ�"
echo 9/10...
mkdir "03_�� ������ �Ҹ�"
echo 10/10...

goto quit


:B5
cls
mkdir "03_���� ���� �Ҹ�"
echo 1/10...
mkdir "03_Ʈ���̾ޱ� �Ҹ�"
echo 2/10...
mkdir "03_���������� �Ҹ�"
echo 3/10...
mkdir "03_����ġ�� �Ҹ�"
echo 4/10...
mkdir "03_ĥ�� �ܴ� �Ҹ�"
echo 5/10...
mkdir "03_�� ������ �Ҹ�"
echo 6/10...
mkdir "03_������ �Ҹ�"
echo 7/10...
mkdir "03_�����νı� �Ҹ�"
echo 8/10...
mkdir "03_��Ÿġ�� �Ҹ�"
echo 9/10...
mkdir "03_ö ���� �Ҹ�"
echo 10/10...

goto quit


:B6
cls
mkdir "02_�� �Ҹ�"
echo 1/10...
mkdir "02_�� ������ �Ҹ�"
echo 2/10...
mkdir "02_�� �������� �Ҹ�"
echo 3/10...
mkdir "02_���� �Ҹ�"
echo 4/10...
mkdir "02_��� �Ҹ�"
echo 5/10...
mkdir "01_��ǰ�ϴ� �Ҹ�"
echo 6/10...
mkdir "01_ȣ�η� �Ÿ��� �Ҹ�"
echo 7/10...
mkdir "01_��� �Ҹ�"
echo 8/10...
mkdir "01_ȯȣ�ϴ� �Ҹ�"
echo 9/10...
mkdir "01_��ġ�ϴ� �Ҹ�"
echo 10/10...

goto quit


:B7
cls
mkdir "01_�ջ��� �ϴ� �Ҹ�"
echo 1/10...
mkdir "01_���� �Դ� �Ҹ�"
echo 2/10...
mkdir "01_���ܸԴ� �Ҹ�"
echo 3/10...
mkdir "01_�߼����� �Ҹ�"
echo 4/10...
mkdir "01_������ �Դ� �Ҹ�"
echo 5/10...
mkdir "01_ġ�� �ε����� �Ҹ�"
echo 6/10...
mkdir "01_�� �Դ� �Ҹ�"
echo 7/10...
mkdir "01_�����ϴ� �Ҹ�"
echo 8/10...
mkdir "01_�� �Ҹ�"
echo 9/10...
mkdir "01_���� �Դ� �Ҹ�"
echo 10/10...

goto quit


:B8
cls
mkdir "03_�� �ε����� �Ҹ�"
echo 1/10...
mkdir "03_�ö�ƽ �ε����� �Ҹ�"
echo 2/10...
mkdir "03_���������̾� �Ҹ�"
echo 3/10...
mkdir "03_���� �������� �Ҹ�"
echo 4/10...
mkdir "03_�峭�� �Ҹ�"
echo 5/10...
mkdir "03_Į ���� �Ҹ�"
echo 6/10...
mkdir "03_���� �������� �Ҹ�"
echo 7/10...
mkdir "03_���� �Ҹ�"
echo 8/10...
mkdir "03_Ŀ�Ǹӽ� �Ҹ�"
echo 9/10...
mkdir "03_ǳ�� �Ҹ�"
echo 10/10...

goto quit


:B9
cls
mkdir "03_������ �Ҹ�"
echo 1/10...
mkdir "03_�ڼ� �ε����� �Ҹ�"
echo 2/10...
mkdir "03_��� �Ҹ�"
echo 3/10...
mkdir "03_�ٵϾ� �Ҹ�"
echo 4/10...
mkdir "03_���� ���� �Ҹ�"
echo 5/10...
mkdir "03_����û���� �Ҹ�"
echo 6/10...
mkdir "03_�ݰ� �Ҹ�"
echo 7/10...
mkdir "03_���� �Ҹ�"
echo 8/10...
mkdir "03_�ڵ��� �Ҹ�"
echo 9/10...
mkdir "03_������ �Ҹ�"
echo 10/10...

goto quit


:B10
cls
mkdir "03_�ƹ��� �Ҹ�"
echo 1/10...
mkdir "03_�Ƿ��� �Ҹ�"
echo 2/10...
mkdir "03_���� ��� �Ҹ�"
echo 3/10...
mkdir "03_����ġ�� �Ҹ�"
echo 4/10...
mkdir "03_������ �Ҹ�"
echo 5/10...
mkdir "03_�佺Ʈ�� �Ҹ�"
echo 6/10...
mkdir "03_��Ƣ�� ��� �Ҹ�"
echo 7/10...
mkdir "03_������ ���� �Ҹ�"
echo 8/10...
mkdir "03_Ű���ϴ� �Ҹ�"
echo 9/10...
mkdir "03_�籸�� �Ҹ�"
echo 10/10...

goto quit

rem ## C�׷� ##

:C1
cls
mkdir "02_�� �帣�� �Ҹ�"
echo 1/10...
mkdir "02_�� �Ҹ�"
echo 2/10...
mkdir "02_���� �Ҹ�"
echo 3/10...
mkdir "01_Ʈ�� �Ҹ�"
echo 4/10...
mkdir "01_���ħ�ϴ� �Ҹ�"
echo 5/10...
mkdir "01_���� �Ҹ�"
echo 6/10...
mkdir "01_�ܴ� �Ҹ�"
echo 7/10...
mkdir "01_�� ���� �Ҹ�"
echo 8/10...
mkdir "01_�˾��� �ϴ� �Ҹ�"
echo 9/10...
mkdir "03_��ī��� �Ҹ�"
echo 10/10...

goto quit


:C2
cls
mkdir "01_�հ��� ƨ��� �Ҹ�"
echo 1/10...
mkdir "01_������ �Ҹ�"
echo 2/10...
mkdir "01_���η� �Ÿ��� �Ҹ�"
echo 3/10...
mkdir "01_��� �Ҹ�"
echo 4/10...
mkdir "03_���� ������ �Ҹ�"
echo 5/10...
mkdir "03_���ܱ� �Ҹ�"
echo 6/10...
mkdir "03_�ٵ����� �Ҹ�"
echo 7/10...
mkdir "03_��ġ �Ҹ�"
echo 8/10...
mkdir "03_���� ������ �Ҹ�"
echo 9/10...
mkdir "03_��Ź �Ҹ�"
echo 10/10...

goto quit


:C3
cls
mkdir "03_��ġ �Ҹ�"
echo 1/10...
mkdir "03_���"
echo 2/10...
mkdir "03_Ƣ��� �Ҹ�"
echo 3/10...
mkdir "03_�跮�� �Ҹ�"
echo 4/10...
mkdir "03_����ġ �Ҹ�"
echo 5/10...
mkdir "03_��Ÿ Ʃ�� �Ҹ�"
echo 6/10...
mkdir "03_���̿ø� Ʃ�� �Ҹ�"
echo 7/10...
mkdir "03_���߱� Ʃ�� �Ҹ�"
echo 8/10...
mkdir "03_�������� Ʃ�� �Ҹ�"
echo 9/10...
mkdir "03_������ Ʃ�� �Ҹ�"
echo 10/10...

goto quit


:C4
cls
mkdir "03_�� Ÿ�� �Ҹ�"
echo 1/10...
mkdir "03_�鵵�ϴ� �Ҹ�"
echo 2/10...
mkdir "03_���̽�ƽ �Ҹ�"
echo 3/10...
mkdir "03_¡ Ʃ�� �Ҹ�"
echo 4/10...
mkdir "03_Ʈ���� �õ� �Ҹ�"
echo 5/10...
mkdir "03_�̾ӱ� �õ� �Ҹ�"
echo 6/10...
mkdir "03_���ϳ��� �ʹ� �Ҹ�"
echo 7/10...
mkdir "03_ĩ�ֻ�ձ� �Ҹ�"
echo 8/10...
mkdir "03_����� �Ҹ�"
echo 9/10...
mkdir "03_���ױ� �Ҹ�"
echo 10/10...

goto quit


:C5
cls
mkdir "03_�޷��̴� �Ҹ�"
echo 1/10...
mkdir "03_�����ε� �Ҹ�"
echo 2/10...
mkdir "03_������(�����) �ϴ� �Ҹ�"
echo 3/10...
mkdir "03_��ä �Ҹ�"
echo 4/10...
mkdir "03_���������� �Ҹ�"
echo 5/10...
mkdir "03_ȣ���� �ϴ� �Ҹ�"
echo 6/10...
mkdir "03_������ �Ҹ�"
echo 7/10...
mkdir "03_����� �Ҹ�"
echo 8/10...
mkdir "03_������ �Ҹ�"
echo 9/10...
mkdir "03_�����ϴ� �Ҹ�"
echo 10/10...

goto quit


:C6
cls
mkdir "02_���� �Ҹ�"
echo 1/10...
mkdir "02_�� �Ҹ�"
echo 2/10...
mkdir "02_�� �Ҹ�"
echo 3/10...
mkdir "01_�Ѽ����� �Ҹ�"
echo 4/10...
mkdir "01_�涱�̴� �Ҹ�"
echo 5/10...
mkdir "01_�����Ÿ��� �Ҹ�"
echo 6/10...
mkdir "01_�� ������ �ϴ� �Ҹ�"
echo 7/10...
mkdir "01_������ �Ѵ� �Ҹ�"
echo 8/10...
mkdir "01_��뷡 �Ҹ�"
echo 9/10...
mkdir "03_ī�� �ܸ��� �Ҹ�"
echo 10/10...

goto quit


:C7
cls
mkdir "01_���Ķ� �Ҹ�"
echo 1/10...
mkdir "01_��ä�� �ϴ� �Ҹ�"
echo 2/10...
mkdir "01_�չ�� �Ҹ�"
echo 3/10...
mkdir "03_�ڵ��� �溸��"
echo 4/10...
mkdir "03_��Ѱ� ���"
echo 5/10...
mkdir "03_����� �Ҹ�"
echo 6/10...
mkdir "03_������ �Ҹ�"
echo 7/10...
mkdir "03_ü�� ���ư��� �Ҹ�"
echo 8/10...
mkdir "03_���� �Ҹ�"
echo 9/10...
mkdir "03_ǳ�� �Ҹ�"
echo 10/10...

goto quit


:C8
cls
mkdir "03_���"
echo 1/10...
mkdir "03_��ġ��"
echo 2/10...
mkdir "03_���� �Ҹ�"
echo 3/10...
mkdir "03_�ٸ��� �Ҹ�"
echo 4/10...
mkdir "03_�ı⼼ô�� �Ҹ�"
echo 5/10...
mkdir "03_�巳 �Ҹ�"
echo 6/10...
mkdir "03_�ǾƳ� Ʃ�� �Ҹ�"
echo 7/10...
mkdir "03_�Ź��� Ʃ�� �Ҹ�"
echo 8/10...
mkdir "03_�ܼ� Ʃ�� �Ҹ�"
echo 9/10...
mkdir "03_�屸 Ʃ�� �Ҹ�"
echo 10/10...

goto quit


:C9
cls
mkdir "0_�Ѹ��� �Ҹ�"
echo 1/10...
mkdir "0_���Ʋ �Ҹ�"
echo 2/10...
mkdir "0_�Ѱ��� Ʃ�� �Ҹ�"
echo 3/10...
mkdir "0_���� �õ� �Ҹ�"
echo 4/10...
mkdir "0_�޹��� �õ� �Ҹ�"
echo 5/10...
mkdir "0_Ż��� �õ� �Ҹ�"
echo 6/10...
mkdir "0_�� �Ҹ�"
echo 7/10...
mkdir "0_����� �Ҹ�"
echo 8/10...
mkdir "0_������ �Ҹ�"
echo 9/10...
mkdir "0_�̱� ��� �Ҹ�"
echo 10/10...

goto quit


:C10
cls
mkdir "03_�ȸ��� �Ҹ�"
echo 1/10...
mkdir "03_ÿ�� �Ҹ�"
echo 2/10...
mkdir "03_�˵� �Ҹ�"
echo 3/10...
mkdir "03_ť�� ������ �Ҹ�"
echo 4/10...
mkdir "03_���� �ϴ� �Ҹ�"
echo 5/10...
mkdir "03_������ �Ҹ�"
echo 6/10...
mkdir "03_�����з��� �Ҹ�"
echo 7/10...
mkdir "03_�������� �Ҹ�"
echo 8/10...
mkdir "03_�𷯰�ġ�� �Ҹ�"
echo 9/10...
mkdir "03_����� Ÿ�� �Ҹ�"
echo 10/10...

goto quit

rem ## D�׷� �� ##

:D1
cls
mkdir "02_�ĵ� �Ҹ�"
echo 1/10...
mkdir "02_��ں� �Ҹ�"
echo 2/10...
mkdir "01_������ �Ҹ�"
echo 3/10...
mkdir "01_���� ���� �Ҹ�"
echo 4/10...
mkdir "03_�б� �˶��Ҹ�"
echo 5/10...

goto quit


:D2
cls
mkdir "01_�Ჿ�� �ϴ� �Ҹ�"
echo 1/10...
mkdir "03_ȭ��溸"
echo 2/10...
mkdir "03_���溸"
echo 3/10...
mkdir "03_���ڿ ��� �Ҹ�"
echo 4/10...
mkdir "03_�Ȱ漼ô�� �Ҹ�"
echo 5/10...

goto quit


:D3
cls
mkdir "01_�� ���� �Ҹ�"
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
rem echo %group%-%groupNum% �׷� ���� ���� �Ϸ�
echo ��з� %main% ���� ���� �Ϸ�
pause
quit


rem cls
rem mkdir "0_"
rem echo 1/10...
rem mkdir "0_"
rem echo 2/10...
rem mkdir "0_"
rem echo 3/10...
rem mkdir "0_"
rem echo 4/10...
rem mkdir "0_"
rem echo 5/10...
rem mkdir "0_"
rem echo 6/10...
rem mkdir "0_"
rem echo 7/10...
rem mkdir "0_"
rem echo 8/10...
rem mkdir "0_"
rem echo 9/10...
rem mkdir "0_"
rem 
rem goto quit

rem &echo 1/10...
rem &echo 2/10...
rem &echo 3/10...
rem &echo 4/10...
rem &echo 5/10...
rem &echo 6/10...
rem &echo 7/10...
rem &echo 8/10...
rem &echo 9/10...
rem &echo 10/10...