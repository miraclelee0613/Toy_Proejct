@echo off
rem 명령어 복창 끔

rem ### 버전정보	:	v1.0.1 A_stable
rem ### 코드정보	:	https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=superyeoju&logNo=221747717398
rem ### updated by LJS 

rem chcp 65001>nul
rem 참고 https://otrodevym.tistory.com/entry/windows-10-cmd-%EC%9D%B8%EC%BD%94%EB%94%A9-utf-8-%EC%84%A4%EC%A0%95-%EB%B0%A9%EB%B2%95-949-65001-1

setLocal EnableDelayedExpansion
rem 참고 https://kkamagistory.tistory.com/881

rem   0 = 검정색       8 = 회색
rem   1 = 파랑색       9 = 연한 파랑색
rem   2 = 초록색       A = 연한 초록색
rem   3 = 옥색         B = 연한 옥색
rem   4 = 빨강색       C = 연한 빨강색
rem   5 = 자주색       D = 연한 자주색
rem   6 = 노랑색       E = 연한 노랑색
rem   7 = 흰색         F = 밝은 흰색
rem color 09
rem 첫째 자리는 배경, 둘째 자리는 글자색

rem mode con cols=60 lines=30
rem 콘솔창 크기 지정

rem ####################################

cd /d %~dp0
rem 현재 파일 위치 경로를 작업 위치로

title 현재 경로 : %cd%
:notice
echo 	## v1.0.2 업데이트 내역 ##
echo 	## A그룹 완성 ##
echo 	## B그룹 완성 ##
echo 	## C그룹 진행중 ##
echo 	## 배치파일 작업 책임자님께 허락 맡음 ##
echo.
echo 	프로그램을 실행하려면 아무 키나 누르세요
pause
goto ChoiceGroup

:ChoiceGroup
echo 	## 그룹폴더 자동생성기입니다 ##
echo 	## 그룹을 입력하세요 ##
echo 	예) B-1그룹 : b(대소문자 무관) 엔터 1 엔터
set /p group=Group: 

rem echo ## 그룹 번호를 입력하세요 ##
rem echo ## 예) B-1이면 1 입력
set /p groupNum=GroupNumber : 
goto confirm

:confirm
if %group% equ a set group=A
if %group% equ b set group=B
if %group% equ c set group=C
if %group% equ d set group=D

echo ## 선택한 그룹: %group%-%groupNum%
echo 실행하시겠습니까? 
set /p confirm= Y / N : 
if /i %confirm% equ y goto gotoGroup
if /i %confirm% equ N goto cls&ChoiceGroup
cls 
goto ChoiceGroup

:gotoGroup
rem @echo on
title %group%-%groupNum% 현재 경로 : %cd%
if /i %group% equ A goto A
if /i %group% equ B goto B
if /i %group% equ C goto C
if /i %group% equ D goto D
goto ChoiceGroup

:A
rem echo A
for /l %%i in (1,1,10) do (
if %groupNum% equ %%i goto A%%i
)
goto ChoiceGroup

:B
echo B
for %%i in (1,1,10) do (
if %groupNum% equ %%i goto B%%i
)
goto ChoiceGroup

:C
echo C
for %%i in (1,1,10) do (
if %groupNum% equ %%i goto C%%i
)
goto ChoiceGroup

:D
for %%i in (1,1,10) do (
if %groupNum% equ %%i goto D%%i
)
goto ChoiceGroup

:A1
cls
mkdir "02_비 소리"
echo 10%...
mkdir "02_개 소리"
echo 20%...
mkdir "01_기침 소리"
echo 30%...
mkdir "01_가글하는 소리"
echo 40%...
mkdir "01_물 마시는 소리"
echo 50%
mkdir "01_과자 먹는 소리"
echo 60%...
mkdir "01_코 훌쩍거리는 소리"
echo 70%...
mkdir "01_코 푸는 소리"
echo 80%...
mkdir "01_껌 씹는 소리"
echo 90%...
mkdir "01_땅콩 먹는 소리"

goto quit

:A2
cls
mkdir "02_바람 소리"
mkdir "01_침 뱉는 소리"
mkdir "01_웃음 소리"
mkdir "01_뽀뽀하는 소리"
mkdir "01_앓는 소리"
mkdir "01_기합넣는 소리"
mkdir "03_자전거 종소리"
mkdir "03_휴대폰 소리"
mkdir "03_노크하는 소리"
mkdir "03_종이 구기는 소리"

goto quit


:A3
cls
mkdir "02_귀뚜라미 소리"
mkdir "03_금속 부딪히는 소리"
mkdir "03_캔 찌그러지는 소리"
mkdir "03_도어락 소리"
mkdir "03_바코드 찍는 소리"
mkdir "03_필기 하는 소리"
mkdir "03_타자 치는 소리"
mkdir "03_테이프 소리"
mkdir "03_믹서기 가는 소리"
mkdir "03_연필깎이 소리"

goto quit


:A4
cls
mkdir "02_모기 소리"
mkdir "03_수세미질 소리"
mkdir "03_가스레인지 소리"
mkdir "03_빻는 소리"
mkdir "03_쌀 소리"
mkdir "03_복합기 소리"
mkdir "03_벨크로 소리"
mkdir "03_유리 문지르는 소리"
mkdir "03_피리 소리"
mkdir "03_멜로디언 소리"

goto quit


:A5
cls
mkdir "02_비둘기 소리"
mkdir "03_과일(야채)깎는 소리"
mkdir "03_팽이 치는 소리"
mkdir "03_열쇠 따는 소리"
mkdir "03_케이블타이 소리"
mkdir "03_코털정리기 소리"
mkdir "03_비데 소리"
mkdir "03_랩핑 소리"
mkdir "03_호두 까는 소리"
mkdir "03_레고 소리"

goto quit


:A6
cls
mkdir "01_얼음 먹는 소리"
mkdir "01_사탕 먹는 소리"
mkdir "01_야채 먹는 소리"
mkdir "01_사과 먹는 소리"
mkdir "01_수박 먹는 소리"
mkdir "01_바게트 먹는 소리"
mkdir "01_생라면 먹는 소리"
mkdir "01_배 먹는 소리"
mkdir "01_무 먹는 소리"
mkdir "01_시리얼 먹는 소리"

goto quit


:A7
cls
mkdir "02_새 소리"
mkdir "01_박수 소리"
mkdir "01_세수 하는 소리"
mkdir "01_따귀(찰싹거리는)소리"
mkdir "01_가래 끓는 소리"
mkdir "01_입 푸는 소리"
mkdir "03_호루라기 소리"
mkdir "03_PC 소리"
mkdir "03_비닐 구기는 소리"
mkdir "03_유리 부딪히는 소리"

goto quit


:A8
cls
mkdir "02_동물 빗질 소리"
mkdir "03_플라스틱 구기는 소리"
mkdir "03_스테이플러 소리"
mkdir "03_커피포트 끓는 소리"
mkdir "03_자동차 경적 소리"
mkdir "03_칼질하는 소리"
mkdir "03_마우스 클릭하는 소리"
mkdir "03_시계 소리"
mkdir "03_드라이기 소리"
mkdir "03_세탁기 소리"

goto quit


:A9
cls
mkdir "02_사료 먹는 소리"
mkdir "03_병 따는 소리"
mkdir "03_빗자루질 소리"
mkdir "03_전기채 소리"
mkdir "03_밥솥 소리"
mkdir "03_사포질 소리"
mkdir "03_은박지 소리"
mkdir "03_탄산음료 따르는 소리"
mkdir "03_캐스터네츠 소리"
mkdir "03_오토바이 시동 소리"
echo.

goto quit


:A10
cls
mkdir "03_휴대용 손풍기 소리"
mkdir "03_락카 소리"
mkdir "03_통조림 따는 소리"
mkdir "03_보글보글 끓는 소리"
mkdir "03_장기알 소리"
mkdir "03_보풀제거기 소리"
mkdir "03_제모기 소리"
mkdir "03_의자(책상)삐그덕 소리"
mkdir "03_뿅망치 소리"
mkdir "03_똑딱이 소리"

goto quit


:B1
cls
mkdir "02_고양이 소리"
mkdir "02_풀벌레 소리"
mkdir "02_벌 소리"
mkdir "02_매미 소리"
mkdir "02_까치 소리"
mkdir "02_나뭇잎 흔들리는 소리"
mkdir "01_비명 소리"
mkdir "01_걷는 소리"
mkdir "01_뛰는 소리"
mkdir "01_공 치는 소리"

goto quit


:B2
cls
mkdir "01_줄넘기 하는 소리"
mkdir "01_살 문지르는 소리"
mkdir "01_물거품 내는 소리"
mkdir "01_관절 꺾는 소리"
mkdir "01_참외 먹는 소리"
mkdir "01_복숭아 먹는 소리"
mkdir "01_건어물 씹는 소리"
mkdir "01_튀김 먹는 소리"
mkdir "01_비트박스 하는 소리"
mkdir "01_혀 튕기는 소리"

goto quit


:B3
cls
mkdir "03_초인종 소리"
mkdir "03_천 찢어지는 소리"
mkdir "03_의자(책상)끄는 소리"
mkdir "03_문 여닫는 소리"
mkdir "03_분무기 소리"
mkdir "03_전자레인지 소리"
mkdir "03_라이터 소리"
mkdir "03_캔 따는 소리"
mkdir "03_지퍼 소리"
mkdir "03_스티로폼 소리"

goto quit


:B4
cls
mkdir "03_천 긁는 소리"
echo 10%...
mkdir "03_카메라 소리"
echo 20%...
mkdir "03_태엽 감는 소리"
echo 30%...
mkdir "03_커튼 소리"
echo 40%...
mkdir "03_뽁뽁이 소리"
echo 50%...
mkdir "03_화투 소리"
echo 60%...
mkdir "03_다리미 소리"
echo 70%...
mkdir "03_전동 드라이버 소리"
echo 80%...
mkdir "03_종이 넘기는 소리"
echo 90%...
mkdir "03_물 내리는 소리"

goto quit


:B5
cls
mkdir "03_물통 흔드는 소리"
echo 10%...
mkdir "03_트라이앵글 소리"
echo 20%...
mkdir "03_엘리베이터 소리"
echo 30%...
mkdir "03_구슬치는 소리"
echo 40%...
mkdir "03_칠판 긁는 소리"
echo 50%...
mkdir "03_윷 던지는 소리"
echo 60%...
mkdir "03_건조기 소리"
echo 70%...
mkdir "03_지문인식기 소리"
echo 80%...
mkdir "03_수타치는 소리"
echo 90%...
mkdir "03_철 끄는 소리"

goto quit


:B6
cls
mkdir "02_닭 소리"
echo 10%...
mkdir "02_돌 구르는 소리"
echo 20%...
mkdir "02_물 떨어지는 소리"
echo 30%...
mkdir "02_참새 소리"
echo 40%...
mkdir "02_까마귀 소리"
echo 50%...
mkdir "01_하품하는 소리"
echo 60%...
mkdir "01_호로록 거리는 소리"
echo 70%...
mkdir "01_밟는 소리"
echo 80%...
mkdir "01_환호하는 소리"
echo 90%...
mkdir "01_양치하는 소리"

goto quit


:B7
cls
mkdir "01_손빨래 하는 소리"
echo 10%...
mkdir "01_젤리 먹는 소리"
echo 20%...
mkdir "01_팝콘먹는 소리"
echo 30%...
mkdir "01_발성연습 소리"
echo 40%...
mkdir "01_옥수수 먹는 소리"
echo 50%...
mkdir "01_치아 부딪히는 소리"
echo 60%...
mkdir "01_귤 먹는 소리"
echo 70%...
mkdir "01_야유하는 소리"
echo 80%...
mkdir "01_쉿 소리"
echo 90%...
mkdir "01_배추 먹는 소리"

goto quit


:B8
cls
mkdir "03_돌 부딪히는 소리"
echo 10%...
mkdir "03_플라스틱 부딪히는 소리"
echo 20%...
mkdir "03_에어프라이어 소리"
echo 30%...
mkdir "03_바퀴 굴러가는 소리"
echo 40%...
mkdir "03_장난감 소리"
echo 50%...
mkdir "03_칼 가는 소리"
echo 60%...
mkdir "03_동전 떨어지는 소리"
echo 70%...
mkdir "03_빨대 소리"
echo 80%...
mkdir "03_커피머신 소리"
echo 90%...
mkdir "03_풍선 소리"

goto quit


:B9
cls
mkdir "03_프린터 소리"
echo 10%...
mkdir "03_자석 부딪히는 소리"
echo 20%...
mkdir "03_계란 소리"
echo 30%...
mkdir "03_바둑알 소리"
echo 40%...
mkdir "03_강판 가는 소리"
echo 50%...
mkdir "03_공기청정기 소리"
echo 60%...
mkdir "03_금고 소리"
echo 70%...
mkdir "03_솔질 소리"
echo 80%...
mkdir "03_자동문 소리"
echo 90%...
mkdir "03_공구함 소리"

goto quit


:B10
cls
mkdir "03_탬버린 소리"
echo 10%...
mkdir "03_실로폰 소리"
echo 20%...
mkdir "03_나무 깎는 소리"
echo 30%...
mkdir "03_딱지치는 소리"
echo 40%...
mkdir "03_가습기 소리"
echo 50%...
mkdir "03_토스트기 소리"
echo 60%...
mkdir "03_뻥튀기 기계 소리"
echo 70%...
mkdir "03_샴페인 따는 소리"
echo 80%...
mkdir "03_키질하는 소리"
echo 90%...
mkdir "03_당구공 소리"

goto quit

rem ## C그룹 ##

:C1
cls
mkdir "02_물 흐르는 소리"
echo 10%...
mkdir "02_소 소리"
echo 20%...
mkdir "02_오리 소리"
echo 30%...
mkdir "01_트림 소리"
echo 40%...
mkdir "01_헛기침하는 소리"
echo 50%...
mkdir "01_울음 소리"
echo 60%...
mkdir "01_긁는 소리"
echo 70%...
mkdir "01_이 가는 소리"
echo 80%...
mkdir "01_옹알이 하는 소리"
echo 90%...
mkdir "03_아카펠라 소리"

goto quit


:C2
cls
mkdir "01_손가락 튕기는 소리"
echo 10%...
mkdir "01_딸꾹질 소리"
echo 20%...
mkdir "01_꼬로록 거리는 소리"
echo 30%...
mkdir "01_요들 소리"
echo 40%...
mkdir "03_유리 깨지는 소리"
echo 50%...
mkdir "03_세단기 소리"
echo 60%...
mkdir "03_다듬이질 소리"
echo 70%...
mkdir "03_토치 소리"
echo 80%...
mkdir "03_라디오 지지직 소리"
echo 90%...
mkdir "03_목탁 소리"

goto quit


:C3
cls
mkdir "03_망치 소리"
echo 10%...
mkdir "03_톱류"
echo 20%...
mkdir "03_튀기는 소리"
echo 30%...
mkdir "03_계량기 소리"
echo 40%...
mkdir "03_스위치 소리"
echo 50%...
mkdir "03_기타 튜닝 소리"
echo 60%...
mkdir "03_바이올린 튜닝 소리"
echo 70%...
mkdir "03_가야금 튜닝 소리"
echo 80%...
mkdir "03_우쿠렐레 튜닝 소리"
echo 90%...
mkdir "03_색소폰 튜닝 소리"

goto quit


:C4
cls
mkdir "03_불 타는 소리"
echo 10%...
mkdir "03_면도하는 소리"
echo 20%...
mkdir "03_조이스틱 소리"
echo 30%...
mkdir "03_징 튜닝 소리"
echo 40%...
mkdir "03_트랙터 시동 소리"
echo 50%...
mkdir "03_이앙기 시동 소리"
echo 60%...
mkdir "03_과일나무 터는 소리"
echo 70%...
mkdir "03_칫솔살균기 소리"
echo 80%...
mkdir "03_착즙기 소리"
echo 90%...
mkdir "03_반죽기 소리"

goto quit

:C
cls
mkdir "0_"
echo 10%...
mkdir "0_"
echo 20%...
mkdir "0_"
echo 30%...
mkdir "0_"
echo 40%...
mkdir "0_"
echo 50%...
mkdir "0_"
echo 60%...
mkdir "0_"
echo 70%...
mkdir "0_"
echo 80%...
mkdir "0_"
echo 90%...
mkdir "0_"

goto quit

:C
cls
mkdir "0_"
echo 10%...
mkdir "0_"
echo 20%...
mkdir "0_"
echo 30%...
mkdir "0_"
echo 40%...
mkdir "0_"
echo 50%...
mkdir "0_"
echo 60%...
mkdir "0_"
echo 70%...
mkdir "0_"
echo 80%...
mkdir "0_"
echo 90%...
mkdir "0_"

goto quit

:C
cls
mkdir "0_"
echo 10%...
mkdir "0_"
echo 20%...
mkdir "0_"
echo 30%...
mkdir "0_"
echo 40%...
mkdir "0_"
echo 50%...
mkdir "0_"
echo 60%...
mkdir "0_"
echo 70%...
mkdir "0_"
echo 80%...
mkdir "0_"
echo 90%...
mkdir "0_"

goto quit

:C
cls
mkdir "0_"
echo 10%...
mkdir "0_"
echo 20%...
mkdir "0_"
echo 30%...
mkdir "0_"
echo 40%...
mkdir "0_"
echo 50%...
mkdir "0_"
echo 60%...
mkdir "0_"
echo 70%...
mkdir "0_"
echo 80%...
mkdir "0_"
echo 90%...
mkdir "0_"

goto quit

:C
cls
mkdir "0_"
echo 10%...
mkdir "0_"
echo 20%...
mkdir "0_"
echo 30%...
mkdir "0_"
echo 40%...
mkdir "0_"
echo 50%...
mkdir "0_"
echo 60%...
mkdir "0_"
echo 70%...
mkdir "0_"
echo 80%...
mkdir "0_"
echo 90%...
mkdir "0_"

goto quit

:quit
echo %group%-%groupNum% 그룹 폴더 생성 완료
pause
quit