@echo off
setlocal EnableExtensions EnableDelayedExpansion
rem This is just a shell - just containing the title screen.
:title_screen
set x=0
set y=0
echo ooooooo_ooo____________________________oo____________
echo oo_______oo____ooooo__oo____o__ooooo___oo_____ooooo__
echo oooo_____oo___oo____o_oo____o_oo___oo_oooo___oo____o_
echo oo_______oo___ooooooo_oo___o__oo___oo__oo____ooooooo_
echo oo_______oo___oo_______oo_o___oo___oo__oo__o_oo______
echo ooooooo_ooooo__ooooo____oo_____oooo_o___ooo___ooooo__
echo _____________________________________________________
echo.
echo 1: Play game
echo 2: Enter code
echo.
:input
set /p input="?"
if "%input%" == "1" goto game
if "%input%" == "2" goto code
echo Invalid Input
goto input
:code
echo Codes have not been implemented yet, but they will be soon.
goto input
:game
cls
echo You wake up in an elevator. The elevator scrolls up to a dungeon area, where it opens, you proceed to leave it.
goto loadroom
:g_input
set /p input = "What do you do?"
call command.bat %input%
goto g_input
:loadroom
set valid = 0
if %x% == 0 (
	if %y% == 0 ( 
		echo You are in a room. There is a door to the south and east. The room has slate walls and a cobblestone floor
		set north = 0
		set east = 1
		set south = 1
		set west = 0
		set valid = 1
	)
)
if "%valid%" == "0" echo ERR: Invalid room. Room position is [%x%,%y%]
echo.
goto g_input
