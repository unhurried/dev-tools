@echo off

cd /d %~dp0

wsl docker-compose down

echo Press any key to finish.
pause > NUL
