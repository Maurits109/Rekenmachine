@echo off
:start
cls
echo ============================
echo      REKENMACHINE
echo ============================
echo Kies een bewerking:
echo 1. Optellen
echo 2. Aftrekken
echo 3. Vermenigvuldigen
echo 4. Delen
echo 5. Stoppen
set /p keuze=Kies een optie (1-5): 
if "%keuze%"=="1" goto optellen
if "%keuze%"=="2" goto aftrekken
if "%keuze%"=="3" goto vermenigvuldigen
if "%keuze%"=="4" goto delen
if "%keuze%"=="5" exit

:optellen
cls
echo Voer het eerste getal in:
set /p getal1=Getal 1: 
echo Voer het tweede getal in:
set /p getal2=Getal 2: 
set /a resultaat=%getal1% + %getal2%
echo Het resultaat is: %resultaat%
pause
goto start

:aftrekken
cls
echo Voer het eerste getal in:
set /p getal1=Getal 1: 
echo Voer het tweede getal in:
set /p getal2=Getal 2: 
set /a resultaat=%getal1% - %getal2%
echo Het resultaat is: %resultaat%
pause
goto start

:vermenigvuldigen
cls
echo Voer het eerste getal in:
set /p getal1=Getal 1: 
echo Voer het tweede getal in:
set /p getal2=Getal 2: 
set /a resultaat=%getal1% * %getal2%
echo Het resultaat is: %resultaat%
pause
goto start

:delen
cls
echo Voer het eerste getal in:
set /p getal1=Getal 1: 
echo Voer het tweede getal in:
set /p getal2=Getal 2: 
if %getal2%==0 (
    echo Kan niet delen door nul!
) else (
    set /a resultaat=%getal1% / %getal2%
    echo Het resultaat is: %resultaat%
)
pause
goto start
