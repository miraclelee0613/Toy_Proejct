@echo off
rem 명령어 복창 끔

rem ### 버전정보	:	v1.4.2_snapshot3 for team_mainCate
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
rem 		## 1.4.2 빈폴더 삭제 기능 추가 및 버그 픽스
rem 		## 1.4.1 버그 수정. 실험중.
rem 		## 1.4.0 메타통합 및 대분류, 소분류 선택 기능 추가
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
:start
:choiceFunction
echo.
echo 	## 실행할 기능을 선택해주세요 ##
echo 	## 1. 대분류 기준 폴더 일괄 생성기 ##
echo 	## 2. 대분류_소분류 선택 폴더 생성기 ##
echo 	## 3. 빈 폴더 삭제(실험중인 기능) ##
echo 	## q. 종료 ##
echo.
set /p choice="	기능:	"

if %choice% equ 1 goto ChoiceGroup
if %choice% equ 2 goto ChoiceSub
if %choice% equ 3 goto RemoveEmptyFolders
if %choice% equ q exit

cls
echo 	## 잘못 입력했습니다. ##
echo 	## 다시 입력해주세요. ##
echo.
goto choiceFunction

:RemoveEmptyFolders
for /f "delims=" %%i in ('dir /s /b /ad ^| sort /r') do rd "%%i" 2
cls
goto choiceFunction


:ChoiceSub
echo 	## 소분류 선택 폴더 생성기입니다 ##
echo 	## 대분류 코드를 먼저 입력해주세요 ##
echo 	## 1. 사람의 비언어적 소리  2. 동물 및 자연 소리 ##
echo 	## 3. 전자제품 및 생활환경 소리  4. 처음으로 돌아가기
echo.
set /p mainCode="	choice: "
if %mainCode% leq 3 if %mainCode% geq 1 goto ChoiceSub2
if %mainCode% equ 4 goto start
cls
echo 	## 잘못 입력했습니다. ##
echo 	## 다시 입력해주세요. ##
echo.
goto ChoiceSub

:ChoiceSub2
echo.
echo 	## 생성하고자 하는 소분류 코드를 입력해주세요 ##
if %mainCode% equ 1 (
	set /p subCode="	1. 신체소리  2. 생리현상  3. 타격,밟는"
)
if %mainCode% equ 2 (
	set /p subCode="	1. 동물  2. 자연물"
)
if %mainCode% equ 3 (
	set /p subCode="	1. 전자제품  2. 생활환경"
)
if not %subCode% geq 1 if not %subCode% leq 3 cls&goto ChoiceSub2
if %mainCode% geq 2 if %mainCode% leq 3 if %subCode% geq 3 cls&goto ChoiceSub2
if %subCode% geq 1 if %subCode% leq 3 cls&call :main0%mainCode%_0%subCode%

echo.
echo 	## 0%mainCode%_0%subCode% 폴더 생성 완료
echo.

goto ChoiceSub



:ChoiceGroup
rem echo 	## 그룹폴더 자동생성기입니다 ##
rem echo 	## 그룹을 입력하세요 ##
rem echo 	예) B-1그룹 : b(대소문자 무관) 엔터 1 엔터
rem set /p group=Group: 

rem echo ## 그룹 번호를 입력하세요 ##
rem echo ## 예) B-1이면 1 입력
rem set /p groupNum=GroupNumber : 

echo 	## 대분류 기준 폴더 자동생성기입니다 ##
echo 	## 대분류 코드를 입력하세요 ##
echo.
echo 	## 1. 사람의 비언어적 소리 ##
echo 	## 2. 동물 및 자연 소리 ##
echo 	## 3. 전자제품 및 생활환경 소리 ##
echo.
set /p main="choice: "

if %main% equ 1 goto mc01
if %main% equ 2 goto mc02
if %main% equ 3 goto mc03
goto ChoiceGroup
rem goto confirm

:confirm
rem if %group% equ a set group=A
rem if %group% equ b set group=B
rem if %group% equ c set group=C
rem if %group% equ d set group=D

rem echo ## 선택한 그룹: %group%-%groupNum% ##
rem echo 실행하시겠습니까? 
rem set /p confirm= Y / N : 
rem choice /c 12 /m"	1.실행 	2.처음으로 돌아가기"
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
call :main01_01
timeout 1
call :main01_02
timeout 1
call :main01_03
timeout 1

goto start


:mc02
set main="02"
call :main02_01
timeout 1
call :main02_02
timeout 1

goto start


:mc03
set main="03"
call :main03_01
timeout 1
call :main03_02
timeout 1

goto start




:main01_01
rem set main="01"
mkdir "가글하는소리"
mkdir "건어물씹는소리"
mkdir "과자먹는소리"
mkdir "귤먹는소리"
mkdir "기지개켜는소리"
mkdir "기합넣는소리"
mkdir "껌씹는소리"
mkdir "땅콩먹는소리"
mkdir "무먹는소리"
mkdir "물거품내는소리"
mkdir "물마시는소리"
mkdir "바게트먹는소리"
mkdir "발성연습소리"
mkdir "배먹는소리"
mkdir "배추먹는소리"
mkdir "복숭아먹는소리"
mkdir "비명소리"
mkdir "비트박스하는소리"
mkdir "뽀뽀하는소리"
mkdir "사과먹는소리"
mkdir "사탕먹는소리"
mkdir "살문지르는소리"
mkdir "생라면먹는소리"
mkdir "세수하는소리"
mkdir "손가락튕기는소리"
mkdir "손방귀소리"
mkdir "수박먹는소리"
mkdir "쉿소리"
mkdir "시리얼먹는소리"
mkdir "신체긁는소리"
mkdir "아카펠라소리"
mkdir "야유하는소리"
mkdir "야채먹는소리"
mkdir "양치하는소리"
mkdir "얼음먹는소리"
mkdir "옥수수먹는소리"
mkdir "옹알이하는소리"
mkdir "요들소리"
mkdir "울음소리"
mkdir "웃음소리"
mkdir "웅성거리는소리"
mkdir "이가는소리"
mkdir "입푸는소리"
mkdir "젖병빠는소리"
mkdir "젤리먹는소리"
mkdir "줄넘기하는소리"
mkdir "짜증내는소리"
mkdir "참외먹는소리"
mkdir "치아부딪히는소리"
mkdir "침뱉는소리"
mkdir "코푸는소리"
mkdir "콧노래소리"
mkdir "튀김먹는소리"
mkdir "팝콘먹는소리"
mkdir "한숨쉬는소리"
mkdir "혀튕기는소리"
mkdir "호로록거리는소리"
mkdir "환호하는소리"
mkdir "휘파람소리"

goto :eof 


:main01_02
mkdir "가래끓는소리"
mkdir "공치는소리"
mkdir "기침소리"
mkdir "꼬로록거리는소리"
mkdir "놀라는소리"
mkdir "딸국질소리"
mkdir "먹는소리"
mkdir "방귀소리"
mkdir "숨소리"
mkdir "앓는소리"
mkdir "잠꼬대하는소리"
mkdir "재채기하는소리"
mkdir "코고는소리"
mkdir "코훌쩍거리는소리"
mkdir "트림소리"
mkdir "하품하는소리"
mkdir "헐떡이는소리"
mkdir "헛구역질하는소리"
mkdir "헛기침하는소리"

goto :eof 


:main01_03
mkdir "걷는소리"
mkdir "관절꺾는소리"
mkdir "따귀(찰싹거리는)소리"
mkdir "뛰는소리"
mkdir "박수소리"
mkdir "밟는소리"

goto :eof 


:main02_01
mkdir "갈매기소리"
mkdir "개구리소리"
mkdir "개소리"
mkdir "거위소리"
mkdir "고라니소리"
mkdir "고양이소리"
mkdir "귀뚜라미소리"
mkdir "까마귀소리"
mkdir "까치소리"
mkdir "닭소리"
mkdir "동물빗질소리"
mkdir "돼지소리"
mkdir "말소리"
mkdir "매미소리"
mkdir "맹꽁이소리"
mkdir "모기소리"
mkdir "방울벌레소리"
mkdir "벌소리"
mkdir "비둘기소리"
mkdir "사료먹는소리"
mkdir "새소리"
mkdir "소소리"
mkdir "양소리"
mkdir "여치소리"
mkdir "염소소리"
mkdir "오리소리"
mkdir "쥐소리"
mkdir "참새소리"
mkdir "풀벌레소리"

goto :eof 


:main02_02
mkdir "나뭇잎흔들리는소리"
mkdir "돌구르는소리"
mkdir "모닥불소리"
mkdir "물떨어지는소리"
mkdir "물흐르는소리"
mkdir "바람소리"
mkdir "비소리"
mkdir "우박소리"
mkdir "천둥소리"
mkdir "파도소리"
mkdir "폭포소리"

goto :eof 


:main03_01
mkdir "PC소리"
mkdir "가스누출경보소리"
mkdir "가습기소리"
mkdir "건조기소리"
mkdir "계량기소리"
mkdir "계수기소리"
mkdir "공기청정기소리"
mkdir "공압기류"
mkdir "공작기계류"
mkdir "구강세정기소리"
mkdir "그라인더자르는소리"
mkdir "네온싸인소리"
mkdir "눈썹정리기소리"
mkdir "다리미소리"
mkdir "도난경보"
mkdir "도어락소리"
mkdir "동전분류기소리"
mkdir "드라이기소리"
mkdir "라디오지지직소리"
mkdir "메트로놈소리"
mkdir "면도하는소리"
mkdir "무전기소리"
mkdir "믹서기가는소리"
mkdir "바리깡소리"
mkdir "바코드찍는소리"
mkdir "반죽기소리"
mkdir "밥솥소리"
mkdir "방앗간기계"
mkdir "방역하는소리(소독차)"
mkdir "밴딩머신"
mkdir "버너소리"
mkdir "벨소리"
mkdir "보풀제거기소리"
mkdir "복합기소리"
mkdir "비닐밟는소리"
mkdir "비데소리"
mkdir "비상경보"
mkdir "뻥튀기기계소리"
mkdir "뽑기기계소리"
mkdir "세단기"
mkdir "세탁기소리"
mkdir "스위치소리"
mkdir "스파크튀는소리"
mkdir "스프링쿨러소리"
mkdir "시계소리"
mkdir "식기세척기소리"
mkdir "안경세척기소리"
mkdir "안마기소리"
mkdir "에어건"
mkdir "에어프라이어소리"
mkdir "엘리베이터소리"
mkdir "오븐소리"
mkdir "응급경보"
mkdir "이앙기시동소리"
mkdir "자동문소리"
mkdir "자동차경보음"
mkdir "자동차경적소리"
mkdir "재봉틀소리"
mkdir "전기면도기소리"
mkdir "전기소리"
mkdir "전기채소리"
mkdir "전기톱소리"
mkdir "전동드라이버소리"
mkdir "전동드릴"
mkdir "전자레인지소리"
mkdir "제면기소리"
mkdir "제모기소리"
mkdir "제빙기소리"
mkdir "조이스틱소리"
mkdir "지문인식기소리"
mkdir "지폐계수기"
mkdir "진자운동모빌소리"
mkdir "착즙기소리"
mkdir "초인종소리"
mkdir "칫솔살균기소리"
mkdir "카드단말기소리"
mkdir "카메라소리"
mkdir "커피머신소리"
mkdir "코털정리기소리"
mkdir "콤바인시동소리"
mkdir "쿨러거치대소리"
mkdir "타자치는소리"
mkdir "탈곡기시동소리"
mkdir "탈수기소리"
mkdir "토스트기소리"
mkdir "트랙터시동소리"
mkdir "팬히터소리"
mkdir "펌프"
mkdir "포장기소리"
mkdir "프린터소리"
mkdir "학교알람소리"
mkdir "화재경보"
mkdir "휴대용손풍기소리"
mkdir "휴대폰소리"

goto :eof 


:main03_02
mkdir "가스레인지소리"
mkdir "가야금튜닝소리"
mkdir "각질제거소리"
mkdir "강판가는소리"
mkdir "거문고튜닝소리"
mkdir "경운기시동소리"
mkdir "계란소리"
mkdir "고무줄소리"
mkdir "공구함소리"
mkdir "과일(야채)깎는소리"
mkdir "과일나무터는소리"
mkdir "구슬치는소리"
mkdir "굽는소리"
mkdir "귀청소소리"
mkdir "금고소리"
mkdir "금속부딪히는소리"
mkdir "급정거(급출발)하는소리"
mkdir "기타튜닝소리"
mkdir "꽹과리튜닝소리"
mkdir "나무갈라지는소리"
mkdir "나무깎는소리"
mkdir "나무부딪히는소리"
mkdir "낫질하는소리"
mkdir "노크하는소리"
mkdir "다듬이질소리"
mkdir "단소소리"
mkdir "담배피는소리"
mkdir "당구공소리"
mkdir "도리깨질소리"
mkdir "도미노소리"
mkdir "돌부딪히는소리"
mkdir "동전떨어지는소리"
mkdir "드럼소리"
mkdir "딱지치는소리"
mkdir "떡매치는소리"
mkdir "똑딱이소리"
mkdir "라이터소리"
mkdir "락카소리"
mkdir "랩핑소리"
mkdir "레고소리"
mkdir "렌치류"
mkdir "마우스클릭하는소리"
mkdir "막대풍선두들기는소리"
mkdir "망치"
mkdir "맷돌소리"
mkdir "멜로디언소리"
mkdir "목탁소리"
mkdir "문여닫는소리"
mkdir "물내리는소리"
mkdir "물통흔드는소리"
mkdir "바둑알소리"
mkdir "바이올린튜닝소리"
mkdir "바퀴굴러가는소리"
mkdir "벨크로소리"
mkdir "볏짚소리"
mkdir "병따는소리"
mkdir "보글보글끓는소리"
mkdir "볶는소리"
mkdir "부채소리"
mkdir "북소리"
mkdir "분무기소리"
mkdir "불타는소리"
mkdir "블라인드소리"
mkdir "비닐구기는소리"
mkdir "빗자루질소리"
mkdir "빨대소리"
mkdir "빻는소리"
mkdir "뽁뽁이소리"
mkdir "뿅망치소리"
mkdir "뿌리는소리"
mkdir "사포질소리"
mkdir "삽류"
mkdir "색소폰튜닝소리"
mkdir "샌드백치는소리"
mkdir "샴페인따는소리"
mkdir "손빨래하는소리"
mkdir "손톱(발톱)깎는소리"
mkdir "솔질소리"
mkdir "수세미질소리"
mkdir "수타치는소리"
mkdir "스테이플러"
mkdir "스티로폼소리"
mkdir "슬라임소리"
mkdir "실로폰소리"
mkdir "쌀소리"
mkdir "에어펌프"
mkdir "연필깎는소리"
mkdir "연필깎이소리"
mkdir "열쇠따는소리"
mkdir "오르골소리"
mkdir "오카리나소리"
mkdir "오토바이시동소리"
mkdir "우쿠렐레튜닝소리"
mkdir "유리깨지는소리"
mkdir "유리문지르는소리"
mkdir "유리부딪히는소리"
mkdir "윷던지는소리"
mkdir "은박지소리"
mkdir "음식굽는소리"
mkdir "의자(책상)끄는소리"
mkdir "의자(책상)삐그덕소리"
mkdir "자르는소리"
mkdir "자석부딪히는소리"
mkdir "자전거종소리"
mkdir "장구튜닝소리"
mkdir "장기알소리"
mkdir "장난감소리"
mkdir "젠가소리"
mkdir "종소리"
mkdir "종이구기는소리"
mkdir "종이넘기는소리"
mkdir "종이자르는소리"
mkdir "주유하는소리"
mkdir "줄가는소리"
mkdir "지퍼소리"
mkdir "징소리"
mkdir "징튜닝소리"
mkdir "천긁는소리"
mkdir "천다듬는소리"
mkdir "천자르는소리"
mkdir "천찢어지는소리"
mkdir "철끄는소리"
mkdir "체인돌아가는소리"
mkdir "첼로소리"
mkdir "칠판긁는소리"
mkdir "칼가는소리"
mkdir "칼질하는소리"
mkdir "캐스터네츠소리"
mkdir "캔따는소리"
mkdir "캔찌그러지는소리"
mkdir "커튼소리"
mkdir "커피포트끓는소리"
mkdir "케이블타이소리"
mkdir "큐브만지는소리"
mkdir "키질하는소리"
mkdir "탄산음료따르는소리"
mkdir "태엽감는소리"
mkdir "탬버린소리"
mkdir "테이프소리"
mkdir "토치소리"
mkdir "톱류"
mkdir "통조림따는소리"
mkdir "튀기는소리"
mkdir "트라이앵글소리"
mkdir "팽이치는소리"
mkdir "펀치류"
mkdir "펄럭이는소리"
mkdir "풍경소리"
mkdir "풍선소리"
mkdir "플라스틱구기는소리"
mkdir "플라스틱부딪히는소리"
mkdir "플라스틱찌그러지는소리"
mkdir "피리소리"
mkdir "피아노튜닝소리"
mkdir "필기하는소리"
mkdir "하모니카소리"
mkdir "호두까는소리"
mkdir "호루라기소리"
mkdir "호미질하는소리"
mkdir "화투소리"
mkdir "휘젓는소리"

goto :eof 

:quit2
echo 	## 소분류 선택 생성기를 종료합니다. ##
pause
exit

:quit
rem echo %group%-%groupNum% 그룹 폴더 생성 완료
echo ## 대분류 %main% 폴더 생성 완료 ##

pause
exit