@echo off
for %%i in (*.jpg) do (
setlocal ENABLEDELAYEDEXPANSION
echo ------ handling [%%i] now ------
C:\exiftool\exiftool.exe -a %%i > C:\tmp\exiffile.txt
set var=potetkake
for /F %%a in ('findstr /m /l "undef" C:\tmp\exiffile.txt') do set var=%%a

if /i "!var:~0,2!"=="C:" (
echo found undef, desqueezing. desqueezing [%%i] now
magick.exe  -verbose %%i -resize 7980x4000^^! %%i
echo Finnished desqueezing [%%i] now
call :check
)
if not "!var:~0,2!"=="C:" (
echo [%%i] file contains lens information moving along
)
:check
endlocal
)

	
