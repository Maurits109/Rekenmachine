@echo off
:start
cls
echo ============================
echo      CALCULATOR
echo ============================
echo Choose an operation:
echo 1. Addition
echo 2. Subtraction
echo 3. Multiplication
echo 4. Division
echo 5. Exit
set /p choice=Choose an option (1-5): 
if "%choice%"=="1" goto addition
if "%choice%"=="2" goto subtraction
if "%choice%"=="3" goto multiplication
if "%choice%"=="4" goto division
if "%choice%"=="5" exit
echo Invalid choice, please try again!
pause
goto start

:addition
cls
echo Enter the first number:
set /p number1=Number 1: 
echo Enter the second number:
set /p number2=Number 2: 
set /a result=%number1% + %number2%
echo The result is: %result%
pause
goto start

:subtraction
cls
echo Enter the first number:
set /p number1=Number 1: 
echo Enter the second number:
set /p number2=Number 2: 
set /a result=%number1% - %number2%
echo The result is: %result%
pause
goto start

:multiplication
cls
echo Enter the first number:
set /p number1=Number 1: 
echo Enter the second number:
set /p number2=Number 2: 
set /a result=%number1% * %number2%
echo The result is: %result%
pause
goto start

:division
cls
echo Enter the first number:
set /p number1=Number 1: 
echo Enter the second number:
set /p number2=Number 2: 
if "%number2%"=="0" (
    echo Cannot divide by zero!
) else (
    set /a result=%number1% / %number2%
    echo The result is: %result%
)
pause
goto start
