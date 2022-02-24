@echo off

cd /d %~dp0

wsl docker-compose up -d

echo Press any key to finish.
pause > NUL
