@echo off
rem ��ɾ� ��â ��

setLocal EnableDelayedExpansion
rem ���� https://kkamagistory.tistory.com/881

:start
echo ## ��ġ���� �������Դϴ� ##
echo ## �ʱ� ���� ##
echo ## ���ϸ��� �Է����ּ���(Ȯ���� bat ����) ##
set /p fileName=fileName: 

echo ## ��ɾ� ��â�� ���ðڽ��ϱ�? ##
set /p yn=Y/N:
pause
if /i %yn% == y goto echoOff
if /i %yn% == n goto echoOn
cls
echo start
pause
goto start

:echoOff
cls
echo @echo off > %fileName%.bat
echo %fileName%
pause
goto setLocal

:echoOn
cls
echo. >%fileName%.bat
echo %fileName%
pause
goto setLocal

:setLocal
pause