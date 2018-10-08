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
title USB Cleaner 2.5 Диск: %1
cd /D %1
echo Подготовка к чистке...
attrib -s -h -a -r /s /d
echo.
echo Чистка:
echo Удаление ~$WNEL.FAT32
del ~$WNEL.FAT32
echo Завершено
echo Удаление ~$WOUAF.FAT32
del ~$WOUAF.FAT32
echo Завершено
echo Удаление autorun.ini
del autorun.ini
echo Завершено
echo Удаление autorun.inf
del autorun.inf
echo Завершено
echo Удаление desktop.ini
del desktop.ini
echo Завершено
echo Удаление desktop.inf
del desktop.inf
echo Завершено
echo Удаление баз вируса
del Thumbs.db
echo Завершено
echo Удаление ярлыков
del *.lnk
echo Завершено
echo Удаление .inf
mshta "about:<script>alert('Внимание! Для удаления следующих файлов потребуется подтверждение\nДля подтверждения вводите Y\nДля отмены вводите N\nДля продолжения нажмите OK');close()</script>"
del /p *.inf
echo Завершено
echo Удаление .ini
del *.ini
echo Завершено
echo Удаление .FAT32
del *.FAT32
echo Завершено
mshta "about:<script>alert('Отчистка завершена\nОзнакомьтесь с результатами и нажмите OK');close()</script>"
timeout /t 3 /nobreak
goto:EOF

:error
mshta "about:<script>alert('Внимание!\n Во время запуска прозошла ошибка.');close()</script>"
goto:EOF

:install
title USB Cleaner 2.5 Installer
echo Установка скрипта
echo.
echo Для установки скрипт должен быть запущен от имени Администратора!
echo В противном случае скрипт не будет установлен корректно
echo.
echo Если скрипт уже был установлен, закройте данное окно, нажмите правой кнопкой мыши на диск и выберите "USB Cleaner"
echo.
echo Запускать установщик можно только через папку, в которой он находится!
echo.
echo Для отмены закройте окно
pause
cls
%USERPROFILE%\Desktop\installer.reg
cd /D "%PROGRAMFILES%"
md USB_Cleaner
copy %~dp0USB_Cleaner.cmd "%PROGRAMFILES%\USB_Cleaner\USBC.cmd"
cd /D "%USERPROFILE%\Desktop\"
mklink "USB Cleaner" "%PROGRAMFILES%\USB_Cleaner\USBC.cmd"
echo Установка завершена. Эти файлы можно удалить.
mshta "about:<script>alert('Инструкция по эксплуатации:\n 1.Подключите диск к компьютеру\n 2.Откройте Мой компьютер\n 3.Нажмите правой кнопкой мыши по зараженному диску\n 4.Выберите USB Cleaner');close()</script>"