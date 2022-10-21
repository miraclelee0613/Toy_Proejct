@echo off
rem 명령어 복창 끔

rem ### 버전정보	:	v1.3.2_stable for team_mainCate
rem ### 코드정보	:	https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=superyeoju&logNo=221747717398
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
rem 		## 1.3.2 
rem 		## 1.3.1 버그 수정 및 그룹 분류 수정
rem 		## 1.3.0 대분류 폴더 생성 프로그램 완성
rem 		## 1.2.0 그룹별이 아닌 카테고리(대분류)별로 생성하는 쪽으로 전환
rem 		## 1.2.0 팀을 위한 그룹 폴더 생성기 릴리즈1
rem 		## 1.1.3 작은 변경
rem 		## 1.1.2 몇가지 코드 수정 및 최적화
rem 		## 1.1.1 ANSI코드로 변경(이전 버전은 글자 깨질 수 있음)
rem 		## 1.1.1 %를 분수로 변경
rem echo 	## 1.1.0 D그룹 완성 ##
rem echo 	## 1.0.3 C그룹 완성 ##
rem echo 	## 1.0.3 ※접두 대분류는 빼는 걸로 결론남. 분기 나눌 것 ##
rem echo 	## 1.0.2 B그룹 완성 ##
rem echo 	## 1.0.2 배치파일 작업 책임자님께 허락 맡음 ##
rem echo 	## 1.0.1 A그룹 완성 ##
rem echo.
rem echo 	프로그램을 실행하려면 아무 키나 누르세요
rem pause
rem goto ChoiceGroup

:ChoiceGroup
rem echo 	## 그룹폴더 자동생성기입니다 ##
rem echo 	## 그룹을 입력하세요 ##
rem echo 	예) B-1그룹 : b(대소문자 무관) 엔터 1 엔터
rem set /p group=Group: 

rem echo ## 그룹 번호를 입력하세요 ##
rem echo ## 예) B-1이면 1 입력
rem set /p groupNum=GroupNumber : 

echo 		## 대분류 기준 폴더 자동생성기입니다 ##
echo  		## 대분류 코드를 입력하세요 ##
choice /c 123 /m "	1. 사람의 비언어적 소리 	2. 동물 및 자연 소리 	3. 전자제품 및 생활환경 소리"
set main=""

if %errorlevel% equ 1 goto mc01
if %errorlevel% equ 2 goto mc02
if %errorlevel% equ 3 goto mc03

rem goto confirm

:confirm
rem if %group% equ a set group=A
rem if %group% equ b set group=B
rem if %group% equ c set group=C
rem if %group% equ d set group=D

rem echo ## 선택한 그룹: %group%-%groupNum% ##
rem echo 실행하시겠습니까? 
rem set /p confirm= Y / N : 
rem choice /c 12 /m "	1.실행 	2.처음으로 돌아가기"
rem if /i %confirm% equ y goto gotoGroup
rem if /i %confirm% equ n cls&goto ChoiceGroup
rem if %errorlevel% equ 1 goto gotoGroup
rem if %errorlevel% equ 2 cls&goto ChoiceGroup

rem cls 
rem goto ChoiceGroup
rem 
rem :gotoGroup
rem rem @echo on
rem title %group%-%groupNum% 현재 경로 : %cd%
rem if /i %group% equ A goto A
rem if /i %group% equ B goto B
rem if /i %group% equ C goto C
rem if /i %group% equ D goto D
rem goto ChoiceGroup
rem 
rem :A
rem rem echo A
rem for /l %%i in (1,1,10) do (
rem if %groupNum% equ %%i goto A%%i
rem )
rem goto ChoiceGroup
rem 
rem :B
rem echo B
rem for /l %%i in (1,1,10) do (
rem if %groupNum% equ %%i goto B%%i
rem )
rem goto ChoiceGroup
rem 
rem :C
rem echo C
rem for /l %%i in (1,1,10) do (
rem if %groupNum% equ %%i goto C%%i
rem )
rem goto ChoiceGroup
rem 
rem :D
rem for /l %%i in (1,1,5) do (
rem if %groupNum% equ %%i goto D%%i
rem )
rem goto ChoiceGroup


:mc01
set main="01"
rem mkdir "기침 소리"&mkdir "가글하는 소리"&mkdir "물 마시는 소리"&mkdir "과자 먹는 소리"&mkdir "코 푸는 소리"&mkdir "껌 씹는 소리"
rem mkdir "땅콩 먹는 소리"&mkdir "침 뱉는 소리"&mkdir "웃음 소리"&mkdir "뽀뽀하는 소리"
rem mkdir "앓는 소리"&mkdir "기합넣는 소리"&mkdir "얼음 먹는 소리"&mkdir "사탕 먹는 소리"&mkdir "야채 먹는 소리"&mkdir "사과 먹는 소리"&
rem mkdir "수박 먹는 소리"&mkdir "바게트 먹는 소리"&mkdir "생라면 먹는 소리"&
rem mkdir "배 먹는 소리"&mkdir "무 먹는 소리"&mkdir "시리얼 먹는 소리"&mkdir "박수 소리"&mkdir "세수 하는 소리"&mkdir "따귀(찰싹거리는)소리"&mkdir "가래 끓는 소리"&mkdir "입 푸는 소리"&
rem mkdir "비명 소리"&mkdir "걷는 소리"&mkdir "뛰는 소리"&mkdir "공 치는 소리"&
rem mkdir "줄넘기 하는 소리"&mkdir "살 문지르는 소리"&mkdir "물거품 내는 소리"&mkdir "관절 꺾는 소리"&mkdir "참외 먹는 소리"&mkdir "복숭아 먹는 소리"&mkdir "건어물 씹는 소리"&mkdir "튀김 먹는 소리"&mkdir "비트박스 하는 소리"&mkdir "혀 튕기는 소리"&
rem mkdir "하품하는 소리"&mkdir "호로록 거리는 소리"&mkdir "밟는 소리"&mkdir "환호하는 소리"&mkdir "양치하는 소리"
rem mkdir "손빨래 하는 소리"&mkdir "젤리 먹는 소리"&mkdir "팝콘먹는 소리"&mkdir "발성연습 소리"&mkdir "옥수수 먹는 소리"&mkdir "치아 부딪히는 소리"&mkdir "귤 먹는 소리"&mkdir "야유하는 소리"&mkdir "쉿 소리"&mkdir "배추 먹는 소리"
rem mkdir "트림 소리"mkdir "헛기침하는 소리"mkdir "울음 소리"mkdir "긁는 소리"mkdir "이 가는 소리"mkdir "옹알이 하는 소리"mkdir "아카펠라 소리"
rem mkdir "손가락 튕기는 소리"mkdir "딸꾹질 소리"mkdir "꼬로록 거리는 소리"mkdir "요들 소리"
mkdir "기침 소리"&mkdir "가글 하는 소리"&mkdir "물 마시는 소리"&mkdir "과자 먹는 소리"&mkdir "코 훌쩍거리는 소리"&mkdir "코 푸는 소리"&mkdir "껌 씹는 소리"&mkdir "땅콩 먹는 소리"&mkdir "침 뱉는 소리"&mkdir "웃음 소리"&mkdir "뽀뽀하는 소리"&mkdir "앓는 소리"&mkdir "기합 넣는 소리"&mkdir "자전거 종소리"&mkdir "휴대폰 소리"&mkdir "얼음 먹는 소리"&mkdir "사탕 먹는 소리"&mkdir "야채 먹는 소리"&mkdir "사과 먹는 소리"&mkdir "수박 먹는 소리"&mkdir "바게트 먹는 소리"&mkdir "생라면 먹는 소리"&mkdir "배 먹는 소리"&mkdir "무 먹는 소리"&mkdir "시리얼 먹는 소리"&mkdir "박수 소리"&mkdir "세수하는 소리"&mkdir "따귀(찰싹거리는) 소리"&mkdir "가래 끓는 소리"&mkdir "입 푸는 소리"&mkdir "호루라기 소리"&mkdir "비명 소리"&mkdir "걷는 소리"&mkdir "뛰는 소리"&mkdir "공 치는 소리"&mkdir "줄넘기 하는 소리"&mkdir "살 문지르는 소리"&mkdir "물거품 내는 소리"&mkdir "관절 꺾는 소리"&mkdir "참외 먹는 소리"&mkdir "복숭아 먹는 소리"&mkdir "건어물 씹는 소리"&mkdir "튀김 먹는 소리"&mkdir "비트박스 하는 소리"&mkdir "혀 튕기는 소리"&mkdir "하품하는 소리"&mkdir "호로록 거리는 소리"&mkdir "밟는 소리"&mkdir "환호하는 소리"&mkdir "양치하는 소리"&mkdir "손빨래 하는 소리"&mkdir "젤리 먹는 소리"&mkdir "팝콘 먹는 소리"&mkdir "발성연습 소리"&mkdir "옥수수 먹는 소리"&mkdir "치아 부딪히는 소리"&mkdir "귤 먹는 소리"&mkdir "야유하는 소리"&mkdir "쉿 소리"&mkdir "배추 먹는 소리"&mkdir "트림 소리"&mkdir "헛기침하는 소리"&mkdir "울음 소리"&mkdir "긁는 소리"&mkdir "이 가는 소리"&mkdir "옹알이 하는 소리"&mkdir "아카펠라 소리"&mkdir "손가락 튕기는 소리"&mkdir "딸꾹질 소리"&mkdir "꼬로록 거리는 소리"&mkdir "요들 소리"&mkdir "한숨쉬는 소리"&mkdir "헐떡이는 소리"&mkdir "웅성거리는 소리"&mkdir "헛구역질 하는 소리"&mkdir "기지개 켜는 소리"&mkdir "콧노래 소리"&mkdir "휘파람 소리"&mkdir "재채기 하는 소리"&mkdir "손방귀 소리"&mkdir "꼬르륵 소리"&mkdir "젖병 빠는 소리"&mkdir "잠꼬대 하는 소리"&mkdir "코 고는 소리"

goto quit

:mc02
set main="02"
rem mkdir "비 소리"&mkdir "개 소리"&mkdir "바람 소리"&mkdir "귀뚜라미 소리"&mkdir "모기 소리"
rem mkdir "비둘기 소리"&mkdir "새 소리"&mkdir "동물 빗질 소리"&mkdir "사료 먹는 소리"&
rem mkdir "고양이 소리"&mkdir "풀벌레 소리"&mkdir "벌 소리"&mkdir "매미 소리"&mkdir "까치 소리"&mkdir "나뭇잎 흔들리는 소리"&
rem mkdir "닭 소리"&mkdir "돌 구르는 소리"&mkdir "물 떨어지는 소리"&mkdir "참새 소리"&mkdir "까마귀 소리"
rem mkdir "물 흐르는 소리"mkdir "소 소리"mkdir "오리 소리"
mkdir "비 소리"&mkdir "개소리"&mkdir "바람 소리"&mkdir "귀뚜라미 소리"&mkdir "모기 소리"&mkdir "비둘기 소리"&mkdir "새 소리"&mkdir "동물 빗질 소리"&mkdir "사료 먹는 소리"&mkdir "고양이 소리"&mkdir "풀벌레 소리"&mkdir "벌 소리"&mkdir "매미 소리"&mkdir "까치 소리"&mkdir "나뭇잎 흔들리는 소리"&mkdir "닭 소리"&mkdir "돌 구르는 소리"&mkdir "물 떨어지는 소리"&mkdir "참새 소리"&mkdir "까마귀 소리"&mkdir "물 흐르는 소리"&mkdir "소 소리"&mkdir "오리 소리"&mkdir "돼지 소리"&mkdir "말 소리"&mkdir "양 소리"&mkdir "파도 소리"&mkdir "모닥불 소리"

goto quit


:mc03
set main="03"
mkdir "노크 하는 소리"&mkdir "종이 구기는 소리"&mkdir "금속 부딪히는 소리"&mkdir "캔 찌그러지는 소리"&mkdir "도어락 소리"&mkdir "바코드 찍는 소리"&mkdir "필기 하는 소리"&mkdir "타자 치는 소리"&mkdir "테이프 소리"&mkdir "믹서기 가는 소리"&mkdir "연필깎이 소리"&mkdir "수세미질 소리"&mkdir "가스레인지 소리"&mkdir "빻는 소리"&mkdir "쌀 소리"&mkdir "복합기 소리"&mkdir "벨크로 소리"&mkdir "유리 문지르는 소리"&mkdir "피리 소리"&mkdir "멜로디언 소리"&mkdir "과일(야채)깎는 소리"&mkdir "팽이 치는 소리"&mkdir "열쇠 따는 소리"&mkdir "케이블타이 소리"&mkdir "코털정리기 소리"&mkdir "비데 소리"&mkdir "랩핑 소리"&mkdir "호두 까는 소리"&mkdir "레고 소리"&mkdir "비닐 구기는 소리"&mkdir "유리 부딪히는 소리"&mkdir "플라스틱 구기는 소리"&mkdir "스테이플러"&mkdir "커피포트 끓는 소리"&mkdir "자동차 경적 소리"&mkdir "칼질하는 소리"&mkdir "마우스 클릭 하는 소리"&mkdir "시계 소리"&mkdir "드라이기 소리"&mkdir "세탁기 소리"&mkdir "병 따는 소리"&mkdir "빗자루질 소리"&mkdir "전기채 소리"&mkdir "밥솥 소리"&mkdir "사포질 소리"&mkdir "은박지 소리"&mkdir "탄산음료 따르는 소리"&mkdir "캐스터네츠 소리"&mkdir "오토바이 시동 소리"&mkdir "휴대용 손풍기 소리"&mkdir "락카 소리"&mkdir "통조림 따는 소리"&mkdir "보글보글 끓는 소리"&mkdir "장기알 소리"&mkdir "보풀제거기 소리"&mkdir "제모기 소리"&mkdir "의자(책상)삐그덕 소리"&mkdir "뿅망치 소리"&mkdir "똑딱이 소리"&mkdir "초인종 소리"&mkdir "천 찢어지는 소리"&mkdir "의자(책상)끄는 소리"&mkdir "문 여닫는 소리"&mkdir "분무기 소리"&mkdir "전자레인지 소리"&mkdir "라이터 소리"&mkdir "캔 따는 소리"&mkdir "지퍼 소리"&mkdir "스티로폼 소리"&mkdir "천 긁는 소리"&mkdir "카메라 소리"&mkdir "태엽 감는 소리"&mkdir "커튼 소리"&mkdir "뽁뽁이 소리"&mkdir "화투 소리"&mkdir "다리미 소리"&mkdir "전동 드라이버 소리"&mkdir "종이 넘기는 소리"&mkdir "물 내리는 소리"&mkdir "물통 흔드는 소리"&mkdir "트라이앵글 소리"&mkdir "엘리베이터 소리"&mkdir "구슬치는 소리"&mkdir "칠판 긁는 소리"&mkdir "윷 던지는 소리"&mkdir "건조기 소리"&mkdir "지문인식기 소리"&mkdir "수타치는 소리"&mkdir "철 끄는 소리"&mkdir "돌 부딪히는 소리"&mkdir "플라스틱 부딪히는 소리"&mkdir "에어프라이어 소리"&mkdir "바퀴 굴러가는 소리"&mkdir "장난감 소리"&mkdir "칼 가는 소리"&mkdir "동전 떨어지는 소리"&mkdir "빨대 소리"&mkdir "커피머신 소리"&mkdir "풍선 소리"&mkdir "유리 깨지는 소리"&mkdir "세단기 소리"&mkdir "다듬이질 소리"&mkdir "토치 소리"&mkdir "라디오 지지직 소리"&mkdir "목탁 소리"&mkdir "카드 단말기 소리"&mkdir "자동차 경보음 소리"&mkdir "방앗간 기계 소리"&mkdir "계수기 소리"&mkdir "휘젓는 소리"&mkdir "체인 돌아가는 소리"&mkdir "굽는 소리"&mkdir "풍경 소리"&mkdir "학교 알람 소리"&mkdir "화재경보 소리"&mkdir "비상경보 소리"&mkdir "진자운동 모빌 소리"&mkdir "안경세척기 소리"&mkdir "종소리"&mkdir "가스누출 경보소리"&mkdir "나무 갈라지는 소리"&mkdir "전기 소리"&mkdir "스파크 튀는 소리"
mkdir "PC 소리"
goto quit



:quit
rem echo %group%-%groupNum% 그룹 폴더 생성 완료
echo 대분류 %main% 폴더 생성 완료
pause
quit