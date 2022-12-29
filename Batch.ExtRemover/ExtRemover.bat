@echo off
rem 명령어 복창 끔

rem ### 버전정보	:	v1.0.0_
rem ### 마지막 업데이트: 22.11.09.

rem ### updated by LJS 

rem chcp 65001>nul
rem 참고 https://otrodevym.tistory.com/entry/windows-10-cmd-%EC%9D%B8%EC%BD%94%EB%94%A9-utf-8-%EC%84%A4%EC%A0%95-%EB%B0%A9%EB%B2%95-949-65001-1

setLocal EnableDelayedExpansion
rem 참고 https://kkamagistory.tistory.com/881

rem 0 = 검정색 8 = 회색
rem 1 = 파랑색 9 = 연한 파랑색
rem 2 = 초록색 A = 연한 초록색
rem 3 = 옥색 B = 연한 옥색
rem 4 = 빨강색 C = 연한 빨강색
rem 5 = 자주색 D = 연한 자주색
rem 6 = 노랑색 E = 연한 노랑색
rem 7 = 흰색 F = 밝은 흰색
rem color 09
rem 첫째 자리는 배경, 둘째 자리는 글자색

rem mode con cols=60 lines=30
rem 콘솔창 크기 지정

rem ####################################

cd /d %~dp0
rem 현재 파일 위치 경로를 작업 위치로

title 현재 경로 : %cd%
:notice
rem echo 	## 업데이트 내역 ##

rem 	## 1.0.0	첫파일 생성

rem 참고 사이트 : https://flyingkiwi.tistory.com/29

:start
cls
SET found=0
echo.
echo 	특정 형식의 파일을 지우는 프로그램입니다.
rem echo 	실행하시겠습니까?
rem echo 	1. 실행 	2. 프로그램 종료
rem set /p choice2="> "
rem if %choice2% equ 1 goto choiceext
rem if %choice2% equ 2 exit&pause>nul
rem goto start

rem :choiceext
rem echo.
echo 	지우고자 하는 파일형식을 입력해주세요.
echo 	※0 입력시 프로그램 종료
SET /p ext="> "
if %ext%==0 exit&pause>nul
echo.
:choicerange
echo 	선택된 형식명 : .%ext%
echo 	배치파일 기준, 현재폴더와 하위폴더에 적용가능합니다
echo 	범위를 선택하십시오
echo 	1. 현재폴더에만 적용(하위폴더x)
echo 	2. 하위폴더에만 적용(현재폴더x)
echo 	3. 현재폴더와 하위폴더 모두 적용
echo 	0. 프로그램 종료
set /p choice="> "
if %choice%==0 exit&pause>nul
cls
echo 		※경고※
echo 	선택된 형식 : .%ext%
if %choice%==1 echo 	선택된 범위 : 현재폴더에만 적용(하위폴더x)
if %choice%==2 echo 	선택된 범위 : 하위폴더에만 적용(현재폴더x)
if %choice%==3 echo 	선택된 범위 : 현재폴더와 하위폴더 모두 적용
echo 	위 형식을 가진 모든 파일이 모두 제거됩니다.
echo 	이 작업은 취소할 수 없습니다.
echo 	진행하시겠습니까?
echo 	1.진행 2.처음으로 돌아가기 0.프로그램 종료
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
  ECHO 	모든 .%ext% 형식의 파일을 지웠습니다.
  ECHO.
) ELSE (
  ECHO.
  ECHO 	해당 경로에 .%ext% 형식의 파일이 없습니다.
  ECHO 	아무것도 지워지지 않았습니다.
  ECHO.
)
echo 	처음으로 돌아갑니다
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
