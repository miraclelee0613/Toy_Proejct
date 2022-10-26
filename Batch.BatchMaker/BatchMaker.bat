@echo off
rem 명령어 복창 끔

setLocal EnableDelayedExpansion
rem 참고 https://kkamagistory.tistory.com/881

:start
echo ## 배치파일 생성기입니다 ##
echo ## 초기 설정 ##
echo ## 파일명을 입력해주세요(확장자 bat 고정) ##
set /p fileName=fileName: 

echo ## 명령어 복창을 끄시겠습니까? ##
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