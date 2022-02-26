@echo off

pushd %~dp0

wsl docker-compose ps

popd

echo Press any key to finish.
pause > NUL
