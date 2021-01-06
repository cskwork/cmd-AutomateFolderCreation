:: echo off - turn of display of whole script
@echo on

:: TABLE OF CONTENTS
:: goto- skips over code

:: Run in cmd with argument ex) Tutorial.bat 1 4 5
::goto :2nd Arg

:: Declare string in var.
::goto :3rd Var

:: Use Numb Operations
::goto :4th Numb 

:: Use local/global scope
::goto :5th Scope

:: Using Arrays
::goto :6th Arrays

:: Array Application
goto :7th ArrayEx

::--------------------------------------------

rem 1 LIST DIR IN FILE
::  ‘>’ command is used to redirect the output to the file C:\lists.txt.
dir "C:\Program Files" > E:\"1 Quick Automate Tools"\listsdir.txt
echo "PRG complete"

:: Run in cmd with argument ex) Tutorial.bat 1 4 5
:2nd Arg

echo %1 
echo %2 
echo %3

:: Declare string in var.
:3rd Var
set message=Hello World 
echo %message%

:: Use Numb Operations
:4th Numb 
:: Numerical values are set with /A switch
SET /A a = 5 
SET /A b = 10 
SET /A c = %a% + %b% 
echo %c% 
SET /A c = %a% - %b% 
echo %c% 
SET /A c = %b% / %a% 
echo %c% 
SET /A c = %b% * %a% 
echo %c%

:5th Scope
set /A globalvar = 5
SETLOCAL
set /A var = 13145
set /A var =%var%+5
echo 1st %var%
echo 2nd %globalvar%
ENDLOCAL
echo 3rd %var%
echo 4th %globalvar%
:: just declaring env var. 
echo %JAVA_HOME%

:6th Arrays
@echo off 
set /A list = 1 2 3 4
for %%a in (%list%) do ( 
   echo %%a 
)
set /A a[0] = 1 
set /A a[1] = 2 
set /A a[2] = 3 
echo The first element of the array is %a[0]% 
echo The second element of the array is %a[1]% 
echo The third element of the array is %a[2]%

:7th ArrayEx

@echo off 
set /A len = 3 
set obj[0].Name = Joe 
set /A obj[0].ID = 1 
set obj[1].Name = Mark 
set /A obj[1].ID = 2 
set obj[2].Name = Mohan 
set /A obj[2].ID = 3 
set /A i = 0 
:loop 

if %i% equ %len% goto :eof 
set cur.Name= 
set cur.ID=

for /f "usebackq delims==.tokens=1-3" %%j in (`set obj[%i%]`) do ( 
   set cur.%%k=%%l 
) 
echo Name = %cur.Name% 
echo Value = %cur.ID% 
set /a i = %i%+1 
goto loop

:: DONT CLOSE
cmd /k







