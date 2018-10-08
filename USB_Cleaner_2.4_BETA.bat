@ECHO OFF
chcp 866
cls
:load
title Загрузка программы
set PRO=0
set sysdisk=C
set colorite=1
if "%colorite%"=="1" (color F0)
if "%colorite%"=="2" (color 0A)
if "%colorite%"=="3" (color FC)
if "%colorite%"=="4" (color FA)
cls
title USB Cleaner. Внимание! Важная информация!
echo Внимание! Программа выполняется в консоли и не имеет
echo кнопок. Для выбора нужного вам пункта введите на
echo клавиатуре его номер и нажмите ENTER.
pause
cls
goto start

:version
title USB Cleaner v2.4 RUS BETA
echo ==================================
echo =  Добро пожаловать в программу  =
echo =    USB Cleaner Professional    =
echo =--------------------------------=
echo =   Версия программы: 2.4 RUS    =
echo =   Генератор интерфейса: 1.6    =
echo =   Вирусная база: 2.0           =
echo =--------------------------------=
echo =         Нажмите ENTER          =
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
echo %gen1%   Нажмите 0 для   выхода         %gen1%
echo %gen1%                                  %gen1%
echo %gen1%   Нажмите 1 для выбора диска     %gen1%
echo %gen1%                                  %gen1%
echo %gen1%   Нажмите 2 для получения        %gen1%
echo %gen1%   информации о программе         %gen1%
echo %gen1%                                  %gen1%
echo %gen1%   Нажмите 3 для выбора цвета     %gen1%
echo %gen1%                                  %gen1%
echo %gen1%   Нажмите 4 для смены оформления %gen1%
echo %gen1%                                  %gen1%
echo %gen1%%gen1%%gen3%Make by Londonist%gen3%%gen1%

set /p sym=Выберите цифру и нажмите ENTER: 
if "%sym%"=="0" (exit)
if "%sym%"=="1" (cls && goto changeDISK)
if "%sym%"=="2" (cls && goto version)
if "%sym%"=="3" (cls && goto color)
if "%sym%"=="4" (cls && goto interface) else (cls && echo Ошибка! Не верный код && pause)
cls && echo ERROR 02 && goto main1

:changeDISK
echo ============================================
echo = Введите букву диска как на примере ниже: =
echo =******************************************=
echo = Введите букву диска соблюдая регистр: F  =
echo =******************************************=
echo = Посмотреть букву диска можно в программе =
echo =              "Мой компьютер"             =
echo ============================================
set /p disk=Введите букву диска соблюдая регистр: 

:verify
title Проверка диска...
chdir /d %disk%:\
echo На данный момент выбран диск: %disk%
echo Если она совпадает с выбраным вами диском нажмите 1
echo Если не совпадает нажмите 2
echo Для выхода из программы нажмите 3
set /p sym=Выберите цифру и нажмите ENTER: 
if "%sym%"=="1" (cls && goto clean)
if "%sym%"=="2" (cls && goto main1)
if "%sym%"=="3" (exit) else (cls && echo Ошибка! Не верный код && pause)
goto Finfo

:clean
title Отчистка диска %disk%
chdir /d %disk%:\
echo Вирусная база загружана.
echo Диск подготовлен.
@echo on
echo Еще раз проверьте диск и отмените при не совпадении.
pause
@echo off
echo Для начала чистки нажмите 1
echo Для выхода в меню нажмите 2
echo Для выхода из программы нажмите 3
set /p sym=Выберите цифру и нажмите ENTER: 
echo Для отмены закройте программу.
echo После нажатия клавиши ENTER действия программы отменить будет нельзя.
pause
if "%sym%"=="1" (cls && goto clean2)
if "%sym%"=="2" (cls && goto main1)
if "%sym%"=="3" (exit) else (cls && echo Ошибка! Не верный код && pause)

:clean2
echo Начинаю чистку...
echo %gen2%%gen1%%gen1%
echo %gen1% Пожалуйста, подождите!           %gen1%
echo %gen2%%gen1%%gen1%
echo %gen1% Приминение атрибутов...          %gen1%
@echo on
attrib -s -h -a -r /s /d
@echo off
echo %gen1% Приминение атрибутов завершено   %gen1%
echo %gen1%%gen4%%gen1%
echo %gen1% Удаление ~$WNEL.FAT32            %gen1%
if "%PRO%"=="0" (del ~$WNEL.FAT32) else (del /p ~$WNEL.FAT32)
echo %gen1% Завершено                        %gen1%
echo %gen1%%gen4%%gen1%
echo %gen1% Удаление ~$WOUAF.FAT32           %gen1%
if "%PRO%"=="0" (del ~$WOUAF.FAT32) else (del /p ~$WOUAF.FAT32)
echo %gen1% Завершено                        %gen1%
echo %gen1%%gen4%%gen1%
echo %gen1% Удаление autorun.ini             %gen1%
if "%PRO%"=="0" (del autorun.ini) else (del /p autorun.ini)
echo %gen1% Завершено                        %gen1%
echo %gen1%%gen4%%gen1%
echo %gen1% Удаление autorun.inf%gen1%
if "%PRO%"=="0" (del autorun.inf) else (del /p autorun.inf)
echo %gen1% Завершено                        %gen1%
echo %gen1%%gen4%%gen1%
echo %gen1% Удаление desktop.ini             %gen1%
if "%PRO%"=="0" (del desktop.ini) else (del /p desktop.ini)
echo %gen1% Завершено                        %gen1%
echo %gen1%%gen4%%gen1%
echo %gen1% Удаление desktop.inf             %gen1%
if "%PRO%"=="0" (del desktop.inf) else (del /p desktop.inf)
echo %gen1% Завершено                        %gen1%
echo %gen1%%gen4%%gen1%
echo %gen1% Удаление баз вируса              %gen1%
if "%PRO%"=="0" (del Thumbs.db) else (del /p Thumbs.db)
echo %gen1% Завершено                        %gen1%
echo %gen1%%gen4%%gen1%
echo %gen1% Удаление ярлыков                 %gen1%
if "%PRO%"=="0" (del *.lnk) else (del /p *.lnk)
echo %gen1% Завершено                        %gen1%
echo %gen1%%gen4%%gen1%
echo %gen1% Удаление .inf                    %gen1%
if "%PRO%"=="0" (del *.inf) else (del /p *.inf)
echo %gen1% Завершено                        %gen1%
echo %gen1%%gen4%%gen1%
echo %gen1% Удаление .ini%gen1%
if "%PRO%"=="0" (del *.ini) else (del /p *.ini)
echo %gen1% Завершено                        %gen1%
echo %gen1%%gen4%%gen1%
echo %gen1% Удаление .FAT32                  %gen1%
if "%PRO%"=="0" (del *.FAT32) else (del /p *.FAT32)
echo %gen1% Завершено                        %gen1%
echo %gen1%%gen4%%gen1%
echo %gen1% Отчистка завершена.              %gen1%
echo %gen2%%gen1%%gen1%

:copyUF
cls
echo Внимание! Рекомендуем не использовать компьютер
echo пока будет выполнятся данный этап программы.
echo Данный модуль еще не прошел тестирование и может работать неадекватно!
echo.
echo Сейчас программа планирует переместить ваши вайлы в чистую папку на флешке
echo ==========================================================================
echo                  Если хотите продолжить введите       - 1
echo                  Если хотите выполнить самостоятельно - 2
echo ==========================================================================
set /p mactive=Ваш выбор: 
if "%mactive%"=="1" (goto copyUF2)
if "%mactive%"=="2" (goto copySKIP) else (echo ERROR! Wrong Code! && goto copyUF)
:copyUF2
echo Выберите диск на который будут временно скопированы ваши файлы и папки
set /p %sysdisk%=Введите букву диска: 
pause
cls
echo Копирую ваши файлы на системный диск...
xcopy /s/q/y %disk%:\  %sysdisk%:\USBCleaner\
echo Копирование завершено
echo На системном диске в папке USBCleaner должны быть ваши файлы!
echo Если отсутствует, то закройте программу!
pause
echo Удаляю папку без имени...
rd /s/q %disk%:\
echo Папка 
xcopy /s/q/y %sysdisk%:\USBCleaner %disk%:\UserFiles\
cd /d C:\
rd /s/q USBCleaner
pause
goto copyWIN
:copySKIP
echo Вы пропустили автоматическое копирование файлов.
echo.
echo Выполняйте все по инструкции:
echo 1) Зайдите на флешку и найдите папку без имени.
echo 2) Скопируйте из папки без имени все файлы и папки (абсолютно все).
echo 3) Перейдите в корневую директорию влешки и вставьте туда все файлы.
echo 4) Посте успешного копирования всех файлов и папок удалите папку без имени.
echo.
:copyWIN
echo Для перехода в главное меню нажмите             - 1
echo Для выхода из программы закройте ее или нажмите - 2
set /p sym=Ваш выбор: 
if "%sym%"=="1" (cls && goto main1)
if "%sym%"=="2" (exit) else (cls && echo Ошибка! Не верный код && pause)
goto main

:color
echo %gen2%%gen3%%gen3%%gen3%%gen1%%gen1%%gen1%%gen1%%gen1%
echo %gen1% 1 - Белый фон. Черный текст    3 - Белый фон. Красный текст %gen1%
echo %gen1% 2 - Черный фон. Зеленый текст  4 - Белый фон. Зеленый текст %gen1%
echo %gen2%%gen3%%gen3%%gen3%%gen1%%gen1%%gen1%%gen1%%gen1%
set /p sym=Выберите цифру и нажмите ENTER: 
if "%sym%"=="1" (cls && color F0 && set colorite=1 && goto main1)
if "%sym%"=="2" (cls && color 0A && set colorite=2 && goto main1)
if "%sym%"=="3" (cls && color FC && set colorite=3 && goto main1)
if "%sym%"=="4" (cls && color FA && set colorite=4 && goto main1)
if "%sym%"=="5" (cls && goto MYcolor) else (cls && echo Ошибка! Не верный код)
goto color
:MYcolor
set /p COLORcode=Введите ваш код цвета: 
color %COLORcode%
goto main1

:interface
echo Interface generator v1.6 Beta Test
echo Данный генератор еще находится в разработке!
echo На данный момент можно изменить интерфейс можно только в главном меню!
echo ***  ///  === %gen3%%gen3%
echo *1*  /2/  =3= 4 - Выход в меню
echo ***  ///  === %gen3%%gen3%
set /p int=Выберите интерфейс:
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