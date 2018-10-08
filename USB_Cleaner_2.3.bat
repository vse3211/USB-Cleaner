@ECHO OFF
chcp 866
cls
set colorite=1
:load
title Выбор версии
echo USB Cleaner 2016 Full
echo -----------------------
echo 0- Standart version
echo 1- Professional version
echo -----------------------
set /p PRO=Выберите версию: 
if "%PRO%"=="0" (goto version)
if "%PRO%"=="1" (goto version) else (goto load)
goto load

:version
if "%colorite%"=="1" (color F0)
if "%colorite%"=="2" (color 0A)
if "%colorite%"=="3" (color FC)
if "%colorite%"=="4" (color FA)
cls
title USB Cleaner. Внимание! Важная информация!
echo Внимание! Программа выполняется в консоли и не имеет
echo кнопок. Для выбора нужного вам пункта введите на
echo клавиатуре его номер и нажмите ENTER.
echo Также в PRO режиме потребуется подтвердить удаление
echo некоторых файлов, для подтверждения удаления потребуется
echo ввести на клавиатуре Y и нажать ENTER.
echo Некоторые версии системы поддерживают ввод русских символов
echo , но если символ Д не будет распознан консолью, то удаление
echo файлов вируса не гарантируется.
pause
cls

title USB Cleaner v2.3 RUS
echo ==================================
echo =  Добро пожаловать в программу  =
if "%PRO%"=="0" (echo =      USB Cleaner Standart      =) else (echo =    USB Cleaner Professional    =)
echo =--------------------------------=
echo =   Версия программы: 2.2 RUS    =
echo =   Генератор интерфейса: 1.6    =
echo =   Модуль выбора диска          =
echo =   Модуль смены цвета: FINAL    =
echo =   Вирусная база: 2.0           =
echo =--------------------------------=
echo =         Нажмите ENTER          =
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
echo %gen1%   Нажмите 0 для выхода           %gen1%
echo %gen1%                                  %gen1%
echo %gen1%   Нажмите 1 для выбора диска F   %gen1%
echo %gen1%                                  %gen1%
echo %gen1%   Нажмите 2 для выбора диска G   %gen1%
echo %gen1%                                  %gen1%
echo %gen1%   Нажмите 3 для выбора диска E   %gen1%
echo %gen1%                                  %gen1%
echo %gen1%   Нажмите 4 для выбора диска C   %gen1%
if "%PRO%"=="0" (echo %gen1%   Только для профессионалов!     %gen1%) else (echo %gen1%         Разблокировано           %gen1%)
echo %gen1%                                  %gen1%
echo %gen1%   Нажмите 5 для выбора диска D   %gen1%
echo %gen1%                                  %gen1%
echo %gen1%   Нажмите 6 для своего диска     %gen1%
if "%PRO%"=="0" (echo %gen1%   Только для профессионалов!     %gen1%) else (echo %gen1%         Разблокировано           %gen1%)
echo %gen1%                                  %gen1%
echo %gen1%   Нажмите 7 для получения        %gen1%
echo %gen1%   информации о программе         %gen1%
echo %gen1%                                  %gen1%
echo %gen1%   Нажмите 8 для выбора цвета     %gen1%
echo %gen1%                                  %gen1%
echo %gen1%   Нажмите 9 для смены оформления %gen1%
echo %gen1%                                  %gen1%
echo %gen1%%gen1%%gen3%Make by Londonist%gen3%%gen1%

set /p sym=Выберите цифру и нажмите ENTER: 
if "%sym%"=="0" (exit)
if "%sym%"=="1" (cls && set disk=F&& goto verify)
if "%sym%"=="2" (cls && set disk=G&& goto verify)
if "%sym%"=="3" (cls && set disk=E&& goto verify)
if "%sym%"=="4" (cls && if "%PRO%"=="0" (echo Доступно только в PRO версии!) else (set disk=C && goto verify))
if "%sym%"=="5" (cls && set disk=D&& goto verify)
if "%sym%"=="6" (cls && if "%PRO%"=="0" (echo Доступно только в PRO версии!) else (goto changeDISK))
if "%sym%"=="7" (cls && goto version)
if "%sym%"=="8" (cls && goto color)
if "%sym%"=="9" (cls && goto interface) else (cls && echo Ошибка! Не верный код && pause)
cls && echo ERROR 02 && goto main1

:changeDISK
echo Вводите только букву диска и больше ничего!
set /p disk=Введите букву диска соблюдая регистр: 

:verify
title Проверка диска...
chdir /d %disk%:\
echo Сейчас я покажу вам выбраный диск...
@echo on
echo Самая первая буква данной строки это буква текущего диска.
pause
@echo off
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
echo %gen1% Нажмите 1 для выхода в меню      %gen1%
echo %gen1% Нажмите 2 для выхода из ПО       %gen1%
echo %gen2%%gen1%%gen1%
set /p sym=Выберите цифру и нажмите ENTER:
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
if "%sym%"=="4" (cls && color FA && set colorite=4 && goto main1) else (cls && echo Ошибка! Не верный код)
goto color

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