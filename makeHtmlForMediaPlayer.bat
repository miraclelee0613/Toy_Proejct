@echo off
rem ��ɾ� ��â ��

rem ### ��������	:	v0318
rem ### updated by LJS 


rem ���� https://otrodevym.tistory.com/entry/windows-10-cmd-%EC%9D%B8%EC%BD%94%EB%94%A9-utf-8-%EC%84%A4%EC%A0%95-%EB%B0%A9%EB%B2%95-949-65001-1

setLocal EnableDelayedExpansion
rem ���� https://kkamagistory.tistory.com/881

rem 0 = ������ 8 = ȸ��
rem 1 = �Ķ��� 9 = ���� �Ķ���
rem 2 = �ʷϻ� A = ���� �ʷϻ�
rem 3 = ���� B = ���� ����
rem 4 = ������ C = ���� ������
rem 5 = ���ֻ� D = ���� ���ֻ�
rem 6 = ����� E = ���� �����
rem 7 = ��� F = ���� ���
rem color 09
rem ù° �ڸ��� ���, ��° �ڸ��� ���ڻ�

rem mode con cols=60 lines=30
rem �ܼ�â ũ�� ����

rem ####################################
rem chcp 65001>nul
cd /d %~dp0
rem ���� ���� ��ġ ��θ� �۾� ��ġ��


title ���� ��� : %cd%
rem title ���۸�ũ HTML�� �ٷ� ���� ����
:notice
rem 	230318 �ʱ� �۾�

:start
title ���� ��� : %cd%

:link
echo 	1. ������ ������ ��ũ�� �Է����ּ���
echo 	tip. ctrl + v
echo.
echo 	��) https://drive.google.com/file/d/000000000000000000000000000000000/view?usp=share_link
set /p link="link > "
goto makeLink


:choice
echo 	��ũ : %link%
echo 	���� : .%ext%
echo 	3. ������ ������ �������̸� 1, ���������̸� 2
set /p choice=" > "

if %choice%==1 goto video
if %choice%==2 goto sound
cls
echo 	�߸� �Է��ϼ̽��ϴ�
echo.
goto choice

:video
cls
echo 	����� ������ '����' ũ�⸦ �������ּ���
echo 	��) 480, 720, 1080, 1440, 2160
set /p width="����px> "

cls

echo 	��ũ : %link%
echo 	���� : %width%px

echo 	���۵���̺� ��ũ�� ������� HTML�ڵ带 ����� ����Դϴ�.
echo 	�����Ϸ��� �ƹ�Ű�� ��������.
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
echo ��
pause
exit

:sound
echo 	��ũ : %link%
echo 	2. ������ ������ ������ �Է����ּ���
echo 	��) mp4, wav, m4a
set /p ext="ext > "

cls
echo 	��ũ : %srcLink%
echo 	���� : .%ext%

echo 	���۵���̺� ��ũ�� ������� HTML�ڵ带 ����� ����Դϴ�.
echo 	�����Ϸ��� �ƹ�Ű�� ��������.
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
echo 	��
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

