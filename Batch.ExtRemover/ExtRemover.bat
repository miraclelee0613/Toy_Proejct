@echo off
rem ��ɾ� ��â ��

rem ### ��������	:	v1.0.0_
rem ### ������ ������Ʈ: 22.11.09.

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

rem 	## 1.0.0	ù���� ����

rem ���� ����Ʈ : https://flyingkiwi.tistory.com/29

:start
cls
SET found=0
echo.
echo 	Ư�� ������ ������ ����� ���α׷��Դϴ�.
rem echo 	�����Ͻðڽ��ϱ�?
rem echo 	1. ���� 	2. ���α׷� ����
rem set /p choice2="> "
rem if %choice2% equ 1 goto choiceext
rem if %choice2% equ 2 exit&pause>nul
rem goto start

rem :choiceext
rem echo.
echo 	������� �ϴ� ���������� �Է����ּ���.
echo 	��0 �Է½� ���α׷� ����
SET /p ext="> "
if %ext%==0 exit&pause>nul
echo.
:choicerange
echo 	���õ� ���ĸ� : .%ext%
echo 	��ġ���� ����, ���������� ���������� ���밡���մϴ�
echo 	������ �����Ͻʽÿ�
echo 	1. ������������ ����(��������x)
echo 	2. ������������ ����(��������x)
echo 	3. ���������� �������� ��� ����
echo 	0. ���α׷� ����
set /p choice="> "
if %choice%==0 exit&pause>nul
cls
echo 		�ذ���
echo 	���õ� ���� : .%ext%
if %choice%==1 echo 	���õ� ���� : ������������ ����(��������x)
if %choice%==2 echo 	���õ� ���� : ������������ ����(��������x)
if %choice%==3 echo 	���õ� ���� : ���������� �������� ��� ����
echo 	�� ������ ���� ��� ������ ��� ���ŵ˴ϴ�.
echo 	�� �۾��� ����� �� �����ϴ�.
echo 	�����Ͻðڽ��ϱ�?
echo 	1.���� 2.ó������ ���ư��� 0.���α׷� ����
set /p choice2="> "
if %choice2% equ 0 exit&pause>nul
if %choice2% equ 1 goto doit
if %choice2% equ 2 goto start

:doit

if %choice%==1 call :current
if %choice%==2 call :sub
if %choice%==3 call :current&call :sub

goto result

:result
IF %found%==1 (
  ECHO.
  ECHO 	��� .%ext% ������ ������ �������ϴ�.
  ECHO.
) ELSE (
  ECHO.
  ECHO 	�ش� ��ο� .%ext% ������ ������ �����ϴ�.
  ECHO 	�ƹ��͵� �������� �ʾҽ��ϴ�.
  ECHO.
)
echo 	ó������ ���ư��ϴ�
pause
goto start

:current
IF EXIST *.%ext% (           rem Check if there are any in the current folder :)
  DEL *.%ext%
  SET found=1
)


:sub
FOR /D /R %%G IN ("*") DO (  rem Iterate through all subfolders
  IF EXIST %%G CD %%G
  IF EXIST *.%ext% (
    DEL *.%ext%
    SET found=1
  )
)
