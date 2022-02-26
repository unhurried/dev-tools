@echo off

pushd %~dp0

wsl docker-compose up -d

popd

echo Press any key to finish.
pause > NUL
