@echo off
rem 명령어 복창 끔

rem ### 버전정보	:	v0318
rem ### updated by LJS 


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
rem chcp 65001>nul
cd /d %~dp0
rem 현재 파일 위치 경로를 작업 위치로


title 현재 경로 : %cd%
rem title 구글링크 HTML로 바로 감상 가능
:notice
rem 	230318 초기 작업

:start
title 현재 경로 : %cd%

:link
echo 	1. 공유할 파일의 링크를 입력해주세요
echo 	tip. ctrl + v
echo.
echo 	예) https://drive.google.com/file/d/000000000000000000000000000000000/view?usp=share_link
set /p link="link > "
goto makeLink


:choice
echo 	링크 : %link%
echo 	형식 : .%ext%
echo 	3. 공유한 파일이 동영상이면 1, 음성파일이면 2
set /p choice=" > "

if %choice%==1 goto video
if %choice%==2 goto sound
cls
echo 	잘못 입력하셨습니다
echo.
goto choice

:video
cls
echo 	재생할 비디오의 '가로' 크기를 지정해주세요
echo 	예) 480, 720, 1080, 1440, 2160
set /p width="가로px> "

cls

echo 	링크 : %link%
echo 	가로 : %width%px

echo 	구글드라이브 링크로 비디오재생 HTML코드를 만드는 기능입니다.
echo 	진행하려면 아무키나 누르세요.
pause
rem set L1=^</p^>
rem set L2=^<span class^=\"fr-video fr-deletable fr-fvc fr-dvi fr-draggable\" contenteditable^=\"false\"^>
rem set L3=^<video
rem set L4=class^=\"fr-fvc fr-dvi fr-draggable\"
rem set L5=controls=\"\"
rem set L6=src^=\"%srcLink%\"
rem set L7=width^=\"%width%px\"
rem set L8=^>^</video^>^</span^>^</p^>
cls
set L1=^</p^>
set L2=^<span class^="fr-video fr-deletable fr-fvc fr-dvi fr-draggable" contenteditable^="false"^>
set L3=^<video
set L4=class^="fr-fvc fr-dvi fr-draggable"
set L5=controls=""
set L6=src^="%srcLink%"
set L7=width^="%width%px"
set L8=^>^</video^>^</span^>^</p^>
cls
echo 	%L1% >>html_%linkTail%.txt
echo 	%L2% >>html_%linkTail%.txt
echo 	%L3% >>html_%linkTail%.txt
echo 	%L4% >>html_%linkTail%.txt
echo 	%L5% >>html_%linkTail%.txt
echo 	%L6% >>html_%linkTail%.txt
echo 	%L7% >>html_%linkTail%.txt
echo 	%L8% >>html_%linkTail%.txt
echo 끝
pause
exit

:sound
echo 	링크 : %link%
echo 	2. 공유할 파일의 형식을 입력해주세요
echo 	예) mp4, wav, m4a
set /p ext="ext > "

cls
echo 	링크 : %srcLink%
echo 	형식 : .%ext%

echo 	구글드라이브 링크로 음악재생 HTML코드를 만드는 기능입니다.
echo 	진행하려면 아무키나 누르세요.
pause
cls
rem echo 	^<figcaption^>>>html_%linkTail%.txt
rem echo 	  %figcaption%>>html_%linkTail%.txt
rem echo 	^</figcaption^>>>html_%linkTail%.txt
echo ^<p/^>>html_%linkTail%.txt
echo 	^<audio >>html_%linkTail%.txt
echo 	  controls^="" >>html_%linkTail%.txt
echo 	  src^="%srcLink%">>html_%linkTail%.txt
echo 	  type^="audio/%ext%">>html_%linkTail%.txt
echo 	^>>>html_%linkTail%.txt
echo 	^</p^>>>html_%linkTail%.txt
echo 	^<span class^="fr-video fr-deletable fr-fvc fr-dvi fr-draggable" contenteditable^="false"^>>>html_%linkTail%.txt
echo 	^<video >>html_%linkTail%.txt
echo 	    class^="fr-fvc fr-dvi fr-draggable" >>html_%linkTail%.txt
echo 	    controls^="" >>html_%linkTail%.txt
echo 	    src^="%srcLink%" >>html_%linkTail%.txt
echo 	^>^</video^>^</span^>^</p^>>>html_%linkTail%.txt
echo 	^</audio^>>>html_%linkTail%.txt
echo 	끝
puase
exit




:makeLink
set linkTail=%link:~32,33%
rem echo 	linkTail=%linkTail%
set srcLink="https://drive.google.com/uc?export=download^&id=%linkTail%"
rem echo %srcLink%
pause
cls
goto sound

