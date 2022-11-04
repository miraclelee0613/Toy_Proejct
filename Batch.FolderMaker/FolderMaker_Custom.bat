@echo off
rem 명령어 복창 끔

rem ### 버전정보	:	v1.0.0_release for all
rem ### 마지막 업데이트: 22.11.01.

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

rem 		## 1.0.0	첫파일 생성

:start
set %f_name%=""
echo.
echo 		## 폴더 연속 생성기입니다. ##
echo 		## 생성할 폴더명을 입력하고 엔터를 치면 폴더 생성 ##
echo 		## 입력없이 엔터를 치면 프로그램 종료입니다. ##
echo.
echo 		## 생성할 폴더명을 입력해주세요 ##
set /p f_name=폴더명 :
if "%f_name%" == "" (
	exit
) else (
	md "%f_name%
)
goto start
