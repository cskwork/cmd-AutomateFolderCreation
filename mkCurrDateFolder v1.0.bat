@echo off & for /F "tokens=1-4 delims=/ " %%A in ('date/t') do (
set DateDay=%%A
set DateMonth=%%B
set DateYear=%%C
)

@echo off & for /F "tokens=1-4 delims=/ " %%D in ('time/t') do (
set DateTime=%%D
)

set CurrentDate=%DateYear%%DateMonth%%DateDay%
::-%time:~0,2%.%time:~3,2%

mkdir "%CurrentDate%"
