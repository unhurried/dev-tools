@echo off

cd /d %~dp0

wsl docker-compose ps

echo Press any key to finish.
pause > NUL
