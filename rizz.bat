@echo off
title Rizz Generator
chcp 65001 >nul
mode con: cols=60 lines=25
:menu
color D
cls
echo Rizz Generator           
echo.
echo 1. Rizz Tiếng Anh
echo 2. Rizz Tiếng Việt
echo.
set /p choice=Chọn ngôn ngữ (1 hoặc 2): 

if "%choice%"=="1" goto english
if "%choice%"=="2" goto vietnamese
goto invalid

:english
setlocal enabledelayedexpansion
set count=5
set /a index=%random% %% !count%
set englishRizz0=Is it hot in here or is it just you?
set englishRizz1=You must be a magician, because whenever I look at you, everyone else disappears.
set englishRizz2=Do you have a map? Because I just got lost in your eyes.
set englishRizz3=If you were a vegetable, you’d be a ‘cute-cumber.’
set englishRizz4=Are you a time traveler? Because I can see you in my future.
call echo %%englishRizz%index%%%!
goto prompt

:vietnamese
setlocal enabledelayedexpansion
set count=5
set /a index=%random% %% !count%
set vietnameseRizz0=Em có biết không, trái tim anh như Google Maps—luôn chỉ đường đến em.
set vietnameseRizz1=Anh có thể xin một bức ảnh của em để cho ông già Noel biết chính xác món quà anh muốn không?
set vietnameseRizz2=Nếu em là một viên ngọc, chắc chắn em sẽ là viên ngọc quý nhất.
set vietnameseRizz3=Trời có sao cũng không đẹp bằng ánh mắt của em đâu.
set vietnameseRizz4=Chắc em là siêu sao, bởi vì ánh sáng của em làm bừng sáng cả một ngày của anh.
call echo %%vietnameseRizz%index%%%!
goto prompt

:prompt
echo.
echo Ấn bất kỳ phím nào để tiếp tục...
pause >nul
goto menu

:invalid
echo.
echo Lựa chọn không hợp lệ. Vui lòng nhập 1 hoặc 2.
pause >nul
goto menu

:end
pause
exit
