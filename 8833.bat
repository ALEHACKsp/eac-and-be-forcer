::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFAtBXBeSAE+1EbsQ5+n//NaLrUoSGbJvKN+V07eBQA==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFAtBXBeSAE+1EbsQ5+n//Naig247W/A8fZ2V36yLQA==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@shift /0
@ECHO OFF
set currentBuild=1.0
title ThisIsRico.de-Forcer v%currentBuild% []
set ESC=
set Red=%ESC%[31m
set Green=%ESC%[32m
set Yellow=%ESC%[33m
set Blue=%ESC%[34m
set Magenta=%ESC%[35m
set Cyan=%ESC%[36m
set White=%ESC%[37m
set LRed=%ESC%[91m
set LGreen=%ESC%[92m
set LYellow=%ESC%[93m
set LBlue=%ESC%[94m
set LMagenta=%ESC%[95m
set LCyan=%ESC%[96m

:welcome
cls
echo %LGreen%==============================================================================================================
echo                                                ThisIsRico.de-Forcer
echo ==============================================================================================================

echo.
echo %White%Welcome to ThisIsRico.de-Forcer.
echo If you are having any issue, join my Discord server.
echo.
echo %LGreen%Please select one of these options:
echo %White%[1] Start Fortnite with EAC
echo.
set /P A=%LGreen%Option: %White%
if not [%A%] == [1] if not [%A%] == [2] if not [%A%] == [3] (
  goto welcome
)
if %A% == 1 (
  goto YorNEAC
)
if %A% == 2 (
  goto YorNBE
)
if %A% == 3 (
  start /min "" https://discord.gg/9XjBWBEwHG
  cls
  goto welcome
)

:YorNEAC
cls
set /P M=%LGreen%Do you want to launch Fortnite with Steam method (Type N if you don't know what that is)? [Y/N]: %White%
if not [%M%] == [Y] if not [%M%] == [N] if not [%M%] == [n] if not [%M%] == [y] (
  goto YorNEAC
)
if /i [%M%] == [n] (
  cls
  goto EAC
)
if /i [%M%] == [y] (
  cls
  goto steamEAC
)

:YorNBE
cls
set /P M=%LGreen%Do you want to launch Fortnite with Steam method (Type N if you don't know what that is)? [Y/N]: %White%
if not [%M%] == [Y] if not [%M%] == [N] if not [%M%] == [n] if not [%M%] == [y] (
  goto YorNBE
)
if /i [%M%] == [n] (
  cls
  goto BE
)
if /i [%M%] == [y] (
  cls
  goto steamBE
)

:EAC
echo %LCyan%Starting Fortnite with EAC, please don't do anything.
tasklist /nh /fi "imagename eq EpicGamesLauncher.exe" | find /i "EpicGamesLauncher.exe" 1>nul 2>nul && (
  taskkill /f /im EpicGamesLauncher.exe 1>nul 2>nul
)
start com.epicgames.launcher://apps/Fortnite?action=launch

:check1
tasklist /nh /fi "imagename eq EasyAntiCheat.exe" | find /i "EasyAntiCheat.exe" 1>nul 2>nul && (
echo %White%Done, automatically closing this tab in 10 seconds.
timeout /T 5 /nobreak 1>nul 2>nul
exit
) || (
  goto check2
)

:check2
tasklist /nh /fi "imagename eq BEService.exe" | find /i "BEService.exe" 1>nul 2>nul && (
timeout /T 2 /nobreak 1>nul 2>nul
taskkill /f /im FortniteClient-Win64-Shipping_BE.exe 1>nul 2>nul
sc stop BEService 1>nul 2>nul
taskkill /f /im EpicGamesLauncher.exe 1>nul 2>nul
) || (
  goto check1
)
powershell -Command "Set-Date -Date (Get-Date).AddDays(1) | Out-Null"
timeout /T 3 /nobreak 1>nul 2>nul
cls
goto EAC

:BE
echo %LCyan%Starting Fortnite with BE, please don't do anything.
tasklist /nh /fi "imagename eq EpicGamesLauncher.exe" | find /i "EpicGamesLauncher.exe" 1>nul 2>nul && (
  taskkill /f /im EpicGamesLauncher.exe 1>nul 2>nul
)
start com.epicgames.launcher://apps/Fortnite?action=launch

:check3
tasklist /nh /fi "imagename eq BEService.exe" | find /i "BEService.exe" 1>nul 2>nul && (
echo %White%Done, automatically closing this tab in 10 seconds.
timeout /T 5 /nobreak 1>nul 2>nul
exit
) || (
  goto check4
)
:check4
tasklist /nh /fi "imagename eq EasyAntiCheat.exe" | find /i "EasyAntiCheat.exe" 1>nul 2>nul && (
timeout /T 2 /nobreak 1>nul 2>nul
taskkill /f /im FortniteClient-Win64-Shipping_EAC.exe 1>nul 2>nul
taskkill /f /im EasyAntiCheat.exe 1>nul 2>nul
taskkill /f /im FortniteLauncher.exe 1>nul 2>nul
taskkill /f /im EpicGamesLauncher.exe 1>nul 2>nul
) || (
  goto check3
)
powershell -Command "Set-Date -Date (Get-Date).AddDays(1) | Out-Null"
timeout /T 3 /nobreak 1>nul 2>nul
cls
goto BE



:steamEAC
tasklist /nh /fi "imagename eq steam.exe" | find /i "steam.exe" 1>nul 2>nul && (
cls
) || (
echo %LRed%Steam is not running.
echo Launch Steam then launch the program again.
echo Closing this tab in 10 seconds...
timeout /T 10 /NOBREAK 1>nul 2>nul
exit
)
echo %LCyan%Starting Fortnite with EAC, please don't do anything.
tasklist /nh /fi "imagename eq EpicGamesLauncher.exe" | find /i "EpicGamesLauncher.exe" 1>nul 2>nul && (
  taskkill /f /im EpicGamesLauncher.exe 1>nul 2>nul
)
start steam://rungameid/18013199986006687744
timeout /T 4 /nobreak 1>nul 2>nul
start com.epicgames.launcher://apps/Fortnite?action=launch

:check5
tasklist /nh /fi "imagename eq EasyAntiCheat.exe" | find /i "EasyAntiCheat.exe" 1>nul 2>nul && (
echo %White%Done, automatically closing this tab in 10 seconds.
timeout /T 5 /nobreak 1>nul 2>nul
exit
) || (
  goto check6
)
:check6
tasklist /nh /fi "imagename eq BEService.exe" | find /i "BEService.exe" 1>nul 2>nul && (
timeout /T 2 /nobreak 1>nul 2>nul
taskkill /f /im FortniteClient-Win64-Shipping_BE.exe 1>nul 2>nul
sc stop BEService 1>nul 2>nul
taskkill /f /im EpicGamesLauncher.exe 1>nul 2>nul
) || (
  goto check5
)
powershell -Command "Set-Date -Date (Get-Date).AddDays(1) | Out-Null"
timeout /T 3 /nobreak 1>nul 2>nul
cls
goto steamEAC

:steamBE
tasklist /nh /fi "imagename eq steam.exe" | find /i "steam.exe" 1>nul 2>nul && (
cls
) || (
echo %LRed%Steam is not running.
echo Launch Steam then launch the program again.
echo Closing this tab in 10 seconds...
timeout /T 10 /NOBREAK 1>nul 2>nul
exit
)
echo %LCyan%Starting Fortnite with BE, please don't do anything.
tasklist /nh /fi "imagename eq EpicGamesLauncher.exe" | find /i "EpicGamesLauncher.exe" 1>nul 2>nul && (
  taskkill /f /im EpicGamesLauncher.exe 1>nul 2>nul
)
start steam://rungameid/18013199986006687744
timeout /T 4 /nobreak 1>nul 2>nul
start com.epicgames.launcher://apps/Fortnite?action=launch

:check7
tasklist /nh /fi "imagename eq BEService.exe" | find /i "BEService.exe" 1>nul 2>nul && (
echo %White%Done, automatically closing this tab in 10 seconds.
timeout /T 5 /nobreak 1>nul 2>nul
exit
) || (
  goto check8
)
:check8
tasklist /nh /fi "imagename eq EasyAntiCheat.exe" | find /i "EasyAntiCheat.exe" 1>nul 2>nul && (
timeout /T 2 /nobreak 1>nul 2>nul
taskkill /f /im FortniteClient-Win64-Shipping_EAC.exe 1>nul 2>nul
taskkill /f /im EasyAntiCheat.exe 1>nul 2>nul
taskkill /f /im FortniteLauncher.exe 1>nul 2>nul
taskkill /f /im EpicGamesLauncher.exe 1>nul 2>nul
) || (
  goto check7
)
powershell -Command "Set-Date -Date (Get-Date).AddDays(1) | Out-Null"
timeout /T 3 /nobreak 1>nul 2>nul
cls
goto BE

:update
cls
set /P M=%LGreen%An update is needed, do you want to install it? [Y/N]: %White%
if not [%M%] == [Y] if not [%M%] == [N] if not [%M%] == [n] if not [%M%] == [y] (
  goto UPDATE
)
if /I %M%==n (
  exit
)
