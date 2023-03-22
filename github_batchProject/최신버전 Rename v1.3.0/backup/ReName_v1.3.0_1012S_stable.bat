@echo off
rem ### 오리지널버전정보 	:	v1.0.1
rem ### 분기버전정보 	:	v1.2.4 v220801_stable
rem ### 현재버전정보		:	v1.3.0 v221012S_stable
rem ### 			last updated by LJS 
chcp 65001>nul
setlocal ENABLEDELAYEDEXPANSION
set batchname=%~nx0
set listname=filelist
set /a listnum=0
set workercode=000
set classcode=00
set dscode=00
set sn=SS
rem 2022-01-01
rem 0123456789
set setdate=%DATE:~2,2%%DATE:~5,2%%DATE:~8,2%
set fileExt=wav
rem ########## 안내문 ############
echo.
echo 	##1.3.0 v221012S_stable 업데이트 내용##
echo.
echo 	## 1. 오늘날짜 기본입력 및 수정 가능 ##
echo 	## 2. SS(소리) 전용. 소음입력 불가 ##
echo.
rem pause
rem ##########디렉터리 탐색##########
:OnDirectory
rem cls
title 현재 디렉터리 경로 : %cd%
set /a dirnum=0
set /a dirlistnum=1
rem #####디렉터리 리스트 배열[1~N]#####
set dirlist=NULL
for /f %%i in ('dir /a:d /b') do set /a dirnum=dirnum+1
if %dirnum% lss 1 goto NoDir
for /f "tokens=*" %%i in ('dir /a:d /b') do (set dirlist[%dirlistnum%]=%%i & goto LoadDirList)
:LoadDirList
set /a dirlistnum=dirlistnum+1
rem #####리스트의 인덱스는 1부터 시작, 따라서 문장스킵은 리스트의 인덱스 - 1#####
set /a skips=dirlistnum-1
if %skips% equ %dirnum% goto EOF
for /f "tokens=* skip=%skips%" %%i in ('dir /a:d /b') do (set dirlist[%dirlistnum%]=%%i & goto LoadDirList)
goto quit
:EOF
echo 현재 경로 : %cd%
echo ----------------------------------------------------------------------
for /l %%i in (1,1,%dirnum%) do echo %%i. !dirlist[%%i]!
echo %dirlistnum%. [..]상위 디렉터리로 가기
echo ----------------------------------------------------------------------
echo 현재 경로의 디렉터리 수 : %dirnum%
echo 현재 경로를 작업공간으로 설정하기 : S
set /a dirnum=dirnum+1
set dirlist[%dirlistnum%]=..
set /p Todir=Choice : 
if %Todir% equ S goto quitExplore
if %Todir% equ s goto quitExplore
set /a temp=Todir-1
if %Todir% gtr %dirnum% (echo 1~%dirnum%까지만 선택 가능합니다. & pause>nul & cls & set /a dirnum=dirnum-1 & goto EOF)
if %temp% lss 0 (echo 1~%dirnum%까지만 선택 가능합니다. & pause>nul & cls & set /a dirnum=dirnum-1 & goto EOF)
goto MvDir
:NoDir
echo 현재 경로 : %cd%
echo ----------------------------------------------------------------------
echo %dirlistnum%. [..]상위 디렉터리로 가기
echo ----------------------------------------------------------------------
echo 현재 경로의 디렉터리 수 : %dirnum%
echo 현재 경로를 작업공간으로 설정하기 : S
set /a dirnum=dirnum+1
set dirlist[%dirlistnum%]=..
set /p Todir=Choice : 
if %Todir% equ S goto quitExplore
if %Todir% equ s goto quitExplore
set /a temp=Todir-1
if %temp% neq 0 (echo 현재 디렉터리에 디렉터리가 없습니다. & pause>nul & cls & set /a dirnum=dirnum-1 & goto EOF)
goto MvDir
:MvDir
cd !dirlist[%Todir%]!
cls
goto OnDirectory
:quitExplore
set /a skips=1
set /a number=1
cls & title 작업할 디렉터리 경로 : %cd%

:SN
rem ##########소리/소음 선택##########
rem echo ## 1. 소리 SS 입력 ##
rem echo ## 2. 소음 NN 입력##
rem echo ## tip.워커는 소리만 수집함 ##
rem echo 	파일명 미리보기 : [%classcode%_%dscode%_%workercode%_%setdate%_001_%sn%]
rem echo.
rem set /p sn=대상 입력(ex: SS, NN) : 
cls
echo	---------	---------	---------	---------	---------
if %sn% equ SS goto SS
if %sn% equ NN goto NN

goto OnDirectory


rem ##########소리 파일명설정##########
:SS


rem ##########소리상위코드 입력 (default:00)##########
rem echo [소리 : 00 고정]
rem echo ## 입력없이 엔터 입력 ##
rem echo 	파일명 미리보기 : [%classcode%_%dscode%_%workercode%_%setdate%_001_%sn%]
rem set /p classcode=접두코드입력(ex: 00) : 
rem echo.
rem ##########소리코드 입력 (default:00)##########
echo 소리 : 상위코드(SdCategory) 입력
echo.
echo 	01 사람의 비언어적 소리 	02 동물 및 자연물 소리
echo 	03 전자제품 및 생활 환경소리 	04 기타소리(해당없음)
echo 	파일명 미리보기 : [%classcode%_%dscode%_%workercode%_%setdate%_001_%sn%]
echo.
set /p dscode=접미코드입력(ex: 00) : 
echo.

rem #	워커코드 입력	#
echo 	파일명 미리보기 : [%classcode%_%dscode%_%workercode%_%setdate%_001_%sn%]
echo.
set /p workercode=(소리)워커코드(ex: 700) : 
cls
goto ds

rem ##########소음 파일명설정##########
:NN
rem set /a sn=NN

rem ##########소음 상위코드 입력 (default:00)##########
echo ##소음 : 소음원대분류(GUB_CLASS) 입력##
echo 	01 교통수단 	02 공사장 	03 공장
echo 	04 시설류 	05 기타소음
echo 	파일명 미리보기 : [%classcode%_%dscode%_%workercode%_%setdate%_001_%sn%]
echo.
set /p classcode=접두코드입력(ex: 00) : 
echo.

if %classcode% equ 01 goto cc01
if %classcode% equ 02 goto cc02
if %classcode% equ 03 goto cc03
if %classcode% equ 04 goto cc04
if %classcode% equ 05 goto cc05
echo.
echo 잘못입력했습니다. 아무키나 누르면 경로선택으로 이동합니다.
pause
cls
goto OnDirectory


:cc01
echo [01] 교통수단
echo.
echo 	01 지상운송수단 	02 철로운송수단
echo 	03 항공운송수단 	04 수상운송수단
goto input_dscode

:cc02
echo [02] 공사장
echo.
echo 	01 경장비소음 	02 중장비소음
goto input_dscode

:cc03
echo [03] 공장
echo.
echo 	01 공장기계음
goto input_dscode

:cc04
echo [04] 시설류
echo.
echo 	01 실내시설 	02 실외시설
goto input_dscode

:cc05
echo [05] 기타소음
echo.
echo 	01 실내기타소음 	02 실외기타소음
goto input_dscode

:input_dscode
rem ##########소음 코드 입력 (default:00)##########
echo.
echo 	파일명 미리보기 : [%classcode%_%dscode%_%workercode%_%setdate%_001_%sn%]
echo.
set /p dscode=접미코드입력(ex: 00) : 
echo.
if %dscode% equ 00 goto NN
rem ### 소음 하위코드

:iwc
cls
rem #	워커코드 입력	#
echo 	파일명 미리보기 : [%classcode%_%dscode%_%workercode%_%setdate%_001_%sn%]
echo.
set /p workercode= (소음)워커코드(ex: 800) : 
echo.
goto ds
:ds
CLS
echo	---------	---------	---------	---------	---------
rem #	날짜 입력		#
echo 	파일명 미리보기 : [%classcode%_%dscode%_%workercode%_%setdate%_001_%sn%]
echo	## default : 오늘날짜
echo	## 오늘 날짜 입력이면 ##
echo	## 입력없이 엔터쳐도 OK ##
echo.
set /p setdate=날짜(ex:220628) : 
rem ##########파일 확장자 입력##########
cls
echo 	## default : wav ##
echo 	## 기존 형식이 wav파일이면 ##
echo 	## 입력없이 엔터쳐도 OK ##
echo 	파일명 미리보기 : [%classcode%_%dscode%_%workercode%_%setdate%_001_%sn%]
echo.
set /p fileExt=파일 확장자(ex:xlsx, wav) : 
cls
echo. 	###
echo 	최종파일명 확인 : [%classcode%_%dscode%_%workercode%_%setdate%_001_%sn%.%fileExt%]
echo. 	###
rem ##########선택 옵션##########
echo.
choice /c 12 /n /m "	1.이름재설정 2.처음으로 돌아가기	0.취소"
if %errorlevel% equ 0 goto quit
if %errorlevel% equ 1 goto rename
if %errorlevel% equ 2 goto OnDirectory

:rename
set option=rename
rem ##########파일 개수 계산(디렉터리  제외)##########
dir /b /a:-d > %listname%
for /f %%i in (%listname%) do set /a listnum=listnum+1
if %listnum% lss 2 (set option=renError & goto quit)
set /a plistnum=listnum-1
echo 현재 폴더의 파일 개수 : %plistnum%
rem ##########skip=0은 지원하지 않음, skip=1부터 시작##########
for /f "tokens=*" %%i in (%listname%) do (set temp=%%i & goto getName)
:renLoop
if %number% geq %listnum% goto quit
for /f "tokens=* skip=%skips%" %%i in (%listname%) do (set temp=%%i & set /a skips=skips+1 & goto getName)
:getName
if "%temp%" equ "%listname% " goto renLoop
rem ##########숫자 형식 설정 001~999 (010 != 8 error)##########
set Fixednumber=%number%
rem if %number% lss 1000 set Fixednumber=0%number%
if %number% lss 100 set Fixednumber=0%number%
if %number% lss 10 set Fixednumber=00%number%
ren "%temp%" "%classcode%_%dscode%_%workercode%_%setdate%_%Fixednumber%_%sn%.%fileExt%"
set /a number=number+1
goto renLoop

:quit
if %option% equ rename (del /f %listname% & echo ########이름 재설정 완료!########)
if %option% equ renError (del /f %listname% & echo 이름을 재설정할 파일이 없습니다.)

endlocal
pause>nul