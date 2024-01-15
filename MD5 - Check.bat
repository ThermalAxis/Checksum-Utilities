@echo off
cls
title MD5 - Check
echo Verify MD5 checksums
echo.
echo Drag and drop the file to be tested into this window then press enter.
echo.
set /p inputPath=
cls

echo Verify MD5 checksums
echo.
echo Drag and drop the .MD5 file into this window then press enter.
echo.
set /p inputHashPath=
echo.
cls

set /p inputHash=<%inputHashPath%

echo Verify MD5 checksums
echo.
echo Provided hash is:  %inputHash%

FOR /F "tokens=* USEBACKQ" %%F IN (`powershell -Command "& {get-filehash '%inputPath%' -Algorithm MD5 | Select-Object -ExpandProperty Hash;}"`) DO (
SET generatedHash=%%F
)
echo Generated hash is: %generatedHash%
echo.
if "%inputHash%" == "%generatedHash%" (echo Checksums match, file integrity is OK.) else (echo Checksum mismatch, check you are using the correct files)
echo.
echo.
echo Press any key to close...

pause >nul