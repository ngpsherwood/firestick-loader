@echo off

color 0b

set adb="..\..\bin\adb.exe"
set _color="..\..\bin\cocolor.exe"




:loop
%_color% 0b

cls
echo Enter Activity and Press Enter:
echo.
echo.
echo Example: com.firepwn.home.montoya/.gui.MainActivity
echo.
echo.
echo.

%_color% 0e

set /p activity=

%adb% shell "am start -a android.intent.action.MAIN -n %activity%"

%_color% 0b

echo.
echo.
pause

goto loop
