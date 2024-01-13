@echo off
cls
echo Generating MD5 checksums
echo.
powershell -Command "& {get-filehash '%1' -Algorithm MD5;}" > "%~p1\%~nx1.MD5"
::start notepad.exe "%~p1\%~nx1.MD5"