@echo off
cls
echo Generating MD5 checksums
echo.
powershell -Command "& {get-filehash '%1' -Algorithm MD5 | Select-Object -ExpandProperty Hash;}" > "%~p1\%~nx1.MD5"
