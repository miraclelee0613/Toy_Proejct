@echo off
rem 복창 금지

chcp 65001>nul
rem 아무튼 쓰자
rem 인코딩도 ANSI로
setlocal EnableDelayedExpansion
rem 하향식 순차적 실행

rem move A B // A를 B경로로
rem A/* // A폴더 내 모든 파일
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
rem 	if cut==01 move %%i "01_사람의 비언어적 소리"
rem 	if cut==02 move %%i "02_동물 및 자연 소리"
rem 	if cut==03 move %%i "03_전자제품 및 생활환경 소리"
rem )
dir %cd% /s /b
cls
echo 	완료
pause





pause