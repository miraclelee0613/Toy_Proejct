@echo off
rem ��â ����

chcp 65001>nul
rem �ƹ�ư ����
rem ���ڵ��� ANSI��
setlocal EnableDelayedExpansion
rem ����� ������ ����

rem move A B // A�� B��η�
rem A/* // A���� �� ��� ����
rem 
rem set thisPath=%cd%
rem dir /b
rem @echo %thisPath%

rem pause
rem cls

rem pause
rem set str=00_01_221012_
rem set val1=%str:~3,2%
rem @echo %val1%
rem dir /b /s
rem pause

rem cls
title ���� ���͸� ��� : %cd%

for /f %%i in ('dir /a:d /b') do (
	for /r "%cd%\%%i" %%a ('dir /a:-d /b') do (
		set file=%%a
		set cut=%file:~3,2%
		if cut==01 
	)
)



















rem set /a dirnum=0
rem rem ���͸� ����
rem 
rem set /a dirlistnum=1
rem rem ���͸� �迭�� �ε���
rem 
rem rem #####���͸� ����Ʈ �迭[1~N]#####
rem set dirlist=NULL
rem rem ���͸� ����Ʈ �迭 ����
rem 
rem for /f %%i in ('dir /a:d /b') do set /a dirnum=dirnum+1
rem rem	���͸� �� ������ �̸��� %%i�� ���, ���� ������ ���͸� ���� 1�� ����
rem 
rem rem if %dirnum% lss 1 goto NoDir
rem rem ���� ���͸� ������ 1���� ������ NoDir �󺧷� �̵�
rem 
rem for /f "tokens=*" %%i in ('dir /a:d /b') do (set dirlist[%dirlistnum%]=%%i & goto LoadDirList)
rem rem ���͸� �迭�� �� ���� �̸� ���� �� LoadDirList �󺧷� �̵�
rem 
rem :LoadDirList
rem set /a dirlistnum=dirlistnum+1
rem rem #####����Ʈ�� �ε����� 1���� ����, ���� ���彺ŵ�� ����Ʈ�� �ε��� - 1#####
rem set /a skips=dirlistnum-1
rem if %skips% equ %dirnum% goto EOF
rem for /f "tokens=* skip=%skips%" %%i in ('dir /a:d /b') do (set dirlist[%dirlistnum%]=%%i & goto LoadDirList)
rem 





rem pause
rem 
rem rem set file=%%f
rem rem set cut=%file:~3,2%
rem rem if cut==01 move %%i "%cd%\01_����� ������ �Ҹ�"&goto quit
rem rem if cut==02 move %%i "%cd%\02_���� �� �ڿ� �Ҹ�"&goto quit
rem rem if cut==03 move %%i "%cd%\03_������ǰ �� ��Ȱȯ�� �Ҹ�"&goto quit
rem 
rem 
rem 
rem )
rem echo for�� ��
rem pause
rem cls
rem echo ��
rem pause







pause