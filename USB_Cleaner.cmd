@ECHO OFF
chcp 866
cls
if [%1] == [A:\] (goto start)
if [%1] == [B:\] (goto start)
if [%1] == [C:\] (goto start)
if [%1] == [D:\] (goto start)
if [%1] == [E:\] (goto start)
if [%1] == [F:\] (goto start)
if [%1] == [G:\] (goto start)
if [%1] == [H:\] (goto start)
if [%1] == [I:\] (goto start)
if [%1] == [J:\] (goto start)
if [%1] == [K:\] (goto start)
if [%1] == [L:\] (goto start)
if [%1] == [M:\] (goto start)
if [%1] == [N:\] (goto start)
if [%1] == [O:\] (goto start)
if [%1] == [P:\] (goto start)
if [%1] == [Q:\] (goto start)
if [%1] == [R:\] (goto start)
if [%1] == [S:\] (goto start)
if [%1] == [T:\] (goto start)
if [%1] == [U:\] (goto start)
if [%1] == [V:\] (goto start)
if [%1] == [W:\] (goto start)
if [%1] == [X:\] (goto start)
if [%1] == [Y:\] (goto start)
if [%1] == [Z:\] (goto start) else (goto install)
:start
title USB Cleaner 2.5 ���: %1
cd /D %1
echo �����⮢�� � ��⪥...
attrib -s -h -a -r /s /d
echo.
echo ���⪠:
echo �������� ~$WNEL.FAT32
del ~$WNEL.FAT32
echo �����襭�
echo �������� ~$WOUAF.FAT32
del ~$WOUAF.FAT32
echo �����襭�
echo �������� autorun.ini
del autorun.ini
echo �����襭�
echo �������� autorun.inf
del autorun.inf
echo �����襭�
echo �������� desktop.ini
del desktop.ini
echo �����襭�
echo �������� desktop.inf
del desktop.inf
echo �����襭�
echo �������� ��� �����
del Thumbs.db
echo �����襭�
echo �������� ��몮�
del *.lnk
echo �����襭�
echo �������� .inf
mshta "about:<script>alert('��������! ��� 㤠����� ᫥����� 䠩��� ���ॡ���� ���⢥ত����\n��� ���⢥ত���� ������ Y\n��� �⬥�� ������ N\n��� �த������� ������ OK');close()</script>"
del /p *.inf
echo �����襭�
echo �������� .ini
del *.ini
echo �����襭�
echo �������� .FAT32
del *.FAT32
echo �����襭�
mshta "about:<script>alert('����⪠ �����襭�\n����������� � १���⠬� � ������ OK');close()</script>"
timeout /t 3 /nobreak
goto:EOF

:error
mshta "about:<script>alert('��������!\n �� �६� ����᪠ �஧�諠 �訡��.');close()</script>"
goto:EOF

:install
title USB Cleaner 2.5 Installer
echo ��⠭���� �ਯ�
echo.
echo ��� ��⠭���� �ਯ� ������ ���� ����饭 �� ����� �����������!
echo � ��⨢��� ��砥 �ਯ� �� �㤥� ��⠭����� ���४⭮
echo.
echo �᫨ �ਯ� 㦥 �� ��⠭�����, ���ன� ������ ����, ������ �ࠢ�� ������� ��� �� ��� � �롥�� "USB Cleaner"
echo.
echo ����᪠�� ��⠭��騪 ����� ⮫쪮 �१ �����, � ���ன �� ��室����!
echo.
echo ��� �⬥�� ���ன� ����
pause
cls
%USERPROFILE%\Desktop\installer.reg
cd /D "%PROGRAMFILES%"
md USB_Cleaner
copy %~dp0USB_Cleaner.cmd "%PROGRAMFILES%\USB_Cleaner\USBC.cmd"
cd /D "%USERPROFILE%\Desktop\"
mklink "USB Cleaner" "%PROGRAMFILES%\USB_Cleaner\USBC.cmd"
echo ��⠭���� �����襭�. �� 䠩�� ����� 㤠����.
mshta "about:<script>alert('�������� �� �ᯫ��樨:\n 1.�������� ��� � ���������\n 2.��ன� ��� ��������\n 3.������ �ࠢ�� ������� ��� �� ��ࠦ������ ����\n 4.�롥�� USB Cleaner');close()</script>"