@echo off
rem ��ɾ� ��â ��

rem ### ��������	:	v1.4.2_snapshot3 for team_mainCate
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
rem 		## 1.4.2 ������ ���� ��� �߰� �� ���� �Ƚ�
rem 		## 1.4.1 ���� ����. ������.
rem 		## 1.4.0 ��Ÿ���� �� ��з�, �Һз� ���� ��� �߰�
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
:start
:choiceFunction
echo.
echo 	## ������ ����� �������ּ��� ##
echo 	## 1. ��з� ���� ���� �ϰ� ������ ##
echo 	## 2. ��з�_�Һз� ���� ���� ������ ##
echo 	## 3. �� ���� ����(�������� ���) ##
echo 	## q. ���� ##
echo.
set /p choice="	���:	"

if %choice% equ 1 goto ChoiceGroup
if %choice% equ 2 goto ChoiceSub
if %choice% equ 3 goto RemoveEmptyFolders
if %choice% equ q exit

cls
echo 	## �߸� �Է��߽��ϴ�. ##
echo 	## �ٽ� �Է����ּ���. ##
echo.
goto choiceFunction

:RemoveEmptyFolders
for /f "delims=" %%i in ('dir /s /b /ad ^| sort /r') do rd "%%i" 2
cls
goto choiceFunction


:ChoiceSub
echo 	## �Һз� ���� ���� �������Դϴ� ##
echo 	## ��з� �ڵ带 ���� �Է����ּ��� ##
echo 	## 1. ����� ������ �Ҹ�  2. ���� �� �ڿ� �Ҹ� ##
echo 	## 3. ������ǰ �� ��Ȱȯ�� �Ҹ�  4. ó������ ���ư���
echo.
set /p mainCode="	choice: "
if %mainCode% leq 3 if %mainCode% geq 1 goto ChoiceSub2
if %mainCode% equ 4 goto start
cls
echo 	## �߸� �Է��߽��ϴ�. ##
echo 	## �ٽ� �Է����ּ���. ##
echo.
goto ChoiceSub

:ChoiceSub2
echo.
echo 	## �����ϰ��� �ϴ� �Һз� �ڵ带 �Է����ּ��� ##
if %mainCode% equ 1 (
	set /p subCode="	1. ��ü�Ҹ�  2. ��������  3. Ÿ��,���"
)
if %mainCode% equ 2 (
	set /p subCode="	1. ����  2. �ڿ���"
)
if %mainCode% equ 3 (
	set /p subCode="	1. ������ǰ  2. ��Ȱȯ��"
)
if not %subCode% geq 1 if not %subCode% leq 3 cls&goto ChoiceSub2
if %mainCode% geq 2 if %mainCode% leq 3 if %subCode% geq 3 cls&goto ChoiceSub2
if %subCode% geq 1 if %subCode% leq 3 cls&call :main0%mainCode%_0%subCode%

echo.
echo 	## 0%mainCode%_0%subCode% ���� ���� �Ϸ�
echo.

goto ChoiceSub



:ChoiceGroup
rem echo 	## �׷����� �ڵ��������Դϴ� ##
rem echo 	## �׷��� �Է��ϼ��� ##
rem echo 	��) B-1�׷� : b(��ҹ��� ����) ���� 1 ����
rem set /p group=Group: 

rem echo ## �׷� ��ȣ�� �Է��ϼ��� ##
rem echo ## ��) B-1�̸� 1 �Է�
rem set /p groupNum=GroupNumber : 

echo 	## ��з� ���� ���� �ڵ��������Դϴ� ##
echo 	## ��з� �ڵ带 �Է��ϼ��� ##
echo.
echo 	## 1. ����� ������ �Ҹ� ##
echo 	## 2. ���� �� �ڿ� �Ҹ� ##
echo 	## 3. ������ǰ �� ��Ȱȯ�� �Ҹ� ##
echo.
set /p main="choice: "

if %main% equ 1 goto mc01
if %main% equ 2 goto mc02
if %main% equ 3 goto mc03
goto ChoiceGroup
rem goto confirm

:confirm
rem if %group% equ a set group=A
rem if %group% equ b set group=B
rem if %group% equ c set group=C
rem if %group% equ d set group=D

rem echo ## ������ �׷�: %group%-%groupNum% ##
rem echo �����Ͻðڽ��ϱ�? 
rem set /p confirm= Y / N : 
rem choice /c 12 /m"	1.���� 	2.ó������ ���ư���"
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
call :main01_01
timeout 1
call :main01_02
timeout 1
call :main01_03
timeout 1

goto start


:mc02
set main="02"
call :main02_01
timeout 1
call :main02_02
timeout 1

goto start


:mc03
set main="03"
call :main03_01
timeout 1
call :main03_02
timeout 1

goto start




:main01_01
rem set main="01"
mkdir "�����ϴ¼Ҹ�"
mkdir "�Ǿ�ô¼Ҹ�"
mkdir "���ڸԴ¼Ҹ�"
mkdir "�ָԴ¼Ҹ�"
mkdir "�������Ѵ¼Ҹ�"
mkdir "���ճִ¼Ҹ�"
mkdir "���ô¼Ҹ�"
mkdir "����Դ¼Ҹ�"
mkdir "���Դ¼Ҹ�"
mkdir "����ǰ���¼Ҹ�"
mkdir "�����ô¼Ҹ�"
mkdir "�ٰ�Ʈ�Դ¼Ҹ�"
mkdir "�߼������Ҹ�"
mkdir "��Դ¼Ҹ�"
mkdir "���߸Դ¼Ҹ�"
mkdir "�����ƸԴ¼Ҹ�"
mkdir "���Ҹ�"
mkdir "��Ʈ�ڽ��ϴ¼Ҹ�"
mkdir "�ǻ��ϴ¼Ҹ�"
mkdir "����Դ¼Ҹ�"
mkdir "�����Դ¼Ҹ�"
mkdir "�칮�����¼Ҹ�"
mkdir "�����Դ¼Ҹ�"
mkdir "�����ϴ¼Ҹ�"
mkdir "�հ���ƨ��¼Ҹ�"
mkdir "�չ�ͼҸ�"
mkdir "���ڸԴ¼Ҹ�"
mkdir "���Ҹ�"
mkdir "�ø���Դ¼Ҹ�"
mkdir "��ü�ܴ¼Ҹ�"
mkdir "��ī���Ҹ�"
mkdir "�����ϴ¼Ҹ�"
mkdir "��ä�Դ¼Ҹ�"
mkdir "��ġ�ϴ¼Ҹ�"
mkdir "�����Դ¼Ҹ�"
mkdir "�������Դ¼Ҹ�"
mkdir "�˾����ϴ¼Ҹ�"
mkdir "���Ҹ�"
mkdir "�����Ҹ�"
mkdir "�����Ҹ�"
mkdir "�����Ÿ��¼Ҹ�"
mkdir "�̰��¼Ҹ�"
mkdir "��Ǫ�¼Ҹ�"
mkdir "�������¼Ҹ�"
mkdir "�����Դ¼Ҹ�"
mkdir "�ٳѱ��ϴ¼Ҹ�"
mkdir "¥�����¼Ҹ�"
mkdir "���ܸԴ¼Ҹ�"
mkdir "ġ�ƺε����¼Ҹ�"
mkdir "ħ��¼Ҹ�"
mkdir "��Ǫ�¼Ҹ�"
mkdir "��뷡�Ҹ�"
mkdir "Ƣ��Դ¼Ҹ�"
mkdir "���ܸԴ¼Ҹ�"
mkdir "�Ѽ����¼Ҹ�"
mkdir "��ƨ��¼Ҹ�"
mkdir "ȣ�ηϰŸ��¼Ҹ�"
mkdir "ȯȣ�ϴ¼Ҹ�"
mkdir "���Ķ��Ҹ�"

goto :eof 


:main01_02
mkdir "�������¼Ҹ�"
mkdir "��ġ�¼Ҹ�"
mkdir "��ħ�Ҹ�"
mkdir "���ηϰŸ��¼Ҹ�"
mkdir "���¼Ҹ�"
mkdir "�������Ҹ�"
mkdir "�Դ¼Ҹ�"
mkdir "��ͼҸ�"
mkdir "���Ҹ�"
mkdir "�δ¼Ҹ�"
mkdir "�Ჿ���ϴ¼Ҹ�"
mkdir "��ä���ϴ¼Ҹ�"
mkdir "�ڰ�¼Ҹ�"
mkdir "����½�Ÿ��¼Ҹ�"
mkdir "Ʈ���Ҹ�"
mkdir "��ǰ�ϴ¼Ҹ�"
mkdir "�涱�̴¼Ҹ�"
mkdir "�걸�����ϴ¼Ҹ�"
mkdir "���ħ�ϴ¼Ҹ�"

goto :eof 


:main01_03
mkdir "�ȴ¼Ҹ�"
mkdir "�������¼Ҹ�"
mkdir "����(���ϰŸ���)�Ҹ�"
mkdir "�ٴ¼Ҹ�"
mkdir "�ڼ��Ҹ�"
mkdir "��¼Ҹ�"

goto :eof 


:main02_01
mkdir "���ű�Ҹ�"
mkdir "�������Ҹ�"
mkdir "���Ҹ�"
mkdir "�����Ҹ�"
mkdir "���ϼҸ�"
mkdir "����̼Ҹ�"
mkdir "�ͶѶ�̼Ҹ�"
mkdir "��ͼҸ�"
mkdir "��ġ�Ҹ�"
mkdir "�߼Ҹ�"
mkdir "���������Ҹ�"
mkdir "�����Ҹ�"
mkdir "���Ҹ�"
mkdir "�Ź̼Ҹ�"
mkdir "�Ͳ��̼Ҹ�"
mkdir "���Ҹ�"
mkdir "�������Ҹ�"
mkdir "���Ҹ�"
mkdir "��ѱ�Ҹ�"
mkdir "���Դ¼Ҹ�"
mkdir "���Ҹ�"
mkdir "�ҼҸ�"
mkdir "��Ҹ�"
mkdir "��ġ�Ҹ�"
mkdir "���ҼҸ�"
mkdir "�����Ҹ�"
mkdir "��Ҹ�"
mkdir "�����Ҹ�"
mkdir "Ǯ�����Ҹ�"

goto :eof 


:main02_02
mkdir "��������鸮�¼Ҹ�"
mkdir "�������¼Ҹ�"
mkdir "��ںҼҸ�"
mkdir "���������¼Ҹ�"
mkdir "���帣�¼Ҹ�"
mkdir "�ٶ��Ҹ�"
mkdir "��Ҹ�"
mkdir "��ڼҸ�"
mkdir "õ�ռҸ�"
mkdir "�ĵ��Ҹ�"
mkdir "�����Ҹ�"

goto :eof 


:main03_01
mkdir "PC�Ҹ�"
mkdir "��������溸�Ҹ�"
mkdir "������Ҹ�"
mkdir "������Ҹ�"
mkdir "�跮��Ҹ�"
mkdir "�����Ҹ�"
mkdir "����û����Ҹ�"
mkdir "���б��"
mkdir "���۱���"
mkdir "����������Ҹ�"
mkdir "�׶��δ��ڸ��¼Ҹ�"
mkdir "�׿½��μҸ�"
mkdir "����������Ҹ�"
mkdir "�ٸ��̼Ҹ�"
mkdir "�����溸"
mkdir "������Ҹ�"
mkdir "�����з���Ҹ�"
mkdir "����̱�Ҹ�"
mkdir "�����������Ҹ�"
mkdir "��Ʈ�γ�Ҹ�"
mkdir "�鵵�ϴ¼Ҹ�"
mkdir "������Ҹ�"
mkdir "�ͼ��Ⱑ�¼Ҹ�"
mkdir "�ٸ����Ҹ�"
mkdir "���ڵ���¼Ҹ�"
mkdir "���ױ�Ҹ�"
mkdir "��ܼҸ�"
mkdir "��Ѱ����"
mkdir "�濪�ϴ¼Ҹ�(�ҵ���)"
mkdir "����ӽ�"
mkdir "���ʼҸ�"
mkdir "���Ҹ�"
mkdir "��Ǯ���ű�Ҹ�"
mkdir "���ձ�Ҹ�"
mkdir "��ҹ�¼Ҹ�"
mkdir "�񵥼Ҹ�"
mkdir "���溸"
mkdir "��Ƣ����Ҹ�"
mkdir "�̱���Ҹ�"
mkdir "���ܱ�"
mkdir "��Ź��Ҹ�"
mkdir "����ġ�Ҹ�"
mkdir "����ũƢ�¼Ҹ�"
mkdir "�������𷯼Ҹ�"
mkdir "�ð�Ҹ�"
mkdir "�ı⼼ô��Ҹ�"
mkdir "�Ȱ漼ô��Ҹ�"
mkdir "�ȸ���Ҹ�"
mkdir "�����"
mkdir "���������̾�Ҹ�"
mkdir "���������ͼҸ�"
mkdir "����Ҹ�"
mkdir "���ް溸"
mkdir "�̾ӱ�õ��Ҹ�"
mkdir "�ڵ����Ҹ�"
mkdir "�ڵ����溸��"
mkdir "�ڵ��������Ҹ�"
mkdir "���Ʋ�Ҹ�"
mkdir "����鵵��Ҹ�"
mkdir "����Ҹ�"
mkdir "����ä�Ҹ�"
mkdir "������Ҹ�"
mkdir "��������̹��Ҹ�"
mkdir "�����帱"
mkdir "���ڷ������Ҹ�"
mkdir "�����Ҹ�"
mkdir "�����Ҹ�"
mkdir "������Ҹ�"
mkdir "���̽�ƽ�Ҹ�"
mkdir "�����νı�Ҹ�"
mkdir "��������"
mkdir "���ڿ����Ҹ�"
mkdir "�����Ҹ�"
mkdir "�������Ҹ�"
mkdir "ĩ�ֻ�ձ�Ҹ�"
mkdir "ī��ܸ���Ҹ�"
mkdir "ī�޶�Ҹ�"
mkdir "Ŀ�ǸӽżҸ�"
mkdir "����������Ҹ�"
mkdir "�޹��νõ��Ҹ�"
mkdir "�𷯰�ġ��Ҹ�"
mkdir "Ÿ��ġ�¼Ҹ�"
mkdir "Ż���õ��Ҹ�"
mkdir "Ż����Ҹ�"
mkdir "�佺Ʈ��Ҹ�"
mkdir "Ʈ���ͽõ��Ҹ�"
mkdir "�����ͼҸ�"
mkdir "����"
mkdir "�����Ҹ�"
mkdir "�����ͼҸ�"
mkdir "�б��˶��Ҹ�"
mkdir "ȭ��溸"
mkdir "�޴���ǳ��Ҹ�"
mkdir "�޴����Ҹ�"

goto :eof 


:main03_02
mkdir "�����������Ҹ�"
mkdir "���߱�Ʃ�׼Ҹ�"
mkdir "�������żҸ�"
mkdir "���ǰ��¼Ҹ�"
mkdir "�Ź���Ʃ�׼Ҹ�"
mkdir "����õ��Ҹ�"
mkdir "����Ҹ�"
mkdir "���ټҸ�"
mkdir "�����ԼҸ�"
mkdir "����(��ä)��¼Ҹ�"
mkdir "���ϳ����ʹ¼Ҹ�"
mkdir "����ġ�¼Ҹ�"
mkdir "���¼Ҹ�"
mkdir "��û�ҼҸ�"
mkdir "�ݰ�Ҹ�"
mkdir "�ݼӺε����¼Ҹ�"
mkdir "������(�����)�ϴ¼Ҹ�"
mkdir "��ŸƩ�׼Ҹ�"
mkdir "�Ѱ���Ʃ�׼Ҹ�"
mkdir "�����������¼Ҹ�"
mkdir "������¼Ҹ�"
mkdir "�����ε����¼Ҹ�"
mkdir "�����ϴ¼Ҹ�"
mkdir "��ũ�ϴ¼Ҹ�"
mkdir "�ٵ������Ҹ�"
mkdir "�ܼҼҸ�"
mkdir "����Ǵ¼Ҹ�"
mkdir "�籸���Ҹ�"
mkdir "���������Ҹ�"
mkdir "���̳�Ҹ�"
mkdir "���ε����¼Ҹ�"
mkdir "�����������¼Ҹ�"
mkdir "�巳�Ҹ�"
mkdir "����ġ�¼Ҹ�"
mkdir "����ġ�¼Ҹ�"
mkdir "�ȵ��̼Ҹ�"
mkdir "�����ͼҸ�"
mkdir "��ī�Ҹ�"
mkdir "���μҸ�"
mkdir "����Ҹ�"
mkdir "��ġ��"
mkdir "���콺Ŭ���ϴ¼Ҹ�"
mkdir "����ǳ���ε��¼Ҹ�"
mkdir "��ġ"
mkdir "�˵��Ҹ�"
mkdir "��ε��Ҹ�"
mkdir "��Ź�Ҹ�"
mkdir "�����ݴ¼Ҹ�"
mkdir "�������¼Ҹ�"
mkdir "�������¼Ҹ�"
mkdir "�ٵϾ˼Ҹ�"
mkdir "���̿ø�Ʃ�׼Ҹ�"
mkdir "�����������¼Ҹ�"
mkdir "��ũ�μҸ�"
mkdir "��¤�Ҹ�"
mkdir "�����¼Ҹ�"
mkdir "���ۺ��۲��¼Ҹ�"
mkdir "���¼Ҹ�"
mkdir "��ä�Ҹ�"
mkdir "�ϼҸ�"
mkdir "�й���Ҹ�"
mkdir "��Ÿ�¼Ҹ�"
mkdir "����ε�Ҹ�"
mkdir "��ұ���¼Ҹ�"
mkdir "���ڷ����Ҹ�"
mkdir "����Ҹ�"
mkdir "���¼Ҹ�"
mkdir "�Ȼ��̼Ҹ�"
mkdir "�и�ġ�Ҹ�"
mkdir "�Ѹ��¼Ҹ�"
mkdir "�������Ҹ�"
mkdir "���"
mkdir "������Ʃ�׼Ҹ�"
mkdir "�����ġ�¼Ҹ�"
mkdir "�����ε��¼Ҹ�"
mkdir "�ջ����ϴ¼Ҹ�"
mkdir "����(����)��¼Ҹ�"
mkdir "�����Ҹ�"
mkdir "���������Ҹ�"
mkdir "��Ÿġ�¼Ҹ�"
mkdir "�������÷�"
mkdir "��Ƽ�����Ҹ�"
mkdir "�����ӼҸ�"
mkdir "�Ƿ����Ҹ�"
mkdir "�ҼҸ�"
mkdir "��������"
mkdir "���ʱ�¼Ҹ�"
mkdir "���ʱ��̼Ҹ�"
mkdir "������¼Ҹ�"
mkdir "������Ҹ�"
mkdir "��ī�����Ҹ�"
mkdir "������̽õ��Ҹ�"
mkdir "������Ʃ�׼Ҹ�"
mkdir "���������¼Ҹ�"
mkdir "�����������¼Ҹ�"
mkdir "�����ε����¼Ҹ�"
mkdir "�������¼Ҹ�"
mkdir "�������Ҹ�"
mkdir "���ı��¼Ҹ�"
mkdir "����(å��)���¼Ҹ�"
mkdir "����(å��)�߱״��Ҹ�"
mkdir "�ڸ��¼Ҹ�"
mkdir "�ڼ��ε����¼Ҹ�"
mkdir "���������Ҹ�"
mkdir "�屸Ʃ�׼Ҹ�"
mkdir "���˼Ҹ�"
mkdir "�峭���Ҹ�"
mkdir "�����Ҹ�"
mkdir "���Ҹ�"
mkdir "���̱���¼Ҹ�"
mkdir "���̳ѱ�¼Ҹ�"
mkdir "�����ڸ��¼Ҹ�"
mkdir "�����ϴ¼Ҹ�"
mkdir "�ٰ��¼Ҹ�"
mkdir "���ۼҸ�"
mkdir "¡�Ҹ�"
mkdir "¡Ʃ�׼Ҹ�"
mkdir "õ�ܴ¼Ҹ�"
mkdir "õ�ٵ�¼Ҹ�"
mkdir "õ�ڸ��¼Ҹ�"
mkdir "õ�������¼Ҹ�"
mkdir "ö���¼Ҹ�"
mkdir "ü�ε��ư��¼Ҹ�"
mkdir "ÿ�μҸ�"
mkdir "ĥ�Ǳܴ¼Ҹ�"
mkdir "Į���¼Ҹ�"
mkdir "Į���ϴ¼Ҹ�"
mkdir "ĳ���ͳ����Ҹ�"
mkdir "ĵ���¼Ҹ�"
mkdir "ĵ��׷����¼Ҹ�"
mkdir "Ŀư�Ҹ�"
mkdir "Ŀ����Ʈ���¼Ҹ�"
mkdir "���̺�Ÿ�̼Ҹ�"
mkdir "ť�길���¼Ҹ�"
mkdir "Ű���ϴ¼Ҹ�"
mkdir "ź����������¼Ҹ�"
mkdir "�¿����¼Ҹ�"
mkdir "�ƹ����Ҹ�"
mkdir "�������Ҹ�"
mkdir "��ġ�Ҹ�"
mkdir "���"
mkdir "���������¼Ҹ�"
mkdir "Ƣ��¼Ҹ�"
mkdir "Ʈ���̾ޱۼҸ�"
mkdir "����ġ�¼Ҹ�"
mkdir "��ġ��"
mkdir "�޷��̴¼Ҹ�"
mkdir "ǳ��Ҹ�"
mkdir "ǳ���Ҹ�"
mkdir "�ö�ƽ����¼Ҹ�"
mkdir "�ö�ƽ�ε����¼Ҹ�"
mkdir "�ö�ƽ��׷����¼Ҹ�"
mkdir "�Ǹ��Ҹ�"
mkdir "�ǾƳ�Ʃ�׼Ҹ�"
mkdir "�ʱ��ϴ¼Ҹ�"
mkdir "�ϸ��ī�Ҹ�"
mkdir "ȣ�α�¼Ҹ�"
mkdir "ȣ����Ҹ�"
mkdir "ȣ�����ϴ¼Ҹ�"
mkdir "ȭ���Ҹ�"
mkdir "�����¼Ҹ�"

goto :eof 

:quit2
echo 	## �Һз� ���� �����⸦ �����մϴ�. ##
pause
exit

:quit
rem echo %group%-%groupNum% �׷� ���� ���� �Ϸ�
echo ## ��з� %main% ���� ���� �Ϸ� ##

pause
exit