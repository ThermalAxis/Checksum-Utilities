@echo off
cls
title SHA256 - Generate
echo Generate SHA256 checksums
echo.
echo Drag and drop the file to generate the checksum for into this window then press enter.
echo.
set /p inputPath=
set inputPathS=%inputPath:"=%
cls
::powershell -Command "& {get-filehash '%inputPath%' -Algorithm SHA256 | Select-Object -ExpandProperty Hash;}"
FOR /F "tokens=* USEBACKQ" %%F IN (`powershell -Command "& {get-filehash '%inputPath%' -Algorithm SHA256 | Select-Object -ExpandProperty Hash;}"`) DO (
SET generatedHash=%%F
)
echo %generatedHash%> "%inputPathS%.SHA256"

echo Generate SHA256 checksums
echo.
echo Generated hash is: %generatedHash%
echo.
echo Stored checksum at path:
echo %inputPathS%.SHA256
echo. 
echo Press any key to close...
pause >nul