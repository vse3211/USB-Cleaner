@ECHO OFF
chcp 866
cls
:load
title ����㧪� �ணࠬ��
set PRO=0
set sysdisk=C
set colorite=1
if "%colorite%"=="1" (color F0)
if "%colorite%"=="2" (color 0A)
if "%colorite%"=="3" (color FC)
if "%colorite%"=="4" (color FA)
cls
title USB Cleaner. ��������! ������ ���ଠ��!
echo ��������! �ணࠬ�� �믮������ � ���᮫� � �� �����
echo ������. ��� �롮� �㦭��� ��� �㭪� ������ ��
echo ��������� ��� ����� � ������ ENTER.
pause
cls
goto start

:version
title USB Cleaner v2.4 RUS BETA
echo ==================================
echo =  ���� ���������� � �ணࠬ��  =
echo =    USB Cleaner Professional    =
echo =--------------------------------=
echo =   ����� �ணࠬ��: 2.4 RUS    =
echo =   ������� ����䥩�: 1.6    =
echo =   ����᭠� ����: 2.0           =
echo =--------------------------------=
echo =         ������ ENTER          =
echo ==================================
pause
cls
goto main1
:start
set int=3
set starter=1
:main
if "%int%"=="1" (cls&&goto gen1)
if "%int%"=="2" (cls&&goto gen2)
if "%int%"=="3" (cls&&goto gen3) else (cls&&echo ERROR04! Reselect interface!&& pause && goto interface)
cls
:main1
title USB Cleaner v2.4 RUS BETA
set starter=0
cls
echo %gen1%%gen2%%gen1%
echo %gen1%                                  %gen1%
echo %gen1%   ������ 0 ���   ��室�         %gen1%
echo %gen1%                                  %gen1%
echo %gen1%   ������ 1 ��� �롮� ��᪠     %gen1%
echo %gen1%                                  %gen1%
echo %gen1%   ������ 2 ��� ����祭��        %gen1%
echo %gen1%   ���ଠ樨 � �ணࠬ��         %gen1%
echo %gen1%                                  %gen1%
echo %gen1%   ������ 3 ��� �롮� 梥�     %gen1%
echo %gen1%                                  %gen1%
echo %gen1%   ������ 4 ��� ᬥ�� ��ଫ���� %gen1%
echo %gen1%                                  %gen1%
echo %gen1%%gen1%%gen3%Make by Londonist%gen3%%gen1%

set /p sym=�롥�� ���� � ������ ENTER: 
if "%sym%"=="0" (exit)
if "%sym%"=="1" (cls && goto changeDISK)
if "%sym%"=="2" (cls && goto version)
if "%sym%"=="3" (cls && goto color)
if "%sym%"=="4" (cls && goto interface) else (cls && echo �訡��! �� ���� ��� && pause)
cls && echo ERROR 02 && goto main1

:changeDISK
echo ============================================
echo = ������ �㪢� ��᪠ ��� �� �ਬ�� ����: =
echo =******************************************=
echo = ������ �㪢� ��᪠ ᮡ�� ॣ����: F  =
echo =******************************************=
echo = ��ᬮ���� �㪢� ��᪠ ����� � �ணࠬ�� =
echo =              "��� ��������"             =
echo ============================================
set /p disk=������ �㪢� ��᪠ ᮡ�� ॣ����: 

:verify
title �஢�ઠ ��᪠...
chdir /d %disk%:\
echo �� ����� ������ ��࠭ ���: %disk%
echo �᫨ ��� ᮢ������ � ��࠭� ���� ��᪮� ������ 1
echo �᫨ �� ᮢ������ ������ 2
echo ��� ��室� �� �ணࠬ�� ������ 3
set /p sym=�롥�� ���� � ������ ENTER: 
if "%sym%"=="1" (cls && goto clean)
if "%sym%"=="2" (cls && goto main1)
if "%sym%"=="3" (exit) else (cls && echo �訡��! �� ���� ��� && pause)
goto Finfo

:clean
title ����⪠ ��᪠ %disk%
chdir /d %disk%:\
echo ����᭠� ���� ����㦠��.
echo ��� �����⮢���.
@echo on
echo �� ࠧ �஢���� ��� � �⬥��� �� �� ᮢ�������.
pause
@echo off
echo ��� ��砫� ��⪨ ������ 1
echo ��� ��室� � ���� ������ 2
echo ��� ��室� �� �ணࠬ�� ������ 3
set /p sym=�롥�� ���� � ������ ENTER: 
echo ��� �⬥�� ���ன� �ணࠬ��.
echo ��᫥ ������ ������ ENTER ����⢨� �ணࠬ�� �⬥���� �㤥� �����.
pause
if "%sym%"=="1" (cls && goto clean2)
if "%sym%"=="2" (cls && goto main1)
if "%sym%"=="3" (exit) else (cls && echo �訡��! �� ���� ��� && pause)

:clean2
echo ��稭�� ����...
echo %gen2%%gen1%%gen1%
echo %gen1% ��������, ��������!           %gen1%
echo %gen2%%gen1%%gen1%
echo %gen1% �ਬ������ ��ਡ�⮢...          %gen1%
@echo on
attrib -s -h -a -r /s /d
@echo off
echo %gen1% �ਬ������ ��ਡ�⮢ �����襭�   %gen1%
echo %gen1%%gen4%%gen1%
echo %gen1% �������� ~$WNEL.FAT32            %gen1%
if "%PRO%"=="0" (del ~$WNEL.FAT32) else (del /p ~$WNEL.FAT32)
echo %gen1% �����襭�                        %gen1%
echo %gen1%%gen4%%gen1%
echo %gen1% �������� ~$WOUAF.FAT32           %gen1%
if "%PRO%"=="0" (del ~$WOUAF.FAT32) else (del /p ~$WOUAF.FAT32)
echo %gen1% �����襭�                        %gen1%
echo %gen1%%gen4%%gen1%
echo %gen1% �������� autorun.ini             %gen1%
if "%PRO%"=="0" (del autorun.ini) else (del /p autorun.ini)
echo %gen1% �����襭�                        %gen1%
echo %gen1%%gen4%%gen1%
echo %gen1% �������� autorun.inf%gen1%
if "%PRO%"=="0" (del autorun.inf) else (del /p autorun.inf)
echo %gen1% �����襭�                        %gen1%
echo %gen1%%gen4%%gen1%
echo %gen1% �������� desktop.ini             %gen1%
if "%PRO%"=="0" (del desktop.ini) else (del /p desktop.ini)
echo %gen1% �����襭�                        %gen1%
echo %gen1%%gen4%%gen1%
echo %gen1% �������� desktop.inf             %gen1%
if "%PRO%"=="0" (del desktop.inf) else (del /p desktop.inf)
echo %gen1% �����襭�                        %gen1%
echo %gen1%%gen4%%gen1%
echo %gen1% �������� ��� �����              %gen1%
if "%PRO%"=="0" (del Thumbs.db) else (del /p Thumbs.db)
echo %gen1% �����襭�                        %gen1%
echo %gen1%%gen4%%gen1%
echo %gen1% �������� ��몮�                 %gen1%
if "%PRO%"=="0" (del *.lnk) else (del /p *.lnk)
echo %gen1% �����襭�                        %gen1%
echo %gen1%%gen4%%gen1%
echo %gen1% �������� .inf                    %gen1%
if "%PRO%"=="0" (del *.inf) else (del /p *.inf)
echo %gen1% �����襭�                        %gen1%
echo %gen1%%gen4%%gen1%
echo %gen1% �������� .ini%gen1%
if "%PRO%"=="0" (del *.ini) else (del /p *.ini)
echo %gen1% �����襭�                        %gen1%
echo %gen1%%gen4%%gen1%
echo %gen1% �������� .FAT32                  %gen1%
if "%PRO%"=="0" (del *.FAT32) else (del /p *.FAT32)
echo %gen1% �����襭�                        %gen1%
echo %gen1%%gen4%%gen1%
echo %gen1% ����⪠ �����襭�.              %gen1%
echo %gen2%%gen1%%gen1%

:copyUF
cls
echo ��������! ��������㥬 �� �ᯮ�짮���� ��������
echo ���� �㤥� �믮������ ����� �⠯ �ணࠬ��.
echo ����� ����� �� �� ��襫 ���஢���� � ����� ࠡ���� ��������⭮!
echo.
echo ����� �ணࠬ�� �������� ��६����� ��� ����� � ����� ����� �� 䫥誥
echo ==========================================================================
echo                  �᫨ ��� �த������ ������       - 1
echo                  �᫨ ��� �믮����� ᠬ����⥫쭮 - 2
echo ==========================================================================
set /p mactive=��� �롮�: 
if "%mactive%"=="1" (goto copyUF2)
if "%mactive%"=="2" (goto copySKIP) else (echo ERROR! Wrong Code! && goto copyUF)
:copyUF2
echo �롥�� ��� �� ����� ���� �६���� ᪮��஢��� ��� 䠩�� � �����
set /p %sysdisk%=������ �㪢� ��᪠: 
pause
cls
echo ������� ��� 䠩�� �� ��⥬�� ���...
xcopy /s/q/y %disk%:\� %sysdisk%:\USBCleaner\
echo ����஢���� �����襭�
echo �� ��⥬��� ��᪥ � ����� USBCleaner ������ ���� ��� 䠩��!
echo �᫨ ���������, � ���ன� �ணࠬ��!
pause
echo ������ ����� ��� �����...
rd /s/q %disk%:\
echo ����� 
xcopy /s/q/y %sysdisk%:\USBCleaner %disk%:\UserFiles\
cd /d C:\
rd /s/q USBCleaner
pause
goto copyWIN
:copySKIP
echo �� �ய��⨫� ��⮬���᪮� ����஢���� 䠩���.
echo.
echo �믮���� �� �� ������樨:
echo 1) ������ �� 䫥�� � ������ ����� ��� �����.
echo 2) �������� �� ����� ��� ����� �� 䠩�� � ����� (��᮫�⭮ ��).
echo 3) ��३��� � ��୥��� ��४��� ���誨 � ��⠢�� �㤠 �� 䠩��.
echo 4) ���� �ᯥ譮�� ����஢���� ��� 䠩��� � ����� 㤠��� ����� ��� �����.
echo.
:copyWIN
echo ��� ���室� � ������� ���� ������             - 1
echo ��� ��室� �� �ணࠬ�� ���ன� �� ��� ������ - 2
set /p sym=��� �롮�: 
if "%sym%"=="1" (cls && goto main1)
if "%sym%"=="2" (exit) else (cls && echo �訡��! �� ���� ��� && pause)
goto main

:color
echo %gen2%%gen3%%gen3%%gen3%%gen1%%gen1%%gen1%%gen1%%gen1%
echo %gen1% 1 - ���� 䮭. ���� ⥪��    3 - ���� 䮭. ���� ⥪�� %gen1%
echo %gen1% 2 - ���� 䮭. ������ ⥪��  4 - ���� 䮭. ������ ⥪�� %gen1%
echo %gen2%%gen3%%gen3%%gen3%%gen1%%gen1%%gen1%%gen1%%gen1%
set /p sym=�롥�� ���� � ������ ENTER: 
if "%sym%"=="1" (cls && color F0 && set colorite=1 && goto main1)
if "%sym%"=="2" (cls && color 0A && set colorite=2 && goto main1)
if "%sym%"=="3" (cls && color FC && set colorite=3 && goto main1)
if "%sym%"=="4" (cls && color FA && set colorite=4 && goto main1)
if "%sym%"=="5" (cls && goto MYcolor) else (cls && echo �訡��! �� ���� ���)
goto color
:MYcolor
set /p COLORcode=������ ��� ��� 梥�: 
color %COLORcode%
goto main1

:interface
echo Interface generator v1.6 Beta Test
echo ����� ������� �� ��室���� � ࠧࠡ�⪥!
echo �� ����� ������ ����� �������� ����䥩� ����� ⮫쪮 � ������� ����!
echo ***  ///  === %gen3%%gen3%
echo *1*  /2/  =3= 4 - ��室 � ����
echo ***  ///  === %gen3%%gen3%
set /p int=�롥�� ����䥩�:
if "%int%"=="1" (goto gen1)
if "%int%"=="2" (goto gen2)
if "%int%"=="3" (goto gen3)
if "%int%"=="4" (goto main1) else (echo ERROR! && echo Wrong code!)
goto interface

:gen1
set gs=*
goto gen

:gen2
set gs=/
goto gen

:gen3
set gs==
goto gen

:gen
cls
set gen1=%gs%
set gen2=%gs%%gs%%gs%%gs%%gs%%gs%%gs%%gs%%gs%%gs%%gs%%gs%%gs%%gs%%gs%%gs%%gs%%gs%%gs%%gs%%gs%%gs%%gs%%gs%%gs%%gs%%gs%%gs%%gs%%gs%%gs%%gs%%gs%%gs%
set gen3=%gs%%gs%%gs%%gs%%gs%%gs%%gs%%gs%
set gen4=----------------------------------
if "%starter%"=="1" (goto main1) else (goto interface)
pause
goto start