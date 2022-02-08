@echo off

:main
title HorrorGame
color 40
echo Welcome to HorrorGame! Can you survive without getting eaten?
pause
cls
title Room 1
echo You are locked in a Horror House what you do?
choice /c 12 /m "1-Hide 2-don't hide"
if ERRORLEVEL==2 goto death
if ERRORLEVEL==1 goto room2

:death
cls
title YOU GET EATEN
start data\scream.bmp
start data\flasher.exe 1 data\scream.bmp
start data\suicide.mp3
ping localhost -n 4
start data\melter.exe
ping localhost -n 4
taskkill /f /im melter.exe
taskkill /f /im flasher.exe
cls
title YOU ARE DEAD
echo                  uuuuuuu
echo              uu$$$$$$$$$$$uu
echo           uu$$$$$$$$$$$$$$$$$uu
echo          u$$$$$$$$$$$$$$$$$$$$$u
echo         u$$$$$$$$$$$$$$$$$$$$$$$u
echo        u$$$$$$$$$$$$$$$$$$$$$$$$$u
echo        u$$$$$$$$$$$$$$$$$$$$$$$$$u
echo        u$$$$$$"   "$$$"   "$$$$$$u
echo        "$$$$"      u$u       $$$$"
echo         $$$u       u$u       u$$$
echo         $$$u      u$$$u      u$$$
echo          "$$$$uu$$$   $$$uu$$$$"
echo           "$$$$$$$"   "$$$$$$$"
echo             u$$$$$$$u$$$$$$$u
echo              u$"$"$"$"$"$"$u
echo   uuu        $$u$ $ $ $ $u$$       uuu
echo  u$$$$        $$$$$u$u$u$$$       u$$$$
echo   $$$$$uu      "$$$$$$$$$"     uu$$$$$$
echo u$$$$$$$$$$$uu    """""    uuuu$$$$$$$$$$
echo $$$$"""$$$$$$$$$$uuu   uu$$$$$$$$$"""$$$"
echo  """      ""$$$$$$$$$$$uu ""$"""
echo            uuuu ""$$$$$$$$$$uuu
echo   u$$$uuu$$$$$$$$$uu ""$$$$$$$$$$$uuu$$$
echo   $$$$$$$$$$""""           ""$$$$$$$$$$$"
echo    "$$$$$"                      ""$$$$""
echo      $$$"                         $$$$"
echo 		GAME OVER!!!!
pause
cls
echo You lost
goto main

:room2
cls
title HorrorGame - hiding
echo You hidden and the monster went away now you safe to go to next room
pause
cls
title HorrorGame room 2
echo You are in next room but a monster is chasing you what to do?
choice /c 12 /m "1-try to fight 2-run"
if ERRORLEVEL==2 goto finalroom
if ERRORLEVEL==1 goto death

:finalroom
cls
title HorrorGame room 3
echo You are in the final room there is exit to freedom but monster is chasing you still what to do?
choice /c AB /m "A-exit B-dont exit"
if ERRORLEVEL==2 goto death
if ERRORLEVEL==1 goto outside

:outside
cls
title You win
start data\shoot.mp3
start data\dedmonster.bmp
echo you are outside but monster is still chasing you but you find a gun and shoot him and you win
pause
cls
echo You won
goto main