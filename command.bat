@echo off
if "%1" == "go" (
	if "%2" == "north" (
		if %north% == 1 (
			echo You went north.
			set /a %y% = %y%-1
			goto loadroom
		) else (
			echo You can not go north.
		)
	)
	if "%2" == "east" (
		if %east% == 1 (
			echo You went east.
			set /a %x% = %x%+1
			goto loadroom
		) else (
			echo You can not go east.
		)
	)
	if "%2" == "south" (
		if %south% == 1 (
			echo You went south.
			set /a %y% = %y%+1
			goto loadroom
		) else (
			echo You can not go south.
		)
	)
	if "%2" == "west" (
		if %west% == 1 (
			echo You went west.
			set /a %x% = %x%-1
			goto loadroom
		) else (
			echo You can not go west.
		)
	)
)
if "%1" == "help" (
	echo -- COMMANDS --
	echo go - Params: north/east/south/west - Goes in a specific direction. 
)
