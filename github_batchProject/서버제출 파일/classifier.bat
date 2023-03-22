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
rem cls

rem pause
rem set str=00_01_221012_
rem set val1=%str:~3,2%
rem @echo %val1%
rem dir /b /s
rem pause

rem cls
title 현재 디렉터리 경로 : %cd%

for /f %%i in ('dir /a:d /b') do (
	for /r "%cd%\%%i" %%a ('dir /a:-d /b') do (
		set file=%%a
		set cut=%file:~3,2%
		if cut==01 
	)
)



















rem set /a dirnum=0
rem rem 디렉터리 개수
rem 
rem set /a dirlistnum=1
rem rem 디렉터리 배열의 인덱스
rem 
rem rem #####디렉터리 리스트 배열[1~N]#####
rem set dirlist=NULL
rem rem 디렉터리 리스트 배열 선언
rem 
rem for /f %%i in ('dir /a:d /b') do set /a dirnum=dirnum+1
rem rem	디렉터리 내 폴더의 이름을 %%i에 담고, 담을 때마다 디렉터리 개수 1씩 증가
rem 
rem rem if %dirnum% lss 1 goto NoDir
rem rem 만약 디렉터리 개수가 1보다 작으면 NoDir 라벨로 이동
rem 
rem for /f "tokens=*" %%i in ('dir /a:d /b') do (set dirlist[%dirlistnum%]=%%i & goto LoadDirList)
rem rem 디렉터리 배열에 각 폴더 이름 대입 후 LoadDirList 라벨로 이동
rem 
rem :LoadDirList
rem set /a dirlistnum=dirlistnum+1
rem rem #####리스트의 인덱스는 1부터 시작, 따라서 문장스킵은 리스트의 인덱스 - 1#####
rem set /a skips=dirlistnum-1
rem if %skips% equ %dirnum% goto EOF
rem for /f "tokens=* skip=%skips%" %%i in ('dir /a:d /b') do (set dirlist[%dirlistnum%]=%%i & goto LoadDirList)
rem 





rem pause
rem 
rem rem set file=%%f
rem rem set cut=%file:~3,2%
rem rem if cut==01 move %%i "%cd%\01_사람의 비언어적 소리"&goto quit
rem rem if cut==02 move %%i "%cd%\02_동물 및 자연 소리"&goto quit
rem rem if cut==03 move %%i "%cd%\03_전자제품 및 생활환경 소리"&goto quit
rem 
rem 
rem 
rem )
rem echo for문 끝
rem pause
rem cls
rem echo 끝
rem pause







pause