@echo off
color 9
echo =================================================
echo              Hra o hadani cisel
echo =================================================
echo .
echo .
echo Vitejte ve hre na hadani cisel!
echo Vygeneroval jsem nahodnne cislo mezi 1 a 200. Zkuste ho uhodnout!    
echo Zmacknete jakoukoliv klavesu pro start...
echo .
echo .
pause
:restart
set /a r=%random%/1
set /a r=%random%/200
cls
set /a i=1
echo Nahodne cislo bylo vygenerovano, zadejte vas tip
set /p cislo= Zadejte cislo: 
:e
cls
if %cislo% gtr %r% echo Mene
if %cislo% lss %r% echo Vice
if %cislo% == %r% goto win
set /a i=%i%+1
set /p cislo= Zadejte dalsi cislo: 
goto e
:win
cls
color A
echo =================================================
echo        Vase cislo %cislo% je spravne!!!
echo      Podarilo se vam jej uhodnout na %i% pokusu
echo =================================================
echo .
echo .
echo .
echo Chcete spustit novou hru? (A/N)
set /p reset=
color e
if %reset% == A goto restart
if %reset% == a goto restart
timeout /t 1
cls
) else (
    echo Diky za hru! Hezky den.

pause
