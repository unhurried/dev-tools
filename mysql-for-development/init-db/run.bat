@echo off

cd /d %~dp0/docker
wsl ./run.sh

echo Press any key to finish.
pause > NUL
