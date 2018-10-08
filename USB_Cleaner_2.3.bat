@ECHO OFF
chcp 866
cls
set colorite=1
:load
title �롮� ���ᨨ
echo USB Cleaner 2016 Full
echo -----------------------
echo 0- Standart version
echo 1- Professional version
echo -----------------------
set /p PRO=�롥�� �����: 
if "%PRO%"=="0" (goto version)
if "%PRO%"=="1" (goto version) else (goto load)
goto load

:version
if "%colorite%"=="1" (color F0)
if "%colorite%"=="2" (color 0A)
if "%colorite%"=="3" (color FC)
if "%colorite%"=="4" (color FA)
cls
title USB Cleaner. ��������! ������ ���ଠ��!
echo ��������! �ணࠬ�� �믮������ � ���᮫� � �� �����
echo ������. ��� �롮� �㦭��� ��� �㭪� ������ ��
echo ��������� ��� ����� � ������ ENTER.
echo ����� � PRO ०��� ���ॡ���� ���⢥न�� 㤠�����
echo �������� 䠩���, ��� ���⢥ত���� 㤠����� ���ॡ����
echo ����� �� ��������� Y � ������ ENTER.
echo ������� ���ᨨ ��⥬� �����ন���� ���� ���᪨� ᨬ�����
echo , �� �᫨ ᨬ��� � �� �㤥� �ᯮ���� ���᮫��, � 㤠�����
echo 䠩��� ����� �� ��࠭������.
pause
cls

title USB Cleaner v2.3 RUS
echo ==================================
echo =  ���� ���������� � �ணࠬ��  =
if "%PRO%"=="0" (echo =      USB Cleaner Standart      =) else (echo =    USB Cleaner Professional    =)
echo =--------------------------------=
echo =   ����� �ணࠬ��: 2.2 RUS    =
echo =   ������� ����䥩�: 1.6    =
echo =   ����� �롮� ��᪠          =
echo =   ����� ᬥ�� 梥�: FINAL    =
echo =   ����᭠� ����: 2.0           =
echo =--------------------------------=
echo =         ������ ENTER          =
echo ==================================
pause
cls

:start
set int=3
set starter=1
:main
if "%int%"=="1" (cls&&goto gen1)
if "%int%"=="2" (cls&&goto gen2)
if "%int%"=="3" (cls&&goto gen3) else (cls&&echo ERROR04! Reselect interface!&& pause && goto interface)
cls
:main1
set starter=0
cls
echo %gen1%%gen2%%gen1%
echo %gen1%                                  %gen1%
echo %gen1%   ������ 0 ��� ��室�           %gen1%
echo %gen1%                                  %gen1%
echo %gen1%   ������ 1 ��� �롮� ��᪠ F   %gen1%
echo %gen1%                                  %gen1%
echo %gen1%   ������ 2 ��� �롮� ��᪠ G   %gen1%
echo %gen1%                                  %gen1%
echo %gen1%   ������ 3 ��� �롮� ��᪠ E   %gen1%
echo %gen1%                                  %gen1%
echo %gen1%   ������ 4 ��� �롮� ��᪠ C   %gen1%
if "%PRO%"=="0" (echo %gen1%   ���쪮 ��� ����ᨮ�����!     %gen1%) else (echo %gen1%         ��������஢���           %gen1%)
echo %gen1%                                  %gen1%
echo %gen1%   ������ 5 ��� �롮� ��᪠ D   %gen1%
echo %gen1%                                  %gen1%
echo %gen1%   ������ 6 ��� ᢮��� ��᪠     %gen1%
if "%PRO%"=="0" (echo %gen1%   ���쪮 ��� ����ᨮ�����!     %gen1%) else (echo %gen1%         ��������஢���           %gen1%)
echo %gen1%                                  %gen1%
echo %gen1%   ������ 7 ��� ����祭��        %gen1%
echo %gen1%   ���ଠ樨 � �ணࠬ��         %gen1%
echo %gen1%                                  %gen1%
echo %gen1%   ������ 8 ��� �롮� 梥�     %gen1%
echo %gen1%                                  %gen1%
echo %gen1%   ������ 9 ��� ᬥ�� ��ଫ���� %gen1%
echo %gen1%                                  %gen1%
echo %gen1%%gen1%%gen3%Make by Londonist%gen3%%gen1%

set /p sym=�롥�� ���� � ������ ENTER: 
if "%sym%"=="0" (exit)
if "%sym%"=="1" (cls && set disk=F&& goto verify)
if "%sym%"=="2" (cls && set disk=G&& goto verify)
if "%sym%"=="3" (cls && set disk=E&& goto verify)
if "%sym%"=="4" (cls && if "%PRO%"=="0" (echo ����㯭� ⮫쪮 � PRO ���ᨨ!) else (set disk=C && goto verify))
if "%sym%"=="5" (cls && set disk=D&& goto verify)
if "%sym%"=="6" (cls && if "%PRO%"=="0" (echo ����㯭� ⮫쪮 � PRO ���ᨨ!) else (goto changeDISK))
if "%sym%"=="7" (cls && goto version)
if "%sym%"=="8" (cls && goto color)
if "%sym%"=="9" (cls && goto interface) else (cls && echo �訡��! �� ���� ��� && pause)
cls && echo ERROR 02 && goto main1

:changeDISK
echo ������ ⮫쪮 �㪢� ��᪠ � ����� ��祣�!
set /p disk=������ �㪢� ��᪠ ᮡ�� ॣ����: 

:verify
title �஢�ઠ ��᪠...
chdir /d %disk%:\
echo ����� � ������ ��� ��࠭� ���...
@echo on
echo ����� ��ࢠ� �㪢� ������ ��ப� �� �㪢� ⥪�饣� ��᪠.
pause
@echo off
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
echo %gen1% ������ 1 ��� ��室� � ����      %gen1%
echo %gen1% ������ 2 ��� ��室� �� ��       %gen1%
echo %gen2%%gen1%%gen1%
set /p sym=�롥�� ���� � ������ ENTER:
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
if "%sym%"=="4" (cls && color FA && set colorite=4 && goto main1) else (cls && echo �訡��! �� ���� ���)
goto color

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