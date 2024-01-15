@echo off
cls
echo Generating SHA256 checksums
echo.
powershell -Command "& {get-filehash '%1' -Algorithm SHA256 | Select-Object -ExpandProperty Hash;}" > "%~p1\%~nx1.SHA256"
