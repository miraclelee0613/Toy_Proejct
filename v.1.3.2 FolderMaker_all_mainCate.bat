@echo off
rem ��ɾ� ��â ��

rem ### ��������	:	v1.3.2_stable for team_mainCate
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
rem 		## 1.3.2 
rem 		## 1.3.1 ���� ���� �� �׷� �з� ����
rem 		## 1.3.0 ��з� ���� ���� ���α׷� �ϼ�
rem 		## 1.2.0 �׷캰�� �ƴ� ī�װ�(��з�)���� �����ϴ� ������ ��ȯ
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
rem mkdir "��ħ �Ҹ�"&mkdir "�����ϴ� �Ҹ�"&mkdir "�� ���ô� �Ҹ�"&mkdir "���� �Դ� �Ҹ�"&mkdir "�� Ǫ�� �Ҹ�"&mkdir "�� �ô� �Ҹ�"
rem mkdir "���� �Դ� �Ҹ�"&mkdir "ħ ��� �Ҹ�"&mkdir "���� �Ҹ�"&mkdir "�ǻ��ϴ� �Ҹ�"
rem mkdir "�δ� �Ҹ�"&mkdir "���ճִ� �Ҹ�"&mkdir "���� �Դ� �Ҹ�"&mkdir "���� �Դ� �Ҹ�"&mkdir "��ä �Դ� �Ҹ�"&mkdir "��� �Դ� �Ҹ�"&
rem mkdir "���� �Դ� �Ҹ�"&mkdir "�ٰ�Ʈ �Դ� �Ҹ�"&mkdir "����� �Դ� �Ҹ�"&
rem mkdir "�� �Դ� �Ҹ�"&mkdir "�� �Դ� �Ҹ�"&mkdir "�ø��� �Դ� �Ҹ�"&mkdir "�ڼ� �Ҹ�"&mkdir "���� �ϴ� �Ҹ�"&mkdir "����(���ϰŸ���)�Ҹ�"&mkdir "���� ���� �Ҹ�"&mkdir "�� Ǫ�� �Ҹ�"&
rem mkdir "��� �Ҹ�"&mkdir "�ȴ� �Ҹ�"&mkdir "�ٴ� �Ҹ�"&mkdir "�� ġ�� �Ҹ�"&
rem mkdir "�ٳѱ� �ϴ� �Ҹ�"&mkdir "�� �������� �Ҹ�"&mkdir "����ǰ ���� �Ҹ�"&mkdir "���� ���� �Ҹ�"&mkdir "���� �Դ� �Ҹ�"&mkdir "������ �Դ� �Ҹ�"&mkdir "�Ǿ �ô� �Ҹ�"&mkdir "Ƣ�� �Դ� �Ҹ�"&mkdir "��Ʈ�ڽ� �ϴ� �Ҹ�"&mkdir "�� ƨ��� �Ҹ�"&
rem mkdir "��ǰ�ϴ� �Ҹ�"&mkdir "ȣ�η� �Ÿ��� �Ҹ�"&mkdir "��� �Ҹ�"&mkdir "ȯȣ�ϴ� �Ҹ�"&mkdir "��ġ�ϴ� �Ҹ�"
rem mkdir "�ջ��� �ϴ� �Ҹ�"&mkdir "���� �Դ� �Ҹ�"&mkdir "���ܸԴ� �Ҹ�"&mkdir "�߼����� �Ҹ�"&mkdir "������ �Դ� �Ҹ�"&mkdir "ġ�� �ε����� �Ҹ�"&mkdir "�� �Դ� �Ҹ�"&mkdir "�����ϴ� �Ҹ�"&mkdir "�� �Ҹ�"&mkdir "���� �Դ� �Ҹ�"
rem mkdir "Ʈ�� �Ҹ�"mkdir "���ħ�ϴ� �Ҹ�"mkdir "���� �Ҹ�"mkdir "�ܴ� �Ҹ�"mkdir "�� ���� �Ҹ�"mkdir "�˾��� �ϴ� �Ҹ�"mkdir "��ī��� �Ҹ�"
rem mkdir "�հ��� ƨ��� �Ҹ�"mkdir "������ �Ҹ�"mkdir "���η� �Ÿ��� �Ҹ�"mkdir "��� �Ҹ�"
mkdir "��ħ �Ҹ�"&mkdir "���� �ϴ� �Ҹ�"&mkdir "�� ���ô� �Ҹ�"&mkdir "���� �Դ� �Ҹ�"&mkdir "�� ��½�Ÿ��� �Ҹ�"&mkdir "�� Ǫ�� �Ҹ�"&mkdir "�� �ô� �Ҹ�"&mkdir "���� �Դ� �Ҹ�"&mkdir "ħ ��� �Ҹ�"&mkdir "���� �Ҹ�"&mkdir "�ǻ��ϴ� �Ҹ�"&mkdir "�δ� �Ҹ�"&mkdir "���� �ִ� �Ҹ�"&mkdir "������ ���Ҹ�"&mkdir "�޴��� �Ҹ�"&mkdir "���� �Դ� �Ҹ�"&mkdir "���� �Դ� �Ҹ�"&mkdir "��ä �Դ� �Ҹ�"&mkdir "��� �Դ� �Ҹ�"&mkdir "���� �Դ� �Ҹ�"&mkdir "�ٰ�Ʈ �Դ� �Ҹ�"&mkdir "����� �Դ� �Ҹ�"&mkdir "�� �Դ� �Ҹ�"&mkdir "�� �Դ� �Ҹ�"&mkdir "�ø��� �Դ� �Ҹ�"&mkdir "�ڼ� �Ҹ�"&mkdir "�����ϴ� �Ҹ�"&mkdir "����(���ϰŸ���) �Ҹ�"&mkdir "���� ���� �Ҹ�"&mkdir "�� Ǫ�� �Ҹ�"&mkdir "ȣ���� �Ҹ�"&mkdir "��� �Ҹ�"&mkdir "�ȴ� �Ҹ�"&mkdir "�ٴ� �Ҹ�"&mkdir "�� ġ�� �Ҹ�"&mkdir "�ٳѱ� �ϴ� �Ҹ�"&mkdir "�� �������� �Ҹ�"&mkdir "����ǰ ���� �Ҹ�"&mkdir "���� ���� �Ҹ�"&mkdir "���� �Դ� �Ҹ�"&mkdir "������ �Դ� �Ҹ�"&mkdir "�Ǿ �ô� �Ҹ�"&mkdir "Ƣ�� �Դ� �Ҹ�"&mkdir "��Ʈ�ڽ� �ϴ� �Ҹ�"&mkdir "�� ƨ��� �Ҹ�"&mkdir "��ǰ�ϴ� �Ҹ�"&mkdir "ȣ�η� �Ÿ��� �Ҹ�"&mkdir "��� �Ҹ�"&mkdir "ȯȣ�ϴ� �Ҹ�"&mkdir "��ġ�ϴ� �Ҹ�"&mkdir "�ջ��� �ϴ� �Ҹ�"&mkdir "���� �Դ� �Ҹ�"&mkdir "���� �Դ� �Ҹ�"&mkdir "�߼����� �Ҹ�"&mkdir "������ �Դ� �Ҹ�"&mkdir "ġ�� �ε����� �Ҹ�"&mkdir "�� �Դ� �Ҹ�"&mkdir "�����ϴ� �Ҹ�"&mkdir "�� �Ҹ�"&mkdir "���� �Դ� �Ҹ�"&mkdir "Ʈ�� �Ҹ�"&mkdir "���ħ�ϴ� �Ҹ�"&mkdir "���� �Ҹ�"&mkdir "�ܴ� �Ҹ�"&mkdir "�� ���� �Ҹ�"&mkdir "�˾��� �ϴ� �Ҹ�"&mkdir "��ī��� �Ҹ�"&mkdir "�հ��� ƨ��� �Ҹ�"&mkdir "������ �Ҹ�"&mkdir "���η� �Ÿ��� �Ҹ�"&mkdir "��� �Ҹ�"&mkdir "�Ѽ����� �Ҹ�"&mkdir "�涱�̴� �Ҹ�"&mkdir "�����Ÿ��� �Ҹ�"&mkdir "�걸���� �ϴ� �Ҹ�"&mkdir "������ �Ѵ� �Ҹ�"&mkdir "��뷡 �Ҹ�"&mkdir "���Ķ� �Ҹ�"&mkdir "��ä�� �ϴ� �Ҹ�"&mkdir "�չ�� �Ҹ�"&mkdir "������ �Ҹ�"&mkdir "���� ���� �Ҹ�"&mkdir "�Ჿ�� �ϴ� �Ҹ�"&mkdir "�� ��� �Ҹ�"

goto quit

:mc02
set main="02"
rem mkdir "�� �Ҹ�"&mkdir "�� �Ҹ�"&mkdir "�ٶ� �Ҹ�"&mkdir "�ͶѶ�� �Ҹ�"&mkdir "��� �Ҹ�"
rem mkdir "��ѱ� �Ҹ�"&mkdir "�� �Ҹ�"&mkdir "���� ���� �Ҹ�"&mkdir "��� �Դ� �Ҹ�"&
rem mkdir "����� �Ҹ�"&mkdir "Ǯ���� �Ҹ�"&mkdir "�� �Ҹ�"&mkdir "�Ź� �Ҹ�"&mkdir "��ġ �Ҹ�"&mkdir "������ ��鸮�� �Ҹ�"&
rem mkdir "�� �Ҹ�"&mkdir "�� ������ �Ҹ�"&mkdir "�� �������� �Ҹ�"&mkdir "���� �Ҹ�"&mkdir "��� �Ҹ�"
rem mkdir "�� �帣�� �Ҹ�"mkdir "�� �Ҹ�"mkdir "���� �Ҹ�"
mkdir "�� �Ҹ�"&mkdir "���Ҹ�"&mkdir "�ٶ� �Ҹ�"&mkdir "�ͶѶ�� �Ҹ�"&mkdir "��� �Ҹ�"&mkdir "��ѱ� �Ҹ�"&mkdir "�� �Ҹ�"&mkdir "���� ���� �Ҹ�"&mkdir "��� �Դ� �Ҹ�"&mkdir "����� �Ҹ�"&mkdir "Ǯ���� �Ҹ�"&mkdir "�� �Ҹ�"&mkdir "�Ź� �Ҹ�"&mkdir "��ġ �Ҹ�"&mkdir "������ ��鸮�� �Ҹ�"&mkdir "�� �Ҹ�"&mkdir "�� ������ �Ҹ�"&mkdir "�� �������� �Ҹ�"&mkdir "���� �Ҹ�"&mkdir "��� �Ҹ�"&mkdir "�� �帣�� �Ҹ�"&mkdir "�� �Ҹ�"&mkdir "���� �Ҹ�"&mkdir "���� �Ҹ�"&mkdir "�� �Ҹ�"&mkdir "�� �Ҹ�"&mkdir "�ĵ� �Ҹ�"&mkdir "��ں� �Ҹ�"

goto quit


:mc03
set main="03"
mkdir "��ũ �ϴ� �Ҹ�"&mkdir "���� ����� �Ҹ�"&mkdir "�ݼ� �ε����� �Ҹ�"&mkdir "ĵ ��׷����� �Ҹ�"&mkdir "����� �Ҹ�"&mkdir "���ڵ� ��� �Ҹ�"&mkdir "�ʱ� �ϴ� �Ҹ�"&mkdir "Ÿ�� ġ�� �Ҹ�"&mkdir "������ �Ҹ�"&mkdir "�ͼ��� ���� �Ҹ�"&mkdir "���ʱ��� �Ҹ�"&mkdir "�������� �Ҹ�"&mkdir "���������� �Ҹ�"&mkdir "���� �Ҹ�"&mkdir "�� �Ҹ�"&mkdir "���ձ� �Ҹ�"&mkdir "��ũ�� �Ҹ�"&mkdir "���� �������� �Ҹ�"&mkdir "�Ǹ� �Ҹ�"&mkdir "��ε�� �Ҹ�"&mkdir "����(��ä)��� �Ҹ�"&mkdir "���� ġ�� �Ҹ�"&mkdir "���� ���� �Ҹ�"&mkdir "���̺�Ÿ�� �Ҹ�"&mkdir "���������� �Ҹ�"&mkdir "�� �Ҹ�"&mkdir "���� �Ҹ�"&mkdir "ȣ�� ��� �Ҹ�"&mkdir "���� �Ҹ�"&mkdir "��� ����� �Ҹ�"&mkdir "���� �ε����� �Ҹ�"&mkdir "�ö�ƽ ����� �Ҹ�"&mkdir "�������÷�"&mkdir "Ŀ����Ʈ ���� �Ҹ�"&mkdir "�ڵ��� ���� �Ҹ�"&mkdir "Į���ϴ� �Ҹ�"&mkdir "���콺 Ŭ�� �ϴ� �Ҹ�"&mkdir "�ð� �Ҹ�"&mkdir "����̱� �Ҹ�"&mkdir "��Ź�� �Ҹ�"&mkdir "�� ���� �Ҹ�"&mkdir "���ڷ��� �Ҹ�"&mkdir "����ä �Ҹ�"&mkdir "��� �Ҹ�"&mkdir "������ �Ҹ�"&mkdir "������ �Ҹ�"&mkdir "ź������ ������ �Ҹ�"&mkdir "ĳ���ͳ��� �Ҹ�"&mkdir "������� �õ� �Ҹ�"&mkdir "�޴�� ��ǳ�� �Ҹ�"&mkdir "��ī �Ҹ�"&mkdir "������ ���� �Ҹ�"&mkdir "���ۺ��� ���� �Ҹ�"&mkdir "���� �Ҹ�"&mkdir "��Ǯ���ű� �Ҹ�"&mkdir "����� �Ҹ�"&mkdir "����(å��)�߱״� �Ҹ�"&mkdir "�и�ġ �Ҹ�"&mkdir "�ȵ��� �Ҹ�"&mkdir "������ �Ҹ�"&mkdir "õ �������� �Ҹ�"&mkdir "����(å��)���� �Ҹ�"&mkdir "�� ���ݴ� �Ҹ�"&mkdir "�й��� �Ҹ�"&mkdir "���ڷ����� �Ҹ�"&mkdir "������ �Ҹ�"&mkdir "ĵ ���� �Ҹ�"&mkdir "���� �Ҹ�"&mkdir "��Ƽ���� �Ҹ�"&mkdir "õ �ܴ� �Ҹ�"&mkdir "ī�޶� �Ҹ�"&mkdir "�¿� ���� �Ҹ�"&mkdir "Ŀư �Ҹ�"&mkdir "�Ȼ��� �Ҹ�"&mkdir "ȭ�� �Ҹ�"&mkdir "�ٸ��� �Ҹ�"&mkdir "���� ����̹� �Ҹ�"&mkdir "���� �ѱ�� �Ҹ�"&mkdir "�� ������ �Ҹ�"&mkdir "���� ���� �Ҹ�"&mkdir "Ʈ���̾ޱ� �Ҹ�"&mkdir "���������� �Ҹ�"&mkdir "����ġ�� �Ҹ�"&mkdir "ĥ�� �ܴ� �Ҹ�"&mkdir "�� ������ �Ҹ�"&mkdir "������ �Ҹ�"&mkdir "�����νı� �Ҹ�"&mkdir "��Ÿġ�� �Ҹ�"&mkdir "ö ���� �Ҹ�"&mkdir "�� �ε����� �Ҹ�"&mkdir "�ö�ƽ �ε����� �Ҹ�"&mkdir "���������̾� �Ҹ�"&mkdir "���� �������� �Ҹ�"&mkdir "�峭�� �Ҹ�"&mkdir "Į ���� �Ҹ�"&mkdir "���� �������� �Ҹ�"&mkdir "���� �Ҹ�"&mkdir "Ŀ�Ǹӽ� �Ҹ�"&mkdir "ǳ�� �Ҹ�"&mkdir "���� ������ �Ҹ�"&mkdir "���ܱ� �Ҹ�"&mkdir "�ٵ����� �Ҹ�"&mkdir "��ġ �Ҹ�"&mkdir "���� ������ �Ҹ�"&mkdir "��Ź �Ҹ�"&mkdir "ī�� �ܸ��� �Ҹ�"&mkdir "�ڵ��� �溸�� �Ҹ�"&mkdir "��Ѱ� ��� �Ҹ�"&mkdir "����� �Ҹ�"&mkdir "������ �Ҹ�"&mkdir "ü�� ���ư��� �Ҹ�"&mkdir "���� �Ҹ�"&mkdir "ǳ�� �Ҹ�"&mkdir "�б� �˶� �Ҹ�"&mkdir "ȭ��溸 �Ҹ�"&mkdir "���溸 �Ҹ�"&mkdir "���ڿ ��� �Ҹ�"&mkdir "�Ȱ漼ô�� �Ҹ�"&mkdir "���Ҹ�"&mkdir "�������� �溸�Ҹ�"&mkdir "���� �������� �Ҹ�"&mkdir "���� �Ҹ�"&mkdir "����ũ Ƣ�� �Ҹ�"
mkdir "PC �Ҹ�"
goto quit



:quit
rem echo %group%-%groupNum% �׷� ���� ���� �Ϸ�
echo ��з� %main% ���� ���� �Ϸ�
pause
quit