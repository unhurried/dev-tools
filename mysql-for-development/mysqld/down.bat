@echo off

pushd %~dp0

wsl docker-compose down

popd

echo Press any key to finish.
pause > NUL
