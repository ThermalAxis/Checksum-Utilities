@echo off
cls
echo Generating SHA256 checksums
echo.
powershell -Command "& {get-filehash '%1' -Algorithm SHA256;}" > "%~p1\%~nx1.SHA256"
::start notepad.exe "%~p1\%~nx1.SHA256"