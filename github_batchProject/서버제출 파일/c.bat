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
cls

rem pause
rem set str=00_01_221012_
rem set val1=%str:~3,2%
rem @echo %val1%

rem pause
rem cls
rem for /d %%i in (*) do (
rem 	set file='dir %%i /s /b'
rem 	set cut=%file:~3,2%
rem 	if cut==01 move %%i "01_����� ������ �Ҹ�"
rem 	if cut==02 move %%i "02_���� �� �ڿ� �Ҹ�"
rem 	if cut==03 move %%i "03_������ǰ �� ��Ȱȯ�� �Ҹ�"
rem )
dir %cd% /s /b
cls
echo 	�Ϸ�
pause





pause