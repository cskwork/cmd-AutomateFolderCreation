:: MAKE A-Z DIR FOLDER
@echo off rem 불필요하게 복창 X



for %%i in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
   if not exist %%i mkdir %%i
)


::setlocal enabledelayedexpansion

rem start /b /wait powershell.exe "65..90 | foreach {[char]$_; if (not exist %%i) {mkdir %%i} }"
rem PAUSE

rem start /b /wait powershell.exe -Executionpolicy Bypass -Command "65..70 | % {md (“{0}” -f [char]$_)}"


rem MAKING FOLDER WITH LETTER
:: https://devblogs.microsoft.com/scripting/use-powershell-and-ascii-to-create-folders-with-letters/

::
::65..90 | foreach {[char]$_; if not exist %%i mkdir %%i }
::for %%i in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
::   if not exist %%i mkdir %%i
::)

:: Make text FILE
::for %%f in (*.txt) do (
::set "file=%%f"
::set "var=!file:~0,1!"
::echo move "%%~dpf!file!" "%%~dpf!var!\" 
::)
::pause

:: TRY 1 
 ::md A
 ::md B
 ::md C
 
:: TRY 2
 :: for /L %%a in (1,1,10) do md A%%a
 
:: TRY 3
 :: Upper Case. Lower Case : 97-122
	:: 65..90 | foreach {[char]$_;Write-Host "Do Something"}
 ::for %%p in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do if not exist %%p:\nul set FREEDRIVELETTER=%%p